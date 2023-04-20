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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_289 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat57 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_1616 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1797 : UnityPerDraw;

var<private> u_xlatu80 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2056 : AdditionalLights;

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

var<private> u_xlat20 : vec4<f32>;

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

var<private> u_xlatu82 : u32;

var<private> u_xlatb84 : bool;

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
  var x_1701 : f32;
  var x_1712 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2198 : f32;
  var x_2209 : f32;
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
  var x_3876 : f32;
  var x_3889 : f32;
  var x_3946 : f32;
  var x_3957 : vec3<f32>;
  var x_4131 : f32;
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
  let x_116 : f32 = vs_TEXCOORD1.y;
  let x_118 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_116 * x_118);
  let x_121 : f32 = x_28.unity_MatrixV[0i].z;
  let x_123 : f32 = vs_TEXCOORD1.x;
  let x_125 : f32 = u_xlat78;
  u_xlat78 = ((x_121 * x_123) + x_125);
  let x_128 : f32 = x_28.unity_MatrixV[2i].z;
  let x_130 : f32 = vs_TEXCOORD1.z;
  let x_132 : f32 = u_xlat78;
  u_xlat78 = ((x_128 * x_130) + x_132);
  let x_134 : f32 = u_xlat78;
  let x_137 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_134 + x_137);
  let x_139 : f32 = u_xlat78;
  let x_143 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_139) + -(x_143));
  let x_146 : f32 = u_xlat78;
  u_xlat78 = max(x_146, 0.0f);
  let x_148 : f32 = u_xlat78;
  let x_151 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_148 * x_151);
  let x_160 : vec2<f32> = vs_TEXCOORD8;
  let x_162 : f32 = x_28.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_160, x_162);
  u_xlat4 = x_163;
  let x_169 : vec2<f32> = vs_TEXCOORD8;
  let x_171 : f32 = x_28.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_169, x_171);
  u_xlat5 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  let x_174 : vec4<f32> = u_xlat4;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec3<f32> = u_xlat3;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_181, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat80;
  u_xlat80 = (x_185 + 0.5f);
  let x_188 : f32 = u_xlat80;
  let x_190 : vec3<f32> = u_xlat5;
  let x_191 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat4.w;
  u_xlat80 = max(x_195, 0.00009999999747378752f);
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : f32 = u_xlat80;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) / vec3<f32>(x_200, x_200, x_200));
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : f32 = x_42.x_Metallic;
  u_xlat80 = ((-(x_206) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_212 : f32 = u_xlat80;
  let x_215 : f32 = x_42.x_Smoothness;
  u_xlat81 = (-(x_212) + x_215);
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_218.y, x_218.z, x_218.w) * vec3<f32>(x_220, x_220, x_220));
  let x_223 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_42.x_BaseColor;
  let x_231 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_226.x, x_226.y, x_226.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : f32 = x_42.x_Metallic;
  let x_237 : f32 = x_42.x_Metallic;
  let x_239 : f32 = x_42.x_Metallic;
  let x_240 : vec3<f32> = vec3<f32>(x_235, x_237, x_239);
  let x_245 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_254) + 1.0f);
  let x_259 : f32 = u_xlat80;
  let x_260 : f32 = u_xlat80;
  u_xlat82 = (x_259 * x_260);
  let x_262 : f32 = u_xlat82;
  u_xlat82 = max(x_262, 0.0078125f);
  let x_265 : f32 = u_xlat82;
  let x_266 : f32 = u_xlat82;
  u_xlat5.x = (x_265 * x_266);
  let x_269 : f32 = u_xlat81;
  u_xlat81 = (x_269 + 1.0f);
  let x_271 : f32 = u_xlat81;
  u_xlat81 = clamp(x_271, 0.0f, 1.0f);
  let x_274 : f32 = u_xlat82;
  u_xlat31 = ((x_274 * 4.0f) + 2.0f);
  let x_292 : f32 = x_289.x_MainLightShadowParams.y;
  u_xlatb57.x = (0.0f < x_292);
  let x_296 : bool = u_xlatb57.x;
  if (x_296) {
    let x_300 : f32 = x_289.x_MainLightShadowParams.y;
    u_xlatb57.x = (x_300 == 1.0f);
    let x_304 : bool = u_xlatb57.x;
    if (x_304) {
      let x_310 : vec4<f32> = vs_TEXCOORD6;
      let x_313 : vec4<f32> = x_289.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_310.x, x_310.y, x_310.x, x_310.y) + x_313);
      let x_316 : vec4<f32> = u_xlat6;
      let x_317 : vec2<f32> = vec2<f32>(x_316.x, x_316.y);
      let x_319 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_317.x, x_317.y, x_319);
      let x_332 : vec3<f32> = txVec0;
      let x_334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_332.xy, x_332.z);
      u_xlat7.x = x_334;
      let x_337 : vec4<f32> = u_xlat6;
      let x_338 : vec2<f32> = vec2<f32>(x_337.z, x_337.w);
      let x_340 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_338.x, x_338.y, x_340);
      let x_347 : vec3<f32> = txVec1;
      let x_349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_347.xy, x_347.z);
      u_xlat7.y = x_349;
      let x_351 : vec4<f32> = vs_TEXCOORD6;
      let x_354 : vec4<f32> = x_289.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_351.x, x_351.y, x_351.x, x_351.y) + x_354);
      let x_357 : vec4<f32> = u_xlat6;
      let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
      let x_360 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_358.x, x_358.y, x_360);
      let x_367 : vec3<f32> = txVec2;
      let x_369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_367.xy, x_367.z);
      u_xlat7.z = x_369;
      let x_372 : vec4<f32> = u_xlat6;
      let x_373 : vec2<f32> = vec2<f32>(x_372.z, x_372.w);
      let x_375 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_373.x, x_373.y, x_375);
      let x_382 : vec3<f32> = txVec3;
      let x_384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_382.xy, x_382.z);
      u_xlat7.w = x_384;
      let x_387 : vec4<f32> = u_xlat7;
      u_xlat57 = dot(x_387, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_394 : f32 = x_289.x_MainLightShadowParams.y;
      u_xlatb83 = (x_394 == 2.0f);
      let x_396 : bool = u_xlatb83;
      if (x_396) {
        let x_399 : vec4<f32> = vs_TEXCOORD6;
        let x_402 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_406 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.w)) + vec2<f32>(0.5f, 0.5f));
        let x_407 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
        let x_409 : vec4<f32> = u_xlat6;
        let x_411 : vec2<f32> = floor(vec2<f32>(x_409.x, x_409.y));
        let x_412 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_416 : vec4<f32> = vs_TEXCOORD6;
        let x_419 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_422 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(x_419.z, x_419.w)) + -(vec2<f32>(x_422.x, x_422.y)));
        let x_426 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_426.x, x_426.x, x_426.y, x_426.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_431 : vec4<f32> = u_xlat7;
        let x_433 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_431.x, x_431.x, x_431.z, x_431.z) * vec4<f32>(x_433.x, x_433.x, x_433.z, x_433.z));
        let x_436 : vec4<f32> = u_xlat8;
        let x_440 : vec2<f32> = (vec2<f32>(x_436.y, x_436.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_441.y, x_440.y, x_441.w);
        let x_443 : vec4<f32> = u_xlat8;
        let x_446 : vec2<f32> = u_xlat58;
        let x_448 : vec2<f32> = ((vec2<f32>(x_443.x, x_443.z) * vec2<f32>(0.5f, 0.5f)) + -(x_446));
        let x_449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_452 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_452) + vec2<f32>(1.0f, 1.0f));
        let x_457 : vec2<f32> = u_xlat58;
        let x_459 : vec2<f32> = min(x_457, vec2<f32>(0.0f, 0.0f));
        let x_460 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat9;
        let x_465 : vec4<f32> = u_xlat9;
        let x_468 : vec2<f32> = u_xlat60;
        let x_469 : vec2<f32> = ((-(vec2<f32>(x_462.x, x_462.y)) * vec2<f32>(x_465.x, x_465.y)) + x_468);
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_472, vec2<f32>(0.0f, 0.0f));
        let x_474 : vec2<f32> = u_xlat58;
        let x_476 : vec2<f32> = u_xlat58;
        let x_478 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_474) * x_476) + vec2<f32>(x_478.y, x_478.w));
        let x_481 : vec4<f32> = u_xlat9;
        let x_483 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) + vec2<f32>(1.0f, 1.0f));
        let x_484 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_486 + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec4<f32> = u_xlat8;
        let x_493 : vec2<f32> = (vec2<f32>(x_489.x, x_489.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_494 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec2<f32> = u_xlat60;
        let x_497 : vec2<f32> = (x_496 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat9;
        let x_502 : vec2<f32> = (vec2<f32>(x_500.x, x_500.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_503 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_506 : vec2<f32> = u_xlat58;
        let x_507 : vec2<f32> = (x_506 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_510.y, x_510.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_514 : f32 = u_xlat9.x;
        u_xlat10.z = x_514;
        let x_517 : f32 = u_xlat58.x;
        u_xlat10.w = x_517;
        let x_520 : f32 = u_xlat11.x;
        u_xlat8.z = x_520;
        let x_523 : f32 = u_xlat7.x;
        u_xlat8.w = x_523;
        let x_526 : vec4<f32> = u_xlat8;
        let x_528 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_526.z, x_526.w, x_526.x, x_526.z) + vec4<f32>(x_528.z, x_528.w, x_528.x, x_528.z));
        let x_532 : f32 = u_xlat10.y;
        u_xlat9.z = x_532;
        let x_535 : f32 = u_xlat58.y;
        u_xlat9.w = x_535;
        let x_538 : f32 = u_xlat8.y;
        u_xlat11.z = x_538;
        let x_541 : f32 = u_xlat7.z;
        u_xlat11.w = x_541;
        let x_543 : vec4<f32> = u_xlat9;
        let x_545 : vec4<f32> = u_xlat11;
        let x_547 : vec3<f32> = (vec3<f32>(x_543.z, x_543.y, x_543.w) + vec3<f32>(x_545.z, x_545.y, x_545.w));
        let x_548 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat8;
        let x_552 : vec4<f32> = u_xlat12;
        let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.z, x_550.w) / vec3<f32>(x_552.z, x_552.w, x_552.y));
        let x_555 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat8;
        let x_562 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
        let x_565 : vec4<f32> = u_xlat11;
        let x_567 : vec4<f32> = u_xlat7;
        let x_569 : vec3<f32> = (vec3<f32>(x_565.z, x_565.y, x_565.w) / vec3<f32>(x_567.x, x_567.y, x_567.z));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat9;
        let x_574 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_575 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat8;
        let x_580 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_582 : vec3<f32> = (vec3<f32>(x_577.y, x_577.x, x_577.z) * vec3<f32>(x_580.x, x_580.x, x_580.x));
        let x_583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat9;
        let x_588 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_590 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(x_588.y, x_588.y, x_588.y));
        let x_591 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_594 : f32 = u_xlat9.x;
        u_xlat8.w = x_594;
        let x_596 : vec4<f32> = u_xlat6;
        let x_599 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y) * vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y)) + vec4<f32>(x_602.y, x_602.w, x_602.x, x_602.w));
        let x_605 : vec4<f32> = u_xlat6;
        let x_608 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_608.x, x_608.y)) + vec2<f32>(x_611.z, x_611.w));
        let x_615 : f32 = u_xlat8.y;
        u_xlat9.w = x_615;
        let x_617 : vec4<f32> = u_xlat9;
        let x_618 : vec2<f32> = vec2<f32>(x_617.y, x_617.z);
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_619.x, x_618.x, x_619.z, x_618.y);
        let x_621 : vec4<f32> = u_xlat6;
        let x_624 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y) * vec4<f32>(x_624.x, x_624.y, x_624.x, x_624.y)) + vec4<f32>(x_627.x, x_627.y, x_627.z, x_627.y));
        let x_630 : vec4<f32> = u_xlat6;
        let x_633 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_636 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y) * vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y)) + vec4<f32>(x_636.w, x_636.y, x_636.w, x_636.z));
        let x_639 : vec4<f32> = u_xlat6;
        let x_642 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.x, x_645.w, x_645.z, x_645.w));
        let x_649 : vec4<f32> = u_xlat7;
        let x_651 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_649.x, x_649.x, x_649.x, x_649.y) * vec4<f32>(x_651.z, x_651.w, x_651.y, x_651.z));
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_655.y, x_655.y, x_655.z, x_655.z) * x_657);
        let x_661 : f32 = u_xlat7.z;
        let x_663 : f32 = u_xlat12.y;
        u_xlat83 = (x_661 * x_663);
        let x_666 : vec4<f32> = u_xlat10;
        let x_667 : vec2<f32> = vec2<f32>(x_666.x, x_666.y);
        let x_669 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_667.x, x_667.y, x_669);
        let x_676 : vec3<f32> = txVec4;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_676.xy, x_676.z);
        u_xlat6.x = x_678;
        let x_681 : vec4<f32> = u_xlat10;
        let x_682 : vec2<f32> = vec2<f32>(x_681.z, x_681.w);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_692 : vec3<f32> = txVec5;
        let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
        u_xlat32 = x_694;
        let x_695 : f32 = u_xlat32;
        let x_697 : f32 = u_xlat13.y;
        u_xlat32 = (x_695 * x_697);
        let x_700 : f32 = u_xlat13.x;
        let x_702 : f32 = u_xlat6.x;
        let x_704 : f32 = u_xlat32;
        u_xlat6.x = ((x_700 * x_702) + x_704);
        let x_708 : vec2<f32> = u_xlat58;
        let x_710 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_708.x, x_708.y, x_710);
        let x_717 : vec3<f32> = txVec6;
        let x_719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_717.xy, x_717.z);
        u_xlat32 = x_719;
        let x_721 : f32 = u_xlat13.z;
        let x_722 : f32 = u_xlat32;
        let x_725 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_721 * x_722) + x_725);
        let x_729 : vec4<f32> = u_xlat9;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec7;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
        u_xlat32 = x_741;
        let x_743 : f32 = u_xlat13.w;
        let x_744 : f32 = u_xlat32;
        let x_747 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat11;
        let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec8;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
        u_xlat32 = x_763;
        let x_765 : f32 = u_xlat14.x;
        let x_766 : f32 = u_xlat32;
        let x_769 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat11;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec9;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_783.xy, x_783.z);
        u_xlat32 = x_785;
        let x_787 : f32 = u_xlat14.y;
        let x_788 : f32 = u_xlat32;
        let x_791 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec10;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat32 = x_807;
        let x_809 : f32 = u_xlat14.z;
        let x_810 : f32 = u_xlat32;
        let x_813 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec11;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
        u_xlat32 = x_829;
        let x_831 : f32 = u_xlat14.w;
        let x_832 : f32 = u_xlat32;
        let x_835 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_831 * x_832) + x_835);
        let x_839 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = vec2<f32>(x_839.z, x_839.w);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec12;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat32 = x_851;
        let x_852 : f32 = u_xlat83;
        let x_853 : f32 = u_xlat32;
        let x_856 : f32 = u_xlat6.x;
        u_xlat57 = ((x_852 * x_853) + x_856);
      } else {
        let x_859 : vec4<f32> = vs_TEXCOORD6;
        let x_862 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_865 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.z, x_862.w)) + vec2<f32>(0.5f, 0.5f));
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec2<f32> = floor(vec2<f32>(x_868.x, x_868.y));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = vs_TEXCOORD6;
        let x_876 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_873.x, x_873.y) * vec2<f32>(x_876.z, x_876.w)) + -(vec2<f32>(x_879.x, x_879.y)));
        let x_883 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_883.x, x_883.x, x_883.y, x_883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_886 : vec4<f32> = u_xlat7;
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_886.x, x_886.x, x_886.z, x_886.z) * vec4<f32>(x_888.x, x_888.x, x_888.z, x_888.z));
        let x_891 : vec4<f32> = u_xlat8;
        let x_895 : vec2<f32> = (vec2<f32>(x_891.y, x_891.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_896.x, x_895.x, x_896.z, x_895.y);
        let x_898 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = u_xlat58;
        let x_903 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.z) * vec2<f32>(0.5f, 0.5f)) + -(x_901));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec2<f32> = u_xlat58;
        let x_908 : vec2<f32> = (-(x_906) + vec2<f32>(1.0f, 1.0f));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_911, vec2<f32>(0.0f, 0.0f));
        let x_913 : vec2<f32> = u_xlat60;
        let x_915 : vec2<f32> = u_xlat60;
        let x_917 : vec4<f32> = u_xlat8;
        let x_919 : vec2<f32> = ((-(x_913) * x_915) + vec2<f32>(x_917.x, x_917.y));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_922, vec2<f32>(0.0f, 0.0f));
        let x_925 : vec2<f32> = u_xlat60;
        let x_927 : vec2<f32> = u_xlat60;
        let x_929 : vec4<f32> = u_xlat7;
        let x_931 : vec2<f32> = ((-(x_925) * x_927) + vec2<f32>(x_929.y, x_929.w));
        let x_932 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_931.x, x_932.y, x_931.y);
        let x_934 : vec4<f32> = u_xlat8;
        let x_937 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) + vec2<f32>(2.0f, 2.0f));
        let x_938 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec3<f32> = u_xlat33;
        let x_942 : vec2<f32> = (vec2<f32>(x_940.x, x_940.z) + vec2<f32>(2.0f, 2.0f));
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_942.x, x_943.z, x_942.y);
        let x_946 : f32 = u_xlat7.y;
        u_xlat10.z = (x_946 * 0.08163200318813323975f);
        let x_950 : vec4<f32> = u_xlat7;
        let x_953 : vec3<f32> = (vec3<f32>(x_950.z, x_950.x, x_950.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_963 : f32 = u_xlat11.y;
        u_xlat10.x = x_963;
        let x_965 : vec2<f32> = u_xlat58;
        let x_972 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_973 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_973.x, x_972.x, x_973.z, x_972.y);
        let x_975 : vec2<f32> = u_xlat58;
        let x_979 : vec2<f32> = ((vec2<f32>(x_975.x, x_975.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_980 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_979.x, x_980.y, x_979.y, x_980.w);
        let x_983 : f32 = u_xlat7.x;
        u_xlat8.y = x_983;
        let x_986 : f32 = u_xlat9.y;
        u_xlat8.w = x_986;
        let x_988 : vec4<f32> = u_xlat8;
        let x_989 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_988 + x_989);
        let x_991 : vec2<f32> = u_xlat58;
        let x_994 : vec2<f32> = ((vec2<f32>(x_991.y, x_991.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_997 : vec2<f32> = u_xlat58;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_997.y, x_997.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1000.x, x_1001.y, x_1000.y, x_1001.w);
        let x_1004 : f32 = u_xlat7.y;
        u_xlat9.y = x_1004;
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1007 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1006 + x_1007);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1010 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1009 / x_1010);
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1012 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1018 / x_1019);
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1021 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1026 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1023.w, x_1023.x, x_1023.y, x_1023.z) * vec4<f32>(x_1026.x, x_1026.x, x_1026.x, x_1026.x));
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1032 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1029.x, x_1029.w, x_1029.y, x_1029.z) * vec4<f32>(x_1032.y, x_1032.y, x_1032.y, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat8;
        let x_1036 : vec3<f32> = vec3<f32>(x_1035.y, x_1035.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1036.x, x_1037.y, x_1036.y, x_1036.z);
        let x_1040 : f32 = u_xlat9.x;
        u_xlat11.y = x_1040;
        let x_1042 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1048.y));
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.w, x_1057.y));
        let x_1061 : f32 = u_xlat11.y;
        u_xlat8.y = x_1061;
        let x_1064 : f32 = u_xlat9.z;
        u_xlat11.y = x_1064;
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.y));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat11;
        let x_1083 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.x, x_1078.y)) + vec2<f32>(x_1081.w, x_1081.y));
        let x_1084 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
        let x_1087 : f32 = u_xlat11.y;
        u_xlat8.z = x_1087;
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1093 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.z));
        let x_1100 : f32 = u_xlat9.w;
        u_xlat11.y = x_1100;
        let x_1103 : vec4<f32> = u_xlat6;
        let x_1106 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y) * vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y)) + vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1109.y));
        let x_1113 : vec4<f32> = u_xlat6;
        let x_1116 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat11;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(x_1116.x, x_1116.y)) + vec2<f32>(x_1119.w, x_1119.y));
        let x_1122 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1121.x, x_1121.y, x_1122.z);
        let x_1125 : f32 = u_xlat11.y;
        u_xlat8.w = x_1125;
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1131 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.x, x_1134.w));
        let x_1137 : vec4<f32> = u_xlat11;
        let x_1138 : vec3<f32> = vec3<f32>(x_1137.x, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1138.x, x_1139.y, x_1138.y, x_1138.z);
        let x_1141 : vec4<f32> = u_xlat6;
        let x_1144 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1147.y));
        let x_1151 : vec4<f32> = u_xlat6;
        let x_1154 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1154.x, x_1154.y)) + vec2<f32>(x_1157.w, x_1157.y));
        let x_1161 : f32 = u_xlat8.x;
        u_xlat9.x = x_1161;
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.y));
        let x_1172 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x) * x_1177);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1180.y, x_1180.y, x_1180.y, x_1180.y) * x_1182);
        let x_1185 : vec4<f32> = u_xlat7;
        let x_1187 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1185.z, x_1185.z, x_1185.z, x_1185.z) * x_1187);
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1189.w, x_1189.w, x_1189.w, x_1189.w) * x_1191);
        let x_1194 : vec4<f32> = u_xlat12;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.x, x_1194.y);
        let x_1197 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec13;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1204.xy, x_1204.z);
        u_xlat83 = x_1206;
        let x_1208 : vec4<f32> = u_xlat12;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec14;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat8.x = x_1220;
        let x_1223 : f32 = u_xlat8.x;
        let x_1225 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1223 * x_1225);
        let x_1229 : f32 = u_xlat17.x;
        let x_1230 : f32 = u_xlat83;
        let x_1233 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1229 * x_1230) + x_1233);
        let x_1236 : vec2<f32> = u_xlat58;
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec15;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
        u_xlat58.x = x_1247;
        let x_1250 : f32 = u_xlat17.z;
        let x_1252 : f32 = u_xlat58.x;
        let x_1254 : f32 = u_xlat83;
        u_xlat83 = ((x_1250 * x_1252) + x_1254);
        let x_1257 : vec4<f32> = u_xlat15;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec16;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat58.x = x_1269;
        let x_1272 : f32 = u_xlat17.w;
        let x_1274 : f32 = u_xlat58.x;
        let x_1276 : f32 = u_xlat83;
        u_xlat83 = ((x_1272 * x_1274) + x_1276);
        let x_1279 : vec4<f32> = u_xlat13;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec17;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat58.x = x_1291;
        let x_1294 : f32 = u_xlat18.x;
        let x_1296 : f32 = u_xlat58.x;
        let x_1298 : f32 = u_xlat83;
        u_xlat83 = ((x_1294 * x_1296) + x_1298);
        let x_1301 : vec4<f32> = u_xlat13;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.z, x_1301.w);
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec18;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat58.x = x_1313;
        let x_1316 : f32 = u_xlat18.y;
        let x_1318 : f32 = u_xlat58.x;
        let x_1320 : f32 = u_xlat83;
        u_xlat83 = ((x_1316 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat14;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec19;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat58.x = x_1335;
        let x_1338 : f32 = u_xlat18.z;
        let x_1340 : f32 = u_xlat58.x;
        let x_1342 : f32 = u_xlat83;
        u_xlat83 = ((x_1338 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat15;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.z, x_1345.w);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec20;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat58.x = x_1357;
        let x_1360 : f32 = u_xlat18.w;
        let x_1362 : f32 = u_xlat58.x;
        let x_1364 : f32 = u_xlat83;
        u_xlat83 = ((x_1360 * x_1362) + x_1364);
        let x_1367 : vec4<f32> = u_xlat16;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec21;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat58.x = x_1379;
        let x_1382 : f32 = u_xlat19.x;
        let x_1384 : f32 = u_xlat58.x;
        let x_1386 : f32 = u_xlat83;
        u_xlat83 = ((x_1382 * x_1384) + x_1386);
        let x_1389 : vec4<f32> = u_xlat16;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec22;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat58.x = x_1401;
        let x_1404 : f32 = u_xlat19.y;
        let x_1406 : f32 = u_xlat58.x;
        let x_1408 : f32 = u_xlat83;
        u_xlat83 = ((x_1404 * x_1406) + x_1408);
        let x_1411 : vec3<f32> = u_xlat34;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec23;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat58.x = x_1423;
        let x_1426 : f32 = u_xlat19.z;
        let x_1428 : f32 = u_xlat58.x;
        let x_1430 : f32 = u_xlat83;
        u_xlat83 = ((x_1426 * x_1428) + x_1430);
        let x_1433 : vec2<f32> = u_xlat66;
        let x_1435 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec24;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat58.x = x_1444;
        let x_1447 : f32 = u_xlat19.w;
        let x_1449 : f32 = u_xlat58.x;
        let x_1451 : f32 = u_xlat83;
        u_xlat83 = ((x_1447 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat11;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec25;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat58.x = x_1466;
        let x_1469 : f32 = u_xlat7.x;
        let x_1471 : f32 = u_xlat58.x;
        let x_1473 : f32 = u_xlat83;
        u_xlat83 = ((x_1469 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat11;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec26;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat58.x = x_1488;
        let x_1491 : f32 = u_xlat7.y;
        let x_1493 : f32 = u_xlat58.x;
        let x_1495 : f32 = u_xlat83;
        u_xlat83 = ((x_1491 * x_1493) + x_1495);
        let x_1498 : vec2<f32> = u_xlat61;
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec27;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat58.x = x_1509;
        let x_1512 : f32 = u_xlat7.z;
        let x_1514 : f32 = u_xlat58.x;
        let x_1516 : f32 = u_xlat83;
        u_xlat83 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec28;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat6.x = x_1531;
        let x_1534 : f32 = u_xlat7.w;
        let x_1536 : f32 = u_xlat6.x;
        let x_1538 : f32 = u_xlat83;
        u_xlat57 = ((x_1534 * x_1536) + x_1538);
      }
    }
  } else {
    let x_1542 : vec4<f32> = vs_TEXCOORD6;
    let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
    let x_1545 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
    let x_1552 : vec3<f32> = txVec29;
    let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
    u_xlat57 = x_1554;
  }
  let x_1556 : f32 = x_289.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1556) + 1.0f);
  let x_1559 : f32 = u_xlat57;
  let x_1561 : f32 = x_289.x_MainLightShadowParams.x;
  let x_1563 : f32 = u_xlat83;
  u_xlat57 = ((x_1559 * x_1561) + x_1563);
  let x_1566 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1566);
  let x_1570 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1570 >= 1.0f);
  let x_1572 : bool = u_xlatb83;
  let x_1573 : bool = u_xlatb6;
  u_xlatb83 = (x_1572 | x_1573);
  let x_1575 : bool = u_xlatb83;
  let x_1576 : f32 = u_xlat57;
  u_xlat57 = select(x_1576, 1.0f, x_1575);
  let x_1578 : vec3<f32> = vs_TEXCOORD1;
  let x_1580 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1582 : vec3<f32> = (x_1578 + -(x_1580));
  let x_1583 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1585 : vec4<f32> = u_xlat6;
  let x_1587 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1585.x, x_1585.y, x_1585.z), vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
  let x_1590 : f32 = u_xlat83;
  let x_1592 : f32 = x_289.x_MainLightShadowParams.z;
  let x_1595 : f32 = x_289.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1590 * x_1592) + x_1595);
  let x_1599 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1599, 0.0f, 1.0f);
  let x_1602 : f32 = u_xlat57;
  u_xlat32 = (-(x_1602) + 1.0f);
  let x_1606 : f32 = u_xlat6.x;
  let x_1607 : f32 = u_xlat32;
  let x_1609 : f32 = u_xlat57;
  u_xlat57 = ((x_1606 * x_1607) + x_1609);
  let x_1618 : f32 = x_1616.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1618 == -1.0f));
  let x_1621 : bool = u_xlatb6;
  if (x_1621) {
    let x_1624 : vec3<f32> = vs_TEXCOORD1;
    let x_1627 : vec4<f32> = x_1616.x_MainLightWorldToLight[1i];
    let x_1629 : vec2<f32> = (vec2<f32>(x_1624.y, x_1624.y) * vec2<f32>(x_1627.x, x_1627.y));
    let x_1630 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
    let x_1633 : vec4<f32> = x_1616.x_MainLightWorldToLight[0i];
    let x_1635 : vec3<f32> = vs_TEXCOORD1;
    let x_1638 : vec4<f32> = u_xlat6;
    let x_1640 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1635.x, x_1635.x)) + vec2<f32>(x_1638.x, x_1638.y));
    let x_1641 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
    let x_1644 : vec4<f32> = x_1616.x_MainLightWorldToLight[2i];
    let x_1646 : vec3<f32> = vs_TEXCOORD1;
    let x_1649 : vec4<f32> = u_xlat6;
    let x_1651 : vec2<f32> = ((vec2<f32>(x_1644.x, x_1644.y) * vec2<f32>(x_1646.z, x_1646.z)) + vec2<f32>(x_1649.x, x_1649.y));
    let x_1652 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
    let x_1654 : vec4<f32> = u_xlat6;
    let x_1657 : vec4<f32> = x_1616.x_MainLightWorldToLight[3i];
    let x_1659 : vec2<f32> = (vec2<f32>(x_1654.x, x_1654.y) + vec2<f32>(x_1657.x, x_1657.y));
    let x_1660 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
    let x_1662 : vec4<f32> = u_xlat6;
    let x_1665 : vec2<f32> = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1666 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
    let x_1673 : vec4<f32> = u_xlat6;
    let x_1676 : f32 = x_28.x_GlobalMipBias.x;
    let x_1677 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1673.x, x_1673.y), x_1676);
    u_xlat6 = x_1677;
    let x_1680 : f32 = x_1616.x_MainLightCookieTextureFormat;
    let x_1682 : f32 = x_1616.x_MainLightCookieTextureFormat;
    let x_1684 : f32 = x_1616.x_MainLightCookieTextureFormat;
    let x_1686 : f32 = x_1616.x_MainLightCookieTextureFormat;
    let x_1687 : vec4<f32> = vec4<f32>(x_1680, x_1682, x_1684, x_1686);
    let x_1695 : vec4<bool> = (vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1687.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1695.x, x_1695.y);
    let x_1699 : bool = u_xlatb7.y;
    if (x_1699) {
      let x_1705 : f32 = u_xlat6.w;
      x_1701 = x_1705;
    } else {
      let x_1708 : f32 = u_xlat6.x;
      x_1701 = x_1708;
    }
    let x_1709 : f32 = x_1701;
    u_xlat84 = x_1709;
    let x_1711 : bool = u_xlatb7.x;
    if (x_1711) {
      let x_1715 : vec4<f32> = u_xlat6;
      x_1712 = vec3<f32>(x_1715.x, x_1715.y, x_1715.z);
    } else {
      let x_1718 : f32 = u_xlat84;
      x_1712 = vec3<f32>(x_1718, x_1718, x_1718);
    }
    let x_1720 : vec3<f32> = x_1712;
    let x_1721 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1727 : vec4<f32> = u_xlat6;
  let x_1730 : vec4<f32> = x_28.x_MainLightColor;
  let x_1732 : vec3<f32> = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec3<f32> = u_xlat2;
  let x_1737 : vec3<f32> = u_xlat3;
  u_xlat84 = dot(-(x_1735), x_1737);
  let x_1739 : f32 = u_xlat84;
  let x_1740 : f32 = u_xlat84;
  u_xlat84 = (x_1739 + x_1740);
  let x_1742 : vec3<f32> = u_xlat3;
  let x_1743 : f32 = u_xlat84;
  let x_1747 : vec3<f32> = u_xlat2;
  let x_1749 : vec3<f32> = ((x_1742 * -(vec3<f32>(x_1743, x_1743, x_1743))) + -(x_1747));
  let x_1750 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1752 : vec3<f32> = u_xlat3;
  let x_1753 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(x_1752, x_1753);
  let x_1755 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1755, 0.0f, 1.0f);
  let x_1757 : f32 = u_xlat84;
  u_xlat84 = (-(x_1757) + 1.0f);
  let x_1760 : f32 = u_xlat84;
  let x_1761 : f32 = u_xlat84;
  u_xlat84 = (x_1760 * x_1761);
  let x_1763 : f32 = u_xlat84;
  let x_1764 : f32 = u_xlat84;
  u_xlat84 = (x_1763 * x_1764);
  let x_1767 : f32 = u_xlat80;
  u_xlat85 = ((-(x_1767) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1773 : f32 = u_xlat80;
  let x_1774 : f32 = u_xlat85;
  u_xlat80 = (x_1773 * x_1774);
  let x_1776 : f32 = u_xlat80;
  u_xlat80 = (x_1776 * 6.0f);
  let x_1787 : vec4<f32> = u_xlat7;
  let x_1789 : f32 = u_xlat80;
  let x_1790 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1787.x, x_1787.y, x_1787.z), x_1789);
  u_xlat7 = x_1790;
  let x_1792 : f32 = u_xlat7.w;
  u_xlat80 = (x_1792 + -1.0f);
  let x_1799 : f32 = x_1797.unity_SpecCube0_HDR.w;
  let x_1800 : f32 = u_xlat80;
  u_xlat80 = ((x_1799 * x_1800) + 1.0f);
  let x_1803 : f32 = u_xlat80;
  u_xlat80 = max(x_1803, 0.0f);
  let x_1805 : f32 = u_xlat80;
  u_xlat80 = log2(x_1805);
  let x_1807 : f32 = u_xlat80;
  let x_1809 : f32 = x_1797.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1807 * x_1809);
  let x_1811 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1811);
  let x_1813 : f32 = u_xlat80;
  let x_1815 : f32 = x_1797.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1813 * x_1815);
  let x_1817 : vec4<f32> = u_xlat7;
  let x_1819 : f32 = u_xlat80;
  let x_1821 : vec3<f32> = (vec3<f32>(x_1817.x, x_1817.y, x_1817.z) * vec3<f32>(x_1819, x_1819, x_1819));
  let x_1822 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
  let x_1824 : f32 = u_xlat82;
  let x_1826 : f32 = u_xlat82;
  let x_1830 : vec2<f32> = ((vec2<f32>(x_1824, x_1824) * vec2<f32>(x_1826, x_1826)) + vec2<f32>(-1.0f, 1.0f));
  let x_1831 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1830.x, x_1830.y, x_1831.z, x_1831.w);
  let x_1834 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_1834);
  let x_1836 : vec4<f32> = u_xlat0;
  let x_1839 : f32 = u_xlat81;
  u_xlat34 = (-(vec3<f32>(x_1836.x, x_1836.y, x_1836.z)) + vec3<f32>(x_1839, x_1839, x_1839));
  let x_1842 : f32 = u_xlat84;
  let x_1844 : vec3<f32> = u_xlat34;
  let x_1846 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1842, x_1842, x_1842) * x_1844) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : f32 = u_xlat80;
  let x_1851 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1849, x_1849, x_1849) * x_1851);
  let x_1853 : vec4<f32> = u_xlat7;
  let x_1855 : vec3<f32> = u_xlat34;
  let x_1856 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * x_1855);
  let x_1857 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1859 : vec4<f32> = u_xlat4;
  let x_1861 : vec3<f32> = u_xlat27;
  let x_1863 : vec4<f32> = u_xlat7;
  let x_1865 : vec3<f32> = ((vec3<f32>(x_1859.x, x_1859.y, x_1859.z) * x_1861) + vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : f32 = u_xlat57;
  let x_1870 : f32 = x_1797.unity_LightData.z;
  u_xlat80 = (x_1868 * x_1870);
  let x_1872 : vec3<f32> = u_xlat3;
  let x_1874 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat81 = dot(x_1872, vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1877, 0.0f, 1.0f);
  let x_1879 : f32 = u_xlat80;
  let x_1880 : f32 = u_xlat81;
  u_xlat80 = (x_1879 * x_1880);
  let x_1882 : f32 = u_xlat80;
  let x_1884 : vec4<f32> = u_xlat6;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1889 : vec3<f32> = u_xlat2;
  let x_1891 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1893 : vec3<f32> = (x_1889 + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec4<f32> = u_xlat7;
  let x_1898 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1896.x, x_1896.y, x_1896.z), vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
  let x_1901 : f32 = u_xlat80;
  u_xlat80 = max(x_1901, 1.17549435e-38f);
  let x_1904 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1904);
  let x_1906 : f32 = u_xlat80;
  let x_1908 : vec4<f32> = u_xlat7;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1913 : vec3<f32> = u_xlat3;
  let x_1914 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(x_1913, vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1917, 0.0f, 1.0f);
  let x_1920 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1922 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1925, 0.0f, 1.0f);
  let x_1927 : f32 = u_xlat80;
  let x_1928 : f32 = u_xlat80;
  u_xlat80 = (x_1927 * x_1928);
  let x_1930 : f32 = u_xlat80;
  let x_1932 : f32 = u_xlat8.x;
  u_xlat80 = ((x_1930 * x_1932) + 1.00001001358032226562f);
  let x_1936 : f32 = u_xlat81;
  let x_1937 : f32 = u_xlat81;
  u_xlat81 = (x_1936 * x_1937);
  let x_1939 : f32 = u_xlat80;
  let x_1940 : f32 = u_xlat80;
  u_xlat80 = (x_1939 * x_1940);
  let x_1942 : f32 = u_xlat81;
  u_xlat81 = max(x_1942, 0.10000000149011611938f);
  let x_1945 : f32 = u_xlat80;
  let x_1946 : f32 = u_xlat81;
  u_xlat80 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat31;
  let x_1949 : f32 = u_xlat80;
  u_xlat80 = (x_1948 * x_1949);
  let x_1952 : f32 = u_xlat5.x;
  let x_1953 : f32 = u_xlat80;
  u_xlat80 = (x_1952 / x_1953);
  let x_1955 : vec4<f32> = u_xlat0;
  let x_1957 : f32 = u_xlat80;
  let x_1960 : vec3<f32> = u_xlat27;
  let x_1961 : vec3<f32> = ((vec3<f32>(x_1955.x, x_1955.y, x_1955.z) * vec3<f32>(x_1957, x_1957, x_1957)) + x_1960);
  let x_1962 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1965 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1967 : f32 = x_1797.unity_LightData.y;
  u_xlat80 = min(x_1965, x_1967);
  let x_1971 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_1971));
  let x_1974 : f32 = u_xlat83;
  let x_1977 : f32 = x_289.x_AdditionalShadowFadeParams.x;
  let x_1980 : f32 = x_289.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_1974 * x_1977) + x_1980);
  let x_1982 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1982, 0.0f, 1.0f);
  let x_1985 : f32 = x_1616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1987 : f32 = x_1616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1989 : f32 = x_1616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1991 : f32 = x_1616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1992 : vec4<f32> = vec4<f32>(x_1985, x_1987, x_1989, x_1991);
  let x_1999 : vec4<bool> = (vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1992.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb57 = vec2<bool>(x_1999.x, x_1999.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2011 : u32 = u_xlatu_loop_1;
    let x_2012 : u32 = u_xlatu80;
    if ((x_2011 < x_2012)) {
    } else {
      break;
    }
    let x_2015 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2015 >> 2u);
    let x_2019 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_2019 & 3u));
    let x_2022 : u32 = u_xlatu84;
    let x_2025 : vec4<f32> = x_1797.unity_LightIndices[bitcast<i32>(x_2022)];
    let x_2035 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2040 : vec4<u32> = indexable[x_2035];
    u_xlat84 = dot(x_2025, bitcast<vec4<f32>>(x_2040));
    let x_2044 : f32 = u_xlat84;
    u_xlati84 = i32(x_2044);
    let x_2046 : vec3<f32> = vs_TEXCOORD1;
    let x_2057 : i32 = u_xlati84;
    let x_2059 : vec4<f32> = x_2056.x_AdditionalLightsPosition[x_2057];
    let x_2062 : i32 = u_xlati84;
    let x_2064 : vec4<f32> = x_2056.x_AdditionalLightsPosition[x_2062];
    let x_2066 : vec3<f32> = ((-(x_2046) * vec3<f32>(x_2059.w, x_2059.w, x_2059.w)) + vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat9;
    let x_2071 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_2069.x, x_2069.y, x_2069.z), vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
    let x_2074 : f32 = u_xlat85;
    u_xlat85 = max(x_2074, 0.00006103515625f);
    let x_2078 : f32 = u_xlat85;
    u_xlat87 = inverseSqrt(x_2078);
    let x_2080 : f32 = u_xlat87;
    let x_2082 : vec4<f32> = u_xlat9;
    let x_2084 : vec3<f32> = (vec3<f32>(x_2080, x_2080, x_2080) * vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
    let x_2085 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
    let x_2088 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_2088);
    let x_2090 : f32 = u_xlat85;
    let x_2091 : i32 = u_xlati84;
    let x_2093 : f32 = x_2056.x_AdditionalLightsAttenuation[x_2091].x;
    u_xlat85 = (x_2090 * x_2093);
    let x_2095 : f32 = u_xlat85;
    let x_2097 : f32 = u_xlat85;
    u_xlat85 = ((-(x_2095) * x_2097) + 1.0f);
    let x_2100 : f32 = u_xlat85;
    u_xlat85 = max(x_2100, 0.0f);
    let x_2102 : f32 = u_xlat85;
    let x_2103 : f32 = u_xlat85;
    u_xlat85 = (x_2102 * x_2103);
    let x_2105 : f32 = u_xlat85;
    let x_2106 : f32 = u_xlat88;
    u_xlat85 = (x_2105 * x_2106);
    let x_2108 : i32 = u_xlati84;
    let x_2110 : vec4<f32> = x_2056.x_AdditionalLightsSpotDir[x_2108];
    let x_2112 : vec4<f32> = u_xlat10;
    u_xlat88 = dot(vec3<f32>(x_2110.x, x_2110.y, x_2110.z), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
    let x_2115 : f32 = u_xlat88;
    let x_2116 : i32 = u_xlati84;
    let x_2118 : f32 = x_2056.x_AdditionalLightsAttenuation[x_2116].z;
    let x_2120 : i32 = u_xlati84;
    let x_2122 : f32 = x_2056.x_AdditionalLightsAttenuation[x_2120].w;
    u_xlat88 = ((x_2115 * x_2118) + x_2122);
    let x_2124 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2124, 0.0f, 1.0f);
    let x_2126 : f32 = u_xlat88;
    let x_2127 : f32 = u_xlat88;
    u_xlat88 = (x_2126 * x_2127);
    let x_2129 : f32 = u_xlat85;
    let x_2130 : f32 = u_xlat88;
    u_xlat85 = (x_2129 * x_2130);
    let x_2134 : i32 = u_xlati84;
    let x_2136 : f32 = x_289.x_AdditionalShadowParams[x_2134].w;
    u_xlati88 = i32(x_2136);
    let x_2141 : i32 = u_xlati88;
    u_xlatb11.x = (x_2141 >= 0i);
    let x_2145 : bool = u_xlatb11.x;
    if (x_2145) {
      let x_2149 : i32 = u_xlati84;
      let x_2151 : f32 = x_289.x_AdditionalShadowParams[x_2149].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2151, x_2151, x_2151, x_2151))));
      let x_2157 : bool = u_xlatb11.x;
      if (x_2157) {
        let x_2160 : vec4<f32> = u_xlat10;
        let x_2163 : vec4<f32> = u_xlat10;
        let x_2166 : vec4<bool> = (abs(vec4<f32>(x_2160.z, x_2160.z, x_2160.y, x_2160.z)) >= abs(vec4<f32>(x_2163.x, x_2163.y, x_2163.x, x_2163.x)));
        u_xlatb11 = vec3<bool>(x_2166.x, x_2166.y, x_2166.z);
        let x_2169 : bool = u_xlatb11.y;
        let x_2171 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_2169 & x_2171);
        let x_2175 : vec4<f32> = u_xlat10;
        let x_2178 : vec4<bool> = (-(vec4<f32>(x_2175.z, x_2175.y, x_2175.x, x_2175.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_2178.x, x_2178.y, x_2178.z);
        let x_2182 : bool = u_xlatb12.x;
        u_xlat37.x = select(4.0f, 5.0f, x_2182);
        let x_2187 : bool = u_xlatb12.y;
        u_xlat37.z = select(2.0f, 3.0f, x_2187);
        let x_2192 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_2192);
        let x_2197 : bool = u_xlatb11.z;
        if (x_2197) {
          let x_2202 : f32 = u_xlat37.z;
          x_2198 = x_2202;
        } else {
          let x_2205 : f32 = u_xlat12.x;
          x_2198 = x_2205;
        }
        let x_2206 : f32 = x_2198;
        u_xlat63 = x_2206;
        let x_2208 : bool = u_xlatb11.x;
        if (x_2208) {
          let x_2213 : f32 = u_xlat37.x;
          x_2209 = x_2213;
        } else {
          let x_2215 : f32 = u_xlat63;
          x_2209 = x_2215;
        }
        let x_2216 : f32 = x_2209;
        u_xlat11.x = x_2216;
        let x_2218 : i32 = u_xlati84;
        let x_2220 : f32 = x_289.x_AdditionalShadowParams[x_2218].w;
        u_xlat37.x = trunc(x_2220);
        let x_2224 : f32 = u_xlat11.x;
        let x_2226 : f32 = u_xlat37.x;
        u_xlat11.x = (x_2224 + x_2226);
        let x_2230 : f32 = u_xlat11.x;
        u_xlati88 = i32(x_2230);
      }
      let x_2232 : i32 = u_xlati88;
      u_xlati88 = (x_2232 << bitcast<u32>(2i));
      let x_2234 : vec3<f32> = vs_TEXCOORD1;
      let x_2237 : i32 = u_xlati88;
      let x_2240 : i32 = u_xlati88;
      let x_2244 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_2237 + 1i) / 4i)][((x_2240 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2234.y, x_2234.y, x_2234.y, x_2234.y) * x_2244);
      let x_2246 : i32 = u_xlati88;
      let x_2248 : i32 = u_xlati88;
      let x_2251 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[(x_2246 / 4i)][(x_2248 % 4i)];
      let x_2252 : vec3<f32> = vs_TEXCOORD1;
      let x_2255 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2251 * vec4<f32>(x_2252.x, x_2252.x, x_2252.x, x_2252.x)) + x_2255);
      let x_2257 : i32 = u_xlati88;
      let x_2260 : i32 = u_xlati88;
      let x_2264 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_2257 + 2i) / 4i)][((x_2260 + 2i) % 4i)];
      let x_2265 : vec3<f32> = vs_TEXCOORD1;
      let x_2268 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2264 * vec4<f32>(x_2265.z, x_2265.z, x_2265.z, x_2265.z)) + x_2268);
      let x_2270 : vec4<f32> = u_xlat11;
      let x_2271 : i32 = u_xlati88;
      let x_2274 : i32 = u_xlati88;
      let x_2278 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_2271 + 3i) / 4i)][((x_2274 + 3i) % 4i)];
      u_xlat11 = (x_2270 + x_2278);
      let x_2280 : vec4<f32> = u_xlat11;
      let x_2282 : vec4<f32> = u_xlat11;
      let x_2284 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) / vec3<f32>(x_2282.w, x_2282.w, x_2282.w));
      let x_2285 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
      let x_2288 : i32 = u_xlati84;
      let x_2290 : f32 = x_289.x_AdditionalShadowParams[x_2288].y;
      u_xlatb88 = (0.0f < x_2290);
      let x_2292 : bool = u_xlatb88;
      if (x_2292) {
        let x_2295 : i32 = u_xlati84;
        let x_2297 : f32 = x_289.x_AdditionalShadowParams[x_2295].y;
        u_xlatb88 = (1.0f == x_2297);
        let x_2299 : bool = u_xlatb88;
        if (x_2299) {
          let x_2302 : vec4<f32> = u_xlat11;
          let x_2306 : vec4<f32> = x_289.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2302.x, x_2302.y, x_2302.x, x_2302.y) + x_2306);
          let x_2309 : vec4<f32> = u_xlat12;
          let x_2310 : vec2<f32> = vec2<f32>(x_2309.x, x_2309.y);
          let x_2312 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
          let x_2320 : vec3<f32> = txVec30;
          let x_2322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2320.xy, x_2320.z);
          u_xlat13.x = x_2322;
          let x_2325 : vec4<f32> = u_xlat12;
          let x_2326 : vec2<f32> = vec2<f32>(x_2325.z, x_2325.w);
          let x_2328 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2326.x, x_2326.y, x_2328);
          let x_2335 : vec3<f32> = txVec31;
          let x_2337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2335.xy, x_2335.z);
          u_xlat13.y = x_2337;
          let x_2339 : vec4<f32> = u_xlat11;
          let x_2343 : vec4<f32> = x_289.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2339.x, x_2339.y, x_2339.x, x_2339.y) + x_2343);
          let x_2346 : vec4<f32> = u_xlat12;
          let x_2347 : vec2<f32> = vec2<f32>(x_2346.x, x_2346.y);
          let x_2349 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
          let x_2356 : vec3<f32> = txVec32;
          let x_2358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2356.xy, x_2356.z);
          u_xlat13.z = x_2358;
          let x_2361 : vec4<f32> = u_xlat12;
          let x_2362 : vec2<f32> = vec2<f32>(x_2361.z, x_2361.w);
          let x_2364 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
          let x_2371 : vec3<f32> = txVec33;
          let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
          u_xlat13.w = x_2373;
          let x_2375 : vec4<f32> = u_xlat13;
          u_xlat88 = dot(x_2375, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2379 : i32 = u_xlati84;
          let x_2381 : f32 = x_289.x_AdditionalShadowParams[x_2379].y;
          u_xlatb89 = (2.0f == x_2381);
          let x_2383 : bool = u_xlatb89;
          if (x_2383) {
            let x_2386 : vec4<f32> = u_xlat11;
            let x_2390 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2393 : vec2<f32> = ((vec2<f32>(x_2386.x, x_2386.y) * vec2<f32>(x_2390.z, x_2390.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2394 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat12;
            let x_2398 : vec2<f32> = floor(vec2<f32>(x_2396.x, x_2396.y));
            let x_2399 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2398.x, x_2398.y, x_2399.z, x_2399.w);
            let x_2402 : vec4<f32> = u_xlat11;
            let x_2405 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2402.x, x_2402.y) * vec2<f32>(x_2405.z, x_2405.w)) + -(vec2<f32>(x_2408.x, x_2408.y)));
            let x_2412 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2412.x, x_2412.x, x_2412.y, x_2412.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2415 : vec4<f32> = u_xlat13;
            let x_2417 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2415.x, x_2415.x, x_2415.z, x_2415.z) * vec4<f32>(x_2417.x, x_2417.x, x_2417.z, x_2417.z));
            let x_2420 : vec4<f32> = u_xlat14;
            let x_2422 : vec2<f32> = (vec2<f32>(x_2420.y, x_2420.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2423 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2422.x, x_2423.y, x_2422.y, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat14;
            let x_2428 : vec2<f32> = u_xlat64;
            let x_2430 : vec2<f32> = ((vec2<f32>(x_2425.x, x_2425.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2428));
            let x_2431 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2430.x, x_2430.y, x_2431.z, x_2431.w);
            let x_2433 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2433) + vec2<f32>(1.0f, 1.0f));
            let x_2436 : vec2<f32> = u_xlat64;
            let x_2437 : vec2<f32> = min(x_2436, vec2<f32>(0.0f, 0.0f));
            let x_2438 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat15;
            let x_2443 : vec4<f32> = u_xlat15;
            let x_2446 : vec2<f32> = u_xlat66;
            let x_2447 : vec2<f32> = ((-(vec2<f32>(x_2440.x, x_2440.y)) * vec2<f32>(x_2443.x, x_2443.y)) + x_2446);
            let x_2448 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2450, vec2<f32>(0.0f, 0.0f));
            let x_2452 : vec2<f32> = u_xlat64;
            let x_2454 : vec2<f32> = u_xlat64;
            let x_2456 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2452) * x_2454) + vec2<f32>(x_2456.y, x_2456.w));
            let x_2459 : vec4<f32> = u_xlat15;
            let x_2461 : vec2<f32> = (vec2<f32>(x_2459.x, x_2459.y) + vec2<f32>(1.0f, 1.0f));
            let x_2462 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2461.x, x_2461.y, x_2462.z, x_2462.w);
            let x_2464 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2464 + vec2<f32>(1.0f, 1.0f));
            let x_2466 : vec4<f32> = u_xlat14;
            let x_2468 : vec2<f32> = (vec2<f32>(x_2466.x, x_2466.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2469 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2471 : vec2<f32> = u_xlat66;
            let x_2472 : vec2<f32> = (x_2471 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2473 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
            let x_2475 : vec4<f32> = u_xlat15;
            let x_2477 : vec2<f32> = (vec2<f32>(x_2475.x, x_2475.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec2<f32> = u_xlat64;
            let x_2481 : vec2<f32> = (x_2480 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2482 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2484.y, x_2484.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2488 : f32 = u_xlat15.x;
            u_xlat16.z = x_2488;
            let x_2491 : f32 = u_xlat64.x;
            u_xlat16.w = x_2491;
            let x_2494 : f32 = u_xlat17.x;
            u_xlat14.z = x_2494;
            let x_2497 : f32 = u_xlat13.x;
            u_xlat14.w = x_2497;
            let x_2499 : vec4<f32> = u_xlat14;
            let x_2501 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2499.z, x_2499.w, x_2499.x, x_2499.z) + vec4<f32>(x_2501.z, x_2501.w, x_2501.x, x_2501.z));
            let x_2505 : f32 = u_xlat16.y;
            u_xlat15.z = x_2505;
            let x_2508 : f32 = u_xlat64.y;
            u_xlat15.w = x_2508;
            let x_2511 : f32 = u_xlat14.y;
            u_xlat17.z = x_2511;
            let x_2514 : f32 = u_xlat13.z;
            u_xlat17.w = x_2514;
            let x_2516 : vec4<f32> = u_xlat15;
            let x_2518 : vec4<f32> = u_xlat17;
            let x_2520 : vec3<f32> = (vec3<f32>(x_2516.z, x_2516.y, x_2516.w) + vec3<f32>(x_2518.z, x_2518.y, x_2518.w));
            let x_2521 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
            let x_2523 : vec4<f32> = u_xlat14;
            let x_2525 : vec4<f32> = u_xlat18;
            let x_2527 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.z, x_2523.w) / vec3<f32>(x_2525.z, x_2525.w, x_2525.y));
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
            let x_2530 : vec4<f32> = u_xlat14;
            let x_2532 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2532.x, x_2532.y, x_2532.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat17;
            let x_2537 : vec4<f32> = u_xlat13;
            let x_2539 : vec3<f32> = (vec3<f32>(x_2535.z, x_2535.y, x_2535.w) / vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
            let x_2540 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
            let x_2542 : vec4<f32> = u_xlat15;
            let x_2544 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.y, x_2542.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2545 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
            let x_2547 : vec4<f32> = u_xlat14;
            let x_2550 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2547.y, x_2547.x, x_2547.z) * vec3<f32>(x_2550.x, x_2550.x, x_2550.x));
            let x_2553 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat15;
            let x_2558 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2555.x, x_2555.y, x_2555.z) * vec3<f32>(x_2558.y, x_2558.y, x_2558.y));
            let x_2561 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2564 : f32 = u_xlat15.x;
            u_xlat14.w = x_2564;
            let x_2566 : vec4<f32> = u_xlat12;
            let x_2569 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.y, x_2572.w, x_2572.x, x_2572.w));
            let x_2575 : vec4<f32> = u_xlat12;
            let x_2578 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.x, x_2578.y)) + vec2<f32>(x_2581.z, x_2581.w));
            let x_2585 : f32 = u_xlat14.y;
            u_xlat15.w = x_2585;
            let x_2587 : vec4<f32> = u_xlat15;
            let x_2588 : vec2<f32> = vec2<f32>(x_2587.y, x_2587.z);
            let x_2589 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2589.x, x_2588.x, x_2589.z, x_2588.y);
            let x_2591 : vec4<f32> = u_xlat12;
            let x_2594 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2597 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y) * vec4<f32>(x_2594.x, x_2594.y, x_2594.x, x_2594.y)) + vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2597.y));
            let x_2600 : vec4<f32> = u_xlat12;
            let x_2603 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2606 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y) * vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y)) + vec4<f32>(x_2606.w, x_2606.y, x_2606.w, x_2606.z));
            let x_2609 : vec4<f32> = u_xlat12;
            let x_2612 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2615 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y) * vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.y)) + vec4<f32>(x_2615.x, x_2615.w, x_2615.z, x_2615.w));
            let x_2618 : vec4<f32> = u_xlat13;
            let x_2620 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2618.x, x_2618.x, x_2618.x, x_2618.y) * vec4<f32>(x_2620.z, x_2620.w, x_2620.y, x_2620.z));
            let x_2624 : vec4<f32> = u_xlat13;
            let x_2626 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2624.y, x_2624.y, x_2624.z, x_2624.z) * x_2626);
            let x_2630 : f32 = u_xlat13.z;
            let x_2632 : f32 = u_xlat18.y;
            u_xlat89 = (x_2630 * x_2632);
            let x_2635 : vec4<f32> = u_xlat16;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.x, x_2635.y);
            let x_2638 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec34;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat12.x = x_2647;
            let x_2650 : vec4<f32> = u_xlat16;
            let x_2651 : vec2<f32> = vec2<f32>(x_2650.z, x_2650.w);
            let x_2653 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2651.x, x_2651.y, x_2653);
            let x_2661 : vec3<f32> = txVec35;
            let x_2663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2661.xy, x_2661.z);
            u_xlat38 = x_2663;
            let x_2664 : f32 = u_xlat38;
            let x_2666 : f32 = u_xlat19.y;
            u_xlat38 = (x_2664 * x_2666);
            let x_2669 : f32 = u_xlat19.x;
            let x_2671 : f32 = u_xlat12.x;
            let x_2673 : f32 = u_xlat38;
            u_xlat12.x = ((x_2669 * x_2671) + x_2673);
            let x_2677 : vec2<f32> = u_xlat64;
            let x_2679 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2677.x, x_2677.y, x_2679);
            let x_2686 : vec3<f32> = txVec36;
            let x_2688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2686.xy, x_2686.z);
            u_xlat38 = x_2688;
            let x_2690 : f32 = u_xlat19.z;
            let x_2691 : f32 = u_xlat38;
            let x_2694 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2690 * x_2691) + x_2694);
            let x_2698 : vec4<f32> = u_xlat15;
            let x_2699 : vec2<f32> = vec2<f32>(x_2698.x, x_2698.y);
            let x_2701 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2699.x, x_2699.y, x_2701);
            let x_2708 : vec3<f32> = txVec37;
            let x_2710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2708.xy, x_2708.z);
            u_xlat38 = x_2710;
            let x_2712 : f32 = u_xlat19.w;
            let x_2713 : f32 = u_xlat38;
            let x_2716 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2712 * x_2713) + x_2716);
            let x_2720 : vec4<f32> = u_xlat17;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
            let x_2723 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
            let x_2730 : vec3<f32> = txVec38;
            let x_2732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
            u_xlat38 = x_2732;
            let x_2734 : f32 = u_xlat20.x;
            let x_2735 : f32 = u_xlat38;
            let x_2738 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2734 * x_2735) + x_2738);
            let x_2742 : vec4<f32> = u_xlat17;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
            let x_2745 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
            let x_2752 : vec3<f32> = txVec39;
            let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
            u_xlat38 = x_2754;
            let x_2756 : f32 = u_xlat20.y;
            let x_2757 : f32 = u_xlat38;
            let x_2760 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2756 * x_2757) + x_2760);
            let x_2764 : vec4<f32> = u_xlat15;
            let x_2765 : vec2<f32> = vec2<f32>(x_2764.z, x_2764.w);
            let x_2767 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
            let x_2774 : vec3<f32> = txVec40;
            let x_2776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
            u_xlat38 = x_2776;
            let x_2778 : f32 = u_xlat20.z;
            let x_2779 : f32 = u_xlat38;
            let x_2782 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2778 * x_2779) + x_2782);
            let x_2786 : vec4<f32> = u_xlat14;
            let x_2787 : vec2<f32> = vec2<f32>(x_2786.x, x_2786.y);
            let x_2789 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2787.x, x_2787.y, x_2789);
            let x_2796 : vec3<f32> = txVec41;
            let x_2798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2796.xy, x_2796.z);
            u_xlat38 = x_2798;
            let x_2800 : f32 = u_xlat20.w;
            let x_2801 : f32 = u_xlat38;
            let x_2804 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2800 * x_2801) + x_2804);
            let x_2808 : vec4<f32> = u_xlat14;
            let x_2809 : vec2<f32> = vec2<f32>(x_2808.z, x_2808.w);
            let x_2811 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2809.x, x_2809.y, x_2811);
            let x_2818 : vec3<f32> = txVec42;
            let x_2820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2818.xy, x_2818.z);
            u_xlat38 = x_2820;
            let x_2821 : f32 = u_xlat89;
            let x_2822 : f32 = u_xlat38;
            let x_2825 : f32 = u_xlat12.x;
            u_xlat88 = ((x_2821 * x_2822) + x_2825);
          } else {
            let x_2828 : vec4<f32> = u_xlat11;
            let x_2831 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2834 : vec2<f32> = ((vec2<f32>(x_2828.x, x_2828.y) * vec2<f32>(x_2831.z, x_2831.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2835 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec4<f32> = u_xlat12;
            let x_2839 : vec2<f32> = floor(vec2<f32>(x_2837.x, x_2837.y));
            let x_2840 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec4<f32> = u_xlat11;
            let x_2845 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_2848 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2842.x, x_2842.y) * vec2<f32>(x_2845.z, x_2845.w)) + -(vec2<f32>(x_2848.x, x_2848.y)));
            let x_2852 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2852.x, x_2852.x, x_2852.y, x_2852.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2855 : vec4<f32> = u_xlat13;
            let x_2857 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2855.x, x_2855.x, x_2855.z, x_2855.z) * vec4<f32>(x_2857.x, x_2857.x, x_2857.z, x_2857.z));
            let x_2860 : vec4<f32> = u_xlat14;
            let x_2862 : vec2<f32> = (vec2<f32>(x_2860.y, x_2860.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2863 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2863.x, x_2862.x, x_2863.z, x_2862.y);
            let x_2865 : vec4<f32> = u_xlat14;
            let x_2868 : vec2<f32> = u_xlat64;
            let x_2870 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2868));
            let x_2871 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2870.x, x_2871.y, x_2870.y, x_2871.w);
            let x_2873 : vec2<f32> = u_xlat64;
            let x_2875 : vec2<f32> = (-(x_2873) + vec2<f32>(1.0f, 1.0f));
            let x_2876 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2875.x, x_2875.y, x_2876.z, x_2876.w);
            let x_2878 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2878, vec2<f32>(0.0f, 0.0f));
            let x_2880 : vec2<f32> = u_xlat66;
            let x_2882 : vec2<f32> = u_xlat66;
            let x_2884 : vec4<f32> = u_xlat14;
            let x_2886 : vec2<f32> = ((-(x_2880) * x_2882) + vec2<f32>(x_2884.x, x_2884.y));
            let x_2887 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2886.x, x_2886.y, x_2887.z, x_2887.w);
            let x_2889 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2889, vec2<f32>(0.0f, 0.0f));
            let x_2892 : vec2<f32> = u_xlat66;
            let x_2894 : vec2<f32> = u_xlat66;
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2898 : vec2<f32> = ((-(x_2892) * x_2894) + vec2<f32>(x_2896.y, x_2896.w));
            let x_2899 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2898.x, x_2899.y, x_2898.y);
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2903 : vec2<f32> = (vec2<f32>(x_2901.x, x_2901.y) + vec2<f32>(2.0f, 2.0f));
            let x_2904 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
            let x_2906 : vec3<f32> = u_xlat39;
            let x_2908 : vec2<f32> = (vec2<f32>(x_2906.x, x_2906.z) + vec2<f32>(2.0f, 2.0f));
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2909.x, x_2908.x, x_2909.z, x_2908.y);
            let x_2912 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2912 * 0.08163200318813323975f);
            let x_2915 : vec4<f32> = u_xlat13;
            let x_2917 : vec3<f32> = (vec3<f32>(x_2915.z, x_2915.x, x_2915.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2918 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
            let x_2920 : vec4<f32> = u_xlat14;
            let x_2922 : vec2<f32> = (vec2<f32>(x_2920.x, x_2920.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2923 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2922.x, x_2922.y, x_2923.z, x_2923.w);
            let x_2926 : f32 = u_xlat17.y;
            u_xlat16.x = x_2926;
            let x_2928 : vec2<f32> = u_xlat64;
            let x_2931 : vec2<f32> = ((vec2<f32>(x_2928.x, x_2928.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2932 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2932.x, x_2931.x, x_2932.z, x_2931.y);
            let x_2934 : vec2<f32> = u_xlat64;
            let x_2937 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2938 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2937.x, x_2938.y, x_2937.y, x_2938.w);
            let x_2941 : f32 = u_xlat13.x;
            u_xlat14.y = x_2941;
            let x_2944 : f32 = u_xlat15.y;
            u_xlat14.w = x_2944;
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2947 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2946 + x_2947);
            let x_2949 : vec2<f32> = u_xlat64;
            let x_2952 : vec2<f32> = ((vec2<f32>(x_2949.y, x_2949.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2953 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2953.x, x_2952.x, x_2953.z, x_2952.y);
            let x_2955 : vec2<f32> = u_xlat64;
            let x_2958 : vec2<f32> = ((vec2<f32>(x_2955.y, x_2955.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2959 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2958.x, x_2959.y, x_2958.y, x_2959.w);
            let x_2962 : f32 = u_xlat13.y;
            u_xlat15.y = x_2962;
            let x_2964 : vec4<f32> = u_xlat15;
            let x_2965 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2964 + x_2965);
            let x_2967 : vec4<f32> = u_xlat14;
            let x_2968 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2967 / x_2968);
            let x_2970 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2970 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2972 : vec4<f32> = u_xlat15;
            let x_2973 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2972 / x_2973);
            let x_2975 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2975 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2977 : vec4<f32> = u_xlat14;
            let x_2980 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2977.w, x_2977.x, x_2977.y, x_2977.z) * vec4<f32>(x_2980.x, x_2980.x, x_2980.x, x_2980.x));
            let x_2983 : vec4<f32> = u_xlat15;
            let x_2986 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2983.x, x_2983.w, x_2983.y, x_2983.z) * vec4<f32>(x_2986.y, x_2986.y, x_2986.y, x_2986.y));
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2990 : vec3<f32> = vec3<f32>(x_2989.y, x_2989.z, x_2989.w);
            let x_2991 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2990.x, x_2991.y, x_2990.y, x_2990.z);
            let x_2994 : f32 = u_xlat15.x;
            u_xlat17.y = x_2994;
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y) * vec4<f32>(x_2999.x, x_2999.y, x_2999.x, x_2999.y)) + vec4<f32>(x_3002.x, x_3002.y, x_3002.z, x_3002.y));
            let x_3005 : vec4<f32> = u_xlat12;
            let x_3008 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3011 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3005.x, x_3005.y) * vec2<f32>(x_3008.x, x_3008.y)) + vec2<f32>(x_3011.w, x_3011.y));
            let x_3015 : f32 = u_xlat17.y;
            u_xlat14.y = x_3015;
            let x_3018 : f32 = u_xlat15.z;
            u_xlat17.y = x_3018;
            let x_3020 : vec4<f32> = u_xlat12;
            let x_3023 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3026 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3020.x, x_3020.y, x_3020.x, x_3020.y) * vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y)) + vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3026.y));
            let x_3029 : vec4<f32> = u_xlat12;
            let x_3032 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3035 : vec4<f32> = u_xlat17;
            let x_3037 : vec2<f32> = ((vec2<f32>(x_3029.x, x_3029.y) * vec2<f32>(x_3032.x, x_3032.y)) + vec2<f32>(x_3035.w, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
            let x_3041 : f32 = u_xlat17.y;
            u_xlat14.z = x_3041;
            let x_3044 : vec4<f32> = u_xlat12;
            let x_3047 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3050 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3044.x, x_3044.y, x_3044.x, x_3044.y) * vec4<f32>(x_3047.x, x_3047.y, x_3047.x, x_3047.y)) + vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.z));
            let x_3054 : f32 = u_xlat15.w;
            u_xlat17.y = x_3054;
            let x_3057 : vec4<f32> = u_xlat12;
            let x_3060 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3063 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3057.x, x_3057.y, x_3057.x, x_3057.y) * vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y)) + vec4<f32>(x_3063.x, x_3063.y, x_3063.z, x_3063.y));
            let x_3067 : vec4<f32> = u_xlat12;
            let x_3070 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3073 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3067.x, x_3067.y) * vec2<f32>(x_3070.x, x_3070.y)) + vec2<f32>(x_3073.w, x_3073.y));
            let x_3077 : f32 = u_xlat17.y;
            u_xlat14.w = x_3077;
            let x_3080 : vec4<f32> = u_xlat12;
            let x_3083 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3080.x, x_3080.y) * vec2<f32>(x_3083.x, x_3083.y)) + vec2<f32>(x_3086.x, x_3086.w));
            let x_3089 : vec4<f32> = u_xlat17;
            let x_3090 : vec3<f32> = vec3<f32>(x_3089.x, x_3089.z, x_3089.w);
            let x_3091 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3090.x, x_3091.y, x_3090.y, x_3090.z);
            let x_3093 : vec4<f32> = u_xlat12;
            let x_3096 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3099 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y) * vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y)) + vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3099.y));
            let x_3103 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3106.x, x_3106.y)) + vec2<f32>(x_3109.w, x_3109.y));
            let x_3113 : f32 = u_xlat14.x;
            u_xlat15.x = x_3113;
            let x_3115 : vec4<f32> = u_xlat12;
            let x_3118 : vec4<f32> = x_289.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat15;
            let x_3123 : vec2<f32> = ((vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(x_3118.x, x_3118.y)) + vec2<f32>(x_3121.x, x_3121.y));
            let x_3124 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3123.x, x_3123.y, x_3124.z, x_3124.w);
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3127.x, x_3127.x, x_3127.x, x_3127.x) * x_3129);
            let x_3132 : vec4<f32> = u_xlat13;
            let x_3134 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3132.y, x_3132.y, x_3132.y, x_3132.y) * x_3134);
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3139 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3137.z, x_3137.z, x_3137.z, x_3137.z) * x_3139);
            let x_3141 : vec4<f32> = u_xlat13;
            let x_3143 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3141.w, x_3141.w, x_3141.w, x_3141.w) * x_3143);
            let x_3146 : vec4<f32> = u_xlat18;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
            let x_3149 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec43;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat89 = x_3158;
            let x_3160 : vec4<f32> = u_xlat18;
            let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
            let x_3163 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec44;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat14.x = x_3172;
            let x_3175 : f32 = u_xlat14.x;
            let x_3177 : f32 = u_xlat23.y;
            u_xlat14.x = (x_3175 * x_3177);
            let x_3181 : f32 = u_xlat23.x;
            let x_3182 : f32 = u_xlat89;
            let x_3185 : f32 = u_xlat14.x;
            u_xlat89 = ((x_3181 * x_3182) + x_3185);
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3190 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec45;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat64.x = x_3199;
            let x_3202 : f32 = u_xlat23.z;
            let x_3204 : f32 = u_xlat64.x;
            let x_3206 : f32 = u_xlat89;
            u_xlat89 = ((x_3202 * x_3204) + x_3206);
            let x_3209 : vec4<f32> = u_xlat21;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
            let x_3212 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec46;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat64.x = x_3221;
            let x_3224 : f32 = u_xlat23.w;
            let x_3226 : f32 = u_xlat64.x;
            let x_3228 : f32 = u_xlat89;
            u_xlat89 = ((x_3224 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat19;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec47;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat64.x = x_3243;
            let x_3246 : f32 = u_xlat24.x;
            let x_3248 : f32 = u_xlat64.x;
            let x_3250 : f32 = u_xlat89;
            u_xlat89 = ((x_3246 * x_3248) + x_3250);
            let x_3253 : vec4<f32> = u_xlat19;
            let x_3254 : vec2<f32> = vec2<f32>(x_3253.z, x_3253.w);
            let x_3256 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3254.x, x_3254.y, x_3256);
            let x_3263 : vec3<f32> = txVec48;
            let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
            u_xlat64.x = x_3265;
            let x_3268 : f32 = u_xlat24.y;
            let x_3270 : f32 = u_xlat64.x;
            let x_3272 : f32 = u_xlat89;
            u_xlat89 = ((x_3268 * x_3270) + x_3272);
            let x_3275 : vec4<f32> = u_xlat20;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.x, x_3275.y);
            let x_3278 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec49;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat64.x = x_3287;
            let x_3290 : f32 = u_xlat24.z;
            let x_3292 : f32 = u_xlat64.x;
            let x_3294 : f32 = u_xlat89;
            u_xlat89 = ((x_3290 * x_3292) + x_3294);
            let x_3297 : vec4<f32> = u_xlat21;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.z, x_3297.w);
            let x_3300 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec50;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat64.x = x_3309;
            let x_3312 : f32 = u_xlat24.w;
            let x_3314 : f32 = u_xlat64.x;
            let x_3316 : f32 = u_xlat89;
            u_xlat89 = ((x_3312 * x_3314) + x_3316);
            let x_3319 : vec4<f32> = u_xlat22;
            let x_3320 : vec2<f32> = vec2<f32>(x_3319.x, x_3319.y);
            let x_3322 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec51;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat64.x = x_3331;
            let x_3334 : f32 = u_xlat25.x;
            let x_3336 : f32 = u_xlat64.x;
            let x_3338 : f32 = u_xlat89;
            u_xlat89 = ((x_3334 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat22;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec52;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat64.x = x_3353;
            let x_3356 : f32 = u_xlat25.y;
            let x_3358 : f32 = u_xlat64.x;
            let x_3360 : f32 = u_xlat89;
            u_xlat89 = ((x_3356 * x_3358) + x_3360);
            let x_3363 : vec2<f32> = u_xlat40;
            let x_3365 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
            let x_3372 : vec3<f32> = txVec53;
            let x_3374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
            u_xlat64.x = x_3374;
            let x_3377 : f32 = u_xlat25.z;
            let x_3379 : f32 = u_xlat64.x;
            let x_3381 : f32 = u_xlat89;
            u_xlat89 = ((x_3377 * x_3379) + x_3381);
            let x_3384 : vec2<f32> = u_xlat72;
            let x_3386 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec54;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat64.x = x_3395;
            let x_3398 : f32 = u_xlat25.w;
            let x_3400 : f32 = u_xlat64.x;
            let x_3402 : f32 = u_xlat89;
            u_xlat89 = ((x_3398 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat17;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.x, x_3405.y);
            let x_3408 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec55;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat64.x = x_3417;
            let x_3420 : f32 = u_xlat13.x;
            let x_3422 : f32 = u_xlat64.x;
            let x_3424 : f32 = u_xlat89;
            u_xlat89 = ((x_3420 * x_3422) + x_3424);
            let x_3427 : vec4<f32> = u_xlat17;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.z, x_3427.w);
            let x_3430 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec56;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat64.x = x_3439;
            let x_3442 : f32 = u_xlat13.y;
            let x_3444 : f32 = u_xlat64.x;
            let x_3446 : f32 = u_xlat89;
            u_xlat89 = ((x_3442 * x_3444) + x_3446);
            let x_3449 : vec2<f32> = u_xlat67;
            let x_3451 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec57;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat64.x = x_3460;
            let x_3463 : f32 = u_xlat13.z;
            let x_3465 : f32 = u_xlat64.x;
            let x_3467 : f32 = u_xlat89;
            u_xlat89 = ((x_3463 * x_3465) + x_3467);
            let x_3470 : vec4<f32> = u_xlat12;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.x, x_3470.y);
            let x_3473 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec58;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat12.x = x_3482;
            let x_3485 : f32 = u_xlat13.w;
            let x_3487 : f32 = u_xlat12.x;
            let x_3489 : f32 = u_xlat89;
            u_xlat88 = ((x_3485 * x_3487) + x_3489);
          }
        }
      } else {
        let x_3493 : vec4<f32> = u_xlat11;
        let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
        let x_3496 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
        let x_3503 : vec3<f32> = txVec59;
        let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
        u_xlat88 = x_3505;
      }
      let x_3506 : i32 = u_xlati84;
      let x_3508 : f32 = x_289.x_AdditionalShadowParams[x_3506].x;
      u_xlat11.x = (1.0f + -(x_3508));
      let x_3512 : f32 = u_xlat88;
      let x_3513 : i32 = u_xlati84;
      let x_3515 : f32 = x_289.x_AdditionalShadowParams[x_3513].x;
      let x_3518 : f32 = u_xlat11.x;
      u_xlat88 = ((x_3512 * x_3515) + x_3518);
      let x_3521 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_3521);
      let x_3526 : f32 = u_xlat11.z;
      u_xlatb37 = (x_3526 >= 1.0f);
      let x_3528 : bool = u_xlatb37;
      let x_3530 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_3528 | x_3530);
      let x_3534 : bool = u_xlatb11.x;
      let x_3535 : f32 = u_xlat88;
      u_xlat88 = select(x_3535, 1.0f, x_3534);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3538 : f32 = u_xlat88;
    u_xlat11.x = (-(x_3538) + 1.0f);
    let x_3542 : f32 = u_xlat81;
    let x_3544 : f32 = u_xlat11.x;
    let x_3546 : f32 = u_xlat88;
    u_xlat88 = ((x_3542 * x_3544) + x_3546);
    let x_3549 : i32 = u_xlati84;
    u_xlati11 = (1i << bitcast<u32>((x_3549 & 31i)));
    let x_3553 : i32 = u_xlati11;
    let x_3556 : f32 = x_1616.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_3553) & bitcast<u32>(x_3556)));
    let x_3560 : i32 = u_xlati11;
    if ((x_3560 != 0i)) {
      let x_3564 : i32 = u_xlati84;
      let x_3566 : f32 = x_1616.x_AdditionalLightsLightTypes[x_3564].el;
      u_xlati11 = i32(x_3566);
      let x_3569 : i32 = u_xlati11;
      u_xlati37 = select(1i, 0i, (x_3569 != 0i));
      let x_3573 : i32 = u_xlati84;
      u_xlati63 = (x_3573 << bitcast<u32>(2i));
      let x_3575 : i32 = u_xlati37;
      if ((x_3575 != 0i)) {
        let x_3579 : vec3<f32> = vs_TEXCOORD1;
        let x_3581 : i32 = u_xlati63;
        let x_3584 : i32 = u_xlati63;
        let x_3588 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3581 + 1i) / 4i)][((x_3584 + 1i) % 4i)];
        let x_3590 : vec3<f32> = (vec3<f32>(x_3579.y, x_3579.y, x_3579.y) * vec3<f32>(x_3588.x, x_3588.y, x_3588.w));
        let x_3591 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3591.w);
        let x_3593 : i32 = u_xlati63;
        let x_3595 : i32 = u_xlati63;
        let x_3598 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[(x_3593 / 4i)][(x_3595 % 4i)];
        let x_3600 : vec3<f32> = vs_TEXCOORD1;
        let x_3603 : vec4<f32> = u_xlat12;
        let x_3605 : vec3<f32> = ((vec3<f32>(x_3598.x, x_3598.y, x_3598.w) * vec3<f32>(x_3600.x, x_3600.x, x_3600.x)) + vec3<f32>(x_3603.x, x_3603.y, x_3603.z));
        let x_3606 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3605.x, x_3605.y, x_3605.z, x_3606.w);
        let x_3608 : i32 = u_xlati63;
        let x_3611 : i32 = u_xlati63;
        let x_3615 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3608 + 2i) / 4i)][((x_3611 + 2i) % 4i)];
        let x_3617 : vec3<f32> = vs_TEXCOORD1;
        let x_3620 : vec4<f32> = u_xlat12;
        let x_3622 : vec3<f32> = ((vec3<f32>(x_3615.x, x_3615.y, x_3615.w) * vec3<f32>(x_3617.z, x_3617.z, x_3617.z)) + vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
        let x_3623 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3622.x, x_3622.y, x_3622.z, x_3623.w);
        let x_3625 : vec4<f32> = u_xlat12;
        let x_3627 : i32 = u_xlati63;
        let x_3630 : i32 = u_xlati63;
        let x_3634 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3627 + 3i) / 4i)][((x_3630 + 3i) % 4i)];
        let x_3636 : vec3<f32> = (vec3<f32>(x_3625.x, x_3625.y, x_3625.z) + vec3<f32>(x_3634.x, x_3634.y, x_3634.w));
        let x_3637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
        let x_3639 : vec4<f32> = u_xlat12;
        let x_3641 : vec4<f32> = u_xlat12;
        let x_3643 : vec2<f32> = (vec2<f32>(x_3639.x, x_3639.y) / vec2<f32>(x_3641.z, x_3641.z));
        let x_3644 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3643.x, x_3644.y, x_3643.y);
        let x_3646 : vec3<f32> = u_xlat37;
        let x_3649 : vec2<f32> = ((vec2<f32>(x_3646.x, x_3646.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3650 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3649.x, x_3650.y, x_3649.y);
        let x_3652 : vec3<f32> = u_xlat37;
        let x_3656 : vec2<f32> = clamp(vec2<f32>(x_3652.x, x_3652.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3657 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3656.x, x_3657.y, x_3656.y);
        let x_3659 : i32 = u_xlati84;
        let x_3661 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3659];
        let x_3663 : vec3<f32> = u_xlat37;
        let x_3666 : i32 = u_xlati84;
        let x_3668 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3666];
        let x_3670 : vec2<f32> = ((vec2<f32>(x_3661.x, x_3661.y) * vec2<f32>(x_3663.x, x_3663.z)) + vec2<f32>(x_3668.z, x_3668.w));
        let x_3671 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3670.x, x_3671.y, x_3670.y);
      } else {
        let x_3674 : i32 = u_xlati11;
        u_xlatb11.x = (x_3674 == 1i);
        let x_3678 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_3678);
        let x_3680 : i32 = u_xlati11;
        if ((x_3680 != 0i)) {
          let x_3684 : vec3<f32> = vs_TEXCOORD1;
          let x_3686 : i32 = u_xlati63;
          let x_3689 : i32 = u_xlati63;
          let x_3693 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3686 + 1i) / 4i)][((x_3689 + 1i) % 4i)];
          let x_3695 : vec2<f32> = (vec2<f32>(x_3684.y, x_3684.y) * vec2<f32>(x_3693.x, x_3693.y));
          let x_3696 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3695.x, x_3695.y, x_3696.z, x_3696.w);
          let x_3698 : i32 = u_xlati63;
          let x_3700 : i32 = u_xlati63;
          let x_3703 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[(x_3698 / 4i)][(x_3700 % 4i)];
          let x_3705 : vec3<f32> = vs_TEXCOORD1;
          let x_3708 : vec4<f32> = u_xlat12;
          let x_3710 : vec2<f32> = ((vec2<f32>(x_3703.x, x_3703.y) * vec2<f32>(x_3705.x, x_3705.x)) + vec2<f32>(x_3708.x, x_3708.y));
          let x_3711 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3710.x, x_3710.y, x_3711.z, x_3711.w);
          let x_3713 : i32 = u_xlati63;
          let x_3716 : i32 = u_xlati63;
          let x_3720 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3713 + 2i) / 4i)][((x_3716 + 2i) % 4i)];
          let x_3722 : vec3<f32> = vs_TEXCOORD1;
          let x_3725 : vec4<f32> = u_xlat12;
          let x_3727 : vec2<f32> = ((vec2<f32>(x_3720.x, x_3720.y) * vec2<f32>(x_3722.z, x_3722.z)) + vec2<f32>(x_3725.x, x_3725.y));
          let x_3728 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3727.x, x_3727.y, x_3728.z, x_3728.w);
          let x_3730 : vec4<f32> = u_xlat12;
          let x_3732 : i32 = u_xlati63;
          let x_3735 : i32 = u_xlati63;
          let x_3739 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3732 + 3i) / 4i)][((x_3735 + 3i) % 4i)];
          let x_3741 : vec2<f32> = (vec2<f32>(x_3730.x, x_3730.y) + vec2<f32>(x_3739.x, x_3739.y));
          let x_3742 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3741.x, x_3741.y, x_3742.z, x_3742.w);
          let x_3744 : vec4<f32> = u_xlat12;
          let x_3747 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3748 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3747.x, x_3747.y, x_3748.z, x_3748.w);
          let x_3750 : vec4<f32> = u_xlat12;
          let x_3752 : vec2<f32> = fract(vec2<f32>(x_3750.x, x_3750.y));
          let x_3753 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3752.x, x_3752.y, x_3753.z, x_3753.w);
          let x_3755 : i32 = u_xlati84;
          let x_3757 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3755];
          let x_3759 : vec4<f32> = u_xlat12;
          let x_3762 : i32 = u_xlati84;
          let x_3764 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3762];
          let x_3766 : vec2<f32> = ((vec2<f32>(x_3757.x, x_3757.y) * vec2<f32>(x_3759.x, x_3759.y)) + vec2<f32>(x_3764.z, x_3764.w));
          let x_3767 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3766.x, x_3767.y, x_3766.y);
        } else {
          let x_3770 : vec3<f32> = vs_TEXCOORD1;
          let x_3772 : i32 = u_xlati63;
          let x_3775 : i32 = u_xlati63;
          let x_3779 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3772 + 1i) / 4i)][((x_3775 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3770.y, x_3770.y, x_3770.y, x_3770.y) * x_3779);
          let x_3781 : i32 = u_xlati63;
          let x_3783 : i32 = u_xlati63;
          let x_3786 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[(x_3781 / 4i)][(x_3783 % 4i)];
          let x_3787 : vec3<f32> = vs_TEXCOORD1;
          let x_3790 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3786 * vec4<f32>(x_3787.x, x_3787.x, x_3787.x, x_3787.x)) + x_3790);
          let x_3792 : i32 = u_xlati63;
          let x_3795 : i32 = u_xlati63;
          let x_3799 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3792 + 2i) / 4i)][((x_3795 + 2i) % 4i)];
          let x_3800 : vec3<f32> = vs_TEXCOORD1;
          let x_3803 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3799 * vec4<f32>(x_3800.z, x_3800.z, x_3800.z, x_3800.z)) + x_3803);
          let x_3805 : vec4<f32> = u_xlat12;
          let x_3806 : i32 = u_xlati63;
          let x_3809 : i32 = u_xlati63;
          let x_3813 : vec4<f32> = x_1616.x_AdditionalLightsWorldToLights[((x_3806 + 3i) / 4i)][((x_3809 + 3i) % 4i)];
          u_xlat12 = (x_3805 + x_3813);
          let x_3815 : vec4<f32> = u_xlat12;
          let x_3817 : vec4<f32> = u_xlat12;
          let x_3819 : vec3<f32> = (vec3<f32>(x_3815.x, x_3815.y, x_3815.z) / vec3<f32>(x_3817.w, x_3817.w, x_3817.w));
          let x_3820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3820.w);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3824 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_3822.x, x_3822.y, x_3822.z), vec3<f32>(x_3824.x, x_3824.y, x_3824.z));
          let x_3829 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_3829);
          let x_3832 : vec4<f32> = u_xlat11;
          let x_3834 : vec4<f32> = u_xlat12;
          let x_3836 : vec3<f32> = (vec3<f32>(x_3832.x, x_3832.x, x_3832.x) * vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
          let x_3837 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
          let x_3839 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_3839.x, x_3839.y, x_3839.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3846 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_3846, 0.00000099999999747524f);
          let x_3851 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_3851);
          let x_3854 : vec4<f32> = u_xlat11;
          let x_3856 : vec4<f32> = u_xlat12;
          let x_3858 : vec3<f32> = (vec3<f32>(x_3854.x, x_3854.x, x_3854.x) * vec3<f32>(x_3856.z, x_3856.x, x_3856.y));
          let x_3859 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3858.x, x_3858.y, x_3858.z, x_3859.w);
          let x_3862 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3862);
          let x_3866 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3866, 0.0f, 1.0f);
          let x_3870 : vec4<f32> = u_xlat13;
          let x_3872 : vec4<bool> = (vec4<f32>(x_3870.y, x_3870.z, x_3870.y, x_3870.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb64 = vec2<bool>(x_3872.x, x_3872.y);
          let x_3875 : bool = u_xlatb64.x;
          if (x_3875) {
            let x_3880 : f32 = u_xlat13.x;
            x_3876 = x_3880;
          } else {
            let x_3883 : f32 = u_xlat13.x;
            x_3876 = -(x_3883);
          }
          let x_3885 : f32 = x_3876;
          u_xlat64.x = x_3885;
          let x_3888 : bool = u_xlatb64.y;
          if (x_3888) {
            let x_3893 : f32 = u_xlat13.x;
            x_3889 = x_3893;
          } else {
            let x_3896 : f32 = u_xlat13.x;
            x_3889 = -(x_3896);
          }
          let x_3898 : f32 = x_3889;
          u_xlat64.y = x_3898;
          let x_3900 : vec4<f32> = u_xlat12;
          let x_3902 : vec4<f32> = u_xlat11;
          let x_3905 : vec2<f32> = u_xlat64;
          let x_3906 : vec2<f32> = ((vec2<f32>(x_3900.x, x_3900.y) * vec2<f32>(x_3902.x, x_3902.x)) + x_3905);
          let x_3907 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3906.x, x_3907.y, x_3906.y, x_3907.w);
          let x_3909 : vec4<f32> = u_xlat11;
          let x_3912 : vec2<f32> = ((vec2<f32>(x_3909.x, x_3909.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3913 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3912.x, x_3913.y, x_3912.y, x_3913.w);
          let x_3915 : vec4<f32> = u_xlat11;
          let x_3919 : vec2<f32> = clamp(vec2<f32>(x_3915.x, x_3915.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3920 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3919.x, x_3920.y, x_3919.y, x_3920.w);
          let x_3922 : i32 = u_xlati84;
          let x_3924 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3922];
          let x_3926 : vec4<f32> = u_xlat11;
          let x_3929 : i32 = u_xlati84;
          let x_3931 : vec4<f32> = x_1616.x_AdditionalLightsCookieAtlasUVRects[x_3929];
          let x_3933 : vec2<f32> = ((vec2<f32>(x_3924.x, x_3924.y) * vec2<f32>(x_3926.x, x_3926.z)) + vec2<f32>(x_3931.z, x_3931.w));
          let x_3934 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3933.x, x_3934.y, x_3933.y);
        }
      }
      let x_3941 : vec3<f32> = u_xlat37;
      let x_3943 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3941.x, x_3941.z), 0.0f);
      u_xlat11 = x_3943;
      let x_3945 : bool = u_xlatb57.y;
      if (x_3945) {
        let x_3950 : f32 = u_xlat11.w;
        x_3946 = x_3950;
      } else {
        let x_3953 : f32 = u_xlat11.x;
        x_3946 = x_3953;
      }
      let x_3954 : f32 = x_3946;
      u_xlat89 = x_3954;
      let x_3956 : bool = u_xlatb57.x;
      if (x_3956) {
        let x_3960 : vec4<f32> = u_xlat11;
        x_3957 = vec3<f32>(x_3960.x, x_3960.y, x_3960.z);
      } else {
        let x_3963 : f32 = u_xlat89;
        x_3957 = vec3<f32>(x_3963, x_3963, x_3963);
      }
      let x_3965 : vec3<f32> = x_3957;
      let x_3966 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3972 : vec4<f32> = u_xlat11;
    let x_3974 : i32 = u_xlati84;
    let x_3976 : vec4<f32> = x_2056.x_AdditionalLightsColor[x_3974];
    let x_3978 : vec3<f32> = (vec3<f32>(x_3972.x, x_3972.y, x_3972.z) * vec3<f32>(x_3976.x, x_3976.y, x_3976.z));
    let x_3979 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3978.x, x_3978.y, x_3978.z, x_3979.w);
    let x_3981 : f32 = u_xlat85;
    let x_3982 : f32 = u_xlat88;
    u_xlat84 = (x_3981 * x_3982);
    let x_3984 : vec3<f32> = u_xlat3;
    let x_3985 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(x_3984, vec3<f32>(x_3985.x, x_3985.y, x_3985.z));
    let x_3988 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3988, 0.0f, 1.0f);
    let x_3990 : f32 = u_xlat84;
    let x_3991 : f32 = u_xlat85;
    u_xlat84 = (x_3990 * x_3991);
    let x_3993 : f32 = u_xlat84;
    let x_3995 : vec4<f32> = u_xlat11;
    let x_3997 : vec3<f32> = (vec3<f32>(x_3993, x_3993, x_3993) * vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
    let x_3998 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3997.x, x_3997.y, x_3997.z, x_3998.w);
    let x_4000 : vec4<f32> = u_xlat9;
    let x_4002 : f32 = u_xlat87;
    let x_4005 : vec3<f32> = u_xlat2;
    let x_4006 : vec3<f32> = ((vec3<f32>(x_4000.x, x_4000.y, x_4000.z) * vec3<f32>(x_4002, x_4002, x_4002)) + x_4005);
    let x_4007 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4006.x, x_4006.y, x_4006.z, x_4007.w);
    let x_4009 : vec4<f32> = u_xlat9;
    let x_4011 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4009.x, x_4009.y, x_4009.z), vec3<f32>(x_4011.x, x_4011.y, x_4011.z));
    let x_4014 : f32 = u_xlat84;
    u_xlat84 = max(x_4014, 1.17549435e-38f);
    let x_4016 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4016);
    let x_4018 : f32 = u_xlat84;
    let x_4020 : vec4<f32> = u_xlat9;
    let x_4022 : vec3<f32> = (vec3<f32>(x_4018, x_4018, x_4018) * vec3<f32>(x_4020.x, x_4020.y, x_4020.z));
    let x_4023 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4022.x, x_4022.y, x_4022.z, x_4023.w);
    let x_4025 : vec3<f32> = u_xlat3;
    let x_4026 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4025, vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4029 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4029, 0.0f, 1.0f);
    let x_4031 : vec4<f32> = u_xlat10;
    let x_4033 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_4031.x, x_4031.y, x_4031.z), vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
    let x_4036 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4036, 0.0f, 1.0f);
    let x_4038 : f32 = u_xlat84;
    let x_4039 : f32 = u_xlat84;
    u_xlat84 = (x_4038 * x_4039);
    let x_4041 : f32 = u_xlat84;
    let x_4043 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4041 * x_4043) + 1.00001001358032226562f);
    let x_4046 : f32 = u_xlat85;
    let x_4047 : f32 = u_xlat85;
    u_xlat85 = (x_4046 * x_4047);
    let x_4049 : f32 = u_xlat84;
    let x_4050 : f32 = u_xlat84;
    u_xlat84 = (x_4049 * x_4050);
    let x_4052 : f32 = u_xlat85;
    u_xlat85 = max(x_4052, 0.10000000149011611938f);
    let x_4054 : f32 = u_xlat84;
    let x_4055 : f32 = u_xlat85;
    u_xlat84 = (x_4054 * x_4055);
    let x_4057 : f32 = u_xlat31;
    let x_4058 : f32 = u_xlat84;
    u_xlat84 = (x_4057 * x_4058);
    let x_4061 : f32 = u_xlat5.x;
    let x_4062 : f32 = u_xlat84;
    u_xlat84 = (x_4061 / x_4062);
    let x_4064 : vec4<f32> = u_xlat0;
    let x_4066 : f32 = u_xlat84;
    let x_4069 : vec3<f32> = u_xlat27;
    let x_4070 : vec3<f32> = ((vec3<f32>(x_4064.x, x_4064.y, x_4064.z) * vec3<f32>(x_4066, x_4066, x_4066)) + x_4069);
    let x_4071 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);
    let x_4073 : vec4<f32> = u_xlat9;
    let x_4075 : vec4<f32> = u_xlat11;
    let x_4078 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4073.x, x_4073.y, x_4073.z) * vec3<f32>(x_4075.x, x_4075.y, x_4075.z)) + x_4078);

    continuing {
      let x_4080 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4080 + bitcast<u32>(1i));
    }
  }
  let x_4082 : vec4<f32> = u_xlat7;
  let x_4084 : vec4<f32> = u_xlat6;
  let x_4087 : vec4<f32> = u_xlat4;
  let x_4089 : vec3<f32> = ((vec3<f32>(x_4082.x, x_4082.y, x_4082.z) * vec3<f32>(x_4084.x, x_4084.y, x_4084.z)) + vec3<f32>(x_4087.x, x_4087.y, x_4087.z));
  let x_4090 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);
  let x_4092 : vec3<f32> = u_xlat34;
  let x_4093 : vec4<f32> = u_xlat0;
  let x_4095 : vec3<f32> = (x_4092 + vec3<f32>(x_4093.x, x_4093.y, x_4093.z));
  let x_4096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
  let x_4098 : f32 = u_xlat78;
  let x_4099 : f32 = u_xlat78;
  u_xlat78 = (x_4098 * -(x_4099));
  let x_4102 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4102);
  let x_4104 : vec4<f32> = u_xlat0;
  let x_4107 : vec4<f32> = x_28.unity_FogColor;
  let x_4110 : vec3<f32> = (vec3<f32>(x_4104.x, x_4104.y, x_4104.z) + -(vec3<f32>(x_4107.x, x_4107.y, x_4107.z)));
  let x_4111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4110.x, x_4110.y, x_4110.z, x_4111.w);
  let x_4115 : f32 = u_xlat78;
  let x_4117 : vec4<f32> = u_xlat0;
  let x_4121 : vec4<f32> = x_28.unity_FogColor;
  let x_4123 : vec3<f32> = ((vec3<f32>(x_4115, x_4115, x_4115) * vec3<f32>(x_4117.x, x_4117.y, x_4117.z)) + vec3<f32>(x_4121.x, x_4121.y, x_4121.z));
  let x_4124 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4123.x, x_4123.y, x_4123.z, x_4124.w);
  let x_4128 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4128 == 1.0f);
  let x_4130 : bool = u_xlatb0;
  if (x_4130) {
    let x_4135 : f32 = u_xlat1.x;
    x_4131 = x_4135;
  } else {
    x_4131 = 1.0f;
  }
  let x_4137 : f32 = x_4131;
  SV_Target0.w = x_4137;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


