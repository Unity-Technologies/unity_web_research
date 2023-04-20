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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

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

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat33 : f32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(1) @binding(5) var<uniform> x_1820 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1991 : UnityPerDraw;

var<private> u_xlatu80 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu59 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati59 : i32;

@group(1) @binding(1) var<uniform> x_2239 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat63 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb89 : bool;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb37 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlati63 : i32;

var<private> u_xlatb64 : vec2<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatb59 : bool;

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
  var x_1775 : f32;
  var x_1900 : f32;
  var x_1911 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2380 : f32;
  var x_2391 : f32;
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
  var x_4060 : f32;
  var x_4073 : f32;
  var x_4130 : f32;
  var x_4141 : vec3<f32>;
  var x_4337 : f32;
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
  let x_472 : f32 = x_123.x_MainLightShadowParams.y;
  u_xlatb32.x = (0.0f < x_472);
  let x_476 : bool = u_xlatb32.x;
  if (x_476) {
    let x_480 : f32 = x_123.x_MainLightShadowParams.y;
    u_xlatb32.x = (x_480 == 1.0f);
    let x_484 : bool = u_xlatb32.x;
    if (x_484) {
      let x_487 : vec4<f32> = u_xlat4;
      let x_490 : vec4<f32> = x_123.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_487.x, x_487.y, x_487.x, x_487.y) + x_490);
      let x_493 : vec4<f32> = u_xlat7;
      let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
      let x_496 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_494.x, x_494.y, x_496);
      let x_509 : vec3<f32> = txVec0;
      let x_511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_509.xy, x_509.z);
      u_xlat8.x = x_511;
      let x_514 : vec4<f32> = u_xlat7;
      let x_515 : vec2<f32> = vec2<f32>(x_514.z, x_514.w);
      let x_517 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_524 : vec3<f32> = txVec1;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_524.xy, x_524.z);
      u_xlat8.y = x_526;
      let x_528 : vec4<f32> = u_xlat4;
      let x_531 : vec4<f32> = x_123.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_528.x, x_528.y, x_528.x, x_528.y) + x_531);
      let x_534 : vec4<f32> = u_xlat7;
      let x_535 : vec2<f32> = vec2<f32>(x_534.x, x_534.y);
      let x_537 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_535.x, x_535.y, x_537);
      let x_544 : vec3<f32> = txVec2;
      let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_544.xy, x_544.z);
      u_xlat8.z = x_546;
      let x_549 : vec4<f32> = u_xlat7;
      let x_550 : vec2<f32> = vec2<f32>(x_549.z, x_549.w);
      let x_552 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_550.x, x_550.y, x_552);
      let x_559 : vec3<f32> = txVec3;
      let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_559.xy, x_559.z);
      u_xlat8.w = x_561;
      let x_564 : vec4<f32> = u_xlat8;
      u_xlat32.x = dot(x_564, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_572 : f32 = x_123.x_MainLightShadowParams.y;
      u_xlatb58 = (x_572 == 2.0f);
      let x_574 : bool = u_xlatb58;
      if (x_574) {
        let x_579 : vec4<f32> = u_xlat4;
        let x_582 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(x_582.z, x_582.w)) + vec2<f32>(0.5f, 0.5f));
        let x_587 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_587);
        let x_589 : vec4<f32> = u_xlat4;
        let x_592 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_595 : vec2<f32> = u_xlat58;
        let x_597 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.z, x_592.w)) + -(x_595));
        let x_598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_600.x, x_600.x, x_600.y, x_600.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_605 : vec4<f32> = u_xlat8;
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_605.x, x_605.x, x_605.z, x_605.z) * vec4<f32>(x_607.x, x_607.x, x_607.z, x_607.z));
        let x_611 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_611.y, x_611.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_616 : vec4<f32> = u_xlat9;
        let x_619 : vec4<f32> = u_xlat7;
        let x_622 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_619.x, x_619.y)));
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_623.y, x_622.y, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_629 : vec2<f32> = (-(vec2<f32>(x_625.x, x_625.y)) + vec2<f32>(1.0f, 1.0f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_633.x, x_633.y), vec2<f32>(0.0f, 0.0f));
        let x_637 : vec2<f32> = u_xlat61;
        let x_639 : vec2<f32> = u_xlat61;
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_637) * x_639) + vec2<f32>(x_641.x, x_641.y));
        let x_644 : vec4<f32> = u_xlat7;
        let x_646 : vec2<f32> = max(vec2<f32>(x_644.x, x_644.y), vec2<f32>(0.0f, 0.0f));
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat7;
        let x_652 : vec4<f32> = u_xlat7;
        let x_655 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = ((-(vec2<f32>(x_649.x, x_649.y)) * vec2<f32>(x_652.x, x_652.y)) + vec2<f32>(x_655.y, x_655.w));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_660 + vec2<f32>(1.0f, 1.0f));
        let x_662 : vec4<f32> = u_xlat7;
        let x_664 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_668 : vec4<f32> = u_xlat8;
        let x_672 : vec2<f32> = (vec2<f32>(x_668.x, x_668.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_676 : vec4<f32> = u_xlat9;
        let x_678 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec2<f32> = u_xlat61;
        let x_682 : vec2<f32> = (x_681 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_686 : vec4<f32> = u_xlat7;
        let x_688 : vec2<f32> = (vec2<f32>(x_686.x, x_686.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_689 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_693 : vec2<f32> = (vec2<f32>(x_691.y, x_691.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_697 : f32 = u_xlat9.x;
        u_xlat10.z = x_697;
        let x_700 : f32 = u_xlat7.x;
        u_xlat10.w = x_700;
        let x_703 : f32 = u_xlat12.x;
        u_xlat11.z = x_703;
        let x_706 : f32 = u_xlat59.x;
        u_xlat11.w = x_706;
        let x_708 : vec4<f32> = u_xlat10;
        let x_710 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_708.z, x_708.w, x_708.x, x_708.z) + vec4<f32>(x_710.z, x_710.w, x_710.x, x_710.z));
        let x_714 : f32 = u_xlat10.y;
        u_xlat9.z = x_714;
        let x_717 : f32 = u_xlat7.y;
        u_xlat9.w = x_717;
        let x_720 : f32 = u_xlat11.y;
        u_xlat12.z = x_720;
        let x_723 : f32 = u_xlat59.y;
        u_xlat12.w = x_723;
        let x_725 : vec4<f32> = u_xlat9;
        let x_727 : vec4<f32> = u_xlat12;
        let x_729 : vec3<f32> = (vec3<f32>(x_725.z, x_725.y, x_725.w) + vec3<f32>(x_727.z, x_727.y, x_727.w));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat11;
        let x_734 : vec4<f32> = u_xlat8;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.z, x_732.w) / vec3<f32>(x_734.z, x_734.w, x_734.y));
        let x_737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat9;
        let x_744 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat12;
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec3<f32> = (vec3<f32>(x_747.z, x_747.y, x_747.w) / vec3<f32>(x_749.x, x_749.y, x_749.z));
        let x_752 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat10;
        let x_756 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_757 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_762 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_764 : vec3<f32> = (vec3<f32>(x_759.y, x_759.x, x_759.z) * vec3<f32>(x_762.x, x_762.x, x_762.x));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat10;
        let x_770 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_772 : vec3<f32> = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_770.y, x_770.y, x_770.y));
        let x_773 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_776 : f32 = u_xlat10.x;
        u_xlat9.w = x_776;
        let x_778 : vec2<f32> = u_xlat58;
        let x_781 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y) * vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y)) + vec4<f32>(x_784.y, x_784.w, x_784.x, x_784.w));
        let x_787 : vec2<f32> = u_xlat58;
        let x_789 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat9;
        let x_794 : vec2<f32> = ((x_787 * vec2<f32>(x_789.x, x_789.y)) + vec2<f32>(x_792.z, x_792.w));
        let x_795 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_798 : f32 = u_xlat9.y;
        u_xlat10.w = x_798;
        let x_800 : vec4<f32> = u_xlat10;
        let x_801 : vec2<f32> = vec2<f32>(x_800.y, x_800.z);
        let x_802 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_802.x, x_801.x, x_802.z, x_801.y);
        let x_805 : vec2<f32> = u_xlat58;
        let x_808 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) * vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y)) + vec4<f32>(x_811.x, x_811.y, x_811.z, x_811.y));
        let x_814 : vec2<f32> = u_xlat58;
        let x_817 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y) * vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y)) + vec4<f32>(x_820.w, x_820.y, x_820.w, x_820.z));
        let x_823 : vec2<f32> = u_xlat58;
        let x_826 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) * vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y)) + vec4<f32>(x_829.x, x_829.w, x_829.z, x_829.w));
        let x_833 : vec4<f32> = u_xlat7;
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_833.x, x_833.x, x_833.x, x_833.y) * vec4<f32>(x_835.z, x_835.w, x_835.y, x_835.z));
        let x_839 : vec4<f32> = u_xlat7;
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_839.y, x_839.y, x_839.z, x_839.z) * x_841);
        let x_844 : f32 = u_xlat7.z;
        let x_846 : f32 = u_xlat8.y;
        u_xlat58.x = (x_844 * x_846);
        let x_850 : vec4<f32> = u_xlat11;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_861 : vec3<f32> = txVec4;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat84 = x_863;
        let x_865 : vec4<f32> = u_xlat11;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec5;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat7.x = x_877;
        let x_880 : f32 = u_xlat7.x;
        let x_882 : f32 = u_xlat14.y;
        u_xlat7.x = (x_880 * x_882);
        let x_886 : f32 = u_xlat14.x;
        let x_887 : f32 = u_xlat84;
        let x_890 : f32 = u_xlat7.x;
        u_xlat84 = ((x_886 * x_887) + x_890);
        let x_893 : vec4<f32> = u_xlat12;
        let x_894 : vec2<f32> = vec2<f32>(x_893.x, x_893.y);
        let x_896 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_894.x, x_894.y, x_896);
        let x_903 : vec3<f32> = txVec6;
        let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_903.xy, x_903.z);
        u_xlat7.x = x_905;
        let x_908 : f32 = u_xlat14.z;
        let x_910 : f32 = u_xlat7.x;
        let x_912 : f32 = u_xlat84;
        u_xlat84 = ((x_908 * x_910) + x_912);
        let x_915 : vec4<f32> = u_xlat10;
        let x_916 : vec2<f32> = vec2<f32>(x_915.x, x_915.y);
        let x_918 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_916.x, x_916.y, x_918);
        let x_925 : vec3<f32> = txVec7;
        let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_925.xy, x_925.z);
        u_xlat7.x = x_927;
        let x_930 : f32 = u_xlat14.w;
        let x_932 : f32 = u_xlat7.x;
        let x_934 : f32 = u_xlat84;
        u_xlat84 = ((x_930 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat13;
        let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
        let x_940 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec8;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat7.x = x_949;
        let x_952 : f32 = u_xlat15.x;
        let x_954 : f32 = u_xlat7.x;
        let x_956 : f32 = u_xlat84;
        u_xlat84 = ((x_952 * x_954) + x_956);
        let x_959 : vec4<f32> = u_xlat13;
        let x_960 : vec2<f32> = vec2<f32>(x_959.z, x_959.w);
        let x_962 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_960.x, x_960.y, x_962);
        let x_969 : vec3<f32> = txVec9;
        let x_971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_969.xy, x_969.z);
        u_xlat7.x = x_971;
        let x_974 : f32 = u_xlat15.y;
        let x_976 : f32 = u_xlat7.x;
        let x_978 : f32 = u_xlat84;
        u_xlat84 = ((x_974 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat10;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec10;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat7.x = x_993;
        let x_996 : f32 = u_xlat15.z;
        let x_998 : f32 = u_xlat7.x;
        let x_1000 : f32 = u_xlat84;
        u_xlat84 = ((x_996 * x_998) + x_1000);
        let x_1003 : vec4<f32> = u_xlat9;
        let x_1004 : vec2<f32> = vec2<f32>(x_1003.x, x_1003.y);
        let x_1006 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec11;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
        u_xlat7.x = x_1015;
        let x_1018 : f32 = u_xlat15.w;
        let x_1020 : f32 = u_xlat7.x;
        let x_1022 : f32 = u_xlat84;
        u_xlat84 = ((x_1018 * x_1020) + x_1022);
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
        let x_1035 : vec3<f32> = txVec12;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1035.xy, x_1035.z);
        u_xlat7.x = x_1037;
        let x_1040 : f32 = u_xlat58.x;
        let x_1042 : f32 = u_xlat7.x;
        let x_1044 : f32 = u_xlat84;
        u_xlat32.x = ((x_1040 * x_1042) + x_1044);
      } else {
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.z, x_1051.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1055 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1055);
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1063 : vec2<f32> = u_xlat58;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.z, x_1060.w)) + -(x_1063));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1068.x, x_1068.x, x_1068.y, x_1068.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1071 : vec4<f32> = u_xlat8;
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1071.x, x_1071.x, x_1071.z, x_1071.z) * vec4<f32>(x_1073.x, x_1073.x, x_1073.z, x_1073.z));
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1080 : vec2<f32> = (vec2<f32>(x_1076.y, x_1076.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1081.x, x_1080.x, x_1081.z, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1083.x, x_1083.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1086.x, x_1086.y)));
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1093 : vec2<f32> = (-(vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1093.x, x_1094.y, x_1093.y, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1098 : vec2<f32> = min(vec2<f32>(x_1096.x, x_1096.y), vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1109 : vec2<f32> = ((-(vec2<f32>(x_1101.x, x_1101.y)) * vec2<f32>(x_1104.x, x_1104.y)) + vec2<f32>(x_1107.x, x_1107.z));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = max(vec2<f32>(x_1112.x, x_1112.y), vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = ((-(vec2<f32>(x_1117.x, x_1117.y)) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.y, x_1123.w));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1126.x, x_1125.x, x_1126.z, x_1125.y);
        let x_1128 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1128 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1132 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1132 * 0.08163200318813323975f);
        let x_1136 : vec2<f32> = u_xlat59;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1136.y, x_1136.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1142.x, x_1142.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1146 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1146 * 0.08163200318813323975f);
        let x_1150 : f32 = u_xlat11.y;
        u_xlat9.x = x_1150;
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1152.x, x_1152.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1159.x, x_1160.z, x_1159.y);
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1170 : f32 = u_xlat59.x;
        u_xlat8.y = x_1170;
        let x_1173 : f32 = u_xlat10.y;
        u_xlat8.w = x_1173;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1175 + x_1176);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1182 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1182.x, x_1181.x, x_1182.z, x_1181.y);
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1184.y, x_1184.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1188.w);
        let x_1191 : f32 = u_xlat59.y;
        u_xlat10.y = x_1191;
        let x_1193 : vec4<f32> = u_xlat10;
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1193 + x_1194);
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1196 / x_1197);
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1199 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1205 / x_1206);
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1208 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1213 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1210.w, x_1210.x, x_1210.y, x_1210.z) * vec4<f32>(x_1213.x, x_1213.x, x_1213.x, x_1213.x));
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1219 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1216.x, x_1216.w, x_1216.y, x_1216.z) * vec4<f32>(x_1219.y, x_1219.y, x_1219.y, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1223 : vec3<f32> = vec3<f32>(x_1222.y, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1223.z);
        let x_1227 : f32 = u_xlat10.x;
        u_xlat11.y = x_1227;
        let x_1229 : vec2<f32> = u_xlat58;
        let x_1232 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec2<f32> = u_xlat58;
        let x_1240 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat11;
        let x_1245 : vec2<f32> = ((x_1238 * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.w, x_1243.y));
        let x_1246 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1249 : f32 = u_xlat11.y;
        u_xlat8.y = x_1249;
        let x_1252 : f32 = u_xlat10.z;
        u_xlat11.y = x_1252;
        let x_1254 : vec2<f32> = u_xlat58;
        let x_1257 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.y));
        let x_1264 : vec2<f32> = u_xlat58;
        let x_1266 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1264 * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.w, x_1269.y));
        let x_1273 : f32 = u_xlat11.y;
        u_xlat8.z = x_1273;
        let x_1275 : vec2<f32> = u_xlat58;
        let x_1278 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.z));
        let x_1285 : f32 = u_xlat10.w;
        u_xlat11.y = x_1285;
        let x_1288 : vec2<f32> = u_xlat58;
        let x_1291 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1298 : vec2<f32> = u_xlat58;
        let x_1300 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = ((x_1298 * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.w, x_1303.y));
        let x_1306 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1305.x, x_1305.y, x_1306.z);
        let x_1309 : f32 = u_xlat11.y;
        u_xlat8.w = x_1309;
        let x_1312 : vec2<f32> = u_xlat58;
        let x_1314 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1319 : vec2<f32> = ((x_1312 * vec2<f32>(x_1314.x, x_1314.y)) + vec2<f32>(x_1317.x, x_1317.w));
        let x_1320 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
        let x_1322 : vec4<f32> = u_xlat11;
        let x_1323 : vec3<f32> = vec3<f32>(x_1322.x, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1323.z);
        let x_1326 : vec2<f32> = u_xlat58;
        let x_1329 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1332.y));
        let x_1336 : vec2<f32> = u_xlat58;
        let x_1338 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1336 * vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(x_1341.w, x_1341.y));
        let x_1345 : f32 = u_xlat8.x;
        u_xlat10.x = x_1345;
        let x_1347 : vec2<f32> = u_xlat58;
        let x_1349 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_1347 * vec2<f32>(x_1349.x, x_1349.y)) + vec2<f32>(x_1352.x, x_1352.y));
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1356.x, x_1356.x, x_1356.x, x_1356.x) * x_1358);
        let x_1361 : vec4<f32> = u_xlat7;
        let x_1363 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1361.y, x_1361.y, x_1361.y, x_1361.y) * x_1363);
        let x_1366 : vec4<f32> = u_xlat7;
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1366.z, x_1366.z, x_1366.z, x_1366.z) * x_1368);
        let x_1370 : vec4<f32> = u_xlat7;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1370.w, x_1370.w, x_1370.w, x_1370.w) * x_1372);
        let x_1375 : vec4<f32> = u_xlat12;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.x, x_1375.y);
        let x_1378 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec13;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat8.x = x_1387;
        let x_1390 : vec4<f32> = u_xlat12;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1401 : vec3<f32> = txVec14;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat86 = x_1403;
        let x_1404 : f32 = u_xlat86;
        let x_1406 : f32 = u_xlat18.y;
        u_xlat86 = (x_1404 * x_1406);
        let x_1409 : f32 = u_xlat18.x;
        let x_1411 : f32 = u_xlat8.x;
        let x_1413 : f32 = u_xlat86;
        u_xlat8.x = ((x_1409 * x_1411) + x_1413);
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec15;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat86 = x_1429;
        let x_1431 : f32 = u_xlat18.z;
        let x_1432 : f32 = u_xlat86;
        let x_1435 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1431 * x_1432) + x_1435);
        let x_1439 : vec4<f32> = u_xlat15;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec16;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat86 = x_1451;
        let x_1453 : f32 = u_xlat18.w;
        let x_1454 : f32 = u_xlat86;
        let x_1457 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1453 * x_1454) + x_1457);
        let x_1461 : vec4<f32> = u_xlat14;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec17;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat86 = x_1473;
        let x_1475 : f32 = u_xlat19.x;
        let x_1476 : f32 = u_xlat86;
        let x_1479 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1475 * x_1476) + x_1479);
        let x_1483 : vec4<f32> = u_xlat14;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec18;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat86 = x_1495;
        let x_1497 : f32 = u_xlat19.y;
        let x_1498 : f32 = u_xlat86;
        let x_1501 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1497 * x_1498) + x_1501);
        let x_1505 : vec2<f32> = u_xlat65;
        let x_1507 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec19;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat86 = x_1516;
        let x_1518 : f32 = u_xlat19.z;
        let x_1519 : f32 = u_xlat86;
        let x_1522 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat15;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec20;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat86 = x_1538;
        let x_1540 : f32 = u_xlat19.w;
        let x_1541 : f32 = u_xlat86;
        let x_1544 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1540 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat16;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.y);
        let x_1551 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec21;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat86 = x_1560;
        let x_1562 : f32 = u_xlat20.x;
        let x_1563 : f32 = u_xlat86;
        let x_1566 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat16;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.z, x_1570.w);
        let x_1573 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec22;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat86 = x_1582;
        let x_1584 : f32 = u_xlat20.y;
        let x_1585 : f32 = u_xlat86;
        let x_1588 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec3<f32> = u_xlat34;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
        let x_1595 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec23;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
        u_xlat34.x = x_1604;
        let x_1607 : f32 = u_xlat20.z;
        let x_1609 : f32 = u_xlat34.x;
        let x_1612 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1607 * x_1609) + x_1612);
        let x_1616 : vec4<f32> = u_xlat17;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
        let x_1619 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec24;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat34.x = x_1628;
        let x_1631 : f32 = u_xlat20.w;
        let x_1633 : f32 = u_xlat34.x;
        let x_1636 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1631 * x_1633) + x_1636);
        let x_1640 : vec4<f32> = u_xlat11;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec25;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat34.x = x_1652;
        let x_1655 : f32 = u_xlat7.x;
        let x_1657 : f32 = u_xlat34.x;
        let x_1660 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_1655 * x_1657) + x_1660);
        let x_1664 : vec4<f32> = u_xlat11;
        let x_1665 : vec2<f32> = vec2<f32>(x_1664.z, x_1664.w);
        let x_1667 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1665.x, x_1665.y, x_1667);
        let x_1674 : vec3<f32> = txVec26;
        let x_1676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1674.xy, x_1674.z);
        u_xlat8.x = x_1676;
        let x_1679 : f32 = u_xlat7.y;
        let x_1681 : f32 = u_xlat8.x;
        let x_1684 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1679 * x_1681) + x_1684);
        let x_1688 : vec2<f32> = u_xlat62;
        let x_1690 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1698 : vec3<f32> = txVec27;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1698.xy, x_1698.z);
        u_xlat33 = x_1700;
        let x_1702 : f32 = u_xlat7.z;
        let x_1703 : f32 = u_xlat33;
        let x_1706 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1702 * x_1703) + x_1706);
        let x_1710 : vec2<f32> = u_xlat58;
        let x_1712 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec28;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat58.x = x_1721;
        let x_1724 : f32 = u_xlat7.w;
        let x_1726 : f32 = u_xlat58.x;
        let x_1729 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1724 * x_1726) + x_1729);
      }
    }
  } else {
    let x_1734 : vec4<f32> = u_xlat4;
    let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
    let x_1737 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
    let x_1744 : vec3<f32> = txVec29;
    let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1744.xy, x_1744.z);
    u_xlat32.x = x_1746;
  }
  let x_1749 : f32 = x_123.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1749) + 1.0f);
  let x_1754 : f32 = u_xlat32.x;
  let x_1756 : f32 = x_123.x_MainLightShadowParams.x;
  let x_1759 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1754 * x_1756) + x_1759);
  let x_1764 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1764);
  let x_1768 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1768 >= 1.0f);
  let x_1770 : bool = u_xlatb56;
  let x_1771 : bool = u_xlatb30;
  u_xlatb30 = (x_1770 | x_1771);
  let x_1773 : bool = u_xlatb30;
  if (x_1773) {
    x_1775 = 1.0f;
  } else {
    let x_1780 : f32 = u_xlat4.x;
    x_1775 = x_1780;
  }
  let x_1781 : f32 = x_1775;
  u_xlat4.x = x_1781;
  let x_1783 : vec3<f32> = vs_TEXCOORD1;
  let x_1785 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1783 + -(x_1785));
  let x_1789 : vec3<f32> = u_xlat32;
  let x_1790 : vec3<f32> = u_xlat32;
  u_xlat30 = dot(x_1789, x_1790);
  let x_1793 : f32 = u_xlat30;
  let x_1795 : f32 = x_123.x_MainLightShadowParams.z;
  let x_1798 : f32 = x_123.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1793 * x_1795) + x_1798);
  let x_1800 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1800, 0.0f, 1.0f);
  let x_1803 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_1803) + 1.0f);
  let x_1807 : f32 = u_xlat56;
  let x_1809 : f32 = u_xlat32.x;
  let x_1812 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1807 * x_1809) + x_1812);
  let x_1822 : f32 = x_1820.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1822 == -1.0f));
  let x_1824 : bool = u_xlatb56;
  if (x_1824) {
    let x_1827 : vec3<f32> = vs_TEXCOORD1;
    let x_1830 : vec4<f32> = x_1820.x_MainLightWorldToLight[1i];
    let x_1832 : vec2<f32> = (vec2<f32>(x_1827.y, x_1827.y) * vec2<f32>(x_1830.x, x_1830.y));
    let x_1833 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1832.x, x_1832.y, x_1833.z);
    let x_1836 : vec4<f32> = x_1820.x_MainLightWorldToLight[0i];
    let x_1838 : vec3<f32> = vs_TEXCOORD1;
    let x_1841 : vec3<f32> = u_xlat32;
    let x_1843 : vec2<f32> = ((vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1838.x, x_1838.x)) + vec2<f32>(x_1841.x, x_1841.y));
    let x_1844 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1843.x, x_1843.y, x_1844.z);
    let x_1847 : vec4<f32> = x_1820.x_MainLightWorldToLight[2i];
    let x_1849 : vec3<f32> = vs_TEXCOORD1;
    let x_1852 : vec3<f32> = u_xlat32;
    let x_1854 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.y) * vec2<f32>(x_1849.z, x_1849.z)) + vec2<f32>(x_1852.x, x_1852.y));
    let x_1855 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1854.x, x_1854.y, x_1855.z);
    let x_1857 : vec3<f32> = u_xlat32;
    let x_1860 : vec4<f32> = x_1820.x_MainLightWorldToLight[3i];
    let x_1862 : vec2<f32> = (vec2<f32>(x_1857.x, x_1857.y) + vec2<f32>(x_1860.x, x_1860.y));
    let x_1863 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1862.x, x_1862.y, x_1863.z);
    let x_1865 : vec3<f32> = u_xlat32;
    let x_1868 : vec2<f32> = ((vec2<f32>(x_1865.x, x_1865.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1869 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1868.x, x_1868.y, x_1869.z);
    let x_1876 : vec3<f32> = u_xlat32;
    let x_1879 : f32 = x_28.x_GlobalMipBias.x;
    let x_1880 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1876.x, x_1876.y), x_1879);
    u_xlat7 = x_1880;
    let x_1882 : f32 = x_1820.x_MainLightCookieTextureFormat;
    let x_1884 : f32 = x_1820.x_MainLightCookieTextureFormat;
    let x_1886 : f32 = x_1820.x_MainLightCookieTextureFormat;
    let x_1888 : f32 = x_1820.x_MainLightCookieTextureFormat;
    let x_1889 : vec4<f32> = vec4<f32>(x_1882, x_1884, x_1886, x_1888);
    let x_1896 : vec4<bool> = (vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1889.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_1896.x, x_1896.y);
    let x_1899 : bool = u_xlatb32.y;
    if (x_1899) {
      let x_1904 : f32 = u_xlat7.w;
      x_1900 = x_1904;
    } else {
      let x_1907 : f32 = u_xlat7.x;
      x_1900 = x_1907;
    }
    let x_1908 : f32 = x_1900;
    u_xlat56 = x_1908;
    let x_1910 : bool = u_xlatb32.x;
    if (x_1910) {
      let x_1914 : vec4<f32> = u_xlat7;
      x_1911 = vec3<f32>(x_1914.x, x_1914.y, x_1914.z);
    } else {
      let x_1917 : f32 = u_xlat56;
      x_1911 = vec3<f32>(x_1917, x_1917, x_1917);
    }
    let x_1919 : vec3<f32> = x_1911;
    u_xlat32 = x_1919;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_1924 : vec3<f32> = u_xlat32;
  let x_1926 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat32 = (x_1924 * vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1929 : vec3<f32> = u_xlat2;
  let x_1931 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(-(x_1929), x_1931);
  let x_1933 : f32 = u_xlat56;
  let x_1934 : f32 = u_xlat56;
  u_xlat56 = (x_1933 + x_1934);
  let x_1936 : vec3<f32> = u_xlat3;
  let x_1937 : f32 = u_xlat56;
  let x_1941 : vec3<f32> = u_xlat2;
  let x_1943 : vec3<f32> = ((x_1936 * -(vec3<f32>(x_1937, x_1937, x_1937))) + -(x_1941));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat3;
  let x_1947 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(x_1946, x_1947);
  let x_1949 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1949, 0.0f, 1.0f);
  let x_1951 : f32 = u_xlat56;
  u_xlat56 = (-(x_1951) + 1.0f);
  let x_1954 : f32 = u_xlat56;
  let x_1955 : f32 = u_xlat56;
  u_xlat56 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat56;
  let x_1958 : f32 = u_xlat56;
  u_xlat56 = (x_1957 * x_1958);
  let x_1961 : f32 = u_xlat80;
  u_xlat85 = ((-(x_1961) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1967 : f32 = u_xlat80;
  let x_1968 : f32 = u_xlat85;
  u_xlat80 = (x_1967 * x_1968);
  let x_1970 : f32 = u_xlat80;
  u_xlat80 = (x_1970 * 6.0f);
  let x_1981 : vec4<f32> = u_xlat7;
  let x_1983 : f32 = u_xlat80;
  let x_1984 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1981.x, x_1981.y, x_1981.z), x_1983);
  u_xlat7 = x_1984;
  let x_1986 : f32 = u_xlat7.w;
  u_xlat80 = (x_1986 + -1.0f);
  let x_1993 : f32 = x_1991.unity_SpecCube0_HDR.w;
  let x_1994 : f32 = u_xlat80;
  u_xlat80 = ((x_1993 * x_1994) + 1.0f);
  let x_1997 : f32 = u_xlat80;
  u_xlat80 = max(x_1997, 0.0f);
  let x_1999 : f32 = u_xlat80;
  u_xlat80 = log2(x_1999);
  let x_2001 : f32 = u_xlat80;
  let x_2003 : f32 = x_1991.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_2001 * x_2003);
  let x_2005 : f32 = u_xlat80;
  u_xlat80 = exp2(x_2005);
  let x_2007 : f32 = u_xlat80;
  let x_2009 : f32 = x_1991.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_2007 * x_2009);
  let x_2011 : vec4<f32> = u_xlat7;
  let x_2013 : f32 = u_xlat80;
  let x_2015 : vec3<f32> = (vec3<f32>(x_2011.x, x_2011.y, x_2011.z) * vec3<f32>(x_2013, x_2013, x_2013));
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : f32 = u_xlat82;
  let x_2020 : f32 = u_xlat82;
  let x_2024 : vec2<f32> = ((vec2<f32>(x_2018, x_2018) * vec2<f32>(x_2020, x_2020)) + vec2<f32>(-1.0f, 1.0f));
  let x_2025 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
  let x_2028 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_2028);
  let x_2030 : vec4<f32> = u_xlat0;
  let x_2033 : f32 = u_xlat81;
  u_xlat34 = (-(vec3<f32>(x_2030.x, x_2030.y, x_2030.z)) + vec3<f32>(x_2033, x_2033, x_2033));
  let x_2036 : f32 = u_xlat56;
  let x_2038 : vec3<f32> = u_xlat34;
  let x_2040 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2036, x_2036, x_2036) * x_2038) + vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2043 : f32 = u_xlat80;
  let x_2045 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2043, x_2043, x_2043) * x_2045);
  let x_2047 : vec4<f32> = u_xlat7;
  let x_2049 : vec3<f32> = u_xlat34;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * x_2049);
  let x_2051 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec4<f32> = u_xlat5;
  let x_2055 : vec3<f32> = u_xlat27;
  let x_2057 : vec4<f32> = u_xlat7;
  let x_2059 : vec3<f32> = ((vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * x_2055) + vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
  let x_2063 : f32 = u_xlat4.x;
  let x_2065 : f32 = x_1991.unity_LightData.z;
  u_xlat80 = (x_2063 * x_2065);
  let x_2067 : vec3<f32> = u_xlat3;
  let x_2069 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat81 = dot(x_2067, vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2072, 0.0f, 1.0f);
  let x_2074 : f32 = u_xlat80;
  let x_2075 : f32 = u_xlat81;
  u_xlat80 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat80;
  let x_2079 : vec3<f32> = u_xlat32;
  let x_2080 : vec3<f32> = (vec3<f32>(x_2077, x_2077, x_2077) * x_2079);
  let x_2081 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2080.x, x_2081.y, x_2080.y, x_2080.z);
  let x_2083 : vec3<f32> = u_xlat2;
  let x_2085 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_2083 + vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : vec3<f32> = u_xlat32;
  let x_2089 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2088, x_2089);
  let x_2091 : f32 = u_xlat80;
  u_xlat80 = max(x_2091, 1.17549435e-38f);
  let x_2094 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2094);
  let x_2096 : f32 = u_xlat80;
  let x_2098 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2096, x_2096, x_2096) * x_2098);
  let x_2100 : vec3<f32> = u_xlat3;
  let x_2101 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2100, x_2101);
  let x_2103 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2103, 0.0f, 1.0f);
  let x_2106 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2108 : vec3<f32> = u_xlat32;
  u_xlat81 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), x_2108);
  let x_2110 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2110, 0.0f, 1.0f);
  let x_2112 : f32 = u_xlat80;
  let x_2113 : f32 = u_xlat80;
  u_xlat80 = (x_2112 * x_2113);
  let x_2115 : f32 = u_xlat80;
  let x_2117 : f32 = u_xlat8.x;
  u_xlat80 = ((x_2115 * x_2117) + 1.00001001358032226562f);
  let x_2121 : f32 = u_xlat81;
  let x_2122 : f32 = u_xlat81;
  u_xlat81 = (x_2121 * x_2122);
  let x_2124 : f32 = u_xlat80;
  let x_2125 : f32 = u_xlat80;
  u_xlat80 = (x_2124 * x_2125);
  let x_2127 : f32 = u_xlat81;
  u_xlat81 = max(x_2127, 0.10000000149011611938f);
  let x_2130 : f32 = u_xlat80;
  let x_2131 : f32 = u_xlat81;
  u_xlat80 = (x_2130 * x_2131);
  let x_2134 : f32 = u_xlat6.x;
  let x_2135 : f32 = u_xlat80;
  u_xlat80 = (x_2134 * x_2135);
  let x_2137 : f32 = u_xlat83;
  let x_2138 : f32 = u_xlat80;
  u_xlat80 = (x_2137 / x_2138);
  let x_2140 : vec4<f32> = u_xlat0;
  let x_2142 : f32 = u_xlat80;
  let x_2145 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_2140.x, x_2140.y, x_2140.z) * vec3<f32>(x_2142, x_2142, x_2142)) + x_2145);
  let x_2148 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2150 : f32 = x_1991.unity_LightData.y;
  u_xlat80 = min(x_2148, x_2150);
  let x_2153 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2153));
  let x_2156 : f32 = u_xlat30;
  let x_2159 : f32 = x_123.x_AdditionalShadowFadeParams.x;
  let x_2162 : f32 = x_123.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2156 * x_2159) + x_2162);
  let x_2164 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2164, 0.0f, 1.0f);
  let x_2168 : f32 = x_1820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2170 : f32 = x_1820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2172 : f32 = x_1820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2174 : f32 = x_1820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2175 : vec4<f32> = vec4<f32>(x_2168, x_2170, x_2172, x_2174);
  let x_2181 : vec4<bool> = (vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2175.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2181.x, x_2181.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2193 : u32 = u_xlatu_loop_1;
    let x_2194 : u32 = u_xlatu80;
    if ((x_2193 < x_2194)) {
    } else {
      break;
    }
    let x_2197 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_2197 >> 2u);
    let x_2200 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_2200 & 3u));
    let x_2203 : u32 = u_xlatu59;
    let x_2206 : vec4<f32> = x_1991.unity_LightIndices[bitcast<i32>(x_2203)];
    let x_2216 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2221 : vec4<u32> = indexable[x_2216];
    u_xlat59.x = dot(x_2206, bitcast<vec4<f32>>(x_2221));
    let x_2227 : f32 = u_xlat59.x;
    u_xlati59 = i32(x_2227);
    let x_2229 : vec3<f32> = vs_TEXCOORD1;
    let x_2240 : i32 = u_xlati59;
    let x_2242 : vec4<f32> = x_2239.x_AdditionalLightsPosition[x_2240];
    let x_2245 : i32 = u_xlati59;
    let x_2247 : vec4<f32> = x_2239.x_AdditionalLightsPosition[x_2245];
    let x_2249 : vec3<f32> = ((-(x_2229) * vec3<f32>(x_2242.w, x_2242.w, x_2242.w)) + vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
    let x_2250 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
    let x_2252 : vec4<f32> = u_xlat9;
    let x_2254 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_2252.x, x_2252.y, x_2252.z), vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
    let x_2257 : f32 = u_xlat85;
    u_xlat85 = max(x_2257, 0.00006103515625f);
    let x_2261 : f32 = u_xlat85;
    u_xlat87 = inverseSqrt(x_2261);
    let x_2263 : f32 = u_xlat87;
    let x_2265 : vec4<f32> = u_xlat9;
    let x_2267 : vec3<f32> = (vec3<f32>(x_2263, x_2263, x_2263) * vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
    let x_2268 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
    let x_2271 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_2271);
    let x_2273 : f32 = u_xlat85;
    let x_2274 : i32 = u_xlati59;
    let x_2276 : f32 = x_2239.x_AdditionalLightsAttenuation[x_2274].x;
    u_xlat85 = (x_2273 * x_2276);
    let x_2278 : f32 = u_xlat85;
    let x_2280 : f32 = u_xlat85;
    u_xlat85 = ((-(x_2278) * x_2280) + 1.0f);
    let x_2283 : f32 = u_xlat85;
    u_xlat85 = max(x_2283, 0.0f);
    let x_2285 : f32 = u_xlat85;
    let x_2286 : f32 = u_xlat85;
    u_xlat85 = (x_2285 * x_2286);
    let x_2288 : f32 = u_xlat85;
    let x_2289 : f32 = u_xlat88;
    u_xlat85 = (x_2288 * x_2289);
    let x_2291 : i32 = u_xlati59;
    let x_2293 : vec4<f32> = x_2239.x_AdditionalLightsSpotDir[x_2291];
    let x_2295 : vec4<f32> = u_xlat10;
    u_xlat88 = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
    let x_2298 : f32 = u_xlat88;
    let x_2299 : i32 = u_xlati59;
    let x_2301 : f32 = x_2239.x_AdditionalLightsAttenuation[x_2299].z;
    let x_2303 : i32 = u_xlati59;
    let x_2305 : f32 = x_2239.x_AdditionalLightsAttenuation[x_2303].w;
    u_xlat88 = ((x_2298 * x_2301) + x_2305);
    let x_2307 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2307, 0.0f, 1.0f);
    let x_2309 : f32 = u_xlat88;
    let x_2310 : f32 = u_xlat88;
    u_xlat88 = (x_2309 * x_2310);
    let x_2312 : f32 = u_xlat85;
    let x_2313 : f32 = u_xlat88;
    u_xlat85 = (x_2312 * x_2313);
    let x_2317 : i32 = u_xlati59;
    let x_2319 : f32 = x_123.x_AdditionalShadowParams[x_2317].w;
    u_xlati88 = i32(x_2319);
    let x_2324 : i32 = u_xlati88;
    u_xlatb11.x = (x_2324 >= 0i);
    let x_2328 : bool = u_xlatb11.x;
    if (x_2328) {
      let x_2332 : i32 = u_xlati59;
      let x_2334 : f32 = x_123.x_AdditionalShadowParams[x_2332].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2334, x_2334, x_2334, x_2334))));
      let x_2340 : bool = u_xlatb11.x;
      if (x_2340) {
        let x_2343 : vec4<f32> = u_xlat10;
        let x_2346 : vec4<f32> = u_xlat10;
        let x_2349 : vec4<bool> = (abs(vec4<f32>(x_2343.z, x_2343.z, x_2343.y, x_2343.z)) >= abs(vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.x)));
        u_xlatb11 = vec3<bool>(x_2349.x, x_2349.y, x_2349.z);
        let x_2352 : bool = u_xlatb11.y;
        let x_2354 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_2352 & x_2354);
        let x_2358 : vec4<f32> = u_xlat10;
        let x_2361 : vec4<bool> = (-(vec4<f32>(x_2358.z, x_2358.y, x_2358.x, x_2358.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_2361.x, x_2361.y, x_2361.z);
        let x_2365 : bool = u_xlatb12.x;
        u_xlat37.x = select(4.0f, 5.0f, x_2365);
        let x_2370 : bool = u_xlatb12.y;
        u_xlat37.z = select(2.0f, 3.0f, x_2370);
        let x_2374 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_2374);
        let x_2379 : bool = u_xlatb11.z;
        if (x_2379) {
          let x_2384 : f32 = u_xlat37.z;
          x_2380 = x_2384;
        } else {
          let x_2387 : f32 = u_xlat12.x;
          x_2380 = x_2387;
        }
        let x_2388 : f32 = x_2380;
        u_xlat63 = x_2388;
        let x_2390 : bool = u_xlatb11.x;
        if (x_2390) {
          let x_2395 : f32 = u_xlat37.x;
          x_2391 = x_2395;
        } else {
          let x_2397 : f32 = u_xlat63;
          x_2391 = x_2397;
        }
        let x_2398 : f32 = x_2391;
        u_xlat11.x = x_2398;
        let x_2400 : i32 = u_xlati59;
        let x_2402 : f32 = x_123.x_AdditionalShadowParams[x_2400].w;
        u_xlat37.x = trunc(x_2402);
        let x_2406 : f32 = u_xlat11.x;
        let x_2408 : f32 = u_xlat37.x;
        u_xlat11.x = (x_2406 + x_2408);
        let x_2412 : f32 = u_xlat11.x;
        u_xlati88 = i32(x_2412);
      }
      let x_2414 : i32 = u_xlati88;
      u_xlati88 = (x_2414 << bitcast<u32>(2i));
      let x_2416 : vec3<f32> = vs_TEXCOORD1;
      let x_2419 : i32 = u_xlati88;
      let x_2422 : i32 = u_xlati88;
      let x_2426 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2419 + 1i) / 4i)][((x_2422 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2416.y, x_2416.y, x_2416.y, x_2416.y) * x_2426);
      let x_2428 : i32 = u_xlati88;
      let x_2430 : i32 = u_xlati88;
      let x_2433 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[(x_2428 / 4i)][(x_2430 % 4i)];
      let x_2434 : vec3<f32> = vs_TEXCOORD1;
      let x_2437 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2433 * vec4<f32>(x_2434.x, x_2434.x, x_2434.x, x_2434.x)) + x_2437);
      let x_2439 : i32 = u_xlati88;
      let x_2442 : i32 = u_xlati88;
      let x_2446 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2439 + 2i) / 4i)][((x_2442 + 2i) % 4i)];
      let x_2447 : vec3<f32> = vs_TEXCOORD1;
      let x_2450 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2446 * vec4<f32>(x_2447.z, x_2447.z, x_2447.z, x_2447.z)) + x_2450);
      let x_2452 : vec4<f32> = u_xlat11;
      let x_2453 : i32 = u_xlati88;
      let x_2456 : i32 = u_xlati88;
      let x_2460 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2453 + 3i) / 4i)][((x_2456 + 3i) % 4i)];
      u_xlat11 = (x_2452 + x_2460);
      let x_2462 : vec4<f32> = u_xlat11;
      let x_2464 : vec4<f32> = u_xlat11;
      let x_2466 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.y, x_2462.z) / vec3<f32>(x_2464.w, x_2464.w, x_2464.w));
      let x_2467 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
      let x_2470 : i32 = u_xlati59;
      let x_2472 : f32 = x_123.x_AdditionalShadowParams[x_2470].y;
      u_xlatb88 = (0.0f < x_2472);
      let x_2474 : bool = u_xlatb88;
      if (x_2474) {
        let x_2477 : i32 = u_xlati59;
        let x_2479 : f32 = x_123.x_AdditionalShadowParams[x_2477].y;
        u_xlatb88 = (1.0f == x_2479);
        let x_2481 : bool = u_xlatb88;
        if (x_2481) {
          let x_2484 : vec4<f32> = u_xlat11;
          let x_2488 : vec4<f32> = x_123.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2484.x, x_2484.y, x_2484.x, x_2484.y) + x_2488);
          let x_2491 : vec4<f32> = u_xlat12;
          let x_2492 : vec2<f32> = vec2<f32>(x_2491.x, x_2491.y);
          let x_2494 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2492.x, x_2492.y, x_2494);
          let x_2502 : vec3<f32> = txVec30;
          let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
          u_xlat13.x = x_2504;
          let x_2507 : vec4<f32> = u_xlat12;
          let x_2508 : vec2<f32> = vec2<f32>(x_2507.z, x_2507.w);
          let x_2510 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
          let x_2517 : vec3<f32> = txVec31;
          let x_2519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2517.xy, x_2517.z);
          u_xlat13.y = x_2519;
          let x_2521 : vec4<f32> = u_xlat11;
          let x_2525 : vec4<f32> = x_123.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2521.x, x_2521.y, x_2521.x, x_2521.y) + x_2525);
          let x_2528 : vec4<f32> = u_xlat12;
          let x_2529 : vec2<f32> = vec2<f32>(x_2528.x, x_2528.y);
          let x_2531 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
          let x_2538 : vec3<f32> = txVec32;
          let x_2540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
          u_xlat13.z = x_2540;
          let x_2543 : vec4<f32> = u_xlat12;
          let x_2544 : vec2<f32> = vec2<f32>(x_2543.z, x_2543.w);
          let x_2546 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2544.x, x_2544.y, x_2546);
          let x_2553 : vec3<f32> = txVec33;
          let x_2555 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2553.xy, x_2553.z);
          u_xlat13.w = x_2555;
          let x_2557 : vec4<f32> = u_xlat13;
          u_xlat88 = dot(x_2557, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2561 : i32 = u_xlati59;
          let x_2563 : f32 = x_123.x_AdditionalShadowParams[x_2561].y;
          u_xlatb89 = (2.0f == x_2563);
          let x_2565 : bool = u_xlatb89;
          if (x_2565) {
            let x_2568 : vec4<f32> = u_xlat11;
            let x_2572 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2575 : vec2<f32> = ((vec2<f32>(x_2568.x, x_2568.y) * vec2<f32>(x_2572.z, x_2572.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2576 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat12;
            let x_2580 : vec2<f32> = floor(vec2<f32>(x_2578.x, x_2578.y));
            let x_2581 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
            let x_2584 : vec4<f32> = u_xlat11;
            let x_2587 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2590 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2584.x, x_2584.y) * vec2<f32>(x_2587.z, x_2587.w)) + -(vec2<f32>(x_2590.x, x_2590.y)));
            let x_2594 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2594.x, x_2594.x, x_2594.y, x_2594.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2597 : vec4<f32> = u_xlat13;
            let x_2599 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2597.x, x_2597.x, x_2597.z, x_2597.z) * vec4<f32>(x_2599.x, x_2599.x, x_2599.z, x_2599.z));
            let x_2602 : vec4<f32> = u_xlat14;
            let x_2604 : vec2<f32> = (vec2<f32>(x_2602.y, x_2602.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2604.x, x_2605.y, x_2604.y, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat14;
            let x_2610 : vec2<f32> = u_xlat64;
            let x_2612 : vec2<f32> = ((vec2<f32>(x_2607.x, x_2607.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2610));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
            let x_2616 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2616) + vec2<f32>(1.0f, 1.0f));
            let x_2619 : vec2<f32> = u_xlat64;
            let x_2620 : vec2<f32> = min(x_2619, vec2<f32>(0.0f, 0.0f));
            let x_2621 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
            let x_2623 : vec4<f32> = u_xlat15;
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2629 : vec2<f32> = u_xlat66;
            let x_2630 : vec2<f32> = ((-(vec2<f32>(x_2623.x, x_2623.y)) * vec2<f32>(x_2626.x, x_2626.y)) + x_2629);
            let x_2631 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
            let x_2633 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2633, vec2<f32>(0.0f, 0.0f));
            let x_2635 : vec2<f32> = u_xlat64;
            let x_2637 : vec2<f32> = u_xlat64;
            let x_2639 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2635) * x_2637) + vec2<f32>(x_2639.y, x_2639.w));
            let x_2642 : vec4<f32> = u_xlat15;
            let x_2644 : vec2<f32> = (vec2<f32>(x_2642.x, x_2642.y) + vec2<f32>(1.0f, 1.0f));
            let x_2645 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2645.w);
            let x_2647 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2647 + vec2<f32>(1.0f, 1.0f));
            let x_2649 : vec4<f32> = u_xlat14;
            let x_2651 : vec2<f32> = (vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2652 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2651.x, x_2651.y, x_2652.z, x_2652.w);
            let x_2654 : vec2<f32> = u_xlat66;
            let x_2655 : vec2<f32> = (x_2654 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2656 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec4<f32> = u_xlat15;
            let x_2660 : vec2<f32> = (vec2<f32>(x_2658.x, x_2658.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2661 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2660.x, x_2660.y, x_2661.z, x_2661.w);
            let x_2663 : vec2<f32> = u_xlat64;
            let x_2664 : vec2<f32> = (x_2663 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2665 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2667.y, x_2667.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2671 : f32 = u_xlat15.x;
            u_xlat16.z = x_2671;
            let x_2674 : f32 = u_xlat64.x;
            u_xlat16.w = x_2674;
            let x_2677 : f32 = u_xlat17.x;
            u_xlat14.z = x_2677;
            let x_2680 : f32 = u_xlat13.x;
            u_xlat14.w = x_2680;
            let x_2682 : vec4<f32> = u_xlat14;
            let x_2684 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2682.z, x_2682.w, x_2682.x, x_2682.z) + vec4<f32>(x_2684.z, x_2684.w, x_2684.x, x_2684.z));
            let x_2688 : f32 = u_xlat16.y;
            u_xlat15.z = x_2688;
            let x_2691 : f32 = u_xlat64.y;
            u_xlat15.w = x_2691;
            let x_2694 : f32 = u_xlat14.y;
            u_xlat17.z = x_2694;
            let x_2697 : f32 = u_xlat13.z;
            u_xlat17.w = x_2697;
            let x_2699 : vec4<f32> = u_xlat15;
            let x_2701 : vec4<f32> = u_xlat17;
            let x_2703 : vec3<f32> = (vec3<f32>(x_2699.z, x_2699.y, x_2699.w) + vec3<f32>(x_2701.z, x_2701.y, x_2701.w));
            let x_2704 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
            let x_2706 : vec4<f32> = u_xlat14;
            let x_2708 : vec4<f32> = u_xlat18;
            let x_2710 : vec3<f32> = (vec3<f32>(x_2706.x, x_2706.z, x_2706.w) / vec3<f32>(x_2708.z, x_2708.w, x_2708.y));
            let x_2711 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2715 : vec3<f32> = (vec3<f32>(x_2713.x, x_2713.y, x_2713.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2716 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat17;
            let x_2720 : vec4<f32> = u_xlat13;
            let x_2722 : vec3<f32> = (vec3<f32>(x_2718.z, x_2718.y, x_2718.w) / vec3<f32>(x_2720.x, x_2720.y, x_2720.z));
            let x_2723 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
            let x_2725 : vec4<f32> = u_xlat15;
            let x_2727 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.y, x_2725.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2728 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
            let x_2730 : vec4<f32> = u_xlat14;
            let x_2733 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2735 : vec3<f32> = (vec3<f32>(x_2730.y, x_2730.x, x_2730.z) * vec3<f32>(x_2733.x, x_2733.x, x_2733.x));
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
            let x_2738 : vec4<f32> = u_xlat15;
            let x_2741 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2743 : vec3<f32> = (vec3<f32>(x_2738.x, x_2738.y, x_2738.z) * vec3<f32>(x_2741.y, x_2741.y, x_2741.y));
            let x_2744 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
            let x_2747 : f32 = u_xlat15.x;
            u_xlat14.w = x_2747;
            let x_2749 : vec4<f32> = u_xlat12;
            let x_2752 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2755 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y) * vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.y)) + vec4<f32>(x_2755.y, x_2755.w, x_2755.x, x_2755.w));
            let x_2758 : vec4<f32> = u_xlat12;
            let x_2761 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2764 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2761.x, x_2761.y)) + vec2<f32>(x_2764.z, x_2764.w));
            let x_2768 : f32 = u_xlat14.y;
            u_xlat15.w = x_2768;
            let x_2770 : vec4<f32> = u_xlat15;
            let x_2771 : vec2<f32> = vec2<f32>(x_2770.y, x_2770.z);
            let x_2772 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2772.x, x_2771.x, x_2772.z, x_2771.y);
            let x_2774 : vec4<f32> = u_xlat12;
            let x_2777 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2780.y));
            let x_2783 : vec4<f32> = u_xlat12;
            let x_2786 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y) * vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y)) + vec4<f32>(x_2789.w, x_2789.y, x_2789.w, x_2789.z));
            let x_2792 : vec4<f32> = u_xlat12;
            let x_2795 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2798 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y) * vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.y)) + vec4<f32>(x_2798.x, x_2798.w, x_2798.z, x_2798.w));
            let x_2801 : vec4<f32> = u_xlat13;
            let x_2803 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2801.x, x_2801.x, x_2801.x, x_2801.y) * vec4<f32>(x_2803.z, x_2803.w, x_2803.y, x_2803.z));
            let x_2806 : vec4<f32> = u_xlat13;
            let x_2808 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2806.y, x_2806.y, x_2806.z, x_2806.z) * x_2808);
            let x_2812 : f32 = u_xlat13.z;
            let x_2814 : f32 = u_xlat18.y;
            u_xlat89 = (x_2812 * x_2814);
            let x_2817 : vec4<f32> = u_xlat16;
            let x_2818 : vec2<f32> = vec2<f32>(x_2817.x, x_2817.y);
            let x_2820 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
            let x_2827 : vec3<f32> = txVec34;
            let x_2829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
            u_xlat12.x = x_2829;
            let x_2832 : vec4<f32> = u_xlat16;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.z, x_2832.w);
            let x_2835 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2843 : vec3<f32> = txVec35;
            let x_2845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2843.xy, x_2843.z);
            u_xlat38 = x_2845;
            let x_2846 : f32 = u_xlat38;
            let x_2848 : f32 = u_xlat19.y;
            u_xlat38 = (x_2846 * x_2848);
            let x_2851 : f32 = u_xlat19.x;
            let x_2853 : f32 = u_xlat12.x;
            let x_2855 : f32 = u_xlat38;
            u_xlat12.x = ((x_2851 * x_2853) + x_2855);
            let x_2859 : vec2<f32> = u_xlat64;
            let x_2861 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec36;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat38 = x_2870;
            let x_2872 : f32 = u_xlat19.z;
            let x_2873 : f32 = u_xlat38;
            let x_2876 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2872 * x_2873) + x_2876);
            let x_2880 : vec4<f32> = u_xlat15;
            let x_2881 : vec2<f32> = vec2<f32>(x_2880.x, x_2880.y);
            let x_2883 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
            let x_2890 : vec3<f32> = txVec37;
            let x_2892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
            u_xlat38 = x_2892;
            let x_2894 : f32 = u_xlat19.w;
            let x_2895 : f32 = u_xlat38;
            let x_2898 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2894 * x_2895) + x_2898);
            let x_2902 : vec4<f32> = u_xlat17;
            let x_2903 : vec2<f32> = vec2<f32>(x_2902.x, x_2902.y);
            let x_2905 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec38;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat38 = x_2914;
            let x_2916 : f32 = u_xlat20.x;
            let x_2917 : f32 = u_xlat38;
            let x_2920 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2916 * x_2917) + x_2920);
            let x_2924 : vec4<f32> = u_xlat17;
            let x_2925 : vec2<f32> = vec2<f32>(x_2924.z, x_2924.w);
            let x_2927 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec39;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat38 = x_2936;
            let x_2938 : f32 = u_xlat20.y;
            let x_2939 : f32 = u_xlat38;
            let x_2942 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2938 * x_2939) + x_2942);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.z, x_2946.w);
            let x_2949 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec40;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat38 = x_2958;
            let x_2960 : f32 = u_xlat20.z;
            let x_2961 : f32 = u_xlat38;
            let x_2964 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2960 * x_2961) + x_2964);
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2969 : vec2<f32> = vec2<f32>(x_2968.x, x_2968.y);
            let x_2971 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
            let x_2978 : vec3<f32> = txVec41;
            let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
            u_xlat38 = x_2980;
            let x_2982 : f32 = u_xlat20.w;
            let x_2983 : f32 = u_xlat38;
            let x_2986 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2982 * x_2983) + x_2986);
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.z, x_2990.w);
            let x_2993 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec42;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat38 = x_3002;
            let x_3003 : f32 = u_xlat89;
            let x_3004 : f32 = u_xlat38;
            let x_3007 : f32 = u_xlat12.x;
            u_xlat88 = ((x_3003 * x_3004) + x_3007);
          } else {
            let x_3010 : vec4<f32> = u_xlat11;
            let x_3013 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3016 : vec2<f32> = ((vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(x_3013.z, x_3013.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3017 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat12;
            let x_3021 : vec2<f32> = floor(vec2<f32>(x_3019.x, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec4<f32> = u_xlat11;
            let x_3027 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3024.x, x_3024.y) * vec2<f32>(x_3027.z, x_3027.w)) + -(vec2<f32>(x_3030.x, x_3030.y)));
            let x_3034 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3034.x, x_3034.x, x_3034.y, x_3034.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3037 : vec4<f32> = u_xlat13;
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3037.x, x_3037.x, x_3037.z, x_3037.z) * vec4<f32>(x_3039.x, x_3039.x, x_3039.z, x_3039.z));
            let x_3042 : vec4<f32> = u_xlat14;
            let x_3044 : vec2<f32> = (vec2<f32>(x_3042.y, x_3042.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3045.x, x_3044.x, x_3045.z, x_3044.y);
            let x_3047 : vec4<f32> = u_xlat14;
            let x_3050 : vec2<f32> = u_xlat64;
            let x_3052 : vec2<f32> = ((vec2<f32>(x_3047.x, x_3047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3050));
            let x_3053 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3052.x, x_3053.y, x_3052.y, x_3053.w);
            let x_3055 : vec2<f32> = u_xlat64;
            let x_3057 : vec2<f32> = (-(x_3055) + vec2<f32>(1.0f, 1.0f));
            let x_3058 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3057.x, x_3057.y, x_3058.z, x_3058.w);
            let x_3060 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3060, vec2<f32>(0.0f, 0.0f));
            let x_3062 : vec2<f32> = u_xlat66;
            let x_3064 : vec2<f32> = u_xlat66;
            let x_3066 : vec4<f32> = u_xlat14;
            let x_3068 : vec2<f32> = ((-(x_3062) * x_3064) + vec2<f32>(x_3066.x, x_3066.y));
            let x_3069 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3068.x, x_3068.y, x_3069.z, x_3069.w);
            let x_3071 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3071, vec2<f32>(0.0f, 0.0f));
            let x_3074 : vec2<f32> = u_xlat66;
            let x_3076 : vec2<f32> = u_xlat66;
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3080 : vec2<f32> = ((-(x_3074) * x_3076) + vec2<f32>(x_3078.y, x_3078.w));
            let x_3081 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3080.x, x_3081.y, x_3080.y);
            let x_3083 : vec4<f32> = u_xlat14;
            let x_3086 : vec2<f32> = (vec2<f32>(x_3083.x, x_3083.y) + vec2<f32>(2.0f, 2.0f));
            let x_3087 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3089 : vec3<f32> = u_xlat39;
            let x_3091 : vec2<f32> = (vec2<f32>(x_3089.x, x_3089.z) + vec2<f32>(2.0f, 2.0f));
            let x_3092 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3092.x, x_3091.x, x_3092.z, x_3091.y);
            let x_3095 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3095 * 0.08163200318813323975f);
            let x_3098 : vec4<f32> = u_xlat13;
            let x_3101 : vec3<f32> = (vec3<f32>(x_3098.z, x_3098.x, x_3098.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3102 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3101.x, x_3101.y, x_3101.z, x_3102.w);
            let x_3104 : vec4<f32> = u_xlat14;
            let x_3106 : vec2<f32> = (vec2<f32>(x_3104.x, x_3104.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3107 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
            let x_3110 : f32 = u_xlat17.y;
            u_xlat16.x = x_3110;
            let x_3112 : vec2<f32> = u_xlat64;
            let x_3115 : vec2<f32> = ((vec2<f32>(x_3112.x, x_3112.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3116 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3116.x, x_3115.x, x_3116.z, x_3115.y);
            let x_3118 : vec2<f32> = u_xlat64;
            let x_3121 : vec2<f32> = ((vec2<f32>(x_3118.x, x_3118.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3122 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3121.x, x_3122.y, x_3121.y, x_3122.w);
            let x_3125 : f32 = u_xlat13.x;
            u_xlat14.y = x_3125;
            let x_3128 : f32 = u_xlat15.y;
            u_xlat14.w = x_3128;
            let x_3130 : vec4<f32> = u_xlat14;
            let x_3131 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3130 + x_3131);
            let x_3133 : vec2<f32> = u_xlat64;
            let x_3136 : vec2<f32> = ((vec2<f32>(x_3133.y, x_3133.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3137 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3137.x, x_3136.x, x_3137.z, x_3136.y);
            let x_3139 : vec2<f32> = u_xlat64;
            let x_3142 : vec2<f32> = ((vec2<f32>(x_3139.y, x_3139.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3143 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3142.x, x_3143.y, x_3142.y, x_3143.w);
            let x_3146 : f32 = u_xlat13.y;
            u_xlat15.y = x_3146;
            let x_3148 : vec4<f32> = u_xlat15;
            let x_3149 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3148 + x_3149);
            let x_3151 : vec4<f32> = u_xlat14;
            let x_3152 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3151 / x_3152);
            let x_3154 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3154 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3156 : vec4<f32> = u_xlat15;
            let x_3157 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3156 / x_3157);
            let x_3159 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3159 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3161 : vec4<f32> = u_xlat14;
            let x_3164 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3161.w, x_3161.x, x_3161.y, x_3161.z) * vec4<f32>(x_3164.x, x_3164.x, x_3164.x, x_3164.x));
            let x_3167 : vec4<f32> = u_xlat15;
            let x_3170 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3167.x, x_3167.w, x_3167.y, x_3167.z) * vec4<f32>(x_3170.y, x_3170.y, x_3170.y, x_3170.y));
            let x_3173 : vec4<f32> = u_xlat14;
            let x_3174 : vec3<f32> = vec3<f32>(x_3173.y, x_3173.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3174.x, x_3175.y, x_3174.y, x_3174.z);
            let x_3178 : f32 = u_xlat15.x;
            u_xlat17.y = x_3178;
            let x_3180 : vec4<f32> = u_xlat12;
            let x_3183 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3186 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3180.x, x_3180.y, x_3180.x, x_3180.y) * vec4<f32>(x_3183.x, x_3183.y, x_3183.x, x_3183.y)) + vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3186.y));
            let x_3189 : vec4<f32> = u_xlat12;
            let x_3192 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3195 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3189.x, x_3189.y) * vec2<f32>(x_3192.x, x_3192.y)) + vec2<f32>(x_3195.w, x_3195.y));
            let x_3199 : f32 = u_xlat17.y;
            u_xlat14.y = x_3199;
            let x_3202 : f32 = u_xlat15.z;
            u_xlat17.y = x_3202;
            let x_3204 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3210 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.y) * vec4<f32>(x_3207.x, x_3207.y, x_3207.x, x_3207.y)) + vec4<f32>(x_3210.x, x_3210.y, x_3210.z, x_3210.y));
            let x_3213 : vec4<f32> = u_xlat12;
            let x_3216 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3219 : vec4<f32> = u_xlat17;
            let x_3221 : vec2<f32> = ((vec2<f32>(x_3213.x, x_3213.y) * vec2<f32>(x_3216.x, x_3216.y)) + vec2<f32>(x_3219.w, x_3219.y));
            let x_3222 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3221.x, x_3221.y, x_3222.z, x_3222.w);
            let x_3225 : f32 = u_xlat17.y;
            u_xlat14.z = x_3225;
            let x_3228 : vec4<f32> = u_xlat12;
            let x_3231 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3234 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3228.x, x_3228.y, x_3228.x, x_3228.y) * vec4<f32>(x_3231.x, x_3231.y, x_3231.x, x_3231.y)) + vec4<f32>(x_3234.x, x_3234.y, x_3234.x, x_3234.z));
            let x_3238 : f32 = u_xlat15.w;
            u_xlat17.y = x_3238;
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3244 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3247 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3241.x, x_3241.y, x_3241.x, x_3241.y) * vec4<f32>(x_3244.x, x_3244.y, x_3244.x, x_3244.y)) + vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3247.y));
            let x_3251 : vec4<f32> = u_xlat12;
            let x_3254 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3257 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3251.x, x_3251.y) * vec2<f32>(x_3254.x, x_3254.y)) + vec2<f32>(x_3257.w, x_3257.y));
            let x_3261 : f32 = u_xlat17.y;
            u_xlat14.w = x_3261;
            let x_3264 : vec4<f32> = u_xlat12;
            let x_3267 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3270 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3264.x, x_3264.y) * vec2<f32>(x_3267.x, x_3267.y)) + vec2<f32>(x_3270.x, x_3270.w));
            let x_3273 : vec4<f32> = u_xlat17;
            let x_3274 : vec3<f32> = vec3<f32>(x_3273.x, x_3273.z, x_3273.w);
            let x_3275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3274.x, x_3275.y, x_3274.y, x_3274.z);
            let x_3277 : vec4<f32> = u_xlat12;
            let x_3280 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3283 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3277.x, x_3277.y, x_3277.x, x_3277.y) * vec4<f32>(x_3280.x, x_3280.y, x_3280.x, x_3280.y)) + vec4<f32>(x_3283.x, x_3283.y, x_3283.z, x_3283.y));
            let x_3287 : vec4<f32> = u_xlat12;
            let x_3290 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3293 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3287.x, x_3287.y) * vec2<f32>(x_3290.x, x_3290.y)) + vec2<f32>(x_3293.w, x_3293.y));
            let x_3297 : f32 = u_xlat14.x;
            u_xlat15.x = x_3297;
            let x_3299 : vec4<f32> = u_xlat12;
            let x_3302 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3305 : vec4<f32> = u_xlat15;
            let x_3307 : vec2<f32> = ((vec2<f32>(x_3299.x, x_3299.y) * vec2<f32>(x_3302.x, x_3302.y)) + vec2<f32>(x_3305.x, x_3305.y));
            let x_3308 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3307.x, x_3307.y, x_3308.z, x_3308.w);
            let x_3311 : vec4<f32> = u_xlat13;
            let x_3313 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3311.x, x_3311.x, x_3311.x, x_3311.x) * x_3313);
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3318 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3316.y, x_3316.y, x_3316.y, x_3316.y) * x_3318);
            let x_3321 : vec4<f32> = u_xlat13;
            let x_3323 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3321.z, x_3321.z, x_3321.z, x_3321.z) * x_3323);
            let x_3325 : vec4<f32> = u_xlat13;
            let x_3327 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3325.w, x_3325.w, x_3325.w, x_3325.w) * x_3327);
            let x_3330 : vec4<f32> = u_xlat18;
            let x_3331 : vec2<f32> = vec2<f32>(x_3330.x, x_3330.y);
            let x_3333 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3340 : vec3<f32> = txVec43;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat89 = x_3342;
            let x_3344 : vec4<f32> = u_xlat18;
            let x_3345 : vec2<f32> = vec2<f32>(x_3344.z, x_3344.w);
            let x_3347 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
            let x_3354 : vec3<f32> = txVec44;
            let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
            u_xlat14.x = x_3356;
            let x_3359 : f32 = u_xlat14.x;
            let x_3361 : f32 = u_xlat23.y;
            u_xlat14.x = (x_3359 * x_3361);
            let x_3365 : f32 = u_xlat23.x;
            let x_3366 : f32 = u_xlat89;
            let x_3369 : f32 = u_xlat14.x;
            u_xlat89 = ((x_3365 * x_3366) + x_3369);
            let x_3372 : vec2<f32> = u_xlat64;
            let x_3374 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec45;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat64.x = x_3383;
            let x_3386 : f32 = u_xlat23.z;
            let x_3388 : f32 = u_xlat64.x;
            let x_3390 : f32 = u_xlat89;
            u_xlat89 = ((x_3386 * x_3388) + x_3390);
            let x_3393 : vec4<f32> = u_xlat21;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.x, x_3393.y);
            let x_3396 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec46;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat64.x = x_3405;
            let x_3408 : f32 = u_xlat23.w;
            let x_3410 : f32 = u_xlat64.x;
            let x_3412 : f32 = u_xlat89;
            u_xlat89 = ((x_3408 * x_3410) + x_3412);
            let x_3415 : vec4<f32> = u_xlat19;
            let x_3416 : vec2<f32> = vec2<f32>(x_3415.x, x_3415.y);
            let x_3418 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec47;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat64.x = x_3427;
            let x_3430 : f32 = u_xlat24.x;
            let x_3432 : f32 = u_xlat64.x;
            let x_3434 : f32 = u_xlat89;
            u_xlat89 = ((x_3430 * x_3432) + x_3434);
            let x_3437 : vec4<f32> = u_xlat19;
            let x_3438 : vec2<f32> = vec2<f32>(x_3437.z, x_3437.w);
            let x_3440 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec48;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat64.x = x_3449;
            let x_3452 : f32 = u_xlat24.y;
            let x_3454 : f32 = u_xlat64.x;
            let x_3456 : f32 = u_xlat89;
            u_xlat89 = ((x_3452 * x_3454) + x_3456);
            let x_3459 : vec4<f32> = u_xlat20;
            let x_3460 : vec2<f32> = vec2<f32>(x_3459.x, x_3459.y);
            let x_3462 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3460.x, x_3460.y, x_3462);
            let x_3469 : vec3<f32> = txVec49;
            let x_3471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3469.xy, x_3469.z);
            u_xlat64.x = x_3471;
            let x_3474 : f32 = u_xlat24.z;
            let x_3476 : f32 = u_xlat64.x;
            let x_3478 : f32 = u_xlat89;
            u_xlat89 = ((x_3474 * x_3476) + x_3478);
            let x_3481 : vec4<f32> = u_xlat21;
            let x_3482 : vec2<f32> = vec2<f32>(x_3481.z, x_3481.w);
            let x_3484 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec50;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat64.x = x_3493;
            let x_3496 : f32 = u_xlat24.w;
            let x_3498 : f32 = u_xlat64.x;
            let x_3500 : f32 = u_xlat89;
            u_xlat89 = ((x_3496 * x_3498) + x_3500);
            let x_3503 : vec4<f32> = u_xlat22;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.x, x_3503.y);
            let x_3506 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec51;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat64.x = x_3515;
            let x_3518 : f32 = u_xlat25.x;
            let x_3520 : f32 = u_xlat64.x;
            let x_3522 : f32 = u_xlat89;
            u_xlat89 = ((x_3518 * x_3520) + x_3522);
            let x_3525 : vec4<f32> = u_xlat22;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.z, x_3525.w);
            let x_3528 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec52;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat64.x = x_3537;
            let x_3540 : f32 = u_xlat25.y;
            let x_3542 : f32 = u_xlat64.x;
            let x_3544 : f32 = u_xlat89;
            u_xlat89 = ((x_3540 * x_3542) + x_3544);
            let x_3547 : vec2<f32> = u_xlat40;
            let x_3549 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec53;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat64.x = x_3558;
            let x_3561 : f32 = u_xlat25.z;
            let x_3563 : f32 = u_xlat64.x;
            let x_3565 : f32 = u_xlat89;
            u_xlat89 = ((x_3561 * x_3563) + x_3565);
            let x_3568 : vec2<f32> = u_xlat72;
            let x_3570 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3568.x, x_3568.y, x_3570);
            let x_3577 : vec3<f32> = txVec54;
            let x_3579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3577.xy, x_3577.z);
            u_xlat64.x = x_3579;
            let x_3582 : f32 = u_xlat25.w;
            let x_3584 : f32 = u_xlat64.x;
            let x_3586 : f32 = u_xlat89;
            u_xlat89 = ((x_3582 * x_3584) + x_3586);
            let x_3589 : vec4<f32> = u_xlat17;
            let x_3590 : vec2<f32> = vec2<f32>(x_3589.x, x_3589.y);
            let x_3592 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3590.x, x_3590.y, x_3592);
            let x_3599 : vec3<f32> = txVec55;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat64.x = x_3601;
            let x_3604 : f32 = u_xlat13.x;
            let x_3606 : f32 = u_xlat64.x;
            let x_3608 : f32 = u_xlat89;
            u_xlat89 = ((x_3604 * x_3606) + x_3608);
            let x_3611 : vec4<f32> = u_xlat17;
            let x_3612 : vec2<f32> = vec2<f32>(x_3611.z, x_3611.w);
            let x_3614 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3612.x, x_3612.y, x_3614);
            let x_3621 : vec3<f32> = txVec56;
            let x_3623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3621.xy, x_3621.z);
            u_xlat64.x = x_3623;
            let x_3626 : f32 = u_xlat13.y;
            let x_3628 : f32 = u_xlat64.x;
            let x_3630 : f32 = u_xlat89;
            u_xlat89 = ((x_3626 * x_3628) + x_3630);
            let x_3633 : vec2<f32> = u_xlat67;
            let x_3635 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec57;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat64.x = x_3644;
            let x_3647 : f32 = u_xlat13.z;
            let x_3649 : f32 = u_xlat64.x;
            let x_3651 : f32 = u_xlat89;
            u_xlat89 = ((x_3647 * x_3649) + x_3651);
            let x_3654 : vec4<f32> = u_xlat12;
            let x_3655 : vec2<f32> = vec2<f32>(x_3654.x, x_3654.y);
            let x_3657 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3655.x, x_3655.y, x_3657);
            let x_3664 : vec3<f32> = txVec58;
            let x_3666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3664.xy, x_3664.z);
            u_xlat12.x = x_3666;
            let x_3669 : f32 = u_xlat13.w;
            let x_3671 : f32 = u_xlat12.x;
            let x_3673 : f32 = u_xlat89;
            u_xlat88 = ((x_3669 * x_3671) + x_3673);
          }
        }
      } else {
        let x_3677 : vec4<f32> = u_xlat11;
        let x_3678 : vec2<f32> = vec2<f32>(x_3677.x, x_3677.y);
        let x_3680 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3678.x, x_3678.y, x_3680);
        let x_3687 : vec3<f32> = txVec59;
        let x_3689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3687.xy, x_3687.z);
        u_xlat88 = x_3689;
      }
      let x_3690 : i32 = u_xlati59;
      let x_3692 : f32 = x_123.x_AdditionalShadowParams[x_3690].x;
      u_xlat11.x = (1.0f + -(x_3692));
      let x_3696 : f32 = u_xlat88;
      let x_3697 : i32 = u_xlati59;
      let x_3699 : f32 = x_123.x_AdditionalShadowParams[x_3697].x;
      let x_3702 : f32 = u_xlat11.x;
      u_xlat88 = ((x_3696 * x_3699) + x_3702);
      let x_3705 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_3705);
      let x_3710 : f32 = u_xlat11.z;
      u_xlatb37 = (x_3710 >= 1.0f);
      let x_3712 : bool = u_xlatb37;
      let x_3714 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_3712 | x_3714);
      let x_3718 : bool = u_xlatb11.x;
      let x_3719 : f32 = u_xlat88;
      u_xlat88 = select(x_3719, 1.0f, x_3718);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3722 : f32 = u_xlat88;
    u_xlat11.x = (-(x_3722) + 1.0f);
    let x_3726 : f32 = u_xlat81;
    let x_3728 : f32 = u_xlat11.x;
    let x_3730 : f32 = u_xlat88;
    u_xlat88 = ((x_3726 * x_3728) + x_3730);
    let x_3733 : i32 = u_xlati59;
    u_xlati11 = (1i << bitcast<u32>((x_3733 & 31i)));
    let x_3737 : i32 = u_xlati11;
    let x_3740 : f32 = x_1820.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_3737) & bitcast<u32>(x_3740)));
    let x_3744 : i32 = u_xlati11;
    if ((x_3744 != 0i)) {
      let x_3748 : i32 = u_xlati59;
      let x_3750 : f32 = x_1820.x_AdditionalLightsLightTypes[x_3748].el;
      u_xlati11 = i32(x_3750);
      let x_3753 : i32 = u_xlati11;
      u_xlati37 = select(1i, 0i, (x_3753 != 0i));
      let x_3757 : i32 = u_xlati59;
      u_xlati63 = (x_3757 << bitcast<u32>(2i));
      let x_3759 : i32 = u_xlati37;
      if ((x_3759 != 0i)) {
        let x_3763 : vec3<f32> = vs_TEXCOORD1;
        let x_3765 : i32 = u_xlati63;
        let x_3768 : i32 = u_xlati63;
        let x_3772 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3765 + 1i) / 4i)][((x_3768 + 1i) % 4i)];
        let x_3774 : vec3<f32> = (vec3<f32>(x_3763.y, x_3763.y, x_3763.y) * vec3<f32>(x_3772.x, x_3772.y, x_3772.w));
        let x_3775 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3774.x, x_3774.y, x_3774.z, x_3775.w);
        let x_3777 : i32 = u_xlati63;
        let x_3779 : i32 = u_xlati63;
        let x_3782 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[(x_3777 / 4i)][(x_3779 % 4i)];
        let x_3784 : vec3<f32> = vs_TEXCOORD1;
        let x_3787 : vec4<f32> = u_xlat12;
        let x_3789 : vec3<f32> = ((vec3<f32>(x_3782.x, x_3782.y, x_3782.w) * vec3<f32>(x_3784.x, x_3784.x, x_3784.x)) + vec3<f32>(x_3787.x, x_3787.y, x_3787.z));
        let x_3790 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3790.w);
        let x_3792 : i32 = u_xlati63;
        let x_3795 : i32 = u_xlati63;
        let x_3799 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3792 + 2i) / 4i)][((x_3795 + 2i) % 4i)];
        let x_3801 : vec3<f32> = vs_TEXCOORD1;
        let x_3804 : vec4<f32> = u_xlat12;
        let x_3806 : vec3<f32> = ((vec3<f32>(x_3799.x, x_3799.y, x_3799.w) * vec3<f32>(x_3801.z, x_3801.z, x_3801.z)) + vec3<f32>(x_3804.x, x_3804.y, x_3804.z));
        let x_3807 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
        let x_3809 : vec4<f32> = u_xlat12;
        let x_3811 : i32 = u_xlati63;
        let x_3814 : i32 = u_xlati63;
        let x_3818 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3811 + 3i) / 4i)][((x_3814 + 3i) % 4i)];
        let x_3820 : vec3<f32> = (vec3<f32>(x_3809.x, x_3809.y, x_3809.z) + vec3<f32>(x_3818.x, x_3818.y, x_3818.w));
        let x_3821 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3820.x, x_3820.y, x_3820.z, x_3821.w);
        let x_3823 : vec4<f32> = u_xlat12;
        let x_3825 : vec4<f32> = u_xlat12;
        let x_3827 : vec2<f32> = (vec2<f32>(x_3823.x, x_3823.y) / vec2<f32>(x_3825.z, x_3825.z));
        let x_3828 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3827.x, x_3828.y, x_3827.y);
        let x_3830 : vec3<f32> = u_xlat37;
        let x_3833 : vec2<f32> = ((vec2<f32>(x_3830.x, x_3830.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3834 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3833.x, x_3834.y, x_3833.y);
        let x_3836 : vec3<f32> = u_xlat37;
        let x_3840 : vec2<f32> = clamp(vec2<f32>(x_3836.x, x_3836.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3841 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3840.x, x_3841.y, x_3840.y);
        let x_3843 : i32 = u_xlati59;
        let x_3845 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_3843];
        let x_3847 : vec3<f32> = u_xlat37;
        let x_3850 : i32 = u_xlati59;
        let x_3852 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_3850];
        let x_3854 : vec2<f32> = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3847.x, x_3847.z)) + vec2<f32>(x_3852.z, x_3852.w));
        let x_3855 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3854.x, x_3855.y, x_3854.y);
      } else {
        let x_3858 : i32 = u_xlati11;
        u_xlatb11.x = (x_3858 == 1i);
        let x_3862 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_3862);
        let x_3864 : i32 = u_xlati11;
        if ((x_3864 != 0i)) {
          let x_3868 : vec3<f32> = vs_TEXCOORD1;
          let x_3870 : i32 = u_xlati63;
          let x_3873 : i32 = u_xlati63;
          let x_3877 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3870 + 1i) / 4i)][((x_3873 + 1i) % 4i)];
          let x_3879 : vec2<f32> = (vec2<f32>(x_3868.y, x_3868.y) * vec2<f32>(x_3877.x, x_3877.y));
          let x_3880 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3879.x, x_3879.y, x_3880.z, x_3880.w);
          let x_3882 : i32 = u_xlati63;
          let x_3884 : i32 = u_xlati63;
          let x_3887 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[(x_3882 / 4i)][(x_3884 % 4i)];
          let x_3889 : vec3<f32> = vs_TEXCOORD1;
          let x_3892 : vec4<f32> = u_xlat12;
          let x_3894 : vec2<f32> = ((vec2<f32>(x_3887.x, x_3887.y) * vec2<f32>(x_3889.x, x_3889.x)) + vec2<f32>(x_3892.x, x_3892.y));
          let x_3895 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3894.x, x_3894.y, x_3895.z, x_3895.w);
          let x_3897 : i32 = u_xlati63;
          let x_3900 : i32 = u_xlati63;
          let x_3904 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3897 + 2i) / 4i)][((x_3900 + 2i) % 4i)];
          let x_3906 : vec3<f32> = vs_TEXCOORD1;
          let x_3909 : vec4<f32> = u_xlat12;
          let x_3911 : vec2<f32> = ((vec2<f32>(x_3904.x, x_3904.y) * vec2<f32>(x_3906.z, x_3906.z)) + vec2<f32>(x_3909.x, x_3909.y));
          let x_3912 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3911.x, x_3911.y, x_3912.z, x_3912.w);
          let x_3914 : vec4<f32> = u_xlat12;
          let x_3916 : i32 = u_xlati63;
          let x_3919 : i32 = u_xlati63;
          let x_3923 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3916 + 3i) / 4i)][((x_3919 + 3i) % 4i)];
          let x_3925 : vec2<f32> = (vec2<f32>(x_3914.x, x_3914.y) + vec2<f32>(x_3923.x, x_3923.y));
          let x_3926 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3925.x, x_3925.y, x_3926.z, x_3926.w);
          let x_3928 : vec4<f32> = u_xlat12;
          let x_3931 : vec2<f32> = ((vec2<f32>(x_3928.x, x_3928.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3932 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3931.x, x_3931.y, x_3932.z, x_3932.w);
          let x_3934 : vec4<f32> = u_xlat12;
          let x_3936 : vec2<f32> = fract(vec2<f32>(x_3934.x, x_3934.y));
          let x_3937 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3936.x, x_3936.y, x_3937.z, x_3937.w);
          let x_3939 : i32 = u_xlati59;
          let x_3941 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_3939];
          let x_3943 : vec4<f32> = u_xlat12;
          let x_3946 : i32 = u_xlati59;
          let x_3948 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_3946];
          let x_3950 : vec2<f32> = ((vec2<f32>(x_3941.x, x_3941.y) * vec2<f32>(x_3943.x, x_3943.y)) + vec2<f32>(x_3948.z, x_3948.w));
          let x_3951 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3950.x, x_3951.y, x_3950.y);
        } else {
          let x_3954 : vec3<f32> = vs_TEXCOORD1;
          let x_3956 : i32 = u_xlati63;
          let x_3959 : i32 = u_xlati63;
          let x_3963 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3956 + 1i) / 4i)][((x_3959 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3954.y, x_3954.y, x_3954.y, x_3954.y) * x_3963);
          let x_3965 : i32 = u_xlati63;
          let x_3967 : i32 = u_xlati63;
          let x_3970 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[(x_3965 / 4i)][(x_3967 % 4i)];
          let x_3971 : vec3<f32> = vs_TEXCOORD1;
          let x_3974 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3970 * vec4<f32>(x_3971.x, x_3971.x, x_3971.x, x_3971.x)) + x_3974);
          let x_3976 : i32 = u_xlati63;
          let x_3979 : i32 = u_xlati63;
          let x_3983 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3976 + 2i) / 4i)][((x_3979 + 2i) % 4i)];
          let x_3984 : vec3<f32> = vs_TEXCOORD1;
          let x_3987 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3983 * vec4<f32>(x_3984.z, x_3984.z, x_3984.z, x_3984.z)) + x_3987);
          let x_3989 : vec4<f32> = u_xlat12;
          let x_3990 : i32 = u_xlati63;
          let x_3993 : i32 = u_xlati63;
          let x_3997 : vec4<f32> = x_1820.x_AdditionalLightsWorldToLights[((x_3990 + 3i) / 4i)][((x_3993 + 3i) % 4i)];
          u_xlat12 = (x_3989 + x_3997);
          let x_3999 : vec4<f32> = u_xlat12;
          let x_4001 : vec4<f32> = u_xlat12;
          let x_4003 : vec3<f32> = (vec3<f32>(x_3999.x, x_3999.y, x_3999.z) / vec3<f32>(x_4001.w, x_4001.w, x_4001.w));
          let x_4004 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4003.x, x_4003.y, x_4003.z, x_4004.w);
          let x_4006 : vec4<f32> = u_xlat12;
          let x_4008 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_4006.x, x_4006.y, x_4006.z), vec3<f32>(x_4008.x, x_4008.y, x_4008.z));
          let x_4013 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_4013);
          let x_4016 : vec4<f32> = u_xlat11;
          let x_4018 : vec4<f32> = u_xlat12;
          let x_4020 : vec3<f32> = (vec3<f32>(x_4016.x, x_4016.x, x_4016.x) * vec3<f32>(x_4018.x, x_4018.y, x_4018.z));
          let x_4021 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4020.x, x_4020.y, x_4020.z, x_4021.w);
          let x_4023 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_4023.x, x_4023.y, x_4023.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4030 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_4030, 0.00000099999999747524f);
          let x_4035 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_4035);
          let x_4038 : vec4<f32> = u_xlat11;
          let x_4040 : vec4<f32> = u_xlat12;
          let x_4042 : vec3<f32> = (vec3<f32>(x_4038.x, x_4038.x, x_4038.x) * vec3<f32>(x_4040.z, x_4040.x, x_4040.y));
          let x_4043 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
          let x_4046 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4046);
          let x_4050 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4050, 0.0f, 1.0f);
          let x_4054 : vec4<f32> = u_xlat13;
          let x_4056 : vec4<bool> = (vec4<f32>(x_4054.y, x_4054.z, x_4054.y, x_4054.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb64 = vec2<bool>(x_4056.x, x_4056.y);
          let x_4059 : bool = u_xlatb64.x;
          if (x_4059) {
            let x_4064 : f32 = u_xlat13.x;
            x_4060 = x_4064;
          } else {
            let x_4067 : f32 = u_xlat13.x;
            x_4060 = -(x_4067);
          }
          let x_4069 : f32 = x_4060;
          u_xlat64.x = x_4069;
          let x_4072 : bool = u_xlatb64.y;
          if (x_4072) {
            let x_4077 : f32 = u_xlat13.x;
            x_4073 = x_4077;
          } else {
            let x_4080 : f32 = u_xlat13.x;
            x_4073 = -(x_4080);
          }
          let x_4082 : f32 = x_4073;
          u_xlat64.y = x_4082;
          let x_4084 : vec4<f32> = u_xlat12;
          let x_4086 : vec4<f32> = u_xlat11;
          let x_4089 : vec2<f32> = u_xlat64;
          let x_4090 : vec2<f32> = ((vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(x_4086.x, x_4086.x)) + x_4089);
          let x_4091 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4090.x, x_4091.y, x_4090.y, x_4091.w);
          let x_4093 : vec4<f32> = u_xlat11;
          let x_4096 : vec2<f32> = ((vec2<f32>(x_4093.x, x_4093.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4097 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4096.x, x_4097.y, x_4096.y, x_4097.w);
          let x_4099 : vec4<f32> = u_xlat11;
          let x_4103 : vec2<f32> = clamp(vec2<f32>(x_4099.x, x_4099.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4104 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4103.x, x_4104.y, x_4103.y, x_4104.w);
          let x_4106 : i32 = u_xlati59;
          let x_4108 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_4106];
          let x_4110 : vec4<f32> = u_xlat11;
          let x_4113 : i32 = u_xlati59;
          let x_4115 : vec4<f32> = x_1820.x_AdditionalLightsCookieAtlasUVRects[x_4113];
          let x_4117 : vec2<f32> = ((vec2<f32>(x_4108.x, x_4108.y) * vec2<f32>(x_4110.x, x_4110.z)) + vec2<f32>(x_4115.z, x_4115.w));
          let x_4118 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4117.x, x_4118.y, x_4117.y);
        }
      }
      let x_4125 : vec3<f32> = u_xlat37;
      let x_4127 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4125.x, x_4125.z), 0.0f);
      u_xlat11 = x_4127;
      let x_4129 : bool = u_xlatb7.y;
      if (x_4129) {
        let x_4134 : f32 = u_xlat11.w;
        x_4130 = x_4134;
      } else {
        let x_4137 : f32 = u_xlat11.x;
        x_4130 = x_4137;
      }
      let x_4138 : f32 = x_4130;
      u_xlat89 = x_4138;
      let x_4140 : bool = u_xlatb7.x;
      if (x_4140) {
        let x_4144 : vec4<f32> = u_xlat11;
        x_4141 = vec3<f32>(x_4144.x, x_4144.y, x_4144.z);
      } else {
        let x_4147 : f32 = u_xlat89;
        x_4141 = vec3<f32>(x_4147, x_4147, x_4147);
      }
      let x_4149 : vec3<f32> = x_4141;
      let x_4150 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4149.x, x_4149.y, x_4149.z, x_4150.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4156 : vec4<f32> = u_xlat11;
    let x_4158 : i32 = u_xlati59;
    let x_4160 : vec4<f32> = x_2239.x_AdditionalLightsColor[x_4158];
    let x_4162 : vec3<f32> = (vec3<f32>(x_4156.x, x_4156.y, x_4156.z) * vec3<f32>(x_4160.x, x_4160.y, x_4160.z));
    let x_4163 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4162.x, x_4162.y, x_4162.z, x_4163.w);
    let x_4165 : f32 = u_xlat85;
    let x_4166 : f32 = u_xlat88;
    u_xlat59.x = (x_4165 * x_4166);
    let x_4169 : vec3<f32> = u_xlat3;
    let x_4170 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(x_4169, vec3<f32>(x_4170.x, x_4170.y, x_4170.z));
    let x_4173 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4173, 0.0f, 1.0f);
    let x_4175 : f32 = u_xlat85;
    let x_4177 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4175 * x_4177);
    let x_4180 : vec2<f32> = u_xlat59;
    let x_4182 : vec4<f32> = u_xlat11;
    let x_4184 : vec3<f32> = (vec3<f32>(x_4180.x, x_4180.x, x_4180.x) * vec3<f32>(x_4182.x, x_4182.y, x_4182.z));
    let x_4185 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4184.x, x_4184.y, x_4184.z, x_4185.w);
    let x_4187 : vec4<f32> = u_xlat9;
    let x_4189 : f32 = u_xlat87;
    let x_4192 : vec3<f32> = u_xlat2;
    let x_4193 : vec3<f32> = ((vec3<f32>(x_4187.x, x_4187.y, x_4187.z) * vec3<f32>(x_4189, x_4189, x_4189)) + x_4192);
    let x_4194 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4193.x, x_4193.y, x_4193.z, x_4194.w);
    let x_4196 : vec4<f32> = u_xlat9;
    let x_4198 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4196.x, x_4196.y, x_4196.z), vec3<f32>(x_4198.x, x_4198.y, x_4198.z));
    let x_4203 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4203, 1.17549435e-38f);
    let x_4207 : f32 = u_xlat59.x;
    u_xlat59.x = inverseSqrt(x_4207);
    let x_4210 : vec2<f32> = u_xlat59;
    let x_4212 : vec4<f32> = u_xlat9;
    let x_4214 : vec3<f32> = (vec3<f32>(x_4210.x, x_4210.x, x_4210.x) * vec3<f32>(x_4212.x, x_4212.y, x_4212.z));
    let x_4215 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4214.x, x_4214.y, x_4214.z, x_4215.w);
    let x_4217 : vec3<f32> = u_xlat3;
    let x_4218 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(x_4217, vec3<f32>(x_4218.x, x_4218.y, x_4218.z));
    let x_4223 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4223, 0.0f, 1.0f);
    let x_4226 : vec4<f32> = u_xlat10;
    let x_4228 : vec4<f32> = u_xlat9;
    u_xlat59.y = dot(vec3<f32>(x_4226.x, x_4226.y, x_4226.z), vec3<f32>(x_4228.x, x_4228.y, x_4228.z));
    let x_4233 : f32 = u_xlat59.y;
    u_xlat59.y = clamp(x_4233, 0.0f, 1.0f);
    let x_4236 : vec2<f32> = u_xlat59;
    let x_4237 : vec2<f32> = u_xlat59;
    u_xlat59 = (x_4236 * x_4237);
    let x_4240 : f32 = u_xlat59.x;
    let x_4242 : f32 = u_xlat8.x;
    u_xlat59.x = ((x_4240 * x_4242) + 1.00001001358032226562f);
    let x_4247 : f32 = u_xlat59.x;
    let x_4249 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4247 * x_4249);
    let x_4253 : f32 = u_xlat59.y;
    u_xlat85 = max(x_4253, 0.10000000149011611938f);
    let x_4255 : f32 = u_xlat85;
    let x_4257 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4255 * x_4257);
    let x_4261 : f32 = u_xlat6.x;
    let x_4263 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4261 * x_4263);
    let x_4266 : f32 = u_xlat83;
    let x_4268 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4266 / x_4268);
    let x_4271 : vec4<f32> = u_xlat0;
    let x_4273 : vec2<f32> = u_xlat59;
    let x_4276 : vec3<f32> = u_xlat27;
    let x_4277 : vec3<f32> = ((vec3<f32>(x_4271.x, x_4271.y, x_4271.z) * vec3<f32>(x_4273.x, x_4273.x, x_4273.x)) + x_4276);
    let x_4278 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4277.x, x_4277.y, x_4277.z, x_4278.w);
    let x_4280 : vec4<f32> = u_xlat9;
    let x_4282 : vec4<f32> = u_xlat11;
    let x_4285 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4280.x, x_4280.y, x_4280.z) * vec3<f32>(x_4282.x, x_4282.y, x_4282.z)) + x_4285);

    continuing {
      let x_4287 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4287 + bitcast<u32>(1i));
    }
  }
  let x_4289 : vec3<f32> = u_xlat32;
  let x_4290 : vec4<f32> = u_xlat4;
  let x_4293 : vec4<f32> = u_xlat5;
  let x_4295 : vec3<f32> = ((x_4289 * vec3<f32>(x_4290.x, x_4290.z, x_4290.w)) + vec3<f32>(x_4293.x, x_4293.y, x_4293.z));
  let x_4296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);
  let x_4298 : vec3<f32> = u_xlat34;
  let x_4299 : vec4<f32> = u_xlat0;
  let x_4301 : vec3<f32> = (x_4298 + vec3<f32>(x_4299.x, x_4299.y, x_4299.z));
  let x_4302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4301.x, x_4301.y, x_4301.z, x_4302.w);
  let x_4304 : f32 = u_xlat78;
  let x_4305 : f32 = u_xlat78;
  u_xlat78 = (x_4304 * -(x_4305));
  let x_4308 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4308);
  let x_4310 : vec4<f32> = u_xlat0;
  let x_4313 : vec4<f32> = x_28.unity_FogColor;
  let x_4316 : vec3<f32> = (vec3<f32>(x_4310.x, x_4310.y, x_4310.z) + -(vec3<f32>(x_4313.x, x_4313.y, x_4313.z)));
  let x_4317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4316.x, x_4316.y, x_4316.z, x_4317.w);
  let x_4321 : f32 = u_xlat78;
  let x_4323 : vec4<f32> = u_xlat0;
  let x_4327 : vec4<f32> = x_28.unity_FogColor;
  let x_4329 : vec3<f32> = ((vec3<f32>(x_4321, x_4321, x_4321) * vec3<f32>(x_4323.x, x_4323.y, x_4323.z)) + vec3<f32>(x_4327.x, x_4327.y, x_4327.z));
  let x_4330 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4329.x, x_4329.y, x_4329.z, x_4330.w);
  let x_4334 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4334 == 1.0f);
  let x_4336 : bool = u_xlatb0;
  if (x_4336) {
    let x_4341 : f32 = u_xlat1.x;
    x_4337 = x_4341;
  } else {
    x_4337 = 1.0f;
  }
  let x_4343 : f32 = x_4337;
  SV_Target0.w = x_4343;
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


