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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_304 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(5) var<uniform> x_1646 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2084 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_90 : f32;
  var x_103 : f32;
  var x_116 : f32;
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
  var x_1730 : f32;
  var x_1741 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2223 : f32;
  var x_2234 : f32;
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
  var x_3853 : f32;
  var x_3866 : f32;
  var x_3924 : f32;
  var x_3935 : vec3<f32>;
  var x_4084 : f32;
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
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat80;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb78;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb78;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb78;
  if (x_115) {
    let x_120 : f32 = u_xlat2.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = x_28.unity_MatrixV[2i].z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat78;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  u_xlat2.w = 1.0f;
  let x_148 : vec4<f32> = x_145.unity_SHAr;
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_148, x_149);
  let x_154 : vec4<f32> = x_145.unity_SHAg;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_145.unity_SHAb;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_160, x_161);
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_165.y, x_165.z, x_165.z, x_165.x) * vec4<f32>(x_167.x, x_167.y, x_167.z, x_167.z));
  let x_173 : vec4<f32> = x_145.unity_SHBr;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_173, x_174);
  let x_179 : vec4<f32> = x_145.unity_SHBg;
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_145.unity_SHBb;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_185, x_186);
  let x_190 : f32 = u_xlat2.y;
  let x_192 : f32 = u_xlat2.y;
  u_xlat78 = (x_190 * x_192);
  let x_195 : f32 = u_xlat2.x;
  let x_197 : f32 = u_xlat2.x;
  let x_199 : f32 = u_xlat78;
  u_xlat78 = ((x_195 * x_197) + -(x_199));
  let x_204 : vec4<f32> = x_145.unity_SHC;
  let x_206 : f32 = u_xlat78;
  let x_209 : vec4<f32> = u_xlat6;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206, x_206, x_206)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec3<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_214 + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_218, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_223 : f32 = x_42.x_Metallic;
  u_xlat78 = ((-(x_223) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat78;
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_228) + x_231);
  let x_234 : f32 = u_xlat78;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat27 = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_42.x_BaseColor;
  let x_247 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : f32 = x_42.x_Metallic;
  let x_253 : f32 = x_42.x_Metallic;
  let x_255 : f32 = x_42.x_Metallic;
  let x_256 : vec3<f32> = vec3<f32>(x_251, x_253, x_255);
  let x_261 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_261.x, x_261.y, x_261.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : f32 = x_42.x_Smoothness;
  u_xlat78 = (-(x_270) + 1.0f);
  let x_274 : f32 = u_xlat78;
  let x_275 : f32 = u_xlat78;
  u_xlat81 = (x_274 * x_275);
  let x_277 : f32 = u_xlat81;
  u_xlat81 = max(x_277, 0.0078125f);
  let x_281 : f32 = u_xlat81;
  let x_282 : f32 = u_xlat81;
  u_xlat82 = (x_281 * x_282);
  let x_284 : f32 = u_xlat80;
  u_xlat80 = (x_284 + 1.0f);
  let x_286 : f32 = u_xlat80;
  u_xlat80 = clamp(x_286, 0.0f, 1.0f);
  let x_288 : f32 = u_xlat81;
  u_xlat5.x = ((x_288 * 4.0f) + 2.0f);
  let x_307 : f32 = x_304.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_307);
  let x_311 : bool = u_xlatb31.x;
  if (x_311) {
    let x_315 : f32 = x_304.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_315 == 1.0f);
    let x_319 : bool = u_xlatb31.x;
    if (x_319) {
      let x_324 : vec4<f32> = vs_TEXCOORD6;
      let x_327 : vec4<f32> = x_304.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_327);
      let x_331 : vec4<f32> = u_xlat6;
      let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
      let x_335 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_332.x, x_332.y, x_335);
      let x_348 : vec3<f32> = txVec0;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_348.xy, x_348.z);
      u_xlat7.x = x_350;
      let x_353 : vec4<f32> = u_xlat6;
      let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
      let x_356 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_354.x, x_354.y, x_356);
      let x_363 : vec3<f32> = txVec1;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_363.xy, x_363.z);
      u_xlat7.y = x_365;
      let x_367 : vec4<f32> = vs_TEXCOORD6;
      let x_370 : vec4<f32> = x_304.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y) + x_370);
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec2;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_383.xy, x_383.z);
      u_xlat7.z = x_385;
      let x_388 : vec4<f32> = u_xlat6;
      let x_389 : vec2<f32> = vec2<f32>(x_388.z, x_388.w);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec3;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_398.xy, x_398.z);
      u_xlat7.w = x_400;
      let x_403 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_403, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_410 : f32 = x_304.x_MainLightShadowParams.y;
      u_xlatb57 = (x_410 == 2.0f);
      let x_412 : bool = u_xlatb57;
      if (x_412) {
        let x_417 : vec4<f32> = vs_TEXCOORD6;
        let x_421 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_417.x, x_417.y) * vec2<f32>(x_421.z, x_421.w)) + vec2<f32>(0.5f, 0.5f));
        let x_427 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_427);
        let x_429 : vec4<f32> = vs_TEXCOORD6;
        let x_432 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_435 : vec2<f32> = u_xlat57;
        let x_437 : vec2<f32> = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_432.z, x_432.w)) + -(x_435));
        let x_438 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
        let x_440 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_440.x, x_440.x, x_440.y, x_440.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_445 : vec4<f32> = u_xlat7;
        let x_447 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_445.x, x_445.x, x_445.z, x_445.z) * vec4<f32>(x_447.x, x_447.x, x_447.z, x_447.z));
        let x_451 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_451.y, x_451.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_456 : vec4<f32> = u_xlat8;
        let x_459 : vec4<f32> = u_xlat6;
        let x_462 : vec2<f32> = ((vec2<f32>(x_456.x, x_456.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_459.x, x_459.y)));
        let x_463 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_462.x, x_463.y, x_462.y, x_463.w);
        let x_465 : vec4<f32> = u_xlat6;
        let x_469 : vec2<f32> = (-(vec2<f32>(x_465.x, x_465.y)) + vec2<f32>(1.0f, 1.0f));
        let x_470 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_473 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_473.x, x_473.y), vec2<f32>(0.0f, 0.0f));
        let x_477 : vec2<f32> = u_xlat60;
        let x_479 : vec2<f32> = u_xlat60;
        let x_481 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_477) * x_479) + vec2<f32>(x_481.x, x_481.y));
        let x_484 : vec4<f32> = u_xlat6;
        let x_486 : vec2<f32> = max(vec2<f32>(x_484.x, x_484.y), vec2<f32>(0.0f, 0.0f));
        let x_487 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat6;
        let x_492 : vec4<f32> = u_xlat6;
        let x_495 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = ((-(vec2<f32>(x_489.x, x_489.y)) * vec2<f32>(x_492.x, x_492.y)) + vec2<f32>(x_495.y, x_495.w));
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_500 + vec2<f32>(1.0f, 1.0f));
        let x_502 : vec4<f32> = u_xlat6;
        let x_504 : vec2<f32> = (vec2<f32>(x_502.x, x_502.y) + vec2<f32>(1.0f, 1.0f));
        let x_505 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_508 : vec4<f32> = u_xlat7;
        let x_512 : vec2<f32> = (vec2<f32>(x_508.x, x_508.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_513 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_516 : vec4<f32> = u_xlat8;
        let x_518 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_519 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec2<f32> = u_xlat60;
        let x_522 : vec2<f32> = (x_521 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_526 : vec4<f32> = u_xlat6;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_529 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_533 : vec2<f32> = (vec2<f32>(x_531.y, x_531.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_537 : f32 = u_xlat8.x;
        u_xlat9.z = x_537;
        let x_540 : f32 = u_xlat6.x;
        u_xlat9.w = x_540;
        let x_543 : f32 = u_xlat11.x;
        u_xlat10.z = x_543;
        let x_546 : f32 = u_xlat58.x;
        u_xlat10.w = x_546;
        let x_548 : vec4<f32> = u_xlat9;
        let x_550 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_548.z, x_548.w, x_548.x, x_548.z) + vec4<f32>(x_550.z, x_550.w, x_550.x, x_550.z));
        let x_554 : f32 = u_xlat9.y;
        u_xlat8.z = x_554;
        let x_557 : f32 = u_xlat6.y;
        u_xlat8.w = x_557;
        let x_560 : f32 = u_xlat10.y;
        u_xlat11.z = x_560;
        let x_563 : f32 = u_xlat58.y;
        u_xlat11.w = x_563;
        let x_565 : vec4<f32> = u_xlat8;
        let x_567 : vec4<f32> = u_xlat11;
        let x_569 : vec3<f32> = (vec3<f32>(x_565.z, x_565.y, x_565.w) + vec3<f32>(x_567.z, x_567.y, x_567.w));
        let x_570 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat10;
        let x_574 : vec4<f32> = u_xlat7;
        let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.z, x_572.w) / vec3<f32>(x_574.z, x_574.w, x_574.y));
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat8;
        let x_585 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_586 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat11;
        let x_590 : vec4<f32> = u_xlat6;
        let x_592 : vec3<f32> = (vec3<f32>(x_588.z, x_588.y, x_588.w) / vec3<f32>(x_590.x, x_590.y, x_590.z));
        let x_593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat9;
        let x_597 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat8;
        let x_603 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_605 : vec3<f32> = (vec3<f32>(x_600.y, x_600.x, x_600.z) * vec3<f32>(x_603.x, x_603.x, x_603.x));
        let x_606 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat9;
        let x_611 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_613 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_611.y, x_611.y, x_611.y));
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
        let x_617 : f32 = u_xlat9.x;
        u_xlat8.w = x_617;
        let x_619 : vec2<f32> = u_xlat57;
        let x_622 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_625 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y) * vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y)) + vec4<f32>(x_625.y, x_625.w, x_625.x, x_625.w));
        let x_628 : vec2<f32> = u_xlat57;
        let x_630 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat8;
        let x_635 : vec2<f32> = ((x_628 * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.z, x_633.w));
        let x_636 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_639 : f32 = u_xlat8.y;
        u_xlat9.w = x_639;
        let x_641 : vec4<f32> = u_xlat9;
        let x_642 : vec2<f32> = vec2<f32>(x_641.y, x_641.z);
        let x_643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_642.x, x_643.z, x_642.y);
        let x_646 : vec2<f32> = u_xlat57;
        let x_649 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.x, x_652.y, x_652.z, x_652.y));
        let x_655 : vec2<f32> = u_xlat57;
        let x_658 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y) * vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y)) + vec4<f32>(x_661.w, x_661.y, x_661.w, x_661.z));
        let x_664 : vec2<f32> = u_xlat57;
        let x_667 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y) * vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y)) + vec4<f32>(x_670.x, x_670.w, x_670.z, x_670.w));
        let x_674 : vec4<f32> = u_xlat6;
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_674.x, x_674.x, x_674.x, x_674.y) * vec4<f32>(x_676.z, x_676.w, x_676.y, x_676.z));
        let x_680 : vec4<f32> = u_xlat6;
        let x_682 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_680.y, x_680.y, x_680.z, x_680.z) * x_682);
        let x_685 : f32 = u_xlat6.z;
        let x_687 : f32 = u_xlat7.y;
        u_xlat57.x = (x_685 * x_687);
        let x_691 : vec4<f32> = u_xlat10;
        let x_692 : vec2<f32> = vec2<f32>(x_691.x, x_691.y);
        let x_694 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_692.x, x_692.y, x_694);
        let x_702 : vec3<f32> = txVec4;
        let x_704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_702.xy, x_702.z);
        u_xlat83 = x_704;
        let x_706 : vec4<f32> = u_xlat10;
        let x_707 : vec2<f32> = vec2<f32>(x_706.z, x_706.w);
        let x_709 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_707.x, x_707.y, x_709);
        let x_716 : vec3<f32> = txVec5;
        let x_718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_716.xy, x_716.z);
        u_xlat6.x = x_718;
        let x_721 : f32 = u_xlat6.x;
        let x_723 : f32 = u_xlat13.y;
        u_xlat6.x = (x_721 * x_723);
        let x_727 : f32 = u_xlat13.x;
        let x_728 : f32 = u_xlat83;
        let x_731 : f32 = u_xlat6.x;
        u_xlat83 = ((x_727 * x_728) + x_731);
        let x_734 : vec4<f32> = u_xlat11;
        let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec6;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
        u_xlat6.x = x_746;
        let x_749 : f32 = u_xlat13.z;
        let x_751 : f32 = u_xlat6.x;
        let x_753 : f32 = u_xlat83;
        u_xlat83 = ((x_749 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat9;
        let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
        let x_759 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec7;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_766.xy, x_766.z);
        u_xlat6.x = x_768;
        let x_771 : f32 = u_xlat13.w;
        let x_773 : f32 = u_xlat6.x;
        let x_775 : f32 = u_xlat83;
        u_xlat83 = ((x_771 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat12;
        let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec8;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_788.xy, x_788.z);
        u_xlat6.x = x_790;
        let x_793 : f32 = u_xlat14.x;
        let x_795 : f32 = u_xlat6.x;
        let x_797 : f32 = u_xlat83;
        u_xlat83 = ((x_793 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat12;
        let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec9;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat6.x = x_812;
        let x_815 : f32 = u_xlat14.y;
        let x_817 : f32 = u_xlat6.x;
        let x_819 : f32 = u_xlat83;
        u_xlat83 = ((x_815 * x_817) + x_819);
        let x_822 : vec4<f32> = u_xlat9;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec10;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat6.x = x_834;
        let x_837 : f32 = u_xlat14.z;
        let x_839 : f32 = u_xlat6.x;
        let x_841 : f32 = u_xlat83;
        u_xlat83 = ((x_837 * x_839) + x_841);
        let x_844 : vec4<f32> = u_xlat8;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec11;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_854.xy, x_854.z);
        u_xlat6.x = x_856;
        let x_859 : f32 = u_xlat14.w;
        let x_861 : f32 = u_xlat6.x;
        let x_863 : f32 = u_xlat83;
        u_xlat83 = ((x_859 * x_861) + x_863);
        let x_866 : vec4<f32> = u_xlat8;
        let x_867 : vec2<f32> = vec2<f32>(x_866.z, x_866.w);
        let x_869 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_876 : vec3<f32> = txVec12;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_876.xy, x_876.z);
        u_xlat6.x = x_878;
        let x_881 : f32 = u_xlat57.x;
        let x_883 : f32 = u_xlat6.x;
        let x_885 : f32 = u_xlat83;
        u_xlat31 = ((x_881 * x_883) + x_885);
      } else {
        let x_888 : vec4<f32> = vs_TEXCOORD6;
        let x_891 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + vec2<f32>(0.5f, 0.5f));
        let x_895 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_895);
        let x_897 : vec4<f32> = vs_TEXCOORD6;
        let x_900 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_903 : vec2<f32> = u_xlat57;
        let x_905 : vec2<f32> = ((vec2<f32>(x_897.x, x_897.y) * vec2<f32>(x_900.z, x_900.w)) + -(x_903));
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_908.x, x_908.x, x_908.y, x_908.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_911 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_911.x, x_911.x, x_911.z, x_911.z) * vec4<f32>(x_913.x, x_913.x, x_913.z, x_913.z));
        let x_916 : vec4<f32> = u_xlat8;
        let x_920 : vec2<f32> = (vec2<f32>(x_916.y, x_916.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_921 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_920.x, x_921.z, x_920.y);
        let x_923 : vec4<f32> = u_xlat8;
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_923.x, x_923.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_926.x, x_926.y)));
        let x_930 : vec4<f32> = u_xlat6;
        let x_933 : vec2<f32> = (-(vec2<f32>(x_930.x, x_930.y)) + vec2<f32>(1.0f, 1.0f));
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_936 : vec4<f32> = u_xlat6;
        let x_938 : vec2<f32> = min(vec2<f32>(x_936.x, x_936.y), vec2<f32>(0.0f, 0.0f));
        let x_939 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec4<f32> = u_xlat8;
        let x_944 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = ((-(vec2<f32>(x_941.x, x_941.y)) * vec2<f32>(x_944.x, x_944.y)) + vec2<f32>(x_947.x, x_947.z));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_950.y, x_949.y, x_950.w);
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = max(vec2<f32>(x_952.x, x_952.y), vec2<f32>(0.0f, 0.0f));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat8;
        let x_963 : vec4<f32> = u_xlat7;
        let x_965 : vec2<f32> = ((-(vec2<f32>(x_957.x, x_957.y)) * vec2<f32>(x_960.x, x_960.y)) + vec2<f32>(x_963.y, x_963.w));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_968 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_972 : f32 = u_xlat7.y;
        u_xlat8.z = (x_972 * 0.08163200318813323975f);
        let x_976 : vec2<f32> = u_xlat58;
        let x_979 : vec2<f32> = (vec2<f32>(x_976.y, x_976.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_980 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_982.x, x_982.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_986 : f32 = u_xlat7.w;
        u_xlat10.z = (x_986 * 0.08163200318813323975f);
        let x_990 : f32 = u_xlat10.y;
        u_xlat8.x = x_990;
        let x_992 : vec4<f32> = u_xlat6;
        let x_999 : vec2<f32> = ((vec2<f32>(x_992.x, x_992.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1000 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1000.x, x_999.x, x_1000.z, x_999.y);
        let x_1002 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1002.x, x_1002.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1010 : f32 = u_xlat58.x;
        u_xlat7.y = x_1010;
        let x_1013 : f32 = u_xlat9.y;
        u_xlat7.w = x_1013;
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1015 + x_1016);
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1018.y, x_1018.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1022 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1022.x, x_1021.x, x_1022.z, x_1021.y);
        let x_1024 : vec4<f32> = u_xlat6;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1024.y, x_1024.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1028 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1027.x, x_1028.y, x_1027.y, x_1028.w);
        let x_1031 : f32 = u_xlat58.y;
        u_xlat9.y = x_1031;
        let x_1033 : vec4<f32> = u_xlat9;
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1033 + x_1034);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1036 / x_1037);
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1039 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1045 / x_1046);
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1048 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1053 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1050.w, x_1050.x, x_1050.y, x_1050.z) * vec4<f32>(x_1053.x, x_1053.x, x_1053.x, x_1053.x));
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1059 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1056.x, x_1056.w, x_1056.y, x_1056.z) * vec4<f32>(x_1059.y, x_1059.y, x_1059.y, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1063 : vec3<f32> = vec3<f32>(x_1062.y, x_1062.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1063.z);
        let x_1067 : f32 = u_xlat9.x;
        u_xlat10.y = x_1067;
        let x_1069 : vec2<f32> = u_xlat57;
        let x_1072 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) * vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y)) + vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.y));
        let x_1078 : vec2<f32> = u_xlat57;
        let x_1080 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = ((x_1078 * vec2<f32>(x_1080.x, x_1080.y)) + vec2<f32>(x_1083.w, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1089 : f32 = u_xlat10.y;
        u_xlat7.y = x_1089;
        let x_1092 : f32 = u_xlat9.z;
        u_xlat10.y = x_1092;
        let x_1094 : vec2<f32> = u_xlat57;
        let x_1097 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1100.y));
        let x_1104 : vec2<f32> = u_xlat57;
        let x_1106 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1104 * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat10.y;
        u_xlat7.z = x_1113;
        let x_1115 : vec2<f32> = u_xlat57;
        let x_1118 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.z));
        let x_1125 : f32 = u_xlat9.w;
        u_xlat10.y = x_1125;
        let x_1128 : vec2<f32> = u_xlat57;
        let x_1131 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y) * vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y)) + vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1134.y));
        let x_1138 : vec2<f32> = u_xlat57;
        let x_1140 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1138 * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.w, x_1143.y));
        let x_1147 : f32 = u_xlat10.y;
        u_xlat7.w = x_1147;
        let x_1150 : vec2<f32> = u_xlat57;
        let x_1152 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1157 : vec2<f32> = ((x_1150 * vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(x_1155.x, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1161 : vec3<f32> = vec3<f32>(x_1160.x, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1162.y, x_1161.y, x_1161.z);
        let x_1164 : vec2<f32> = u_xlat57;
        let x_1167 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1170.y));
        let x_1174 : vec2<f32> = u_xlat57;
        let x_1176 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1174 * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.w, x_1179.y));
        let x_1183 : f32 = u_xlat7.x;
        u_xlat9.x = x_1183;
        let x_1185 : vec2<f32> = u_xlat57;
        let x_1187 : vec4<f32> = x_304.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1185 * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.x, x_1190.y));
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1194.x, x_1194.x, x_1194.x, x_1194.x) * x_1196);
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1199.y, x_1199.y, x_1199.y, x_1199.y) * x_1201);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1204.z, x_1204.z, x_1204.z, x_1204.z) * x_1206);
        let x_1208 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1208.w, x_1208.w, x_1208.w, x_1208.w) * x_1210);
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec13;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat7.x = x_1225;
        let x_1228 : vec4<f32> = u_xlat11;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.z, x_1228.w);
        let x_1231 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1229.x, x_1229.y, x_1231);
        let x_1239 : vec3<f32> = txVec14;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat85 = x_1241;
        let x_1242 : f32 = u_xlat85;
        let x_1244 : f32 = u_xlat17.y;
        u_xlat85 = (x_1242 * x_1244);
        let x_1247 : f32 = u_xlat17.x;
        let x_1249 : f32 = u_xlat7.x;
        let x_1251 : f32 = u_xlat85;
        u_xlat7.x = ((x_1247 * x_1249) + x_1251);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec15;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
        u_xlat85 = x_1267;
        let x_1269 : f32 = u_xlat17.z;
        let x_1270 : f32 = u_xlat85;
        let x_1273 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1269 * x_1270) + x_1273);
        let x_1277 : vec4<f32> = u_xlat14;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec16;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1287.xy, x_1287.z);
        u_xlat85 = x_1289;
        let x_1291 : f32 = u_xlat17.w;
        let x_1292 : f32 = u_xlat85;
        let x_1295 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1291 * x_1292) + x_1295);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec17;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1309.xy, x_1309.z);
        u_xlat85 = x_1311;
        let x_1313 : f32 = u_xlat18.x;
        let x_1314 : f32 = u_xlat85;
        let x_1317 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1313 * x_1314) + x_1317);
        let x_1321 : vec4<f32> = u_xlat13;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec18;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat85 = x_1333;
        let x_1335 : f32 = u_xlat18.y;
        let x_1336 : f32 = u_xlat85;
        let x_1339 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1335 * x_1336) + x_1339);
        let x_1343 : vec2<f32> = u_xlat64;
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec19;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat85 = x_1354;
        let x_1356 : f32 = u_xlat18.z;
        let x_1357 : f32 = u_xlat85;
        let x_1360 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1356 * x_1357) + x_1360);
        let x_1364 : vec4<f32> = u_xlat14;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec20;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat85 = x_1376;
        let x_1378 : f32 = u_xlat18.w;
        let x_1379 : f32 = u_xlat85;
        let x_1382 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1378 * x_1379) + x_1382);
        let x_1386 : vec4<f32> = u_xlat15;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec21;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1396.xy, x_1396.z);
        u_xlat85 = x_1398;
        let x_1400 : f32 = u_xlat19.x;
        let x_1401 : f32 = u_xlat85;
        let x_1404 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1400 * x_1401) + x_1404);
        let x_1408 : vec4<f32> = u_xlat15;
        let x_1409 : vec2<f32> = vec2<f32>(x_1408.z, x_1408.w);
        let x_1411 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec22;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat85 = x_1420;
        let x_1422 : f32 = u_xlat19.y;
        let x_1423 : f32 = u_xlat85;
        let x_1426 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1422 * x_1423) + x_1426);
        let x_1430 : vec2<f32> = u_xlat33;
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec23;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat33.x = x_1441;
        let x_1444 : f32 = u_xlat19.z;
        let x_1446 : f32 = u_xlat33.x;
        let x_1449 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1444 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat16;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec24;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat33.x = x_1465;
        let x_1468 : f32 = u_xlat19.w;
        let x_1470 : f32 = u_xlat33.x;
        let x_1473 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1468 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat10;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec25;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat33.x = x_1489;
        let x_1492 : f32 = u_xlat6.x;
        let x_1494 : f32 = u_xlat33.x;
        let x_1497 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1492 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat10;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.z, x_1501.w);
        let x_1504 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec26;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat7.x = x_1513;
        let x_1516 : f32 = u_xlat6.y;
        let x_1518 : f32 = u_xlat7.x;
        let x_1521 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1516 * x_1518) + x_1521);
        let x_1525 : vec2<f32> = u_xlat61;
        let x_1527 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1535 : vec3<f32> = txVec27;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat32 = x_1537;
        let x_1539 : f32 = u_xlat6.z;
        let x_1540 : f32 = u_xlat32;
        let x_1543 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1539 * x_1540) + x_1543);
        let x_1547 : vec2<f32> = u_xlat57;
        let x_1549 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec28;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1556.xy, x_1556.z);
        u_xlat57.x = x_1558;
        let x_1561 : f32 = u_xlat6.w;
        let x_1563 : f32 = u_xlat57.x;
        let x_1566 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1561 * x_1563) + x_1566);
      }
    }
  } else {
    let x_1570 : vec4<f32> = vs_TEXCOORD6;
    let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
    let x_1573 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
    let x_1580 : vec3<f32> = txVec29;
    let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
    u_xlat31 = x_1582;
  }
  let x_1584 : f32 = x_304.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1584) + 1.0f);
  let x_1588 : f32 = u_xlat31;
  let x_1590 : f32 = x_304.x_MainLightShadowParams.x;
  let x_1593 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1588 * x_1590) + x_1593);
  let x_1596 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1596);
  let x_1600 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (x_1600 >= 1.0f);
  let x_1602 : bool = u_xlatb83;
  let x_1603 : bool = u_xlatb57;
  u_xlatb57 = (x_1602 | x_1603);
  let x_1605 : bool = u_xlatb57;
  let x_1606 : f32 = u_xlat31;
  u_xlat31 = select(x_1606, 1.0f, x_1605);
  let x_1608 : vec3<f32> = vs_TEXCOORD1;
  let x_1610 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1612 : vec3<f32> = (x_1608 + -(x_1610));
  let x_1613 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : vec4<f32> = u_xlat6;
  let x_1617 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1615.x, x_1615.y, x_1615.z), vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
  let x_1622 : f32 = u_xlat57.x;
  let x_1624 : f32 = x_304.x_MainLightShadowParams.z;
  let x_1627 : f32 = x_304.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1622 * x_1624) + x_1627);
  let x_1629 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1629, 0.0f, 1.0f);
  let x_1631 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1631) + 1.0f);
  let x_1635 : f32 = u_xlat83;
  let x_1637 : f32 = u_xlat6.x;
  let x_1639 : f32 = u_xlat31;
  u_xlat31 = ((x_1635 * x_1637) + x_1639);
  let x_1648 : f32 = x_1646.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1648 == -1.0f));
  let x_1651 : bool = u_xlatb83;
  if (x_1651) {
    let x_1654 : vec3<f32> = vs_TEXCOORD1;
    let x_1657 : vec4<f32> = x_1646.x_MainLightWorldToLight[1i];
    let x_1659 : vec2<f32> = (vec2<f32>(x_1654.y, x_1654.y) * vec2<f32>(x_1657.x, x_1657.y));
    let x_1660 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
    let x_1663 : vec4<f32> = x_1646.x_MainLightWorldToLight[0i];
    let x_1665 : vec3<f32> = vs_TEXCOORD1;
    let x_1668 : vec4<f32> = u_xlat6;
    let x_1670 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(x_1665.x, x_1665.x)) + vec2<f32>(x_1668.x, x_1668.y));
    let x_1671 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
    let x_1674 : vec4<f32> = x_1646.x_MainLightWorldToLight[2i];
    let x_1676 : vec3<f32> = vs_TEXCOORD1;
    let x_1679 : vec4<f32> = u_xlat6;
    let x_1681 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(x_1676.z, x_1676.z)) + vec2<f32>(x_1679.x, x_1679.y));
    let x_1682 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
    let x_1684 : vec4<f32> = u_xlat6;
    let x_1688 : vec4<f32> = x_1646.x_MainLightWorldToLight[3i];
    let x_1690 : vec2<f32> = (vec2<f32>(x_1684.x, x_1684.y) + vec2<f32>(x_1688.x, x_1688.y));
    let x_1691 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
    let x_1693 : vec4<f32> = u_xlat6;
    let x_1696 : vec2<f32> = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1697 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
    let x_1704 : vec4<f32> = u_xlat6;
    let x_1707 : f32 = x_28.x_GlobalMipBias.x;
    let x_1708 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1704.x, x_1704.y), x_1707);
    u_xlat6 = x_1708;
    let x_1711 : f32 = x_1646.x_MainLightCookieTextureFormat;
    let x_1713 : f32 = x_1646.x_MainLightCookieTextureFormat;
    let x_1715 : f32 = x_1646.x_MainLightCookieTextureFormat;
    let x_1717 : f32 = x_1646.x_MainLightCookieTextureFormat;
    let x_1718 : vec4<f32> = vec4<f32>(x_1711, x_1713, x_1715, x_1717);
    let x_1726 : vec4<bool> = (vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1718.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1726.x, x_1726.y);
    let x_1729 : bool = u_xlatb7.y;
    if (x_1729) {
      let x_1734 : f32 = u_xlat6.w;
      x_1730 = x_1734;
    } else {
      let x_1737 : f32 = u_xlat6.x;
      x_1730 = x_1737;
    }
    let x_1738 : f32 = x_1730;
    u_xlat83 = x_1738;
    let x_1740 : bool = u_xlatb7.x;
    if (x_1740) {
      let x_1744 : vec4<f32> = u_xlat6;
      x_1741 = vec3<f32>(x_1744.x, x_1744.y, x_1744.z);
    } else {
      let x_1747 : f32 = u_xlat83;
      x_1741 = vec3<f32>(x_1747, x_1747, x_1747);
    }
    let x_1749 : vec3<f32> = x_1741;
    let x_1750 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1756 : vec4<f32> = u_xlat6;
  let x_1759 : vec4<f32> = x_28.x_MainLightColor;
  let x_1761 : vec3<f32> = (vec3<f32>(x_1756.x, x_1756.y, x_1756.z) * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  let x_1764 : vec3<f32> = u_xlat3;
  let x_1766 : vec4<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1764), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : f32 = u_xlat83;
  let x_1770 : f32 = u_xlat83;
  u_xlat83 = (x_1769 + x_1770);
  let x_1772 : vec4<f32> = u_xlat2;
  let x_1774 : f32 = u_xlat83;
  let x_1778 : vec3<f32> = u_xlat3;
  let x_1780 : vec3<f32> = ((vec3<f32>(x_1772.x, x_1772.y, x_1772.z) * -(vec3<f32>(x_1774, x_1774, x_1774))) + -(x_1778));
  let x_1781 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec4<f32> = u_xlat2;
  let x_1785 : vec3<f32> = u_xlat3;
  u_xlat83 = dot(vec3<f32>(x_1783.x, x_1783.y, x_1783.z), x_1785);
  let x_1787 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1787, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat83;
  u_xlat83 = (-(x_1789) + 1.0f);
  let x_1792 : f32 = u_xlat83;
  let x_1793 : f32 = u_xlat83;
  u_xlat83 = (x_1792 * x_1793);
  let x_1795 : f32 = u_xlat83;
  let x_1796 : f32 = u_xlat83;
  u_xlat83 = (x_1795 * x_1796);
  let x_1799 : f32 = u_xlat78;
  u_xlat84 = ((-(x_1799) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1805 : f32 = u_xlat78;
  let x_1806 : f32 = u_xlat84;
  u_xlat78 = (x_1805 * x_1806);
  let x_1808 : f32 = u_xlat78;
  u_xlat78 = (x_1808 * 6.0f);
  let x_1819 : vec4<f32> = u_xlat7;
  let x_1821 : f32 = u_xlat78;
  let x_1822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1819.x, x_1819.y, x_1819.z), x_1821);
  u_xlat7 = x_1822;
  let x_1824 : f32 = u_xlat7.w;
  u_xlat78 = (x_1824 + -1.0f);
  let x_1827 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1828 : f32 = u_xlat78;
  u_xlat78 = ((x_1827 * x_1828) + 1.0f);
  let x_1831 : f32 = u_xlat78;
  u_xlat78 = max(x_1831, 0.0f);
  let x_1833 : f32 = u_xlat78;
  u_xlat78 = log2(x_1833);
  let x_1835 : f32 = u_xlat78;
  let x_1837 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1835 * x_1837);
  let x_1839 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1839);
  let x_1841 : f32 = u_xlat78;
  let x_1843 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1841 * x_1843);
  let x_1845 : vec4<f32> = u_xlat7;
  let x_1847 : f32 = u_xlat78;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * vec3<f32>(x_1847, x_1847, x_1847));
  let x_1850 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : f32 = u_xlat81;
  let x_1854 : f32 = u_xlat81;
  let x_1858 : vec2<f32> = ((vec2<f32>(x_1852, x_1852) * vec2<f32>(x_1854, x_1854)) + vec2<f32>(-1.0f, 1.0f));
  let x_1859 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
  let x_1862 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1862);
  let x_1865 : vec4<f32> = u_xlat0;
  let x_1868 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_1865.x, x_1865.y, x_1865.z)) + vec3<f32>(x_1868, x_1868, x_1868));
  let x_1871 : f32 = u_xlat83;
  let x_1873 : vec3<f32> = u_xlat34;
  let x_1875 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1871, x_1871, x_1871) * x_1873) + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat78;
  let x_1880 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1878, x_1878, x_1878) * x_1880);
  let x_1882 : vec4<f32> = u_xlat7;
  let x_1884 : vec3<f32> = u_xlat34;
  let x_1885 : vec3<f32> = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) * x_1884);
  let x_1886 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1888 : vec3<f32> = u_xlat4;
  let x_1889 : vec3<f32> = u_xlat27;
  let x_1891 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1888 * x_1889) + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : f32 = u_xlat31;
  let x_1896 : f32 = x_145.unity_LightData.z;
  u_xlat78 = (x_1894 * x_1896);
  let x_1898 : vec4<f32> = u_xlat2;
  let x_1901 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1904, 0.0f, 1.0f);
  let x_1906 : f32 = u_xlat78;
  let x_1907 : f32 = u_xlat80;
  u_xlat78 = (x_1906 * x_1907);
  let x_1909 : f32 = u_xlat78;
  let x_1911 : vec4<f32> = u_xlat6;
  let x_1913 : vec3<f32> = (vec3<f32>(x_1909, x_1909, x_1909) * vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1916 : vec3<f32> = u_xlat3;
  let x_1918 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1920 : vec3<f32> = (x_1916 + vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1923 : vec4<f32> = u_xlat7;
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1923.x, x_1923.y, x_1923.z), vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : f32 = u_xlat78;
  u_xlat78 = max(x_1928, 1.17549435e-38f);
  let x_1931 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1931);
  let x_1933 : f32 = u_xlat78;
  let x_1935 : vec4<f32> = u_xlat7;
  let x_1937 : vec3<f32> = (vec3<f32>(x_1933, x_1933, x_1933) * vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
  let x_1940 : vec4<f32> = u_xlat2;
  let x_1942 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1940.x, x_1940.y, x_1940.z), vec3<f32>(x_1942.x, x_1942.y, x_1942.z));
  let x_1945 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1945, 0.0f, 1.0f);
  let x_1948 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1948.x, x_1948.y, x_1948.z), vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1953, 0.0f, 1.0f);
  let x_1955 : f32 = u_xlat78;
  let x_1956 : f32 = u_xlat78;
  u_xlat78 = (x_1955 * x_1956);
  let x_1958 : f32 = u_xlat78;
  let x_1960 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1958 * x_1960) + 1.00001001358032226562f);
  let x_1964 : f32 = u_xlat80;
  let x_1965 : f32 = u_xlat80;
  u_xlat80 = (x_1964 * x_1965);
  let x_1967 : f32 = u_xlat78;
  let x_1968 : f32 = u_xlat78;
  u_xlat78 = (x_1967 * x_1968);
  let x_1970 : f32 = u_xlat80;
  u_xlat80 = max(x_1970, 0.10000000149011611938f);
  let x_1973 : f32 = u_xlat78;
  let x_1974 : f32 = u_xlat80;
  u_xlat78 = (x_1973 * x_1974);
  let x_1977 : f32 = u_xlat5.x;
  let x_1978 : f32 = u_xlat78;
  u_xlat78 = (x_1977 * x_1978);
  let x_1980 : f32 = u_xlat82;
  let x_1981 : f32 = u_xlat78;
  u_xlat78 = (x_1980 / x_1981);
  let x_1983 : vec4<f32> = u_xlat0;
  let x_1985 : f32 = u_xlat78;
  let x_1988 : vec3<f32> = u_xlat27;
  let x_1989 : vec3<f32> = ((vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * vec3<f32>(x_1985, x_1985, x_1985)) + x_1988);
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1993 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1995 : f32 = x_145.unity_LightData.y;
  u_xlat78 = min(x_1993, x_1995);
  let x_1999 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1999));
  let x_2003 : f32 = u_xlat57.x;
  let x_2006 : f32 = x_304.x_AdditionalShadowFadeParams.x;
  let x_2009 : f32 = x_304.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2003 * x_2006) + x_2009);
  let x_2011 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2011, 0.0f, 1.0f);
  let x_2014 : f32 = x_1646.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2016 : f32 = x_1646.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2018 : f32 = x_1646.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2020 : f32 = x_1646.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2021 : vec4<f32> = vec4<f32>(x_2014, x_2016, x_2018, x_2020);
  let x_2027 : vec4<bool> = (vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2021.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2027.x, x_2027.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2039 : u32 = u_xlatu_loop_1;
    let x_2040 : u32 = u_xlatu78;
    if ((x_2039 < x_2040)) {
    } else {
      break;
    }
    let x_2043 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2043 >> 2u);
    let x_2047 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2047 & 3u));
    let x_2050 : u32 = u_xlatu83;
    let x_2053 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_2050)];
    let x_2063 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2068 : vec4<u32> = indexable[x_2063];
    u_xlat83 = dot(x_2053, bitcast<vec4<f32>>(x_2068));
    let x_2072 : f32 = u_xlat83;
    u_xlati83 = i32(x_2072);
    let x_2074 : vec3<f32> = vs_TEXCOORD1;
    let x_2085 : i32 = u_xlati83;
    let x_2087 : vec4<f32> = x_2084.x_AdditionalLightsPosition[x_2085];
    let x_2090 : i32 = u_xlati83;
    let x_2092 : vec4<f32> = x_2084.x_AdditionalLightsPosition[x_2090];
    let x_2094 : vec3<f32> = ((-(x_2074) * vec3<f32>(x_2087.w, x_2087.w, x_2087.w)) + vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2095 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
    let x_2097 : vec4<f32> = u_xlat9;
    let x_2099 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2097.x, x_2097.y, x_2097.z), vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
    let x_2102 : f32 = u_xlat84;
    u_xlat84 = max(x_2102, 0.00006103515625f);
    let x_2105 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2105);
    let x_2107 : f32 = u_xlat85;
    let x_2109 : vec4<f32> = u_xlat9;
    let x_2111 : vec3<f32> = (vec3<f32>(x_2107, x_2107, x_2107) * vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
    let x_2115 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2115);
    let x_2117 : f32 = u_xlat84;
    let x_2118 : i32 = u_xlati83;
    let x_2120 : f32 = x_2084.x_AdditionalLightsAttenuation[x_2118].x;
    u_xlat84 = (x_2117 * x_2120);
    let x_2122 : f32 = u_xlat84;
    let x_2124 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2122) * x_2124) + 1.0f);
    let x_2127 : f32 = u_xlat84;
    u_xlat84 = max(x_2127, 0.0f);
    let x_2129 : f32 = u_xlat84;
    let x_2130 : f32 = u_xlat84;
    u_xlat84 = (x_2129 * x_2130);
    let x_2132 : f32 = u_xlat84;
    let x_2133 : f32 = u_xlat87;
    u_xlat84 = (x_2132 * x_2133);
    let x_2135 : i32 = u_xlati83;
    let x_2137 : vec4<f32> = x_2084.x_AdditionalLightsSpotDir[x_2135];
    let x_2139 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2137.x, x_2137.y, x_2137.z), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : f32 = u_xlat87;
    let x_2143 : i32 = u_xlati83;
    let x_2145 : f32 = x_2084.x_AdditionalLightsAttenuation[x_2143].z;
    let x_2147 : i32 = u_xlati83;
    let x_2149 : f32 = x_2084.x_AdditionalLightsAttenuation[x_2147].w;
    u_xlat87 = ((x_2142 * x_2145) + x_2149);
    let x_2151 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2151, 0.0f, 1.0f);
    let x_2153 : f32 = u_xlat87;
    let x_2154 : f32 = u_xlat87;
    u_xlat87 = (x_2153 * x_2154);
    let x_2156 : f32 = u_xlat84;
    let x_2157 : f32 = u_xlat87;
    u_xlat84 = (x_2156 * x_2157);
    let x_2161 : i32 = u_xlati83;
    let x_2163 : f32 = x_304.x_AdditionalShadowParams[x_2161].w;
    u_xlati87 = i32(x_2163);
    let x_2166 : i32 = u_xlati87;
    u_xlatb88 = (x_2166 >= 0i);
    let x_2168 : bool = u_xlatb88;
    if (x_2168) {
      let x_2172 : i32 = u_xlati83;
      let x_2174 : f32 = x_304.x_AdditionalShadowParams[x_2172].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2174, x_2174, x_2174, x_2174))));
      let x_2178 : bool = u_xlatb88;
      if (x_2178) {
        let x_2183 : vec4<f32> = u_xlat10;
        let x_2186 : vec4<f32> = u_xlat10;
        let x_2189 : vec4<bool> = (abs(vec4<f32>(x_2183.z, x_2183.z, x_2183.y, x_2183.z)) >= abs(vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.x)));
        let x_2191 : vec3<bool> = vec3<bool>(x_2189.x, x_2189.y, x_2189.z);
        let x_2192 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
        let x_2195 : bool = u_xlatb11.y;
        let x_2197 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2195 & x_2197);
        let x_2199 : vec4<f32> = u_xlat10;
        let x_2202 : vec4<bool> = (-(vec4<f32>(x_2199.z, x_2199.y, x_2199.z, x_2199.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2203 : vec3<bool> = vec3<bool>(x_2202.x, x_2202.y, x_2202.w);
        let x_2204 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2203.x, x_2203.y, x_2204.z, x_2203.z);
        let x_2207 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2207);
        let x_2212 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2212);
        let x_2218 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2218);
        let x_2222 : bool = u_xlatb11.z;
        if (x_2222) {
          let x_2227 : f32 = u_xlat11.y;
          x_2223 = x_2227;
        } else {
          let x_2229 : f32 = u_xlat89;
          x_2223 = x_2229;
        }
        let x_2230 : f32 = x_2223;
        u_xlat37.x = x_2230;
        let x_2233 : bool = u_xlatb88;
        if (x_2233) {
          let x_2238 : f32 = u_xlat11.x;
          x_2234 = x_2238;
        } else {
          let x_2241 : f32 = u_xlat37.x;
          x_2234 = x_2241;
        }
        let x_2242 : f32 = x_2234;
        u_xlat88 = x_2242;
        let x_2243 : i32 = u_xlati83;
        let x_2245 : f32 = x_304.x_AdditionalShadowParams[x_2243].w;
        u_xlat11.x = trunc(x_2245);
        let x_2248 : f32 = u_xlat88;
        let x_2250 : f32 = u_xlat11.x;
        u_xlat88 = (x_2248 + x_2250);
        let x_2252 : f32 = u_xlat88;
        u_xlati87 = i32(x_2252);
      }
      let x_2254 : i32 = u_xlati87;
      u_xlati87 = (x_2254 << bitcast<u32>(2i));
      let x_2256 : vec3<f32> = vs_TEXCOORD1;
      let x_2259 : i32 = u_xlati87;
      let x_2262 : i32 = u_xlati87;
      let x_2266 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_2259 + 1i) / 4i)][((x_2262 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2256.y, x_2256.y, x_2256.y, x_2256.y) * x_2266);
      let x_2268 : i32 = u_xlati87;
      let x_2270 : i32 = u_xlati87;
      let x_2273 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[(x_2268 / 4i)][(x_2270 % 4i)];
      let x_2274 : vec3<f32> = vs_TEXCOORD1;
      let x_2277 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2273 * vec4<f32>(x_2274.x, x_2274.x, x_2274.x, x_2274.x)) + x_2277);
      let x_2279 : i32 = u_xlati87;
      let x_2282 : i32 = u_xlati87;
      let x_2286 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_2279 + 2i) / 4i)][((x_2282 + 2i) % 4i)];
      let x_2287 : vec3<f32> = vs_TEXCOORD1;
      let x_2290 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2286 * vec4<f32>(x_2287.z, x_2287.z, x_2287.z, x_2287.z)) + x_2290);
      let x_2292 : vec4<f32> = u_xlat11;
      let x_2293 : i32 = u_xlati87;
      let x_2296 : i32 = u_xlati87;
      let x_2300 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_2293 + 3i) / 4i)][((x_2296 + 3i) % 4i)];
      u_xlat11 = (x_2292 + x_2300);
      let x_2302 : vec4<f32> = u_xlat11;
      let x_2304 : vec4<f32> = u_xlat11;
      let x_2306 : vec3<f32> = (vec3<f32>(x_2302.x, x_2302.y, x_2302.z) / vec3<f32>(x_2304.w, x_2304.w, x_2304.w));
      let x_2307 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
      let x_2310 : i32 = u_xlati83;
      let x_2312 : f32 = x_304.x_AdditionalShadowParams[x_2310].y;
      u_xlatb87 = (0.0f < x_2312);
      let x_2314 : bool = u_xlatb87;
      if (x_2314) {
        let x_2317 : i32 = u_xlati83;
        let x_2319 : f32 = x_304.x_AdditionalShadowParams[x_2317].y;
        u_xlatb87 = (1.0f == x_2319);
        let x_2321 : bool = u_xlatb87;
        if (x_2321) {
          let x_2324 : vec4<f32> = u_xlat11;
          let x_2328 : vec4<f32> = x_304.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y) + x_2328);
          let x_2331 : vec4<f32> = u_xlat12;
          let x_2332 : vec2<f32> = vec2<f32>(x_2331.x, x_2331.y);
          let x_2334 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
          let x_2342 : vec3<f32> = txVec30;
          let x_2344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
          u_xlat13.x = x_2344;
          let x_2347 : vec4<f32> = u_xlat12;
          let x_2348 : vec2<f32> = vec2<f32>(x_2347.z, x_2347.w);
          let x_2350 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2348.x, x_2348.y, x_2350);
          let x_2357 : vec3<f32> = txVec31;
          let x_2359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2357.xy, x_2357.z);
          u_xlat13.y = x_2359;
          let x_2361 : vec4<f32> = u_xlat11;
          let x_2365 : vec4<f32> = x_304.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2361.x, x_2361.y, x_2361.x, x_2361.y) + x_2365);
          let x_2368 : vec4<f32> = u_xlat12;
          let x_2369 : vec2<f32> = vec2<f32>(x_2368.x, x_2368.y);
          let x_2371 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
          let x_2378 : vec3<f32> = txVec32;
          let x_2380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2378.xy, x_2378.z);
          u_xlat13.z = x_2380;
          let x_2383 : vec4<f32> = u_xlat12;
          let x_2384 : vec2<f32> = vec2<f32>(x_2383.z, x_2383.w);
          let x_2386 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
          let x_2393 : vec3<f32> = txVec33;
          let x_2395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2393.xy, x_2393.z);
          u_xlat13.w = x_2395;
          let x_2397 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2397, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2400 : i32 = u_xlati83;
          let x_2402 : f32 = x_304.x_AdditionalShadowParams[x_2400].y;
          u_xlatb88 = (2.0f == x_2402);
          let x_2404 : bool = u_xlatb88;
          if (x_2404) {
            let x_2407 : vec4<f32> = u_xlat11;
            let x_2411 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2414 : vec2<f32> = ((vec2<f32>(x_2407.x, x_2407.y) * vec2<f32>(x_2411.z, x_2411.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2415 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
            let x_2417 : vec4<f32> = u_xlat12;
            let x_2419 : vec2<f32> = floor(vec2<f32>(x_2417.x, x_2417.y));
            let x_2420 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec4<f32> = u_xlat11;
            let x_2425 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2428 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2422.x, x_2422.y) * vec2<f32>(x_2425.z, x_2425.w)) + -(vec2<f32>(x_2428.x, x_2428.y)));
            let x_2432 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2432.x, x_2432.x, x_2432.y, x_2432.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2435 : vec4<f32> = u_xlat13;
            let x_2437 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.z, x_2435.z) * vec4<f32>(x_2437.x, x_2437.x, x_2437.z, x_2437.z));
            let x_2440 : vec4<f32> = u_xlat14;
            let x_2442 : vec2<f32> = (vec2<f32>(x_2440.y, x_2440.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2443 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2442.x, x_2443.y, x_2442.y, x_2443.w);
            let x_2445 : vec4<f32> = u_xlat14;
            let x_2448 : vec2<f32> = u_xlat64;
            let x_2450 : vec2<f32> = ((vec2<f32>(x_2445.x, x_2445.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2448));
            let x_2451 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2450.x, x_2450.y, x_2451.z, x_2451.w);
            let x_2454 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2454) + vec2<f32>(1.0f, 1.0f));
            let x_2457 : vec2<f32> = u_xlat64;
            let x_2458 : vec2<f32> = min(x_2457, vec2<f32>(0.0f, 0.0f));
            let x_2459 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat15;
            let x_2464 : vec4<f32> = u_xlat15;
            let x_2467 : vec2<f32> = u_xlat66;
            let x_2468 : vec2<f32> = ((-(vec2<f32>(x_2461.x, x_2461.y)) * vec2<f32>(x_2464.x, x_2464.y)) + x_2467);
            let x_2469 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2471 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2471, vec2<f32>(0.0f, 0.0f));
            let x_2473 : vec2<f32> = u_xlat64;
            let x_2475 : vec2<f32> = u_xlat64;
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2473) * x_2475) + vec2<f32>(x_2477.y, x_2477.w));
            let x_2480 : vec4<f32> = u_xlat15;
            let x_2482 : vec2<f32> = (vec2<f32>(x_2480.x, x_2480.y) + vec2<f32>(1.0f, 1.0f));
            let x_2483 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2485 + vec2<f32>(1.0f, 1.0f));
            let x_2487 : vec4<f32> = u_xlat14;
            let x_2489 : vec2<f32> = (vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec2<f32> = u_xlat66;
            let x_2493 : vec2<f32> = (x_2492 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2494 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
            let x_2496 : vec4<f32> = u_xlat15;
            let x_2498 : vec2<f32> = (vec2<f32>(x_2496.x, x_2496.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2499 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2498.x, x_2498.y, x_2499.z, x_2499.w);
            let x_2501 : vec2<f32> = u_xlat64;
            let x_2502 : vec2<f32> = (x_2501 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2503 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2505 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2505.y, x_2505.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2509 : f32 = u_xlat15.x;
            u_xlat16.z = x_2509;
            let x_2512 : f32 = u_xlat64.x;
            u_xlat16.w = x_2512;
            let x_2515 : f32 = u_xlat17.x;
            u_xlat14.z = x_2515;
            let x_2518 : f32 = u_xlat13.x;
            u_xlat14.w = x_2518;
            let x_2520 : vec4<f32> = u_xlat14;
            let x_2522 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2520.z, x_2520.w, x_2520.x, x_2520.z) + vec4<f32>(x_2522.z, x_2522.w, x_2522.x, x_2522.z));
            let x_2526 : f32 = u_xlat16.y;
            u_xlat15.z = x_2526;
            let x_2529 : f32 = u_xlat64.y;
            u_xlat15.w = x_2529;
            let x_2532 : f32 = u_xlat14.y;
            u_xlat17.z = x_2532;
            let x_2535 : f32 = u_xlat13.z;
            u_xlat17.w = x_2535;
            let x_2537 : vec4<f32> = u_xlat15;
            let x_2539 : vec4<f32> = u_xlat17;
            let x_2541 : vec3<f32> = (vec3<f32>(x_2537.z, x_2537.y, x_2537.w) + vec3<f32>(x_2539.z, x_2539.y, x_2539.w));
            let x_2542 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
            let x_2544 : vec4<f32> = u_xlat14;
            let x_2546 : vec4<f32> = u_xlat18;
            let x_2548 : vec3<f32> = (vec3<f32>(x_2544.x, x_2544.z, x_2544.w) / vec3<f32>(x_2546.z, x_2546.w, x_2546.y));
            let x_2549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat14;
            let x_2553 : vec3<f32> = (vec3<f32>(x_2551.x, x_2551.y, x_2551.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2554 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2554.w);
            let x_2556 : vec4<f32> = u_xlat17;
            let x_2558 : vec4<f32> = u_xlat13;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2556.z, x_2556.y, x_2556.w) / vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
            let x_2561 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat15;
            let x_2565 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2566 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
            let x_2568 : vec4<f32> = u_xlat14;
            let x_2571 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2573 : vec3<f32> = (vec3<f32>(x_2568.y, x_2568.x, x_2568.z) * vec3<f32>(x_2571.x, x_2571.x, x_2571.x));
            let x_2574 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
            let x_2576 : vec4<f32> = u_xlat15;
            let x_2579 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2581 : vec3<f32> = (vec3<f32>(x_2576.x, x_2576.y, x_2576.z) * vec3<f32>(x_2579.y, x_2579.y, x_2579.y));
            let x_2582 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
            let x_2585 : f32 = u_xlat15.x;
            u_xlat14.w = x_2585;
            let x_2587 : vec4<f32> = u_xlat12;
            let x_2590 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2587.x, x_2587.y, x_2587.x, x_2587.y) * vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y)) + vec4<f32>(x_2593.y, x_2593.w, x_2593.x, x_2593.w));
            let x_2596 : vec4<f32> = u_xlat12;
            let x_2599 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(x_2599.x, x_2599.y)) + vec2<f32>(x_2602.z, x_2602.w));
            let x_2606 : f32 = u_xlat14.y;
            u_xlat15.w = x_2606;
            let x_2608 : vec4<f32> = u_xlat15;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.y, x_2608.z);
            let x_2610 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2610.x, x_2609.x, x_2610.z, x_2609.y);
            let x_2612 : vec4<f32> = u_xlat12;
            let x_2615 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2618 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.y) * vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y)) + vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2618.y));
            let x_2621 : vec4<f32> = u_xlat12;
            let x_2624 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2627 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.y) * vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y)) + vec4<f32>(x_2627.w, x_2627.y, x_2627.w, x_2627.z));
            let x_2630 : vec4<f32> = u_xlat12;
            let x_2633 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2630.x, x_2630.y, x_2630.x, x_2630.y) * vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.y)) + vec4<f32>(x_2636.x, x_2636.w, x_2636.z, x_2636.w));
            let x_2639 : vec4<f32> = u_xlat13;
            let x_2641 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2639.x, x_2639.x, x_2639.x, x_2639.y) * vec4<f32>(x_2641.z, x_2641.w, x_2641.y, x_2641.z));
            let x_2645 : vec4<f32> = u_xlat13;
            let x_2647 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2645.y, x_2645.y, x_2645.z, x_2645.z) * x_2647);
            let x_2650 : f32 = u_xlat13.z;
            let x_2652 : f32 = u_xlat18.y;
            u_xlat88 = (x_2650 * x_2652);
            let x_2655 : vec4<f32> = u_xlat16;
            let x_2656 : vec2<f32> = vec2<f32>(x_2655.x, x_2655.y);
            let x_2658 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2656.x, x_2656.y, x_2658);
            let x_2665 : vec3<f32> = txVec34;
            let x_2667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2665.xy, x_2665.z);
            u_xlat89 = x_2667;
            let x_2669 : vec4<f32> = u_xlat16;
            let x_2670 : vec2<f32> = vec2<f32>(x_2669.z, x_2669.w);
            let x_2672 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
            let x_2679 : vec3<f32> = txVec35;
            let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
            u_xlat12.x = x_2681;
            let x_2684 : f32 = u_xlat12.x;
            let x_2686 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2684 * x_2686);
            let x_2690 : f32 = u_xlat19.x;
            let x_2691 : f32 = u_xlat89;
            let x_2694 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2690 * x_2691) + x_2694);
            let x_2697 : vec2<f32> = u_xlat64;
            let x_2699 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2697.x, x_2697.y, x_2699);
            let x_2706 : vec3<f32> = txVec36;
            let x_2708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2706.xy, x_2706.z);
            u_xlat12.x = x_2708;
            let x_2711 : f32 = u_xlat19.z;
            let x_2713 : f32 = u_xlat12.x;
            let x_2715 : f32 = u_xlat89;
            u_xlat89 = ((x_2711 * x_2713) + x_2715);
            let x_2718 : vec4<f32> = u_xlat15;
            let x_2719 : vec2<f32> = vec2<f32>(x_2718.x, x_2718.y);
            let x_2721 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2719.x, x_2719.y, x_2721);
            let x_2728 : vec3<f32> = txVec37;
            let x_2730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2728.xy, x_2728.z);
            u_xlat12.x = x_2730;
            let x_2733 : f32 = u_xlat19.w;
            let x_2735 : f32 = u_xlat12.x;
            let x_2737 : f32 = u_xlat89;
            u_xlat89 = ((x_2733 * x_2735) + x_2737);
            let x_2740 : vec4<f32> = u_xlat17;
            let x_2741 : vec2<f32> = vec2<f32>(x_2740.x, x_2740.y);
            let x_2743 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
            let x_2750 : vec3<f32> = txVec38;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat12.x = x_2752;
            let x_2755 : f32 = u_xlat20.x;
            let x_2757 : f32 = u_xlat12.x;
            let x_2759 : f32 = u_xlat89;
            u_xlat89 = ((x_2755 * x_2757) + x_2759);
            let x_2762 : vec4<f32> = u_xlat17;
            let x_2763 : vec2<f32> = vec2<f32>(x_2762.z, x_2762.w);
            let x_2765 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2763.x, x_2763.y, x_2765);
            let x_2772 : vec3<f32> = txVec39;
            let x_2774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2772.xy, x_2772.z);
            u_xlat12.x = x_2774;
            let x_2777 : f32 = u_xlat20.y;
            let x_2779 : f32 = u_xlat12.x;
            let x_2781 : f32 = u_xlat89;
            u_xlat89 = ((x_2777 * x_2779) + x_2781);
            let x_2784 : vec4<f32> = u_xlat15;
            let x_2785 : vec2<f32> = vec2<f32>(x_2784.z, x_2784.w);
            let x_2787 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2785.x, x_2785.y, x_2787);
            let x_2794 : vec3<f32> = txVec40;
            let x_2796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2794.xy, x_2794.z);
            u_xlat12.x = x_2796;
            let x_2799 : f32 = u_xlat20.z;
            let x_2801 : f32 = u_xlat12.x;
            let x_2803 : f32 = u_xlat89;
            u_xlat89 = ((x_2799 * x_2801) + x_2803);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2807 : vec2<f32> = vec2<f32>(x_2806.x, x_2806.y);
            let x_2809 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2807.x, x_2807.y, x_2809);
            let x_2816 : vec3<f32> = txVec41;
            let x_2818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2816.xy, x_2816.z);
            u_xlat12.x = x_2818;
            let x_2821 : f32 = u_xlat20.w;
            let x_2823 : f32 = u_xlat12.x;
            let x_2825 : f32 = u_xlat89;
            u_xlat89 = ((x_2821 * x_2823) + x_2825);
            let x_2828 : vec4<f32> = u_xlat14;
            let x_2829 : vec2<f32> = vec2<f32>(x_2828.z, x_2828.w);
            let x_2831 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
            let x_2838 : vec3<f32> = txVec42;
            let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
            u_xlat12.x = x_2840;
            let x_2842 : f32 = u_xlat88;
            let x_2844 : f32 = u_xlat12.x;
            let x_2846 : f32 = u_xlat89;
            u_xlat87 = ((x_2842 * x_2844) + x_2846);
          } else {
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2852 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2855 : vec2<f32> = ((vec2<f32>(x_2849.x, x_2849.y) * vec2<f32>(x_2852.z, x_2852.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2856 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2855.x, x_2855.y, x_2856.z, x_2856.w);
            let x_2858 : vec4<f32> = u_xlat12;
            let x_2860 : vec2<f32> = floor(vec2<f32>(x_2858.x, x_2858.y));
            let x_2861 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2860.x, x_2860.y, x_2861.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat11;
            let x_2866 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.z, x_2866.w)) + -(vec2<f32>(x_2869.x, x_2869.y)));
            let x_2873 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2873.x, x_2873.x, x_2873.y, x_2873.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2878 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2876.x, x_2876.x, x_2876.z, x_2876.z) * vec4<f32>(x_2878.x, x_2878.x, x_2878.z, x_2878.z));
            let x_2881 : vec4<f32> = u_xlat14;
            let x_2883 : vec2<f32> = (vec2<f32>(x_2881.y, x_2881.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2884 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2884.x, x_2883.x, x_2884.z, x_2883.y);
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2889 : vec2<f32> = u_xlat64;
            let x_2891 : vec2<f32> = ((vec2<f32>(x_2886.x, x_2886.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2889));
            let x_2892 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2891.x, x_2892.y, x_2891.y, x_2892.w);
            let x_2894 : vec2<f32> = u_xlat64;
            let x_2896 : vec2<f32> = (-(x_2894) + vec2<f32>(1.0f, 1.0f));
            let x_2897 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2896.x, x_2896.y, x_2897.z, x_2897.w);
            let x_2899 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2899, vec2<f32>(0.0f, 0.0f));
            let x_2901 : vec2<f32> = u_xlat66;
            let x_2903 : vec2<f32> = u_xlat66;
            let x_2905 : vec4<f32> = u_xlat14;
            let x_2907 : vec2<f32> = ((-(x_2901) * x_2903) + vec2<f32>(x_2905.x, x_2905.y));
            let x_2908 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2907.x, x_2907.y, x_2908.z, x_2908.w);
            let x_2910 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2910, vec2<f32>(0.0f, 0.0f));
            let x_2913 : vec2<f32> = u_xlat66;
            let x_2915 : vec2<f32> = u_xlat66;
            let x_2917 : vec4<f32> = u_xlat13;
            let x_2919 : vec2<f32> = ((-(x_2913) * x_2915) + vec2<f32>(x_2917.y, x_2917.w));
            let x_2920 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2919.x, x_2920.y, x_2919.y);
            let x_2922 : vec4<f32> = u_xlat14;
            let x_2925 : vec2<f32> = (vec2<f32>(x_2922.x, x_2922.y) + vec2<f32>(2.0f, 2.0f));
            let x_2926 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2925.x, x_2925.y, x_2926.z, x_2926.w);
            let x_2928 : vec3<f32> = u_xlat39;
            let x_2930 : vec2<f32> = (vec2<f32>(x_2928.x, x_2928.z) + vec2<f32>(2.0f, 2.0f));
            let x_2931 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2931.x, x_2930.x, x_2931.z, x_2930.y);
            let x_2934 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2934 * 0.08163200318813323975f);
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2940 : vec3<f32> = (vec3<f32>(x_2937.z, x_2937.x, x_2937.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2941 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat14;
            let x_2945 : vec2<f32> = (vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2949 : f32 = u_xlat17.y;
            u_xlat16.x = x_2949;
            let x_2951 : vec2<f32> = u_xlat64;
            let x_2954 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2955 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2955.x, x_2954.x, x_2955.z, x_2954.y);
            let x_2957 : vec2<f32> = u_xlat64;
            let x_2960 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2960.x, x_2961.y, x_2960.y, x_2961.w);
            let x_2964 : f32 = u_xlat13.x;
            u_xlat14.y = x_2964;
            let x_2967 : f32 = u_xlat15.y;
            u_xlat14.w = x_2967;
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2970 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2969 + x_2970);
            let x_2972 : vec2<f32> = u_xlat64;
            let x_2975 : vec2<f32> = ((vec2<f32>(x_2972.y, x_2972.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2976 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2976.x, x_2975.x, x_2976.z, x_2975.y);
            let x_2978 : vec2<f32> = u_xlat64;
            let x_2981 : vec2<f32> = ((vec2<f32>(x_2978.y, x_2978.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2982 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2981.x, x_2982.y, x_2981.y, x_2982.w);
            let x_2985 : f32 = u_xlat13.y;
            u_xlat15.y = x_2985;
            let x_2987 : vec4<f32> = u_xlat15;
            let x_2988 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2987 + x_2988);
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2990 / x_2991);
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2993 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2995 : vec4<f32> = u_xlat15;
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2995 / x_2996);
            let x_2998 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2998 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3003 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3000.w, x_3000.x, x_3000.y, x_3000.z) * vec4<f32>(x_3003.x, x_3003.x, x_3003.x, x_3003.x));
            let x_3006 : vec4<f32> = u_xlat15;
            let x_3009 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3006.x, x_3006.w, x_3006.y, x_3006.z) * vec4<f32>(x_3009.y, x_3009.y, x_3009.y, x_3009.y));
            let x_3012 : vec4<f32> = u_xlat14;
            let x_3013 : vec3<f32> = vec3<f32>(x_3012.y, x_3012.z, x_3012.w);
            let x_3014 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3013.x, x_3014.y, x_3013.y, x_3013.z);
            let x_3017 : f32 = u_xlat15.x;
            u_xlat17.y = x_3017;
            let x_3019 : vec4<f32> = u_xlat12;
            let x_3022 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3025 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3019.x, x_3019.y, x_3019.x, x_3019.y) * vec4<f32>(x_3022.x, x_3022.y, x_3022.x, x_3022.y)) + vec4<f32>(x_3025.x, x_3025.y, x_3025.z, x_3025.y));
            let x_3028 : vec4<f32> = u_xlat12;
            let x_3031 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3034 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3031.x, x_3031.y)) + vec2<f32>(x_3034.w, x_3034.y));
            let x_3038 : f32 = u_xlat17.y;
            u_xlat14.y = x_3038;
            let x_3041 : f32 = u_xlat15.z;
            u_xlat17.y = x_3041;
            let x_3043 : vec4<f32> = u_xlat12;
            let x_3046 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3043.x, x_3043.y, x_3043.x, x_3043.y) * vec4<f32>(x_3046.x, x_3046.y, x_3046.x, x_3046.y)) + vec4<f32>(x_3049.x, x_3049.y, x_3049.z, x_3049.y));
            let x_3052 : vec4<f32> = u_xlat12;
            let x_3055 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat17;
            let x_3060 : vec2<f32> = ((vec2<f32>(x_3052.x, x_3052.y) * vec2<f32>(x_3055.x, x_3055.y)) + vec2<f32>(x_3058.w, x_3058.y));
            let x_3061 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
            let x_3064 : f32 = u_xlat17.y;
            u_xlat14.z = x_3064;
            let x_3067 : vec4<f32> = u_xlat12;
            let x_3070 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3067.x, x_3067.y, x_3067.x, x_3067.y) * vec4<f32>(x_3070.x, x_3070.y, x_3070.x, x_3070.y)) + vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.z));
            let x_3077 : f32 = u_xlat15.w;
            u_xlat17.y = x_3077;
            let x_3080 : vec4<f32> = u_xlat12;
            let x_3083 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y) * vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.y)) + vec4<f32>(x_3086.x, x_3086.y, x_3086.z, x_3086.y));
            let x_3090 : vec4<f32> = u_xlat12;
            let x_3093 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3096 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3090.x, x_3090.y) * vec2<f32>(x_3093.x, x_3093.y)) + vec2<f32>(x_3096.w, x_3096.y));
            let x_3100 : f32 = u_xlat17.y;
            u_xlat14.w = x_3100;
            let x_3103 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3106.x, x_3106.y)) + vec2<f32>(x_3109.x, x_3109.w));
            let x_3112 : vec4<f32> = u_xlat17;
            let x_3113 : vec3<f32> = vec3<f32>(x_3112.x, x_3112.z, x_3112.w);
            let x_3114 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3113.x, x_3114.y, x_3113.y, x_3113.z);
            let x_3116 : vec4<f32> = u_xlat12;
            let x_3119 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y) * vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y)) + vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3122.y));
            let x_3126 : vec4<f32> = u_xlat12;
            let x_3129 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3126.x, x_3126.y) * vec2<f32>(x_3129.x, x_3129.y)) + vec2<f32>(x_3132.w, x_3132.y));
            let x_3136 : f32 = u_xlat14.x;
            u_xlat15.x = x_3136;
            let x_3138 : vec4<f32> = u_xlat12;
            let x_3141 : vec4<f32> = x_304.x_AdditionalShadowmapSize;
            let x_3144 : vec4<f32> = u_xlat15;
            let x_3146 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.y) * vec2<f32>(x_3141.x, x_3141.y)) + vec2<f32>(x_3144.x, x_3144.y));
            let x_3147 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3146.x, x_3146.y, x_3147.z, x_3147.w);
            let x_3150 : vec4<f32> = u_xlat13;
            let x_3152 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3150.x, x_3150.x, x_3150.x, x_3150.x) * x_3152);
            let x_3155 : vec4<f32> = u_xlat13;
            let x_3157 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3155.y, x_3155.y, x_3155.y, x_3155.y) * x_3157);
            let x_3160 : vec4<f32> = u_xlat13;
            let x_3162 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3160.z, x_3160.z, x_3160.z, x_3160.z) * x_3162);
            let x_3164 : vec4<f32> = u_xlat13;
            let x_3166 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3164.w, x_3164.w, x_3164.w, x_3164.w) * x_3166);
            let x_3169 : vec4<f32> = u_xlat18;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.x, x_3169.y);
            let x_3172 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec43;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat88 = x_3181;
            let x_3183 : vec4<f32> = u_xlat18;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.z, x_3183.w);
            let x_3186 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec44;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat89 = x_3195;
            let x_3196 : f32 = u_xlat89;
            let x_3198 : f32 = u_xlat23.y;
            u_xlat89 = (x_3196 * x_3198);
            let x_3201 : f32 = u_xlat23.x;
            let x_3202 : f32 = u_xlat88;
            let x_3204 : f32 = u_xlat89;
            u_xlat88 = ((x_3201 * x_3202) + x_3204);
            let x_3207 : vec2<f32> = u_xlat64;
            let x_3209 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec45;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat89 = x_3218;
            let x_3220 : f32 = u_xlat23.z;
            let x_3221 : f32 = u_xlat89;
            let x_3223 : f32 = u_xlat88;
            u_xlat88 = ((x_3220 * x_3221) + x_3223);
            let x_3226 : vec4<f32> = u_xlat21;
            let x_3227 : vec2<f32> = vec2<f32>(x_3226.x, x_3226.y);
            let x_3229 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec46;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat89 = x_3238;
            let x_3240 : f32 = u_xlat23.w;
            let x_3241 : f32 = u_xlat89;
            let x_3243 : f32 = u_xlat88;
            u_xlat88 = ((x_3240 * x_3241) + x_3243);
            let x_3246 : vec4<f32> = u_xlat19;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.x, x_3246.y);
            let x_3249 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec47;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat89 = x_3258;
            let x_3260 : f32 = u_xlat24.x;
            let x_3261 : f32 = u_xlat89;
            let x_3263 : f32 = u_xlat88;
            u_xlat88 = ((x_3260 * x_3261) + x_3263);
            let x_3266 : vec4<f32> = u_xlat19;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.z, x_3266.w);
            let x_3269 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec48;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat89 = x_3278;
            let x_3280 : f32 = u_xlat24.y;
            let x_3281 : f32 = u_xlat89;
            let x_3283 : f32 = u_xlat88;
            u_xlat88 = ((x_3280 * x_3281) + x_3283);
            let x_3286 : vec4<f32> = u_xlat20;
            let x_3287 : vec2<f32> = vec2<f32>(x_3286.x, x_3286.y);
            let x_3289 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec49;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat89 = x_3298;
            let x_3300 : f32 = u_xlat24.z;
            let x_3301 : f32 = u_xlat89;
            let x_3303 : f32 = u_xlat88;
            u_xlat88 = ((x_3300 * x_3301) + x_3303);
            let x_3306 : vec4<f32> = u_xlat21;
            let x_3307 : vec2<f32> = vec2<f32>(x_3306.z, x_3306.w);
            let x_3309 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
            let x_3316 : vec3<f32> = txVec50;
            let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
            u_xlat89 = x_3318;
            let x_3320 : f32 = u_xlat24.w;
            let x_3321 : f32 = u_xlat89;
            let x_3323 : f32 = u_xlat88;
            u_xlat88 = ((x_3320 * x_3321) + x_3323);
            let x_3326 : vec4<f32> = u_xlat22;
            let x_3327 : vec2<f32> = vec2<f32>(x_3326.x, x_3326.y);
            let x_3329 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3327.x, x_3327.y, x_3329);
            let x_3336 : vec3<f32> = txVec51;
            let x_3338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3336.xy, x_3336.z);
            u_xlat89 = x_3338;
            let x_3340 : f32 = u_xlat25.x;
            let x_3341 : f32 = u_xlat89;
            let x_3343 : f32 = u_xlat88;
            u_xlat88 = ((x_3340 * x_3341) + x_3343);
            let x_3346 : vec4<f32> = u_xlat22;
            let x_3347 : vec2<f32> = vec2<f32>(x_3346.z, x_3346.w);
            let x_3349 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec52;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat89 = x_3358;
            let x_3360 : f32 = u_xlat25.y;
            let x_3361 : f32 = u_xlat89;
            let x_3363 : f32 = u_xlat88;
            u_xlat88 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec2<f32> = u_xlat40;
            let x_3368 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec53;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat89 = x_3377;
            let x_3379 : f32 = u_xlat25.z;
            let x_3380 : f32 = u_xlat89;
            let x_3382 : f32 = u_xlat88;
            u_xlat88 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec2<f32> = u_xlat72;
            let x_3387 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec54;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat89 = x_3396;
            let x_3398 : f32 = u_xlat25.w;
            let x_3399 : f32 = u_xlat89;
            let x_3401 : f32 = u_xlat88;
            u_xlat88 = ((x_3398 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat17;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
            let x_3407 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec55;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat89 = x_3416;
            let x_3418 : f32 = u_xlat13.x;
            let x_3419 : f32 = u_xlat89;
            let x_3421 : f32 = u_xlat88;
            u_xlat88 = ((x_3418 * x_3419) + x_3421);
            let x_3424 : vec4<f32> = u_xlat17;
            let x_3425 : vec2<f32> = vec2<f32>(x_3424.z, x_3424.w);
            let x_3427 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec56;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat89 = x_3436;
            let x_3438 : f32 = u_xlat13.y;
            let x_3439 : f32 = u_xlat89;
            let x_3441 : f32 = u_xlat88;
            u_xlat88 = ((x_3438 * x_3439) + x_3441);
            let x_3444 : vec2<f32> = u_xlat67;
            let x_3446 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec57;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat89 = x_3455;
            let x_3457 : f32 = u_xlat13.z;
            let x_3458 : f32 = u_xlat89;
            let x_3460 : f32 = u_xlat88;
            u_xlat88 = ((x_3457 * x_3458) + x_3460);
            let x_3463 : vec4<f32> = u_xlat12;
            let x_3464 : vec2<f32> = vec2<f32>(x_3463.x, x_3463.y);
            let x_3466 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec58;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat89 = x_3475;
            let x_3477 : f32 = u_xlat13.w;
            let x_3478 : f32 = u_xlat89;
            let x_3480 : f32 = u_xlat88;
            u_xlat87 = ((x_3477 * x_3478) + x_3480);
          }
        }
      } else {
        let x_3484 : vec4<f32> = u_xlat11;
        let x_3485 : vec2<f32> = vec2<f32>(x_3484.x, x_3484.y);
        let x_3487 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
        let x_3494 : vec3<f32> = txVec59;
        let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
        u_xlat87 = x_3496;
      }
      let x_3497 : i32 = u_xlati83;
      let x_3499 : f32 = x_304.x_AdditionalShadowParams[x_3497].x;
      u_xlat88 = (1.0f + -(x_3499));
      let x_3502 : f32 = u_xlat87;
      let x_3503 : i32 = u_xlati83;
      let x_3505 : f32 = x_304.x_AdditionalShadowParams[x_3503].x;
      let x_3507 : f32 = u_xlat88;
      u_xlat87 = ((x_3502 * x_3505) + x_3507);
      let x_3510 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3510);
      let x_3513 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3513 >= 1.0f);
      let x_3516 : bool = u_xlatb88;
      let x_3518 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3516 | x_3518);
      let x_3520 : bool = u_xlatb88;
      let x_3521 : f32 = u_xlat87;
      u_xlat87 = select(x_3521, 1.0f, x_3520);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3524 : f32 = u_xlat87;
    u_xlat88 = (-(x_3524) + 1.0f);
    let x_3527 : f32 = u_xlat80;
    let x_3528 : f32 = u_xlat88;
    let x_3530 : f32 = u_xlat87;
    u_xlat87 = ((x_3527 * x_3528) + x_3530);
    let x_3533 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3533 & 31i)));
    let x_3537 : i32 = u_xlati88;
    let x_3540 : f32 = x_1646.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3537) & bitcast<u32>(x_3540)));
    let x_3544 : i32 = u_xlati88;
    if ((x_3544 != 0i)) {
      let x_3548 : i32 = u_xlati83;
      let x_3550 : f32 = x_1646.x_AdditionalLightsLightTypes[x_3548].el;
      u_xlati88 = i32(x_3550);
      let x_3553 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3553 != 0i));
      let x_3557 : i32 = u_xlati83;
      u_xlati37 = (x_3557 << bitcast<u32>(2i));
      let x_3559 : i32 = u_xlati11;
      if ((x_3559 != 0i)) {
        let x_3563 : vec3<f32> = vs_TEXCOORD1;
        let x_3565 : i32 = u_xlati37;
        let x_3568 : i32 = u_xlati37;
        let x_3572 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3565 + 1i) / 4i)][((x_3568 + 1i) % 4i)];
        let x_3574 : vec3<f32> = (vec3<f32>(x_3563.y, x_3563.y, x_3563.y) * vec3<f32>(x_3572.x, x_3572.y, x_3572.w));
        let x_3575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3574.x, x_3575.y, x_3574.y, x_3574.z);
        let x_3577 : i32 = u_xlati37;
        let x_3579 : i32 = u_xlati37;
        let x_3582 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[(x_3577 / 4i)][(x_3579 % 4i)];
        let x_3584 : vec3<f32> = vs_TEXCOORD1;
        let x_3587 : vec4<f32> = u_xlat11;
        let x_3589 : vec3<f32> = ((vec3<f32>(x_3582.x, x_3582.y, x_3582.w) * vec3<f32>(x_3584.x, x_3584.x, x_3584.x)) + vec3<f32>(x_3587.x, x_3587.z, x_3587.w));
        let x_3590 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3589.x, x_3590.y, x_3589.y, x_3589.z);
        let x_3592 : i32 = u_xlati37;
        let x_3595 : i32 = u_xlati37;
        let x_3599 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3592 + 2i) / 4i)][((x_3595 + 2i) % 4i)];
        let x_3601 : vec3<f32> = vs_TEXCOORD1;
        let x_3604 : vec4<f32> = u_xlat11;
        let x_3606 : vec3<f32> = ((vec3<f32>(x_3599.x, x_3599.y, x_3599.w) * vec3<f32>(x_3601.z, x_3601.z, x_3601.z)) + vec3<f32>(x_3604.x, x_3604.z, x_3604.w));
        let x_3607 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3606.x, x_3607.y, x_3606.y, x_3606.z);
        let x_3609 : vec4<f32> = u_xlat11;
        let x_3611 : i32 = u_xlati37;
        let x_3614 : i32 = u_xlati37;
        let x_3618 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3611 + 3i) / 4i)][((x_3614 + 3i) % 4i)];
        let x_3620 : vec3<f32> = (vec3<f32>(x_3609.x, x_3609.z, x_3609.w) + vec3<f32>(x_3618.x, x_3618.y, x_3618.w));
        let x_3621 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3620.x, x_3621.y, x_3620.y, x_3620.z);
        let x_3623 : vec4<f32> = u_xlat11;
        let x_3625 : vec4<f32> = u_xlat11;
        let x_3627 : vec2<f32> = (vec2<f32>(x_3623.x, x_3623.z) / vec2<f32>(x_3625.w, x_3625.w));
        let x_3628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3627.x, x_3628.y, x_3627.y, x_3628.w);
        let x_3630 : vec4<f32> = u_xlat11;
        let x_3633 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3634 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3633.x, x_3634.y, x_3633.y, x_3634.w);
        let x_3636 : vec4<f32> = u_xlat11;
        let x_3640 : vec2<f32> = clamp(vec2<f32>(x_3636.x, x_3636.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3640.x, x_3641.y, x_3640.y, x_3641.w);
        let x_3643 : i32 = u_xlati83;
        let x_3645 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3643];
        let x_3647 : vec4<f32> = u_xlat11;
        let x_3650 : i32 = u_xlati83;
        let x_3652 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3650];
        let x_3654 : vec2<f32> = ((vec2<f32>(x_3645.x, x_3645.y) * vec2<f32>(x_3647.x, x_3647.z)) + vec2<f32>(x_3652.z, x_3652.w));
        let x_3655 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3654.x, x_3655.y, x_3654.y, x_3655.w);
      } else {
        let x_3658 : i32 = u_xlati88;
        u_xlatb88 = (x_3658 == 1i);
        let x_3660 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3660);
        let x_3662 : i32 = u_xlati88;
        if ((x_3662 != 0i)) {
          let x_3666 : vec3<f32> = vs_TEXCOORD1;
          let x_3668 : i32 = u_xlati37;
          let x_3671 : i32 = u_xlati37;
          let x_3675 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3668 + 1i) / 4i)][((x_3671 + 1i) % 4i)];
          let x_3677 : vec2<f32> = (vec2<f32>(x_3666.y, x_3666.y) * vec2<f32>(x_3675.x, x_3675.y));
          let x_3678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3677.x, x_3677.y, x_3678.z, x_3678.w);
          let x_3680 : i32 = u_xlati37;
          let x_3682 : i32 = u_xlati37;
          let x_3685 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[(x_3680 / 4i)][(x_3682 % 4i)];
          let x_3687 : vec3<f32> = vs_TEXCOORD1;
          let x_3690 : vec4<f32> = u_xlat12;
          let x_3692 : vec2<f32> = ((vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(x_3687.x, x_3687.x)) + vec2<f32>(x_3690.x, x_3690.y));
          let x_3693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3692.x, x_3692.y, x_3693.z, x_3693.w);
          let x_3695 : i32 = u_xlati37;
          let x_3698 : i32 = u_xlati37;
          let x_3702 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3695 + 2i) / 4i)][((x_3698 + 2i) % 4i)];
          let x_3704 : vec3<f32> = vs_TEXCOORD1;
          let x_3707 : vec4<f32> = u_xlat12;
          let x_3709 : vec2<f32> = ((vec2<f32>(x_3702.x, x_3702.y) * vec2<f32>(x_3704.z, x_3704.z)) + vec2<f32>(x_3707.x, x_3707.y));
          let x_3710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3709.x, x_3709.y, x_3710.z, x_3710.w);
          let x_3712 : vec4<f32> = u_xlat12;
          let x_3714 : i32 = u_xlati37;
          let x_3717 : i32 = u_xlati37;
          let x_3721 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3714 + 3i) / 4i)][((x_3717 + 3i) % 4i)];
          let x_3723 : vec2<f32> = (vec2<f32>(x_3712.x, x_3712.y) + vec2<f32>(x_3721.x, x_3721.y));
          let x_3724 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3723.x, x_3723.y, x_3724.z, x_3724.w);
          let x_3726 : vec4<f32> = u_xlat12;
          let x_3729 : vec2<f32> = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3730 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3729.x, x_3729.y, x_3730.z, x_3730.w);
          let x_3732 : vec4<f32> = u_xlat12;
          let x_3734 : vec2<f32> = fract(vec2<f32>(x_3732.x, x_3732.y));
          let x_3735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
          let x_3737 : i32 = u_xlati83;
          let x_3739 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3737];
          let x_3741 : vec4<f32> = u_xlat12;
          let x_3744 : i32 = u_xlati83;
          let x_3746 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3744];
          let x_3748 : vec2<f32> = ((vec2<f32>(x_3739.x, x_3739.y) * vec2<f32>(x_3741.x, x_3741.y)) + vec2<f32>(x_3746.z, x_3746.w));
          let x_3749 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3748.x, x_3749.y, x_3748.y, x_3749.w);
        } else {
          let x_3752 : vec3<f32> = vs_TEXCOORD1;
          let x_3754 : i32 = u_xlati37;
          let x_3757 : i32 = u_xlati37;
          let x_3761 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3754 + 1i) / 4i)][((x_3757 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3752.y, x_3752.y, x_3752.y, x_3752.y) * x_3761);
          let x_3763 : i32 = u_xlati37;
          let x_3765 : i32 = u_xlati37;
          let x_3768 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[(x_3763 / 4i)][(x_3765 % 4i)];
          let x_3769 : vec3<f32> = vs_TEXCOORD1;
          let x_3772 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3768 * vec4<f32>(x_3769.x, x_3769.x, x_3769.x, x_3769.x)) + x_3772);
          let x_3774 : i32 = u_xlati37;
          let x_3777 : i32 = u_xlati37;
          let x_3781 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3774 + 2i) / 4i)][((x_3777 + 2i) % 4i)];
          let x_3782 : vec3<f32> = vs_TEXCOORD1;
          let x_3785 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3781 * vec4<f32>(x_3782.z, x_3782.z, x_3782.z, x_3782.z)) + x_3785);
          let x_3787 : vec4<f32> = u_xlat12;
          let x_3788 : i32 = u_xlati37;
          let x_3791 : i32 = u_xlati37;
          let x_3795 : vec4<f32> = x_1646.x_AdditionalLightsWorldToLights[((x_3788 + 3i) / 4i)][((x_3791 + 3i) % 4i)];
          u_xlat12 = (x_3787 + x_3795);
          let x_3797 : vec4<f32> = u_xlat12;
          let x_3799 : vec4<f32> = u_xlat12;
          let x_3801 : vec3<f32> = (vec3<f32>(x_3797.x, x_3797.y, x_3797.z) / vec3<f32>(x_3799.w, x_3799.w, x_3799.w));
          let x_3802 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
          let x_3804 : vec4<f32> = u_xlat12;
          let x_3806 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3804.x, x_3804.y, x_3804.z), vec3<f32>(x_3806.x, x_3806.y, x_3806.z));
          let x_3809 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3809);
          let x_3811 : f32 = u_xlat88;
          let x_3813 : vec4<f32> = u_xlat12;
          let x_3815 : vec3<f32> = (vec3<f32>(x_3811, x_3811, x_3811) * vec3<f32>(x_3813.x, x_3813.y, x_3813.z));
          let x_3816 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3815.x, x_3815.y, x_3815.z, x_3816.w);
          let x_3818 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3818.x, x_3818.y, x_3818.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3823 : f32 = u_xlat88;
          u_xlat88 = max(x_3823, 0.00000099999999747524f);
          let x_3826 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3826);
          let x_3828 : f32 = u_xlat88;
          let x_3830 : vec4<f32> = u_xlat12;
          let x_3832 : vec3<f32> = (vec3<f32>(x_3828, x_3828, x_3828) * vec3<f32>(x_3830.z, x_3830.x, x_3830.y));
          let x_3833 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3832.x, x_3832.y, x_3832.z, x_3833.w);
          let x_3836 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3836);
          let x_3840 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3840, 0.0f, 1.0f);
          let x_3845 : vec4<f32> = u_xlat13;
          let x_3847 : vec4<bool> = (vec4<f32>(x_3845.y, x_3845.y, x_3845.z, x_3845.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3848 : vec2<bool> = vec2<bool>(x_3847.x, x_3847.z);
          let x_3849 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3848.x, x_3849.y, x_3848.y);
          let x_3852 : bool = u_xlatb37.x;
          if (x_3852) {
            let x_3857 : f32 = u_xlat13.x;
            x_3853 = x_3857;
          } else {
            let x_3860 : f32 = u_xlat13.x;
            x_3853 = -(x_3860);
          }
          let x_3862 : f32 = x_3853;
          u_xlat37.x = x_3862;
          let x_3865 : bool = u_xlatb37.z;
          if (x_3865) {
            let x_3870 : f32 = u_xlat13.x;
            x_3866 = x_3870;
          } else {
            let x_3873 : f32 = u_xlat13.x;
            x_3866 = -(x_3873);
          }
          let x_3875 : f32 = x_3866;
          u_xlat37.z = x_3875;
          let x_3877 : vec4<f32> = u_xlat12;
          let x_3879 : f32 = u_xlat88;
          let x_3882 : vec3<f32> = u_xlat37;
          let x_3884 : vec2<f32> = ((vec2<f32>(x_3877.x, x_3877.y) * vec2<f32>(x_3879, x_3879)) + vec2<f32>(x_3882.x, x_3882.z));
          let x_3885 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3884.x, x_3885.y, x_3884.y);
          let x_3887 : vec3<f32> = u_xlat37;
          let x_3890 : vec2<f32> = ((vec2<f32>(x_3887.x, x_3887.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3891 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3890.x, x_3891.y, x_3890.y);
          let x_3893 : vec3<f32> = u_xlat37;
          let x_3897 : vec2<f32> = clamp(vec2<f32>(x_3893.x, x_3893.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3898 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3897.x, x_3898.y, x_3897.y);
          let x_3900 : i32 = u_xlati83;
          let x_3902 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3900];
          let x_3904 : vec3<f32> = u_xlat37;
          let x_3907 : i32 = u_xlati83;
          let x_3909 : vec4<f32> = x_1646.x_AdditionalLightsCookieAtlasUVRects[x_3907];
          let x_3911 : vec2<f32> = ((vec2<f32>(x_3902.x, x_3902.y) * vec2<f32>(x_3904.x, x_3904.z)) + vec2<f32>(x_3909.z, x_3909.w));
          let x_3912 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3911.x, x_3912.y, x_3911.y, x_3912.w);
        }
      }
      let x_3919 : vec4<f32> = u_xlat11;
      let x_3921 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3919.x, x_3919.z), 0.0f);
      u_xlat11 = x_3921;
      let x_3923 : bool = u_xlatb31.y;
      if (x_3923) {
        let x_3928 : f32 = u_xlat11.w;
        x_3924 = x_3928;
      } else {
        let x_3931 : f32 = u_xlat11.x;
        x_3924 = x_3931;
      }
      let x_3932 : f32 = x_3924;
      u_xlat88 = x_3932;
      let x_3934 : bool = u_xlatb31.x;
      if (x_3934) {
        let x_3938 : vec4<f32> = u_xlat11;
        x_3935 = vec3<f32>(x_3938.x, x_3938.y, x_3938.z);
      } else {
        let x_3941 : f32 = u_xlat88;
        x_3935 = vec3<f32>(x_3941, x_3941, x_3941);
      }
      let x_3943 : vec3<f32> = x_3935;
      let x_3944 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3943.x, x_3943.y, x_3943.z, x_3944.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3950 : vec4<f32> = u_xlat11;
    let x_3952 : i32 = u_xlati83;
    let x_3954 : vec4<f32> = x_2084.x_AdditionalLightsColor[x_3952];
    let x_3956 : vec3<f32> = (vec3<f32>(x_3950.x, x_3950.y, x_3950.z) * vec3<f32>(x_3954.x, x_3954.y, x_3954.z));
    let x_3957 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3956.x, x_3956.y, x_3956.z, x_3957.w);
    let x_3959 : f32 = u_xlat84;
    let x_3960 : f32 = u_xlat87;
    u_xlat83 = (x_3959 * x_3960);
    let x_3962 : vec4<f32> = u_xlat2;
    let x_3964 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3962.x, x_3962.y, x_3962.z), vec3<f32>(x_3964.x, x_3964.y, x_3964.z));
    let x_3967 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3967, 0.0f, 1.0f);
    let x_3969 : f32 = u_xlat83;
    let x_3970 : f32 = u_xlat84;
    u_xlat83 = (x_3969 * x_3970);
    let x_3972 : f32 = u_xlat83;
    let x_3974 : vec4<f32> = u_xlat11;
    let x_3976 : vec3<f32> = (vec3<f32>(x_3972, x_3972, x_3972) * vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
    let x_3977 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3976.x, x_3976.y, x_3976.z, x_3977.w);
    let x_3979 : vec4<f32> = u_xlat9;
    let x_3981 : f32 = u_xlat85;
    let x_3984 : vec3<f32> = u_xlat3;
    let x_3985 : vec3<f32> = ((vec3<f32>(x_3979.x, x_3979.y, x_3979.z) * vec3<f32>(x_3981, x_3981, x_3981)) + x_3984);
    let x_3986 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3985.x, x_3985.y, x_3985.z, x_3986.w);
    let x_3988 : vec4<f32> = u_xlat9;
    let x_3990 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3988.x, x_3988.y, x_3988.z), vec3<f32>(x_3990.x, x_3990.y, x_3990.z));
    let x_3993 : f32 = u_xlat83;
    u_xlat83 = max(x_3993, 1.17549435e-38f);
    let x_3995 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3995);
    let x_3997 : f32 = u_xlat83;
    let x_3999 : vec4<f32> = u_xlat9;
    let x_4001 : vec3<f32> = (vec3<f32>(x_3997, x_3997, x_3997) * vec3<f32>(x_3999.x, x_3999.y, x_3999.z));
    let x_4002 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4001.x, x_4001.y, x_4001.z, x_4002.w);
    let x_4004 : vec4<f32> = u_xlat2;
    let x_4006 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4004.x, x_4004.y, x_4004.z), vec3<f32>(x_4006.x, x_4006.y, x_4006.z));
    let x_4009 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4009, 0.0f, 1.0f);
    let x_4011 : vec4<f32> = u_xlat10;
    let x_4013 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4011.x, x_4011.y, x_4011.z), vec3<f32>(x_4013.x, x_4013.y, x_4013.z));
    let x_4016 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4016, 0.0f, 1.0f);
    let x_4018 : f32 = u_xlat83;
    let x_4019 : f32 = u_xlat83;
    u_xlat83 = (x_4018 * x_4019);
    let x_4021 : f32 = u_xlat83;
    let x_4023 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4021 * x_4023) + 1.00001001358032226562f);
    let x_4026 : f32 = u_xlat84;
    let x_4027 : f32 = u_xlat84;
    u_xlat84 = (x_4026 * x_4027);
    let x_4029 : f32 = u_xlat83;
    let x_4030 : f32 = u_xlat83;
    u_xlat83 = (x_4029 * x_4030);
    let x_4032 : f32 = u_xlat84;
    u_xlat84 = max(x_4032, 0.10000000149011611938f);
    let x_4034 : f32 = u_xlat83;
    let x_4035 : f32 = u_xlat84;
    u_xlat83 = (x_4034 * x_4035);
    let x_4038 : f32 = u_xlat5.x;
    let x_4039 : f32 = u_xlat83;
    u_xlat83 = (x_4038 * x_4039);
    let x_4041 : f32 = u_xlat82;
    let x_4042 : f32 = u_xlat83;
    u_xlat83 = (x_4041 / x_4042);
    let x_4044 : vec4<f32> = u_xlat0;
    let x_4046 : f32 = u_xlat83;
    let x_4049 : vec3<f32> = u_xlat27;
    let x_4050 : vec3<f32> = ((vec3<f32>(x_4044.x, x_4044.y, x_4044.z) * vec3<f32>(x_4046, x_4046, x_4046)) + x_4049);
    let x_4051 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4050.x, x_4050.y, x_4050.z, x_4051.w);
    let x_4053 : vec4<f32> = u_xlat9;
    let x_4055 : vec4<f32> = u_xlat11;
    let x_4058 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4053.x, x_4053.y, x_4053.z) * vec3<f32>(x_4055.x, x_4055.y, x_4055.z)) + x_4058);

    continuing {
      let x_4060 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4060 + bitcast<u32>(1i));
    }
  }
  let x_4062 : vec4<f32> = u_xlat7;
  let x_4064 : vec4<f32> = u_xlat6;
  let x_4067 : vec3<f32> = u_xlat4;
  let x_4068 : vec3<f32> = ((vec3<f32>(x_4062.x, x_4062.y, x_4062.z) * vec3<f32>(x_4064.x, x_4064.y, x_4064.z)) + x_4067);
  let x_4069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
  let x_4073 : vec3<f32> = u_xlat34;
  let x_4074 : vec4<f32> = u_xlat0;
  let x_4076 : vec3<f32> = (x_4073 + vec3<f32>(x_4074.x, x_4074.y, x_4074.z));
  let x_4077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4076.x, x_4076.y, x_4076.z, x_4077.w);
  let x_4081 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4081 == 1.0f);
  let x_4083 : bool = u_xlatb0;
  if (x_4083) {
    let x_4088 : f32 = u_xlat1.x;
    x_4084 = x_4088;
  } else {
    x_4084 = 1.0f;
  }
  let x_4090 : f32 = x_4084;
  SV_Target0.w = x_4090;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


