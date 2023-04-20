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
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_152 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat71 : f32;

var<private> u_xlatu71 : u32;

var<private> u_xlati71 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb71 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb72 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : vec2<bool>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : f32;

@group(1) @binding(5) var<uniform> x_1697 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1812 : UnityPerDraw;

var<private> u_xlatu73 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_1994 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb76 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb77 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati31 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlatb55 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu51 : u32;

var<private> u_xlatb74 : bool;

fn main_1() {
  var x_84 : f32;
  var x_97 : f32;
  var x_109 : f32;
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
  var x_1779 : f32;
  var x_1790 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2133 : f32;
  var x_2145 : f32;
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
  var x_3813 : f32;
  var x_3826 : f32;
  var x_3883 : f32;
  var x_3894 : vec3<f32>;
  var x_4034 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat24;
  let x_70 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat24;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : bool = u_xlatb1;
  if (x_82) {
    let x_88 : f32 = u_xlat24.x;
    x_84 = x_88;
  } else {
    let x_93 : f32 = x_28.unity_MatrixV[0i].z;
    x_84 = x_93;
  }
  let x_94 : f32 = x_84;
  u_xlat2.x = x_94;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_102 : f32 = u_xlat24.y;
    x_97 = x_102;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_97 = x_105;
  }
  let x_106 : f32 = x_97;
  u_xlat2.y = x_106;
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_113 : f32 = u_xlat24.z;
    x_109 = x_113;
  } else {
    let x_117 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat2.z = x_118;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  let x_123 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_122, x_123);
  let x_127 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_127);
  let x_130 : vec3<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_135 : vec3<f32> = u_xlat2;
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat70 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat70;
  u_xlat70 = max(x_138, 0.00006103515625f);
  let x_141 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_141);
  let x_144 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres0;
  let x_157 : vec3<f32> = (x_144 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres1;
  let x_166 : vec3<f32> = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres2;
  let x_176 : vec3<f32> = (x_170 + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec3<f32> = vs_TEXCOORD1;
  let x_182 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres3;
  let x_185 : vec3<f32> = (x_180 + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec4<f32> = u_xlat5;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec4<f32> = u_xlat6;
  let x_208 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = x_152.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_215 < x_217);
  let x_220 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_220);
  let x_225 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_233);
  let x_237 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_237);
  let x_243 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_243);
  let x_247 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_247);
  let x_250 : vec4<f32> = u_xlat3;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) + vec3<f32>(x_252.y, x_252.z, x_252.w));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat3;
  let x_260 : vec3<f32> = max(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_260.x, x_260.y, x_260.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat71;
  u_xlat71 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat71;
  u_xlatu71 = u32(x_275);
  let x_279 : u32 = u_xlatu71;
  u_xlati71 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati71;
  let x_287 : i32 = u_xlati71;
  let x_291 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati71;
  let x_298 : i32 = u_xlati71;
  let x_301 : vec4<f32> = x_152.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati71;
  let x_314 : i32 = u_xlati71;
  let x_318 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : i32 = u_xlati71;
  let x_333 : i32 = u_xlati71;
  let x_337 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_28.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_348, x_350);
  u_xlat4 = x_351;
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_28.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_356, x_358);
  let x_360 : vec3<f32> = vec3<f32>(x_359.x, x_359.y, x_359.z);
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat4;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec3<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_370, vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : f32 = u_xlat71;
  u_xlat71 = (x_374 + 0.5f);
  let x_377 : f32 = u_xlat71;
  let x_379 : vec4<f32> = u_xlat5;
  let x_381 : vec3<f32> = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = u_xlat4.w;
  u_xlat71 = max(x_385, 0.00009999999747378752f);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : f32 = u_xlat71;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) / vec3<f32>(x_390, x_390, x_390));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_398 : f32 = x_152.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_398);
  let x_400 : bool = u_xlatb71;
  if (x_400) {
    let x_404 : f32 = x_152.x_MainLightShadowParams.y;
    u_xlatb71 = (x_404 == 1.0f);
    let x_406 : bool = u_xlatb71;
    if (x_406) {
      let x_409 : vec4<f32> = u_xlat3;
      let x_412 : vec4<f32> = x_152.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_409.x, x_409.y, x_409.x, x_409.y) + x_412);
      let x_416 : vec4<f32> = u_xlat5;
      let x_417 : vec2<f32> = vec2<f32>(x_416.x, x_416.y);
      let x_419 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_417.x, x_417.y, x_419);
      let x_431 : vec3<f32> = txVec0;
      let x_433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_431.xy, x_431.z);
      u_xlat6.x = x_433;
      let x_436 : vec4<f32> = u_xlat5;
      let x_437 : vec2<f32> = vec2<f32>(x_436.z, x_436.w);
      let x_439 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_437.x, x_437.y, x_439);
      let x_446 : vec3<f32> = txVec1;
      let x_448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_446.xy, x_446.z);
      u_xlat6.y = x_448;
      let x_450 : vec4<f32> = u_xlat3;
      let x_454 : vec4<f32> = x_152.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_450.x, x_450.y, x_450.x, x_450.y) + x_454);
      let x_457 : vec4<f32> = u_xlat5;
      let x_458 : vec2<f32> = vec2<f32>(x_457.x, x_457.y);
      let x_460 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec2;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_467.xy, x_467.z);
      u_xlat6.z = x_469;
      let x_472 : vec4<f32> = u_xlat5;
      let x_473 : vec2<f32> = vec2<f32>(x_472.z, x_472.w);
      let x_475 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_473.x, x_473.y, x_475);
      let x_482 : vec3<f32> = txVec3;
      let x_484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_482.xy, x_482.z);
      u_xlat6.w = x_484;
      let x_486 : vec4<f32> = u_xlat6;
      u_xlat71 = dot(x_486, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_493 : f32 = x_152.x_MainLightShadowParams.y;
      u_xlatb72 = (x_493 == 2.0f);
      let x_495 : bool = u_xlatb72;
      if (x_495) {
        let x_498 : vec4<f32> = u_xlat3;
        let x_502 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_506 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_502.z, x_502.w)) + vec2<f32>(0.5f, 0.5f));
        let x_507 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_509 : vec4<f32> = u_xlat5;
        let x_511 : vec2<f32> = floor(vec2<f32>(x_509.x, x_509.y));
        let x_512 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_516 : vec4<f32> = u_xlat3;
        let x_519 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_522 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + -(vec2<f32>(x_522.x, x_522.y)));
        let x_526 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_526.x, x_526.x, x_526.y, x_526.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_531 : vec4<f32> = u_xlat6;
        let x_533 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_531.x, x_531.x, x_531.z, x_531.z) * vec4<f32>(x_533.x, x_533.x, x_533.z, x_533.z));
        let x_536 : vec4<f32> = u_xlat7;
        let x_540 : vec2<f32> = (vec2<f32>(x_536.y, x_536.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_541 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_540.x, x_541.y, x_540.y, x_541.w);
        let x_543 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = u_xlat51;
        let x_548 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.z) * vec2<f32>(0.5f, 0.5f)) + -(x_546));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_552 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_552) + vec2<f32>(1.0f, 1.0f));
        let x_557 : vec2<f32> = u_xlat51;
        let x_559 : vec2<f32> = min(x_557, vec2<f32>(0.0f, 0.0f));
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat8;
        let x_565 : vec4<f32> = u_xlat8;
        let x_568 : vec2<f32> = u_xlat53;
        let x_569 : vec2<f32> = ((-(vec2<f32>(x_562.x, x_562.y)) * vec2<f32>(x_565.x, x_565.y)) + x_568);
        let x_570 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_572, vec2<f32>(0.0f, 0.0f));
        let x_574 : vec2<f32> = u_xlat51;
        let x_576 : vec2<f32> = u_xlat51;
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_574) * x_576) + vec2<f32>(x_578.y, x_578.w));
        let x_581 : vec4<f32> = u_xlat8;
        let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) + vec2<f32>(1.0f, 1.0f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_586 + vec2<f32>(1.0f, 1.0f));
        let x_589 : vec4<f32> = u_xlat7;
        let x_593 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec2<f32> = u_xlat53;
        let x_597 : vec2<f32> = (x_596 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_606 : vec2<f32> = u_xlat51;
        let x_607 : vec2<f32> = (x_606 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_610.y, x_610.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : f32 = u_xlat8.x;
        u_xlat9.z = x_614;
        let x_617 : f32 = u_xlat51.x;
        u_xlat9.w = x_617;
        let x_620 : f32 = u_xlat10.x;
        u_xlat7.z = x_620;
        let x_623 : f32 = u_xlat6.x;
        u_xlat7.w = x_623;
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_626.z, x_626.w, x_626.x, x_626.z) + vec4<f32>(x_628.z, x_628.w, x_628.x, x_628.z));
        let x_632 : f32 = u_xlat9.y;
        u_xlat8.z = x_632;
        let x_635 : f32 = u_xlat51.y;
        u_xlat8.w = x_635;
        let x_638 : f32 = u_xlat7.y;
        u_xlat10.z = x_638;
        let x_641 : f32 = u_xlat6.z;
        u_xlat10.w = x_641;
        let x_643 : vec4<f32> = u_xlat8;
        let x_645 : vec4<f32> = u_xlat10;
        let x_647 : vec3<f32> = (vec3<f32>(x_643.z, x_643.y, x_643.w) + vec3<f32>(x_645.z, x_645.y, x_645.w));
        let x_648 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        let x_652 : vec4<f32> = u_xlat11;
        let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.z, x_650.w) / vec3<f32>(x_652.z, x_652.w, x_652.y));
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_662 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_663 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat10;
        let x_667 : vec4<f32> = u_xlat6;
        let x_669 : vec3<f32> = (vec3<f32>(x_665.z, x_665.y, x_665.w) / vec3<f32>(x_667.x, x_667.y, x_667.z));
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_672 : vec4<f32> = u_xlat8;
        let x_674 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat7;
        let x_680 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = (vec3<f32>(x_677.y, x_677.x, x_677.z) * vec3<f32>(x_680.x, x_680.x, x_680.x));
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_688 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_690 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_688.y, x_688.y, x_688.y));
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_694 : f32 = u_xlat8.x;
        u_xlat7.w = x_694;
        let x_696 : vec4<f32> = u_xlat5;
        let x_699 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y) * vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y)) + vec4<f32>(x_702.y, x_702.w, x_702.x, x_702.w));
        let x_705 : vec4<f32> = u_xlat5;
        let x_708 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_711 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_705.x, x_705.y) * vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(x_711.z, x_711.w));
        let x_715 : f32 = u_xlat7.y;
        u_xlat8.w = x_715;
        let x_717 : vec4<f32> = u_xlat8;
        let x_718 : vec2<f32> = vec2<f32>(x_717.y, x_717.z);
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_719.x, x_718.x, x_719.z, x_718.y);
        let x_721 : vec4<f32> = u_xlat5;
        let x_724 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) * vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y)) + vec4<f32>(x_727.x, x_727.y, x_727.z, x_727.y));
        let x_730 : vec4<f32> = u_xlat5;
        let x_733 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y) * vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y)) + vec4<f32>(x_736.w, x_736.y, x_736.w, x_736.z));
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.x, x_745.w, x_745.z, x_745.w));
        let x_749 : vec4<f32> = u_xlat6;
        let x_751 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_749.x, x_749.x, x_749.x, x_749.y) * vec4<f32>(x_751.z, x_751.w, x_751.y, x_751.z));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_755.y, x_755.y, x_755.z, x_755.z) * x_757);
        let x_761 : f32 = u_xlat6.z;
        let x_763 : f32 = u_xlat11.y;
        u_xlat72 = (x_761 * x_763);
        let x_766 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_777 : vec3<f32> = txVec4;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
        u_xlat73 = x_779;
        let x_781 : vec4<f32> = u_xlat9;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec5;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat5.x = x_793;
        let x_796 : f32 = u_xlat5.x;
        let x_798 : f32 = u_xlat12.y;
        u_xlat5.x = (x_796 * x_798);
        let x_802 : f32 = u_xlat12.x;
        let x_803 : f32 = u_xlat73;
        let x_806 : f32 = u_xlat5.x;
        u_xlat73 = ((x_802 * x_803) + x_806);
        let x_809 : vec2<f32> = u_xlat51;
        let x_811 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec6;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_818.xy, x_818.z);
        u_xlat5.x = x_820;
        let x_823 : f32 = u_xlat12.z;
        let x_825 : f32 = u_xlat5.x;
        let x_827 : f32 = u_xlat73;
        u_xlat73 = ((x_823 * x_825) + x_827);
        let x_830 : vec4<f32> = u_xlat8;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec7;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_840.xy, x_840.z);
        u_xlat5.x = x_842;
        let x_845 : f32 = u_xlat12.w;
        let x_847 : f32 = u_xlat5.x;
        let x_849 : f32 = u_xlat73;
        u_xlat73 = ((x_845 * x_847) + x_849);
        let x_852 : vec4<f32> = u_xlat10;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec8;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
        u_xlat5.x = x_864;
        let x_867 : f32 = u_xlat13.x;
        let x_869 : f32 = u_xlat5.x;
        let x_871 : f32 = u_xlat73;
        u_xlat73 = ((x_867 * x_869) + x_871);
        let x_874 : vec4<f32> = u_xlat10;
        let x_875 : vec2<f32> = vec2<f32>(x_874.z, x_874.w);
        let x_877 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec9;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_884.xy, x_884.z);
        u_xlat5.x = x_886;
        let x_889 : f32 = u_xlat13.y;
        let x_891 : f32 = u_xlat5.x;
        let x_893 : f32 = u_xlat73;
        u_xlat73 = ((x_889 * x_891) + x_893);
        let x_896 : vec4<f32> = u_xlat8;
        let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
        let x_899 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_897.x, x_897.y, x_899);
        let x_906 : vec3<f32> = txVec10;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_906.xy, x_906.z);
        u_xlat5.x = x_908;
        let x_911 : f32 = u_xlat13.z;
        let x_913 : f32 = u_xlat5.x;
        let x_915 : f32 = u_xlat73;
        u_xlat73 = ((x_911 * x_913) + x_915);
        let x_918 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = vec2<f32>(x_918.x, x_918.y);
        let x_921 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec11;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_928.xy, x_928.z);
        u_xlat5.x = x_930;
        let x_933 : f32 = u_xlat13.w;
        let x_935 : f32 = u_xlat5.x;
        let x_937 : f32 = u_xlat73;
        u_xlat73 = ((x_933 * x_935) + x_937);
        let x_940 : vec4<f32> = u_xlat7;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec12;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_950.xy, x_950.z);
        u_xlat5.x = x_952;
        let x_954 : f32 = u_xlat72;
        let x_956 : f32 = u_xlat5.x;
        let x_958 : f32 = u_xlat73;
        u_xlat71 = ((x_954 * x_956) + x_958);
      } else {
        let x_961 : vec4<f32> = u_xlat3;
        let x_964 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_967 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.y) * vec2<f32>(x_964.z, x_964.w)) + vec2<f32>(0.5f, 0.5f));
        let x_968 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat5;
        let x_972 : vec2<f32> = floor(vec2<f32>(x_970.x, x_970.y));
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec4<f32> = u_xlat3;
        let x_978 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_975.x, x_975.y) * vec2<f32>(x_978.z, x_978.w)) + -(vec2<f32>(x_981.x, x_981.y)));
        let x_985 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_985.x, x_985.x, x_985.y, x_985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_988 : vec4<f32> = u_xlat6;
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_988.x, x_988.x, x_988.z, x_988.z) * vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z));
        let x_993 : vec4<f32> = u_xlat7;
        let x_997 : vec2<f32> = (vec2<f32>(x_993.y, x_993.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = u_xlat51;
        let x_1005 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1003));
        let x_1006 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1005.x, x_1006.y, x_1005.y, x_1006.w);
        let x_1008 : vec2<f32> = u_xlat51;
        let x_1010 : vec2<f32> = (-(x_1008) + vec2<f32>(1.0f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1013, vec2<f32>(0.0f, 0.0f));
        let x_1015 : vec2<f32> = u_xlat53;
        let x_1017 : vec2<f32> = u_xlat53;
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1021 : vec2<f32> = ((-(x_1015) * x_1017) + vec2<f32>(x_1019.x, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1024, vec2<f32>(0.0f, 0.0f));
        let x_1027 : vec2<f32> = u_xlat53;
        let x_1029 : vec2<f32> = u_xlat53;
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1033 : vec2<f32> = ((-(x_1027) * x_1029) + vec2<f32>(x_1031.y, x_1031.w));
        let x_1034 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1033.x, x_1034.y, x_1033.y);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1039 : vec2<f32> = (vec2<f32>(x_1036.x, x_1036.y) + vec2<f32>(2.0f, 2.0f));
        let x_1040 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec3<f32> = u_xlat29;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.z) + vec2<f32>(2.0f, 2.0f));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1048 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1048 * 0.08163200318813323975f);
        let x_1052 : vec4<f32> = u_xlat6;
        let x_1055 : vec3<f32> = (vec3<f32>(x_1052.z, x_1052.x, x_1052.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1061 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1062 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat10.y;
        u_xlat9.x = x_1065;
        let x_1067 : vec2<f32> = u_xlat51;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec2<f32> = u_xlat51;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1082.y, x_1081.y, x_1082.w);
        let x_1085 : f32 = u_xlat6.x;
        u_xlat7.y = x_1085;
        let x_1088 : f32 = u_xlat8.y;
        u_xlat7.w = x_1088;
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1090 + x_1091);
        let x_1093 : vec2<f32> = u_xlat51;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1093.y, x_1093.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec2<f32> = u_xlat51;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1099.y, x_1099.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1103.w);
        let x_1106 : f32 = u_xlat6.y;
        u_xlat8.y = x_1106;
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1108 + x_1109);
        let x_1111 : vec4<f32> = u_xlat7;
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1111 / x_1112);
        let x_1114 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1114 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1121 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1120 / x_1121);
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1123 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1125.w, x_1125.x, x_1125.y, x_1125.z) * vec4<f32>(x_1128.x, x_1128.x, x_1128.x, x_1128.x));
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1134 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1131.x, x_1131.w, x_1131.y, x_1131.z) * vec4<f32>(x_1134.y, x_1134.y, x_1134.y, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1138 : vec3<f32> = vec3<f32>(x_1137.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1138.x, x_1139.y, x_1138.y, x_1138.z);
        let x_1142 : f32 = u_xlat8.x;
        u_xlat10.y = x_1142;
        let x_1144 : vec4<f32> = u_xlat5;
        let x_1147 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat5;
        let x_1156 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.w, x_1159.y));
        let x_1163 : f32 = u_xlat10.y;
        u_xlat7.y = x_1163;
        let x_1166 : f32 = u_xlat8.z;
        u_xlat10.y = x_1166;
        let x_1168 : vec4<f32> = u_xlat5;
        let x_1171 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1180 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.w, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat10.y;
        u_xlat7.z = x_1189;
        let x_1192 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.z));
        let x_1202 : f32 = u_xlat8.w;
        u_xlat10.y = x_1202;
        let x_1205 : vec4<f32> = u_xlat5;
        let x_1208 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1225 : f32 = u_xlat10.y;
        u_xlat7.w = x_1225;
        let x_1228 : vec4<f32> = u_xlat5;
        let x_1231 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.x, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1238 : vec3<f32> = vec3<f32>(x_1237.x, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1238.z);
        let x_1241 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1251 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.w, x_1257.y));
        let x_1261 : f32 = u_xlat7.x;
        u_xlat8.x = x_1261;
        let x_1263 : vec4<f32> = u_xlat5;
        let x_1266 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.x, x_1269.y));
        let x_1272 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1275.x, x_1275.x, x_1275.x, x_1275.x) * x_1277);
        let x_1280 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1280.y, x_1280.y, x_1280.y, x_1280.y) * x_1282);
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1285.z, x_1285.z, x_1285.z, x_1285.z) * x_1287);
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1289.w, x_1289.w, x_1289.w, x_1289.w) * x_1291);
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.x, x_1294.y);
        let x_1297 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec13;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat72 = x_1306;
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec14;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat73 = x_1320;
        let x_1321 : f32 = u_xlat73;
        let x_1323 : f32 = u_xlat16.y;
        u_xlat73 = (x_1321 * x_1323);
        let x_1326 : f32 = u_xlat16.x;
        let x_1327 : f32 = u_xlat72;
        let x_1329 : f32 = u_xlat73;
        u_xlat72 = ((x_1326 * x_1327) + x_1329);
        let x_1332 : vec2<f32> = u_xlat51;
        let x_1334 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec15;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat73 = x_1343;
        let x_1345 : f32 = u_xlat16.z;
        let x_1346 : f32 = u_xlat73;
        let x_1348 : f32 = u_xlat72;
        u_xlat72 = ((x_1345 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat14;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.x, x_1351.y);
        let x_1354 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec16;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat73 = x_1363;
        let x_1365 : f32 = u_xlat16.w;
        let x_1366 : f32 = u_xlat73;
        let x_1368 : f32 = u_xlat72;
        u_xlat72 = ((x_1365 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat12;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec17;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat73 = x_1383;
        let x_1385 : f32 = u_xlat17.x;
        let x_1386 : f32 = u_xlat73;
        let x_1388 : f32 = u_xlat72;
        u_xlat72 = ((x_1385 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec18;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat73 = x_1403;
        let x_1405 : f32 = u_xlat17.y;
        let x_1406 : f32 = u_xlat73;
        let x_1408 : f32 = u_xlat72;
        u_xlat72 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec19;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat73 = x_1423;
        let x_1425 : f32 = u_xlat17.z;
        let x_1426 : f32 = u_xlat73;
        let x_1428 : f32 = u_xlat72;
        u_xlat72 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat14;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec20;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat73 = x_1443;
        let x_1445 : f32 = u_xlat17.w;
        let x_1446 : f32 = u_xlat73;
        let x_1448 : f32 = u_xlat72;
        u_xlat72 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat15;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec21;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat73 = x_1463;
        let x_1465 : f32 = u_xlat18.x;
        let x_1466 : f32 = u_xlat73;
        let x_1468 : f32 = u_xlat72;
        u_xlat72 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat15;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec22;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat73 = x_1483;
        let x_1485 : f32 = u_xlat18.y;
        let x_1486 : f32 = u_xlat73;
        let x_1488 : f32 = u_xlat72;
        u_xlat72 = ((x_1485 * x_1486) + x_1488);
        let x_1491 : vec2<f32> = u_xlat30;
        let x_1493 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec23;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat73 = x_1502;
        let x_1504 : f32 = u_xlat18.z;
        let x_1505 : f32 = u_xlat73;
        let x_1507 : f32 = u_xlat72;
        u_xlat72 = ((x_1504 * x_1505) + x_1507);
        let x_1510 : vec2<f32> = u_xlat59;
        let x_1512 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec24;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat73 = x_1521;
        let x_1523 : f32 = u_xlat18.w;
        let x_1524 : f32 = u_xlat73;
        let x_1526 : f32 = u_xlat72;
        u_xlat72 = ((x_1523 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat10;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
        let x_1532 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec25;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat73 = x_1541;
        let x_1543 : f32 = u_xlat6.x;
        let x_1544 : f32 = u_xlat73;
        let x_1546 : f32 = u_xlat72;
        u_xlat72 = ((x_1543 * x_1544) + x_1546);
        let x_1549 : vec4<f32> = u_xlat10;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.z, x_1549.w);
        let x_1552 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec26;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat73 = x_1561;
        let x_1563 : f32 = u_xlat6.y;
        let x_1564 : f32 = u_xlat73;
        let x_1566 : f32 = u_xlat72;
        u_xlat72 = ((x_1563 * x_1564) + x_1566);
        let x_1569 : vec2<f32> = u_xlat54;
        let x_1571 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec27;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat73 = x_1580;
        let x_1582 : f32 = u_xlat6.z;
        let x_1583 : f32 = u_xlat73;
        let x_1585 : f32 = u_xlat72;
        u_xlat72 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat5;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.x, x_1588.y);
        let x_1591 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec28;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat73 = x_1600;
        let x_1602 : f32 = u_xlat6.w;
        let x_1603 : f32 = u_xlat73;
        let x_1605 : f32 = u_xlat72;
        u_xlat71 = ((x_1602 * x_1603) + x_1605);
      }
    }
  } else {
    let x_1609 : vec4<f32> = u_xlat3;
    let x_1610 : vec2<f32> = vec2<f32>(x_1609.x, x_1609.y);
    let x_1612 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
    let x_1619 : vec3<f32> = txVec29;
    let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1619.xy, x_1619.z);
    u_xlat71 = x_1621;
  }
  let x_1623 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1623) + 1.0f);
  let x_1627 : f32 = u_xlat71;
  let x_1629 : f32 = x_152.x_MainLightShadowParams.x;
  let x_1632 : f32 = u_xlat3.x;
  u_xlat71 = ((x_1627 * x_1629) + x_1632);
  let x_1635 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1635);
  let x_1642 : f32 = u_xlat3.z;
  u_xlatb26.x = (x_1642 >= 1.0f);
  let x_1646 : bool = u_xlatb26.x;
  let x_1648 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1646 | x_1648);
  let x_1652 : bool = u_xlatb3.x;
  let x_1653 : f32 = u_xlat71;
  u_xlat71 = select(x_1653, 1.0f, x_1652);
  let x_1655 : vec3<f32> = vs_TEXCOORD1;
  let x_1657 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1659 : vec3<f32> = (x_1655 + -(x_1657));
  let x_1660 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1662 : vec4<f32> = u_xlat3;
  let x_1664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1662.x, x_1662.y, x_1662.z), vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1670 : f32 = u_xlat3.x;
  let x_1672 : f32 = x_152.x_MainLightShadowParams.z;
  let x_1675 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1670 * x_1672) + x_1675);
  let x_1679 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1679, 0.0f, 1.0f);
  let x_1683 : f32 = u_xlat71;
  u_xlat49 = (-(x_1683) + 1.0f);
  let x_1687 : f32 = u_xlat26.x;
  let x_1688 : f32 = u_xlat49;
  let x_1690 : f32 = u_xlat71;
  u_xlat71 = ((x_1687 * x_1688) + x_1690);
  let x_1699 : f32 = x_1697.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1699 == -1.0f));
  let x_1703 : bool = u_xlatb26.x;
  if (x_1703) {
    let x_1706 : vec3<f32> = vs_TEXCOORD1;
    let x_1709 : vec4<f32> = x_1697.x_MainLightWorldToLight[1i];
    let x_1711 : vec2<f32> = (vec2<f32>(x_1706.y, x_1706.y) * vec2<f32>(x_1709.x, x_1709.y));
    let x_1712 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1711.x, x_1711.y, x_1712.z);
    let x_1715 : vec4<f32> = x_1697.x_MainLightWorldToLight[0i];
    let x_1717 : vec3<f32> = vs_TEXCOORD1;
    let x_1720 : vec3<f32> = u_xlat26;
    let x_1722 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(x_1717.x, x_1717.x)) + vec2<f32>(x_1720.x, x_1720.y));
    let x_1723 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1722.x, x_1722.y, x_1723.z);
    let x_1726 : vec4<f32> = x_1697.x_MainLightWorldToLight[2i];
    let x_1728 : vec3<f32> = vs_TEXCOORD1;
    let x_1731 : vec3<f32> = u_xlat26;
    let x_1733 : vec2<f32> = ((vec2<f32>(x_1726.x, x_1726.y) * vec2<f32>(x_1728.z, x_1728.z)) + vec2<f32>(x_1731.x, x_1731.y));
    let x_1734 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1733.x, x_1733.y, x_1734.z);
    let x_1736 : vec3<f32> = u_xlat26;
    let x_1739 : vec4<f32> = x_1697.x_MainLightWorldToLight[3i];
    let x_1741 : vec2<f32> = (vec2<f32>(x_1736.x, x_1736.y) + vec2<f32>(x_1739.x, x_1739.y));
    let x_1742 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1741.x, x_1741.y, x_1742.z);
    let x_1744 : vec3<f32> = u_xlat26;
    let x_1747 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1748 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1747.x, x_1747.y, x_1748.z);
    let x_1755 : vec3<f32> = u_xlat26;
    let x_1758 : f32 = x_28.x_GlobalMipBias.x;
    let x_1759 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1755.x, x_1755.y), x_1758);
    u_xlat5 = x_1759;
    let x_1761 : f32 = x_1697.x_MainLightCookieTextureFormat;
    let x_1763 : f32 = x_1697.x_MainLightCookieTextureFormat;
    let x_1765 : f32 = x_1697.x_MainLightCookieTextureFormat;
    let x_1767 : f32 = x_1697.x_MainLightCookieTextureFormat;
    let x_1768 : vec4<f32> = vec4<f32>(x_1761, x_1763, x_1765, x_1767);
    let x_1775 : vec4<bool> = (vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1768.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1775.x, x_1775.y);
    let x_1778 : bool = u_xlatb26.y;
    if (x_1778) {
      let x_1783 : f32 = u_xlat5.w;
      x_1779 = x_1783;
    } else {
      let x_1786 : f32 = u_xlat5.x;
      x_1779 = x_1786;
    }
    let x_1787 : f32 = x_1779;
    u_xlat49 = x_1787;
    let x_1789 : bool = u_xlatb26.x;
    if (x_1789) {
      let x_1793 : vec4<f32> = u_xlat5;
      x_1790 = vec3<f32>(x_1793.x, x_1793.y, x_1793.z);
    } else {
      let x_1796 : f32 = u_xlat49;
      x_1790 = vec3<f32>(x_1796, x_1796, x_1796);
    }
    let x_1798 : vec3<f32> = x_1790;
    u_xlat26 = x_1798;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_1803 : vec3<f32> = u_xlat26;
  let x_1805 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat26 = (x_1803 * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
  let x_1808 : f32 = u_xlat71;
  let x_1814 : f32 = x_1812.unity_LightData.z;
  u_xlat71 = (x_1808 * x_1814);
  let x_1816 : f32 = u_xlat71;
  let x_1818 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_1816, x_1816, x_1816) * x_1818);
  let x_1820 : vec3<f32> = u_xlat1;
  let x_1822 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat71 = dot(x_1820, vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1825, 0.0f, 1.0f);
  let x_1827 : f32 = u_xlat71;
  let x_1829 : vec3<f32> = u_xlat26;
  let x_1830 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * x_1829);
  let x_1831 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
  let x_1834 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1834 * 10.0f) + 1.0f);
  let x_1838 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1838);
  let x_1840 : vec3<f32> = u_xlat2;
  let x_1841 : f32 = u_xlat70;
  let x_1845 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1847 : vec3<f32> = ((x_1840 * vec3<f32>(x_1841, x_1841, x_1841)) + vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
  let x_1848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec4<f32> = u_xlat6;
  let x_1852 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : f32 = u_xlat73;
  u_xlat73 = max(x_1855, 1.17549435e-38f);
  let x_1858 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1858);
  let x_1860 : f32 = u_xlat73;
  let x_1862 : vec4<f32> = u_xlat6;
  let x_1864 : vec3<f32> = (vec3<f32>(x_1860, x_1860, x_1860) * vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
  let x_1867 : vec3<f32> = u_xlat1;
  let x_1868 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(x_1867, vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1871, 0.0f, 1.0f);
  let x_1873 : f32 = u_xlat73;
  u_xlat73 = log2(x_1873);
  let x_1875 : f32 = u_xlat71;
  let x_1876 : f32 = u_xlat73;
  u_xlat73 = (x_1875 * x_1876);
  let x_1878 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1878);
  let x_1880 : f32 = u_xlat73;
  let x_1883 : vec4<f32> = x_41.x_SpecColor;
  let x_1885 : vec3<f32> = (vec3<f32>(x_1880, x_1880, x_1880) * vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
  let x_1886 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1888 : vec3<f32> = u_xlat26;
  let x_1889 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_1888 * vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : vec4<f32> = u_xlat5;
  let x_1894 : vec4<f32> = u_xlat0;
  let x_1897 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * vec3<f32>(x_1894.y, x_1894.z, x_1894.w)) + x_1897);
  let x_1900 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1902 : f32 = x_1812.unity_LightData.y;
  u_xlat73 = min(x_1900, x_1902);
  let x_1905 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1905));
  let x_1909 : f32 = u_xlat3.x;
  let x_1912 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_1915 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1909 * x_1912) + x_1915);
  let x_1919 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1919, 0.0f, 1.0f);
  let x_1924 : f32 = x_1697.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1926 : f32 = x_1697.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1928 : f32 = x_1697.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1930 : f32 = x_1697.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1931 : vec4<f32> = vec4<f32>(x_1924, x_1926, x_1928, x_1930);
  let x_1937 : vec4<bool> = (vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1931.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1937.x, x_1937.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1949 : u32 = u_xlatu_loop_1;
    let x_1950 : u32 = u_xlatu73;
    if ((x_1949 < x_1950)) {
    } else {
      break;
    }
    let x_1953 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1953 >> 2u);
    let x_1956 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1956 & 3u));
    let x_1960 : u32 = u_xlatu74;
    let x_1963 : vec4<f32> = x_1812.unity_LightIndices[bitcast<i32>(x_1960)];
    let x_1973 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1978 : vec4<u32> = indexable[x_1973];
    u_xlat74 = dot(x_1963, bitcast<vec4<f32>>(x_1978));
    let x_1982 : f32 = u_xlat74;
    u_xlati74 = i32(x_1982);
    let x_1984 : vec3<f32> = vs_TEXCOORD1;
    let x_1995 : i32 = u_xlati74;
    let x_1997 : vec4<f32> = x_1994.x_AdditionalLightsPosition[x_1995];
    let x_2000 : i32 = u_xlati74;
    let x_2002 : vec4<f32> = x_1994.x_AdditionalLightsPosition[x_2000];
    let x_2004 : vec3<f32> = ((-(x_1984) * vec3<f32>(x_1997.w, x_1997.w, x_1997.w)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2005 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
    let x_2008 : vec4<f32> = u_xlat7;
    let x_2010 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2008.x, x_2008.y, x_2008.z), vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
    let x_2013 : f32 = u_xlat75;
    u_xlat75 = max(x_2013, 0.00006103515625f);
    let x_2016 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_2016);
    let x_2018 : f32 = u_xlat76;
    let x_2020 : vec4<f32> = u_xlat7;
    let x_2022 : vec3<f32> = (vec3<f32>(x_2018, x_2018, x_2018) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
    let x_2023 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
    let x_2025 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_2025);
    let x_2027 : f32 = u_xlat75;
    let x_2028 : i32 = u_xlati74;
    let x_2030 : f32 = x_1994.x_AdditionalLightsAttenuation[x_2028].x;
    u_xlat75 = (x_2027 * x_2030);
    let x_2032 : f32 = u_xlat75;
    let x_2034 : f32 = u_xlat75;
    u_xlat75 = ((-(x_2032) * x_2034) + 1.0f);
    let x_2037 : f32 = u_xlat75;
    u_xlat75 = max(x_2037, 0.0f);
    let x_2039 : f32 = u_xlat75;
    let x_2040 : f32 = u_xlat75;
    u_xlat75 = (x_2039 * x_2040);
    let x_2042 : f32 = u_xlat75;
    let x_2043 : f32 = u_xlat76;
    u_xlat75 = (x_2042 * x_2043);
    let x_2045 : i32 = u_xlati74;
    let x_2047 : vec4<f32> = x_1994.x_AdditionalLightsSpotDir[x_2045];
    let x_2049 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_2047.x, x_2047.y, x_2047.z), vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
    let x_2052 : f32 = u_xlat76;
    let x_2053 : i32 = u_xlati74;
    let x_2055 : f32 = x_1994.x_AdditionalLightsAttenuation[x_2053].z;
    let x_2057 : i32 = u_xlati74;
    let x_2059 : f32 = x_1994.x_AdditionalLightsAttenuation[x_2057].w;
    u_xlat76 = ((x_2052 * x_2055) + x_2059);
    let x_2061 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2061, 0.0f, 1.0f);
    let x_2063 : f32 = u_xlat76;
    let x_2064 : f32 = u_xlat76;
    u_xlat76 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat75;
    let x_2067 : f32 = u_xlat76;
    u_xlat75 = (x_2066 * x_2067);
    let x_2071 : i32 = u_xlati74;
    let x_2073 : f32 = x_152.x_AdditionalShadowParams[x_2071].w;
    u_xlati76 = i32(x_2073);
    let x_2078 : i32 = u_xlati76;
    u_xlatb8.x = (x_2078 >= 0i);
    let x_2082 : bool = u_xlatb8.x;
    if (x_2082) {
      let x_2086 : i32 = u_xlati74;
      let x_2088 : f32 = x_152.x_AdditionalShadowParams[x_2086].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2088, x_2088, x_2088, x_2088))));
      let x_2094 : bool = u_xlatb8.x;
      if (x_2094) {
        let x_2097 : vec4<f32> = u_xlat7;
        let x_2100 : vec4<f32> = u_xlat7;
        let x_2103 : vec4<bool> = (abs(vec4<f32>(x_2097.z, x_2097.z, x_2097.y, x_2097.z)) >= abs(vec4<f32>(x_2100.x, x_2100.y, x_2100.x, x_2100.x)));
        u_xlatb8 = vec3<bool>(x_2103.x, x_2103.y, x_2103.z);
        let x_2106 : bool = u_xlatb8.y;
        let x_2108 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2106 & x_2108);
        let x_2112 : vec4<f32> = u_xlat7;
        let x_2115 : vec4<bool> = (-(vec4<f32>(x_2112.z, x_2112.y, x_2112.x, x_2112.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2115.x, x_2115.y, x_2115.z);
        let x_2119 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2119);
        let x_2124 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2124);
        let x_2128 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2128);
        let x_2132 : bool = u_xlatb8.z;
        if (x_2132) {
          let x_2137 : f32 = u_xlat31.z;
          x_2133 = x_2137;
        } else {
          let x_2140 : f32 = u_xlat9.x;
          x_2133 = x_2140;
        }
        let x_2141 : f32 = x_2133;
        u_xlat54.x = x_2141;
        let x_2144 : bool = u_xlatb8.x;
        if (x_2144) {
          let x_2149 : f32 = u_xlat31.x;
          x_2145 = x_2149;
        } else {
          let x_2152 : f32 = u_xlat54.x;
          x_2145 = x_2152;
        }
        let x_2153 : f32 = x_2145;
        u_xlat8.x = x_2153;
        let x_2155 : i32 = u_xlati74;
        let x_2157 : f32 = x_152.x_AdditionalShadowParams[x_2155].w;
        u_xlat31.x = trunc(x_2157);
        let x_2161 : f32 = u_xlat8.x;
        let x_2163 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2161 + x_2163);
        let x_2167 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2167);
      }
      let x_2169 : i32 = u_xlati76;
      u_xlati76 = (x_2169 << bitcast<u32>(2i));
      let x_2171 : vec3<f32> = vs_TEXCOORD1;
      let x_2174 : i32 = u_xlati76;
      let x_2177 : i32 = u_xlati76;
      let x_2181 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2174 + 1i) / 4i)][((x_2177 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2171.y, x_2171.y, x_2171.y, x_2171.y) * x_2181);
      let x_2183 : i32 = u_xlati76;
      let x_2185 : i32 = u_xlati76;
      let x_2188 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_2183 / 4i)][(x_2185 % 4i)];
      let x_2189 : vec3<f32> = vs_TEXCOORD1;
      let x_2192 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2188 * vec4<f32>(x_2189.x, x_2189.x, x_2189.x, x_2189.x)) + x_2192);
      let x_2194 : i32 = u_xlati76;
      let x_2197 : i32 = u_xlati76;
      let x_2201 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2194 + 2i) / 4i)][((x_2197 + 2i) % 4i)];
      let x_2202 : vec3<f32> = vs_TEXCOORD1;
      let x_2205 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2201 * vec4<f32>(x_2202.z, x_2202.z, x_2202.z, x_2202.z)) + x_2205);
      let x_2207 : vec4<f32> = u_xlat8;
      let x_2208 : i32 = u_xlati76;
      let x_2211 : i32 = u_xlati76;
      let x_2215 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2208 + 3i) / 4i)][((x_2211 + 3i) % 4i)];
      u_xlat8 = (x_2207 + x_2215);
      let x_2217 : vec4<f32> = u_xlat8;
      let x_2219 : vec4<f32> = u_xlat8;
      let x_2221 : vec3<f32> = (vec3<f32>(x_2217.x, x_2217.y, x_2217.z) / vec3<f32>(x_2219.w, x_2219.w, x_2219.w));
      let x_2222 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
      let x_2225 : i32 = u_xlati74;
      let x_2227 : f32 = x_152.x_AdditionalShadowParams[x_2225].y;
      u_xlatb76 = (0.0f < x_2227);
      let x_2229 : bool = u_xlatb76;
      if (x_2229) {
        let x_2232 : i32 = u_xlati74;
        let x_2234 : f32 = x_152.x_AdditionalShadowParams[x_2232].y;
        u_xlatb76 = (1.0f == x_2234);
        let x_2236 : bool = u_xlatb76;
        if (x_2236) {
          let x_2239 : vec4<f32> = u_xlat8;
          let x_2243 : vec4<f32> = x_152.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2239.x, x_2239.y, x_2239.x, x_2239.y) + x_2243);
          let x_2246 : vec4<f32> = u_xlat9;
          let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
          let x_2249 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
          let x_2257 : vec3<f32> = txVec30;
          let x_2259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2257.xy, x_2257.z);
          u_xlat10.x = x_2259;
          let x_2262 : vec4<f32> = u_xlat9;
          let x_2263 : vec2<f32> = vec2<f32>(x_2262.z, x_2262.w);
          let x_2265 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
          let x_2272 : vec3<f32> = txVec31;
          let x_2274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2272.xy, x_2272.z);
          u_xlat10.y = x_2274;
          let x_2276 : vec4<f32> = u_xlat8;
          let x_2280 : vec4<f32> = x_152.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2276.x, x_2276.y, x_2276.x, x_2276.y) + x_2280);
          let x_2283 : vec4<f32> = u_xlat9;
          let x_2284 : vec2<f32> = vec2<f32>(x_2283.x, x_2283.y);
          let x_2286 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2284.x, x_2284.y, x_2286);
          let x_2293 : vec3<f32> = txVec32;
          let x_2295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2293.xy, x_2293.z);
          u_xlat10.z = x_2295;
          let x_2298 : vec4<f32> = u_xlat9;
          let x_2299 : vec2<f32> = vec2<f32>(x_2298.z, x_2298.w);
          let x_2301 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2299.x, x_2299.y, x_2301);
          let x_2308 : vec3<f32> = txVec33;
          let x_2310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2308.xy, x_2308.z);
          u_xlat10.w = x_2310;
          let x_2312 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2312, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2316 : i32 = u_xlati74;
          let x_2318 : f32 = x_152.x_AdditionalShadowParams[x_2316].y;
          u_xlatb77 = (2.0f == x_2318);
          let x_2320 : bool = u_xlatb77;
          if (x_2320) {
            let x_2323 : vec4<f32> = u_xlat8;
            let x_2327 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2330 : vec2<f32> = ((vec2<f32>(x_2323.x, x_2323.y) * vec2<f32>(x_2327.z, x_2327.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2331 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
            let x_2333 : vec4<f32> = u_xlat9;
            let x_2335 : vec2<f32> = floor(vec2<f32>(x_2333.x, x_2333.y));
            let x_2336 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
            let x_2339 : vec4<f32> = u_xlat8;
            let x_2342 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2345 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2339.x, x_2339.y) * vec2<f32>(x_2342.z, x_2342.w)) + -(vec2<f32>(x_2345.x, x_2345.y)));
            let x_2349 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2349.x, x_2349.x, x_2349.y, x_2349.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2352 : vec4<f32> = u_xlat10;
            let x_2354 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2352.x, x_2352.x, x_2352.z, x_2352.z) * vec4<f32>(x_2354.x, x_2354.x, x_2354.z, x_2354.z));
            let x_2357 : vec4<f32> = u_xlat11;
            let x_2359 : vec2<f32> = (vec2<f32>(x_2357.y, x_2357.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2360 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2359.x, x_2360.y, x_2359.y, x_2360.w);
            let x_2362 : vec4<f32> = u_xlat11;
            let x_2365 : vec2<f32> = u_xlat55;
            let x_2367 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2365));
            let x_2368 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
            let x_2371 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2371) + vec2<f32>(1.0f, 1.0f));
            let x_2374 : vec2<f32> = u_xlat55;
            let x_2375 : vec2<f32> = min(x_2374, vec2<f32>(0.0f, 0.0f));
            let x_2376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
            let x_2378 : vec4<f32> = u_xlat12;
            let x_2381 : vec4<f32> = u_xlat12;
            let x_2384 : vec2<f32> = u_xlat57;
            let x_2385 : vec2<f32> = ((-(vec2<f32>(x_2378.x, x_2378.y)) * vec2<f32>(x_2381.x, x_2381.y)) + x_2384);
            let x_2386 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
            let x_2388 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2388, vec2<f32>(0.0f, 0.0f));
            let x_2390 : vec2<f32> = u_xlat55;
            let x_2392 : vec2<f32> = u_xlat55;
            let x_2394 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2390) * x_2392) + vec2<f32>(x_2394.y, x_2394.w));
            let x_2397 : vec4<f32> = u_xlat12;
            let x_2399 : vec2<f32> = (vec2<f32>(x_2397.x, x_2397.y) + vec2<f32>(1.0f, 1.0f));
            let x_2400 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2399.x, x_2399.y, x_2400.z, x_2400.w);
            let x_2402 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2402 + vec2<f32>(1.0f, 1.0f));
            let x_2404 : vec4<f32> = u_xlat11;
            let x_2406 : vec2<f32> = (vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2407 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2409 : vec2<f32> = u_xlat57;
            let x_2410 : vec2<f32> = (x_2409 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2411 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2410.x, x_2410.y, x_2411.z, x_2411.w);
            let x_2413 : vec4<f32> = u_xlat12;
            let x_2415 : vec2<f32> = (vec2<f32>(x_2413.x, x_2413.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2416 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
            let x_2418 : vec2<f32> = u_xlat55;
            let x_2419 : vec2<f32> = (x_2418 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2420 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2422.y, x_2422.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2426 : f32 = u_xlat12.x;
            u_xlat13.z = x_2426;
            let x_2429 : f32 = u_xlat55.x;
            u_xlat13.w = x_2429;
            let x_2432 : f32 = u_xlat14.x;
            u_xlat11.z = x_2432;
            let x_2435 : f32 = u_xlat10.x;
            u_xlat11.w = x_2435;
            let x_2437 : vec4<f32> = u_xlat11;
            let x_2439 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2437.z, x_2437.w, x_2437.x, x_2437.z) + vec4<f32>(x_2439.z, x_2439.w, x_2439.x, x_2439.z));
            let x_2443 : f32 = u_xlat13.y;
            u_xlat12.z = x_2443;
            let x_2446 : f32 = u_xlat55.y;
            u_xlat12.w = x_2446;
            let x_2449 : f32 = u_xlat11.y;
            u_xlat14.z = x_2449;
            let x_2452 : f32 = u_xlat10.z;
            u_xlat14.w = x_2452;
            let x_2454 : vec4<f32> = u_xlat12;
            let x_2456 : vec4<f32> = u_xlat14;
            let x_2458 : vec3<f32> = (vec3<f32>(x_2454.z, x_2454.y, x_2454.w) + vec3<f32>(x_2456.z, x_2456.y, x_2456.w));
            let x_2459 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat11;
            let x_2463 : vec4<f32> = u_xlat15;
            let x_2465 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.z, x_2461.w) / vec3<f32>(x_2463.z, x_2463.w, x_2463.y));
            let x_2466 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
            let x_2468 : vec4<f32> = u_xlat11;
            let x_2470 : vec3<f32> = (vec3<f32>(x_2468.x, x_2468.y, x_2468.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2471 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
            let x_2473 : vec4<f32> = u_xlat14;
            let x_2475 : vec4<f32> = u_xlat10;
            let x_2477 : vec3<f32> = (vec3<f32>(x_2473.z, x_2473.y, x_2473.w) / vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
            let x_2478 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
            let x_2480 : vec4<f32> = u_xlat12;
            let x_2482 : vec3<f32> = (vec3<f32>(x_2480.x, x_2480.y, x_2480.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2483 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat11;
            let x_2488 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2490 : vec3<f32> = (vec3<f32>(x_2485.y, x_2485.x, x_2485.z) * vec3<f32>(x_2488.x, x_2488.x, x_2488.x));
            let x_2491 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
            let x_2493 : vec4<f32> = u_xlat12;
            let x_2496 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2493.x, x_2493.y, x_2493.z) * vec3<f32>(x_2496.y, x_2496.y, x_2496.y));
            let x_2499 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2502 : f32 = u_xlat12.x;
            u_xlat11.w = x_2502;
            let x_2504 : vec4<f32> = u_xlat9;
            let x_2507 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2510 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2504.x, x_2504.y, x_2504.x, x_2504.y) * vec4<f32>(x_2507.x, x_2507.y, x_2507.x, x_2507.y)) + vec4<f32>(x_2510.y, x_2510.w, x_2510.x, x_2510.w));
            let x_2513 : vec4<f32> = u_xlat9;
            let x_2516 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2519 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2513.x, x_2513.y) * vec2<f32>(x_2516.x, x_2516.y)) + vec2<f32>(x_2519.z, x_2519.w));
            let x_2523 : f32 = u_xlat11.y;
            u_xlat12.w = x_2523;
            let x_2525 : vec4<f32> = u_xlat12;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.y, x_2525.z);
            let x_2527 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2527.x, x_2526.x, x_2527.z, x_2526.y);
            let x_2529 : vec4<f32> = u_xlat9;
            let x_2532 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2535 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2529.x, x_2529.y, x_2529.x, x_2529.y) * vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y)) + vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2535.y));
            let x_2538 : vec4<f32> = u_xlat9;
            let x_2541 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2544 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2538.x, x_2538.y, x_2538.x, x_2538.y) * vec4<f32>(x_2541.x, x_2541.y, x_2541.x, x_2541.y)) + vec4<f32>(x_2544.w, x_2544.y, x_2544.w, x_2544.z));
            let x_2547 : vec4<f32> = u_xlat9;
            let x_2550 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2553 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2547.x, x_2547.y, x_2547.x, x_2547.y) * vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y)) + vec4<f32>(x_2553.x, x_2553.w, x_2553.z, x_2553.w));
            let x_2556 : vec4<f32> = u_xlat10;
            let x_2558 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.x, x_2556.y) * vec4<f32>(x_2558.z, x_2558.w, x_2558.y, x_2558.z));
            let x_2561 : vec4<f32> = u_xlat10;
            let x_2563 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2561.y, x_2561.y, x_2561.z, x_2561.z) * x_2563);
            let x_2567 : f32 = u_xlat10.z;
            let x_2569 : f32 = u_xlat15.y;
            u_xlat77 = (x_2567 * x_2569);
            let x_2572 : vec4<f32> = u_xlat13;
            let x_2573 : vec2<f32> = vec2<f32>(x_2572.x, x_2572.y);
            let x_2575 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2573.x, x_2573.y, x_2575);
            let x_2582 : vec3<f32> = txVec34;
            let x_2584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2582.xy, x_2582.z);
            u_xlat9.x = x_2584;
            let x_2587 : vec4<f32> = u_xlat13;
            let x_2588 : vec2<f32> = vec2<f32>(x_2587.z, x_2587.w);
            let x_2590 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2588.x, x_2588.y, x_2590);
            let x_2598 : vec3<f32> = txVec35;
            let x_2600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2598.xy, x_2598.z);
            u_xlat32 = x_2600;
            let x_2601 : f32 = u_xlat32;
            let x_2603 : f32 = u_xlat16.y;
            u_xlat32 = (x_2601 * x_2603);
            let x_2606 : f32 = u_xlat16.x;
            let x_2608 : f32 = u_xlat9.x;
            let x_2610 : f32 = u_xlat32;
            u_xlat9.x = ((x_2606 * x_2608) + x_2610);
            let x_2614 : vec2<f32> = u_xlat55;
            let x_2616 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec36;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat32 = x_2625;
            let x_2627 : f32 = u_xlat16.z;
            let x_2628 : f32 = u_xlat32;
            let x_2631 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2627 * x_2628) + x_2631);
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.x, x_2635.y);
            let x_2638 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec37;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat32 = x_2647;
            let x_2649 : f32 = u_xlat16.w;
            let x_2650 : f32 = u_xlat32;
            let x_2653 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2649 * x_2650) + x_2653);
            let x_2657 : vec4<f32> = u_xlat14;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.x, x_2657.y);
            let x_2660 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec38;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat32 = x_2669;
            let x_2671 : f32 = u_xlat17.x;
            let x_2672 : f32 = u_xlat32;
            let x_2675 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2671 * x_2672) + x_2675);
            let x_2679 : vec4<f32> = u_xlat14;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec39;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat32 = x_2691;
            let x_2693 : f32 = u_xlat17.y;
            let x_2694 : f32 = u_xlat32;
            let x_2697 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2693 * x_2694) + x_2697);
            let x_2701 : vec4<f32> = u_xlat12;
            let x_2702 : vec2<f32> = vec2<f32>(x_2701.z, x_2701.w);
            let x_2704 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec40;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat32 = x_2713;
            let x_2715 : f32 = u_xlat17.z;
            let x_2716 : f32 = u_xlat32;
            let x_2719 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2715 * x_2716) + x_2719);
            let x_2723 : vec4<f32> = u_xlat11;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.x, x_2723.y);
            let x_2726 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
            let x_2733 : vec3<f32> = txVec41;
            let x_2735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2733.xy, x_2733.z);
            u_xlat32 = x_2735;
            let x_2737 : f32 = u_xlat17.w;
            let x_2738 : f32 = u_xlat32;
            let x_2741 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2737 * x_2738) + x_2741);
            let x_2745 : vec4<f32> = u_xlat11;
            let x_2746 : vec2<f32> = vec2<f32>(x_2745.z, x_2745.w);
            let x_2748 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2755 : vec3<f32> = txVec42;
            let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
            u_xlat32 = x_2757;
            let x_2758 : f32 = u_xlat77;
            let x_2759 : f32 = u_xlat32;
            let x_2762 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2758 * x_2759) + x_2762);
          } else {
            let x_2765 : vec4<f32> = u_xlat8;
            let x_2768 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2771 : vec2<f32> = ((vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(x_2768.z, x_2768.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2772 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec4<f32> = u_xlat9;
            let x_2776 : vec2<f32> = floor(vec2<f32>(x_2774.x, x_2774.y));
            let x_2777 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2776.x, x_2776.y, x_2777.z, x_2777.w);
            let x_2779 : vec4<f32> = u_xlat8;
            let x_2782 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2782.z, x_2782.w)) + -(vec2<f32>(x_2785.x, x_2785.y)));
            let x_2789 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2789.x, x_2789.x, x_2789.y, x_2789.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2792 : vec4<f32> = u_xlat10;
            let x_2794 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2792.x, x_2792.x, x_2792.z, x_2792.z) * vec4<f32>(x_2794.x, x_2794.x, x_2794.z, x_2794.z));
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2799 : vec2<f32> = (vec2<f32>(x_2797.y, x_2797.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2800 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2800.x, x_2799.x, x_2800.z, x_2799.y);
            let x_2802 : vec4<f32> = u_xlat11;
            let x_2805 : vec2<f32> = u_xlat55;
            let x_2807 : vec2<f32> = ((vec2<f32>(x_2802.x, x_2802.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2805));
            let x_2808 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2807.x, x_2808.y, x_2807.y, x_2808.w);
            let x_2810 : vec2<f32> = u_xlat55;
            let x_2812 : vec2<f32> = (-(x_2810) + vec2<f32>(1.0f, 1.0f));
            let x_2813 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2815, vec2<f32>(0.0f, 0.0f));
            let x_2817 : vec2<f32> = u_xlat57;
            let x_2819 : vec2<f32> = u_xlat57;
            let x_2821 : vec4<f32> = u_xlat11;
            let x_2823 : vec2<f32> = ((-(x_2817) * x_2819) + vec2<f32>(x_2821.x, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2826 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2826, vec2<f32>(0.0f, 0.0f));
            let x_2829 : vec2<f32> = u_xlat57;
            let x_2831 : vec2<f32> = u_xlat57;
            let x_2833 : vec4<f32> = u_xlat10;
            let x_2835 : vec2<f32> = ((-(x_2829) * x_2831) + vec2<f32>(x_2833.y, x_2833.w));
            let x_2836 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2835.x, x_2836.y, x_2835.y);
            let x_2838 : vec4<f32> = u_xlat11;
            let x_2840 : vec2<f32> = (vec2<f32>(x_2838.x, x_2838.y) + vec2<f32>(2.0f, 2.0f));
            let x_2841 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2841.z, x_2841.w);
            let x_2843 : vec3<f32> = u_xlat33;
            let x_2845 : vec2<f32> = (vec2<f32>(x_2843.x, x_2843.z) + vec2<f32>(2.0f, 2.0f));
            let x_2846 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2846.x, x_2845.x, x_2846.z, x_2845.y);
            let x_2849 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2849 * 0.08163200318813323975f);
            let x_2852 : vec4<f32> = u_xlat10;
            let x_2854 : vec3<f32> = (vec3<f32>(x_2852.z, x_2852.x, x_2852.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2855 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat11;
            let x_2859 : vec2<f32> = (vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2859.x, x_2859.y, x_2860.z, x_2860.w);
            let x_2863 : f32 = u_xlat14.y;
            u_xlat13.x = x_2863;
            let x_2865 : vec2<f32> = u_xlat55;
            let x_2868 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2869 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2869.x, x_2868.x, x_2869.z, x_2868.y);
            let x_2871 : vec2<f32> = u_xlat55;
            let x_2874 : vec2<f32> = ((vec2<f32>(x_2871.x, x_2871.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2875 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2874.x, x_2875.y, x_2874.y, x_2875.w);
            let x_2878 : f32 = u_xlat10.x;
            u_xlat11.y = x_2878;
            let x_2881 : f32 = u_xlat12.y;
            u_xlat11.w = x_2881;
            let x_2883 : vec4<f32> = u_xlat11;
            let x_2884 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2883 + x_2884);
            let x_2886 : vec2<f32> = u_xlat55;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2886.y, x_2886.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2890 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2889.x, x_2890.z, x_2889.y);
            let x_2892 : vec2<f32> = u_xlat55;
            let x_2895 : vec2<f32> = ((vec2<f32>(x_2892.y, x_2892.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2896 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2896.w);
            let x_2899 : f32 = u_xlat10.y;
            u_xlat12.y = x_2899;
            let x_2901 : vec4<f32> = u_xlat12;
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2901 + x_2902);
            let x_2904 : vec4<f32> = u_xlat11;
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2904 / x_2905);
            let x_2907 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2907 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2909 : vec4<f32> = u_xlat12;
            let x_2910 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2909 / x_2910);
            let x_2912 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2912 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2914 : vec4<f32> = u_xlat11;
            let x_2917 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2914.w, x_2914.x, x_2914.y, x_2914.z) * vec4<f32>(x_2917.x, x_2917.x, x_2917.x, x_2917.x));
            let x_2920 : vec4<f32> = u_xlat12;
            let x_2923 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2920.x, x_2920.w, x_2920.y, x_2920.z) * vec4<f32>(x_2923.y, x_2923.y, x_2923.y, x_2923.y));
            let x_2926 : vec4<f32> = u_xlat11;
            let x_2927 : vec3<f32> = vec3<f32>(x_2926.y, x_2926.z, x_2926.w);
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2927.x, x_2928.y, x_2927.y, x_2927.z);
            let x_2931 : f32 = u_xlat12.x;
            u_xlat14.y = x_2931;
            let x_2933 : vec4<f32> = u_xlat9;
            let x_2936 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat9;
            let x_2945 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2948.w, x_2948.y));
            let x_2952 : f32 = u_xlat14.y;
            u_xlat11.y = x_2952;
            let x_2955 : f32 = u_xlat12.z;
            u_xlat14.y = x_2955;
            let x_2957 : vec4<f32> = u_xlat9;
            let x_2960 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) * vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y)) + vec4<f32>(x_2963.x, x_2963.y, x_2963.z, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat9;
            let x_2969 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat14;
            let x_2974 : vec2<f32> = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.w, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2978 : f32 = u_xlat14.y;
            u_xlat11.z = x_2978;
            let x_2980 : vec4<f32> = u_xlat9;
            let x_2983 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y) * vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y)) + vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.z));
            let x_2990 : f32 = u_xlat12.w;
            u_xlat14.y = x_2990;
            let x_2993 : vec4<f32> = u_xlat9;
            let x_2996 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) * vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y)) + vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_2999.y));
            let x_3003 : vec4<f32> = u_xlat9;
            let x_3006 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3003.x, x_3003.y) * vec2<f32>(x_3006.x, x_3006.y)) + vec2<f32>(x_3009.w, x_3009.y));
            let x_3013 : f32 = u_xlat14.y;
            u_xlat11.w = x_3013;
            let x_3016 : vec4<f32> = u_xlat9;
            let x_3019 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(x_3019.x, x_3019.y)) + vec2<f32>(x_3022.x, x_3022.w));
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3026 : vec3<f32> = vec3<f32>(x_3025.x, x_3025.z, x_3025.w);
            let x_3027 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3026.x, x_3027.y, x_3026.y, x_3026.z);
            let x_3029 : vec4<f32> = u_xlat9;
            let x_3032 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3035 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y) * vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y)) + vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3035.y));
            let x_3039 : vec4<f32> = u_xlat9;
            let x_3042 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.w, x_3045.y));
            let x_3049 : f32 = u_xlat11.x;
            u_xlat12.x = x_3049;
            let x_3051 : vec4<f32> = u_xlat9;
            let x_3054 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3057 : vec4<f32> = u_xlat12;
            let x_3059 : vec2<f32> = ((vec2<f32>(x_3051.x, x_3051.y) * vec2<f32>(x_3054.x, x_3054.y)) + vec2<f32>(x_3057.x, x_3057.y));
            let x_3060 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3059.x, x_3059.y, x_3060.z, x_3060.w);
            let x_3063 : vec4<f32> = u_xlat10;
            let x_3065 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3063.x, x_3063.x, x_3063.x, x_3063.x) * x_3065);
            let x_3068 : vec4<f32> = u_xlat10;
            let x_3070 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3068.y, x_3068.y, x_3068.y, x_3068.y) * x_3070);
            let x_3073 : vec4<f32> = u_xlat10;
            let x_3075 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3073.z, x_3073.z, x_3073.z, x_3073.z) * x_3075);
            let x_3077 : vec4<f32> = u_xlat10;
            let x_3079 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3077.w, x_3077.w, x_3077.w, x_3077.w) * x_3079);
            let x_3082 : vec4<f32> = u_xlat15;
            let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
            let x_3085 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec43;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat77 = x_3094;
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
            let x_3099 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec44;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat11.x = x_3108;
            let x_3111 : f32 = u_xlat11.x;
            let x_3113 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3111 * x_3113);
            let x_3117 : f32 = u_xlat20.x;
            let x_3118 : f32 = u_xlat77;
            let x_3121 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3117 * x_3118) + x_3121);
            let x_3124 : vec2<f32> = u_xlat55;
            let x_3126 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec45;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat55.x = x_3135;
            let x_3138 : f32 = u_xlat20.z;
            let x_3140 : f32 = u_xlat55.x;
            let x_3142 : f32 = u_xlat77;
            u_xlat77 = ((x_3138 * x_3140) + x_3142);
            let x_3145 : vec4<f32> = u_xlat18;
            let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
            let x_3148 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec46;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat55.x = x_3157;
            let x_3160 : f32 = u_xlat20.w;
            let x_3162 : f32 = u_xlat55.x;
            let x_3164 : f32 = u_xlat77;
            u_xlat77 = ((x_3160 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat16;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.x, x_3167.y);
            let x_3170 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec47;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat55.x = x_3179;
            let x_3182 : f32 = u_xlat21.x;
            let x_3184 : f32 = u_xlat55.x;
            let x_3186 : f32 = u_xlat77;
            u_xlat77 = ((x_3182 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat16;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.z, x_3189.w);
            let x_3192 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec48;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat55.x = x_3201;
            let x_3204 : f32 = u_xlat21.y;
            let x_3206 : f32 = u_xlat55.x;
            let x_3208 : f32 = u_xlat77;
            u_xlat77 = ((x_3204 * x_3206) + x_3208);
            let x_3211 : vec4<f32> = u_xlat17;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.x, x_3211.y);
            let x_3214 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec49;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat55.x = x_3223;
            let x_3226 : f32 = u_xlat21.z;
            let x_3228 : f32 = u_xlat55.x;
            let x_3230 : f32 = u_xlat77;
            u_xlat77 = ((x_3226 * x_3228) + x_3230);
            let x_3233 : vec4<f32> = u_xlat18;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.z, x_3233.w);
            let x_3236 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec50;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat55.x = x_3245;
            let x_3248 : f32 = u_xlat21.w;
            let x_3250 : f32 = u_xlat55.x;
            let x_3252 : f32 = u_xlat77;
            u_xlat77 = ((x_3248 * x_3250) + x_3252);
            let x_3255 : vec4<f32> = u_xlat19;
            let x_3256 : vec2<f32> = vec2<f32>(x_3255.x, x_3255.y);
            let x_3258 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3256.x, x_3256.y, x_3258);
            let x_3265 : vec3<f32> = txVec51;
            let x_3267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3265.xy, x_3265.z);
            u_xlat55.x = x_3267;
            let x_3270 : f32 = u_xlat22.x;
            let x_3272 : f32 = u_xlat55.x;
            let x_3274 : f32 = u_xlat77;
            u_xlat77 = ((x_3270 * x_3272) + x_3274);
            let x_3277 : vec4<f32> = u_xlat19;
            let x_3278 : vec2<f32> = vec2<f32>(x_3277.z, x_3277.w);
            let x_3280 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3287 : vec3<f32> = txVec52;
            let x_3289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3287.xy, x_3287.z);
            u_xlat55.x = x_3289;
            let x_3292 : f32 = u_xlat22.y;
            let x_3294 : f32 = u_xlat55.x;
            let x_3296 : f32 = u_xlat77;
            u_xlat77 = ((x_3292 * x_3294) + x_3296);
            let x_3299 : vec2<f32> = u_xlat34;
            let x_3301 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec53;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat55.x = x_3310;
            let x_3313 : f32 = u_xlat22.z;
            let x_3315 : f32 = u_xlat55.x;
            let x_3317 : f32 = u_xlat77;
            u_xlat77 = ((x_3313 * x_3315) + x_3317);
            let x_3320 : vec2<f32> = u_xlat63;
            let x_3322 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec54;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat55.x = x_3331;
            let x_3334 : f32 = u_xlat22.w;
            let x_3336 : f32 = u_xlat55.x;
            let x_3338 : f32 = u_xlat77;
            u_xlat77 = ((x_3334 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.x, x_3341.y);
            let x_3344 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec55;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat55.x = x_3353;
            let x_3356 : f32 = u_xlat10.x;
            let x_3358 : f32 = u_xlat55.x;
            let x_3360 : f32 = u_xlat77;
            u_xlat77 = ((x_3356 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat14;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.z, x_3363.w);
            let x_3366 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec56;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat55.x = x_3375;
            let x_3378 : f32 = u_xlat10.y;
            let x_3380 : f32 = u_xlat55.x;
            let x_3382 : f32 = u_xlat77;
            u_xlat77 = ((x_3378 * x_3380) + x_3382);
            let x_3385 : vec2<f32> = u_xlat58;
            let x_3387 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec57;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat55.x = x_3396;
            let x_3399 : f32 = u_xlat10.z;
            let x_3401 : f32 = u_xlat55.x;
            let x_3403 : f32 = u_xlat77;
            u_xlat77 = ((x_3399 * x_3401) + x_3403);
            let x_3406 : vec4<f32> = u_xlat9;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.x, x_3406.y);
            let x_3409 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec58;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat9.x = x_3418;
            let x_3421 : f32 = u_xlat10.w;
            let x_3423 : f32 = u_xlat9.x;
            let x_3425 : f32 = u_xlat77;
            u_xlat76 = ((x_3421 * x_3423) + x_3425);
          }
        }
      } else {
        let x_3429 : vec4<f32> = u_xlat8;
        let x_3430 : vec2<f32> = vec2<f32>(x_3429.x, x_3429.y);
        let x_3432 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
        let x_3439 : vec3<f32> = txVec59;
        let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
        u_xlat76 = x_3441;
      }
      let x_3442 : i32 = u_xlati74;
      let x_3444 : f32 = x_152.x_AdditionalShadowParams[x_3442].x;
      u_xlat8.x = (1.0f + -(x_3444));
      let x_3448 : f32 = u_xlat76;
      let x_3449 : i32 = u_xlati74;
      let x_3451 : f32 = x_152.x_AdditionalShadowParams[x_3449].x;
      let x_3454 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3448 * x_3451) + x_3454);
      let x_3457 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3457);
      let x_3462 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3462 >= 1.0f);
      let x_3464 : bool = u_xlatb31;
      let x_3466 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3464 | x_3466);
      let x_3470 : bool = u_xlatb8.x;
      let x_3471 : f32 = u_xlat76;
      u_xlat76 = select(x_3471, 1.0f, x_3470);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3474 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3474) + 1.0f);
    let x_3479 : f32 = u_xlat3.x;
    let x_3481 : f32 = u_xlat8.x;
    let x_3483 : f32 = u_xlat76;
    u_xlat76 = ((x_3479 * x_3481) + x_3483);
    let x_3486 : i32 = u_xlati74;
    u_xlati8 = (1i << bitcast<u32>((x_3486 & 31i)));
    let x_3490 : i32 = u_xlati8;
    let x_3493 : f32 = x_1697.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_3490) & bitcast<u32>(x_3493)));
    let x_3497 : i32 = u_xlati8;
    if ((x_3497 != 0i)) {
      let x_3501 : i32 = u_xlati74;
      let x_3503 : f32 = x_1697.x_AdditionalLightsLightTypes[x_3501].el;
      u_xlati8 = i32(x_3503);
      let x_3506 : i32 = u_xlati8;
      u_xlati31 = select(1i, 0i, (x_3506 != 0i));
      let x_3510 : i32 = u_xlati74;
      u_xlati54 = (x_3510 << bitcast<u32>(2i));
      let x_3512 : i32 = u_xlati31;
      if ((x_3512 != 0i)) {
        let x_3516 : vec3<f32> = vs_TEXCOORD1;
        let x_3518 : i32 = u_xlati54;
        let x_3521 : i32 = u_xlati54;
        let x_3525 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3518 + 1i) / 4i)][((x_3521 + 1i) % 4i)];
        let x_3527 : vec3<f32> = (vec3<f32>(x_3516.y, x_3516.y, x_3516.y) * vec3<f32>(x_3525.x, x_3525.y, x_3525.w));
        let x_3528 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3527.x, x_3527.y, x_3527.z, x_3528.w);
        let x_3530 : i32 = u_xlati54;
        let x_3532 : i32 = u_xlati54;
        let x_3535 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[(x_3530 / 4i)][(x_3532 % 4i)];
        let x_3537 : vec3<f32> = vs_TEXCOORD1;
        let x_3540 : vec4<f32> = u_xlat9;
        let x_3542 : vec3<f32> = ((vec3<f32>(x_3535.x, x_3535.y, x_3535.w) * vec3<f32>(x_3537.x, x_3537.x, x_3537.x)) + vec3<f32>(x_3540.x, x_3540.y, x_3540.z));
        let x_3543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3542.x, x_3542.y, x_3542.z, x_3543.w);
        let x_3545 : i32 = u_xlati54;
        let x_3548 : i32 = u_xlati54;
        let x_3552 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3545 + 2i) / 4i)][((x_3548 + 2i) % 4i)];
        let x_3554 : vec3<f32> = vs_TEXCOORD1;
        let x_3557 : vec4<f32> = u_xlat9;
        let x_3559 : vec3<f32> = ((vec3<f32>(x_3552.x, x_3552.y, x_3552.w) * vec3<f32>(x_3554.z, x_3554.z, x_3554.z)) + vec3<f32>(x_3557.x, x_3557.y, x_3557.z));
        let x_3560 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3559.x, x_3559.y, x_3559.z, x_3560.w);
        let x_3562 : vec4<f32> = u_xlat9;
        let x_3564 : i32 = u_xlati54;
        let x_3567 : i32 = u_xlati54;
        let x_3571 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3564 + 3i) / 4i)][((x_3567 + 3i) % 4i)];
        let x_3573 : vec3<f32> = (vec3<f32>(x_3562.x, x_3562.y, x_3562.z) + vec3<f32>(x_3571.x, x_3571.y, x_3571.w));
        let x_3574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3573.x, x_3573.y, x_3573.z, x_3574.w);
        let x_3576 : vec4<f32> = u_xlat9;
        let x_3578 : vec4<f32> = u_xlat9;
        let x_3580 : vec2<f32> = (vec2<f32>(x_3576.x, x_3576.y) / vec2<f32>(x_3578.z, x_3578.z));
        let x_3581 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3580.x, x_3581.y, x_3580.y);
        let x_3583 : vec3<f32> = u_xlat31;
        let x_3586 : vec2<f32> = ((vec2<f32>(x_3583.x, x_3583.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3587 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3586.x, x_3587.y, x_3586.y);
        let x_3589 : vec3<f32> = u_xlat31;
        let x_3593 : vec2<f32> = clamp(vec2<f32>(x_3589.x, x_3589.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3594 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3593.x, x_3594.y, x_3593.y);
        let x_3596 : i32 = u_xlati74;
        let x_3598 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3596];
        let x_3600 : vec3<f32> = u_xlat31;
        let x_3603 : i32 = u_xlati74;
        let x_3605 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3603];
        let x_3607 : vec2<f32> = ((vec2<f32>(x_3598.x, x_3598.y) * vec2<f32>(x_3600.x, x_3600.z)) + vec2<f32>(x_3605.z, x_3605.w));
        let x_3608 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3607.x, x_3608.y, x_3607.y);
      } else {
        let x_3611 : i32 = u_xlati8;
        u_xlatb8.x = (x_3611 == 1i);
        let x_3615 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_3615);
        let x_3617 : i32 = u_xlati8;
        if ((x_3617 != 0i)) {
          let x_3621 : vec3<f32> = vs_TEXCOORD1;
          let x_3623 : i32 = u_xlati54;
          let x_3626 : i32 = u_xlati54;
          let x_3630 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3623 + 1i) / 4i)][((x_3626 + 1i) % 4i)];
          let x_3632 : vec2<f32> = (vec2<f32>(x_3621.y, x_3621.y) * vec2<f32>(x_3630.x, x_3630.y));
          let x_3633 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3632.x, x_3632.y, x_3633.z, x_3633.w);
          let x_3635 : i32 = u_xlati54;
          let x_3637 : i32 = u_xlati54;
          let x_3640 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[(x_3635 / 4i)][(x_3637 % 4i)];
          let x_3642 : vec3<f32> = vs_TEXCOORD1;
          let x_3645 : vec4<f32> = u_xlat9;
          let x_3647 : vec2<f32> = ((vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(x_3642.x, x_3642.x)) + vec2<f32>(x_3645.x, x_3645.y));
          let x_3648 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3647.x, x_3647.y, x_3648.z, x_3648.w);
          let x_3650 : i32 = u_xlati54;
          let x_3653 : i32 = u_xlati54;
          let x_3657 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3650 + 2i) / 4i)][((x_3653 + 2i) % 4i)];
          let x_3659 : vec3<f32> = vs_TEXCOORD1;
          let x_3662 : vec4<f32> = u_xlat9;
          let x_3664 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3659.z, x_3659.z)) + vec2<f32>(x_3662.x, x_3662.y));
          let x_3665 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3664.x, x_3664.y, x_3665.z, x_3665.w);
          let x_3667 : vec4<f32> = u_xlat9;
          let x_3669 : i32 = u_xlati54;
          let x_3672 : i32 = u_xlati54;
          let x_3676 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3669 + 3i) / 4i)][((x_3672 + 3i) % 4i)];
          let x_3678 : vec2<f32> = (vec2<f32>(x_3667.x, x_3667.y) + vec2<f32>(x_3676.x, x_3676.y));
          let x_3679 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3678.x, x_3678.y, x_3679.z, x_3679.w);
          let x_3681 : vec4<f32> = u_xlat9;
          let x_3684 : vec2<f32> = ((vec2<f32>(x_3681.x, x_3681.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3685 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3684.x, x_3684.y, x_3685.z, x_3685.w);
          let x_3687 : vec4<f32> = u_xlat9;
          let x_3689 : vec2<f32> = fract(vec2<f32>(x_3687.x, x_3687.y));
          let x_3690 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3689.x, x_3689.y, x_3690.z, x_3690.w);
          let x_3692 : i32 = u_xlati74;
          let x_3694 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3692];
          let x_3696 : vec4<f32> = u_xlat9;
          let x_3699 : i32 = u_xlati74;
          let x_3701 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3699];
          let x_3703 : vec2<f32> = ((vec2<f32>(x_3694.x, x_3694.y) * vec2<f32>(x_3696.x, x_3696.y)) + vec2<f32>(x_3701.z, x_3701.w));
          let x_3704 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3703.x, x_3704.y, x_3703.y);
        } else {
          let x_3707 : vec3<f32> = vs_TEXCOORD1;
          let x_3709 : i32 = u_xlati54;
          let x_3712 : i32 = u_xlati54;
          let x_3716 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3709 + 1i) / 4i)][((x_3712 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3707.y, x_3707.y, x_3707.y, x_3707.y) * x_3716);
          let x_3718 : i32 = u_xlati54;
          let x_3720 : i32 = u_xlati54;
          let x_3723 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[(x_3718 / 4i)][(x_3720 % 4i)];
          let x_3724 : vec3<f32> = vs_TEXCOORD1;
          let x_3727 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3723 * vec4<f32>(x_3724.x, x_3724.x, x_3724.x, x_3724.x)) + x_3727);
          let x_3729 : i32 = u_xlati54;
          let x_3732 : i32 = u_xlati54;
          let x_3736 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3729 + 2i) / 4i)][((x_3732 + 2i) % 4i)];
          let x_3737 : vec3<f32> = vs_TEXCOORD1;
          let x_3740 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3736 * vec4<f32>(x_3737.z, x_3737.z, x_3737.z, x_3737.z)) + x_3740);
          let x_3742 : vec4<f32> = u_xlat9;
          let x_3743 : i32 = u_xlati54;
          let x_3746 : i32 = u_xlati54;
          let x_3750 : vec4<f32> = x_1697.x_AdditionalLightsWorldToLights[((x_3743 + 3i) / 4i)][((x_3746 + 3i) % 4i)];
          u_xlat9 = (x_3742 + x_3750);
          let x_3752 : vec4<f32> = u_xlat9;
          let x_3754 : vec4<f32> = u_xlat9;
          let x_3756 : vec3<f32> = (vec3<f32>(x_3752.x, x_3752.y, x_3752.z) / vec3<f32>(x_3754.w, x_3754.w, x_3754.w));
          let x_3757 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3756.x, x_3756.y, x_3756.z, x_3757.w);
          let x_3759 : vec4<f32> = u_xlat9;
          let x_3761 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_3759.x, x_3759.y, x_3759.z), vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
          let x_3766 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_3766);
          let x_3769 : vec4<f32> = u_xlat8;
          let x_3771 : vec4<f32> = u_xlat9;
          let x_3773 : vec3<f32> = (vec3<f32>(x_3769.x, x_3769.x, x_3769.x) * vec3<f32>(x_3771.x, x_3771.y, x_3771.z));
          let x_3774 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);
          let x_3776 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_3776.x, x_3776.y, x_3776.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3783 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_3783, 0.00000099999999747524f);
          let x_3788 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_3788);
          let x_3791 : vec4<f32> = u_xlat8;
          let x_3793 : vec4<f32> = u_xlat9;
          let x_3795 : vec3<f32> = (vec3<f32>(x_3791.x, x_3791.x, x_3791.x) * vec3<f32>(x_3793.z, x_3793.x, x_3793.y));
          let x_3796 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3796.w);
          let x_3799 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3799);
          let x_3803 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3803, 0.0f, 1.0f);
          let x_3807 : vec4<f32> = u_xlat10;
          let x_3809 : vec4<bool> = (vec4<f32>(x_3807.y, x_3807.z, x_3807.y, x_3807.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3809.x, x_3809.y);
          let x_3812 : bool = u_xlatb55.x;
          if (x_3812) {
            let x_3817 : f32 = u_xlat10.x;
            x_3813 = x_3817;
          } else {
            let x_3820 : f32 = u_xlat10.x;
            x_3813 = -(x_3820);
          }
          let x_3822 : f32 = x_3813;
          u_xlat55.x = x_3822;
          let x_3825 : bool = u_xlatb55.y;
          if (x_3825) {
            let x_3830 : f32 = u_xlat10.x;
            x_3826 = x_3830;
          } else {
            let x_3833 : f32 = u_xlat10.x;
            x_3826 = -(x_3833);
          }
          let x_3835 : f32 = x_3826;
          u_xlat55.y = x_3835;
          let x_3837 : vec4<f32> = u_xlat9;
          let x_3839 : vec4<f32> = u_xlat8;
          let x_3842 : vec2<f32> = u_xlat55;
          let x_3843 : vec2<f32> = ((vec2<f32>(x_3837.x, x_3837.y) * vec2<f32>(x_3839.x, x_3839.x)) + x_3842);
          let x_3844 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3843.x, x_3844.y, x_3843.y, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat8;
          let x_3849 : vec2<f32> = ((vec2<f32>(x_3846.x, x_3846.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3850 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3849.x, x_3850.y, x_3849.y, x_3850.w);
          let x_3852 : vec4<f32> = u_xlat8;
          let x_3856 : vec2<f32> = clamp(vec2<f32>(x_3852.x, x_3852.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3857 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3856.x, x_3857.y, x_3856.y, x_3857.w);
          let x_3859 : i32 = u_xlati74;
          let x_3861 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3859];
          let x_3863 : vec4<f32> = u_xlat8;
          let x_3866 : i32 = u_xlati74;
          let x_3868 : vec4<f32> = x_1697.x_AdditionalLightsCookieAtlasUVRects[x_3866];
          let x_3870 : vec2<f32> = ((vec2<f32>(x_3861.x, x_3861.y) * vec2<f32>(x_3863.x, x_3863.z)) + vec2<f32>(x_3868.z, x_3868.w));
          let x_3871 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3870.x, x_3871.y, x_3870.y);
        }
      }
      let x_3878 : vec3<f32> = u_xlat31;
      let x_3880 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3878.x, x_3878.z), 0.0f);
      u_xlat8 = x_3880;
      let x_3882 : bool = u_xlatb5.y;
      if (x_3882) {
        let x_3887 : f32 = u_xlat8.w;
        x_3883 = x_3887;
      } else {
        let x_3890 : f32 = u_xlat8.x;
        x_3883 = x_3890;
      }
      let x_3891 : f32 = x_3883;
      u_xlat77 = x_3891;
      let x_3893 : bool = u_xlatb5.x;
      if (x_3893) {
        let x_3897 : vec4<f32> = u_xlat8;
        x_3894 = vec3<f32>(x_3897.x, x_3897.y, x_3897.z);
      } else {
        let x_3900 : f32 = u_xlat77;
        x_3894 = vec3<f32>(x_3900, x_3900, x_3900);
      }
      let x_3902 : vec3<f32> = x_3894;
      let x_3903 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3902.x, x_3902.y, x_3902.z, x_3903.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3909 : vec4<f32> = u_xlat8;
    let x_3911 : i32 = u_xlati74;
    let x_3913 : vec4<f32> = x_1994.x_AdditionalLightsColor[x_3911];
    let x_3915 : vec3<f32> = (vec3<f32>(x_3909.x, x_3909.y, x_3909.z) * vec3<f32>(x_3913.x, x_3913.y, x_3913.z));
    let x_3916 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3915.x, x_3915.y, x_3915.z, x_3916.w);
    let x_3918 : f32 = u_xlat75;
    let x_3919 : f32 = u_xlat76;
    u_xlat74 = (x_3918 * x_3919);
    let x_3921 : f32 = u_xlat74;
    let x_3923 : vec4<f32> = u_xlat8;
    let x_3925 : vec3<f32> = (vec3<f32>(x_3921, x_3921, x_3921) * vec3<f32>(x_3923.x, x_3923.y, x_3923.z));
    let x_3926 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
    let x_3928 : vec3<f32> = u_xlat1;
    let x_3929 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_3928, vec3<f32>(x_3929.x, x_3929.y, x_3929.z));
    let x_3932 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3932, 0.0f, 1.0f);
    let x_3934 : f32 = u_xlat74;
    let x_3936 : vec4<f32> = u_xlat8;
    let x_3938 : vec3<f32> = (vec3<f32>(x_3934, x_3934, x_3934) * vec3<f32>(x_3936.x, x_3936.y, x_3936.z));
    let x_3939 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3938.x, x_3938.y, x_3938.z, x_3939.w);
    let x_3941 : vec3<f32> = u_xlat2;
    let x_3942 : f32 = u_xlat70;
    let x_3945 : vec4<f32> = u_xlat7;
    let x_3947 : vec3<f32> = ((x_3941 * vec3<f32>(x_3942, x_3942, x_3942)) + vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
    let x_3948 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3947.x, x_3947.y, x_3947.z, x_3948.w);
    let x_3950 : vec4<f32> = u_xlat7;
    let x_3952 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3950.x, x_3950.y, x_3950.z), vec3<f32>(x_3952.x, x_3952.y, x_3952.z));
    let x_3955 : f32 = u_xlat74;
    u_xlat74 = max(x_3955, 1.17549435e-38f);
    let x_3957 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3957);
    let x_3959 : f32 = u_xlat74;
    let x_3961 : vec4<f32> = u_xlat7;
    let x_3963 : vec3<f32> = (vec3<f32>(x_3959, x_3959, x_3959) * vec3<f32>(x_3961.x, x_3961.y, x_3961.z));
    let x_3964 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3963.x, x_3963.y, x_3963.z, x_3964.w);
    let x_3966 : vec3<f32> = u_xlat1;
    let x_3967 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_3966, vec3<f32>(x_3967.x, x_3967.y, x_3967.z));
    let x_3970 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3970, 0.0f, 1.0f);
    let x_3972 : f32 = u_xlat74;
    u_xlat74 = log2(x_3972);
    let x_3974 : f32 = u_xlat71;
    let x_3975 : f32 = u_xlat74;
    u_xlat74 = (x_3974 * x_3975);
    let x_3977 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3977);
    let x_3979 : f32 = u_xlat74;
    let x_3982 : vec4<f32> = x_41.x_SpecColor;
    let x_3984 : vec3<f32> = (vec3<f32>(x_3979, x_3979, x_3979) * vec3<f32>(x_3982.x, x_3982.y, x_3982.z));
    let x_3985 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
    let x_3987 : vec4<f32> = u_xlat7;
    let x_3989 : vec4<f32> = u_xlat8;
    let x_3991 : vec3<f32> = (vec3<f32>(x_3987.x, x_3987.y, x_3987.z) * vec3<f32>(x_3989.x, x_3989.y, x_3989.z));
    let x_3992 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3991.x, x_3991.y, x_3991.z, x_3992.w);
    let x_3994 : vec4<f32> = u_xlat9;
    let x_3996 : vec4<f32> = u_xlat0;
    let x_3999 : vec4<f32> = u_xlat7;
    let x_4001 : vec3<f32> = ((vec3<f32>(x_3994.x, x_3994.y, x_3994.z) * vec3<f32>(x_3996.y, x_3996.z, x_3996.w)) + vec3<f32>(x_3999.x, x_3999.y, x_3999.z));
    let x_4002 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4001.x, x_4001.y, x_4001.z, x_4002.w);
    let x_4004 : vec4<f32> = u_xlat6;
    let x_4006 : vec4<f32> = u_xlat7;
    let x_4008 : vec3<f32> = (vec3<f32>(x_4004.x, x_4004.y, x_4004.z) + vec3<f32>(x_4006.x, x_4006.y, x_4006.z));
    let x_4009 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4008.x, x_4008.y, x_4008.z, x_4009.w);

    continuing {
      let x_4011 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4011 + bitcast<u32>(1i));
    }
  }
  let x_4014 : vec4<f32> = u_xlat4;
  let x_4016 : vec4<f32> = u_xlat0;
  let x_4019 : vec3<f32> = u_xlat26;
  u_xlat23 = ((vec3<f32>(x_4014.x, x_4014.y, x_4014.z) * vec3<f32>(x_4016.y, x_4016.z, x_4016.w)) + x_4019);
  let x_4023 : vec4<f32> = u_xlat6;
  let x_4025 : vec3<f32> = u_xlat23;
  let x_4026 : vec3<f32> = (vec3<f32>(x_4023.x, x_4023.y, x_4023.z) + x_4025);
  let x_4027 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4026.x, x_4026.y, x_4026.z, x_4027.w);
  let x_4031 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_4031 == 1.0f);
  let x_4033 : bool = u_xlatb23;
  if (x_4033) {
    let x_4038 : f32 = u_xlat0.x;
    x_4034 = x_4038;
  } else {
    x_4034 = 1.0f;
  }
  let x_4040 : f32 = x_4034;
  SV_Target0.w = x_4040;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


