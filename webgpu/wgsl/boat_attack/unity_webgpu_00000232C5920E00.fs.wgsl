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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_153 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu27 : u32;

var<private> u_xlati27 : i32;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

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

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_1805 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2263 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

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

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_92 : f32;
  var x_105 : f32;
  var x_118 : f32;
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
  var x_1759 : f32;
  var x_1888 : f32;
  var x_1899 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2400 : f32;
  var x_2410 : f32;
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
  var x_3994 : f32;
  var x_4007 : f32;
  var x_4065 : f32;
  var x_4076 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_29.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_58 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_58 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_70 : vec3<f32> = (-(x_64) + x_69);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_79);
  let x_81 : f32 = u_xlat53;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81, x_81, x_81) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : bool = u_xlatb27;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb27;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb27;
  if (x_117) {
    let x_122 : f32 = u_xlat2.z;
    x_118 = x_122;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[2i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.z = x_127;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat27;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  let x_142 : vec3<f32> = (vec3<f32>(x_139.x, x_139.x, x_139.x) * x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec3<f32> = vs_TEXCOORD7;
  let x_156 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_145 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_161 : vec3<f32> = vs_TEXCOORD7;
  let x_163 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_168 : vec3<f32> = vs_TEXCOORD7;
  let x_171 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres2;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres3;
  let x_183 : vec3<f32> = (x_178 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = u_xlat27;
  let x_188 : vec3<f32> = u_xlat27;
  u_xlat7.x = dot(x_187, x_188);
  let x_191 : vec3<f32> = u_xlat4;
  let x_192 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_191, x_192);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_210 : vec4<f32> = u_xlat7;
  let x_212 : vec4<f32> = x_153.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_210 < x_212);
  let x_215 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_215);
  let x_220 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb4.x;
  u_xlat27.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb4.y;
  u_xlat27.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb4.z;
  u_xlat27.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec3<f32> = u_xlat27;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat27 = (x_245 + vec3<f32>(x_246.y, x_246.z, x_246.w));
  let x_249 : vec3<f32> = u_xlat27;
  let x_251 : vec3<f32> = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat27.x = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_262 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_262) + 4.0f);
  let x_269 : f32 = u_xlat27.x;
  u_xlatu27 = u32(x_269);
  let x_273 : u32 = u_xlatu27;
  u_xlati27 = (bitcast<i32>(x_273) << bitcast<u32>(2i));
  let x_276 : vec3<f32> = vs_TEXCOORD7;
  let x_278 : i32 = u_xlati27;
  let x_281 : i32 = u_xlati27;
  let x_285 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_278 + 1i) / 4i)][((x_281 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : i32 = u_xlati27;
  let x_290 : i32 = u_xlati27;
  let x_293 : vec4<f32> = x_153.x_MainLightWorldToShadow[(x_288 / 4i)][(x_290 % 4i)];
  let x_295 : vec3<f32> = vs_TEXCOORD7;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.x, x_295.x, x_295.x)) + x_298);
  let x_300 : i32 = u_xlati27;
  let x_303 : i32 = u_xlati27;
  let x_307 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_300 + 2i) / 4i)][((x_303 + 2i) % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD7;
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + x_312);
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : i32 = u_xlati27;
  let x_318 : i32 = u_xlati27;
  let x_322 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_315 + 3i) / 4i)][((x_318 + 3i) % 4i)];
  u_xlat27 = (x_314 + vec3<f32>(x_322.x, x_322.y, x_322.z));
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = x_329.unity_SHAr;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_332, x_333);
  let x_338 : vec4<f32> = x_329.unity_SHAg;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_329.unity_SHAb;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_344, x_345);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_348.y, x_348.z, x_348.z, x_348.x) * vec4<f32>(x_350.x, x_350.y, x_350.z, x_350.z));
  let x_355 : vec4<f32> = x_329.unity_SHBr;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_329.unity_SHBg;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_329.unity_SHBb;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_367, x_368);
  let x_373 : f32 = u_xlat2.y;
  let x_375 : f32 = u_xlat2.y;
  u_xlat80 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat80;
  u_xlat80 = ((x_378 * x_380) + -(x_382));
  let x_387 : vec4<f32> = x_329.unity_SHC;
  let x_389 : f32 = u_xlat80;
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389, x_389, x_389)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat4;
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_397 + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_401, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_404 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_404) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_410 : f32 = u_xlat80;
  u_xlat81 = (-(x_410) + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : f32 = u_xlat80;
  let x_417 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415, x_415, x_415));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.x, x_427.x) * vec3<f32>(x_429.x, x_429.y, x_429.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_438) + 1.0f);
  let x_443 : f32 = u_xlat1.x;
  let x_445 : f32 = u_xlat1.x;
  u_xlat80 = (x_443 * x_445);
  let x_447 : f32 = u_xlat80;
  u_xlat80 = max(x_447, 0.0078125f);
  let x_451 : f32 = u_xlat80;
  let x_452 : f32 = u_xlat80;
  u_xlat82 = (x_451 * x_452);
  let x_456 : f32 = u_xlat0.w;
  let x_457 : f32 = u_xlat81;
  u_xlat78 = (x_456 + x_457);
  let x_459 : f32 = u_xlat78;
  u_xlat78 = clamp(x_459, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat80;
  u_xlat81 = ((x_461 * 4.0f) + 2.0f);
  let x_467 : f32 = x_153.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_467);
  let x_469 : bool = u_xlatb83;
  if (x_469) {
    let x_473 : f32 = x_153.x_MainLightShadowParams.y;
    u_xlatb83 = (x_473 == 1.0f);
    let x_475 : bool = u_xlatb83;
    if (x_475) {
      let x_478 : vec3<f32> = u_xlat27;
      let x_481 : vec4<f32> = x_153.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_478.x, x_478.y, x_478.x, x_478.y) + x_481);
      let x_485 : vec4<f32> = u_xlat6;
      let x_486 : vec2<f32> = vec2<f32>(x_485.x, x_485.y);
      let x_488 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_486.x, x_486.y, x_488);
      let x_500 : vec3<f32> = txVec0;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat7.x = x_502;
      let x_505 : vec4<f32> = u_xlat6;
      let x_506 : vec2<f32> = vec2<f32>(x_505.z, x_505.w);
      let x_508 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec1;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat7.y = x_517;
      let x_519 : vec3<f32> = u_xlat27;
      let x_523 : vec4<f32> = x_153.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) + x_523);
      let x_526 : vec4<f32> = u_xlat6;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec2;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat7.z = x_538;
      let x_541 : vec4<f32> = u_xlat6;
      let x_542 : vec2<f32> = vec2<f32>(x_541.z, x_541.w);
      let x_544 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec3;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat7.w = x_553;
      let x_556 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_153.x_MainLightShadowParams.y;
      u_xlatb6 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb6;
      if (x_565) {
        let x_568 : vec3<f32> = u_xlat27;
        let x_572 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_577 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat6;
        let x_582 : vec2<f32> = floor(vec2<f32>(x_580.x, x_580.y));
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_587 : vec3<f32> = u_xlat27;
        let x_590 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + -(vec2<f32>(x_593.x, x_593.y)));
        let x_597 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_597.x, x_597.x, x_597.y, x_597.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_602 : vec4<f32> = u_xlat7;
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_602.x, x_602.x, x_602.z, x_602.z) * vec4<f32>(x_604.x, x_604.x, x_604.z, x_604.z));
        let x_607 : vec4<f32> = u_xlat8;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.y, x_607.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_612 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_611.x, x_612.y, x_611.y, x_612.w);
        let x_614 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = u_xlat58;
        let x_619 : vec2<f32> = ((vec2<f32>(x_614.x, x_614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_617));
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_623) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec2<f32> = u_xlat58;
        let x_630 : vec2<f32> = min(x_628, vec2<f32>(0.0f, 0.0f));
        let x_631 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat9;
        let x_636 : vec4<f32> = u_xlat9;
        let x_639 : vec2<f32> = u_xlat60;
        let x_640 : vec2<f32> = ((-(vec2<f32>(x_633.x, x_633.y)) * vec2<f32>(x_636.x, x_636.y)) + x_639);
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_643, vec2<f32>(0.0f, 0.0f));
        let x_645 : vec2<f32> = u_xlat58;
        let x_647 : vec2<f32> = u_xlat58;
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_645) * x_647) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat9;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_657 + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_665 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat60;
        let x_668 : vec2<f32> = (x_667 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat9;
        let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec2<f32> = u_xlat58;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_681.y, x_681.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : f32 = u_xlat9.x;
        u_xlat10.z = x_685;
        let x_688 : f32 = u_xlat58.x;
        u_xlat10.w = x_688;
        let x_691 : f32 = u_xlat11.x;
        u_xlat8.z = x_691;
        let x_694 : f32 = u_xlat7.x;
        u_xlat8.w = x_694;
        let x_697 : vec4<f32> = u_xlat8;
        let x_699 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_697.z, x_697.w, x_697.x, x_697.z) + vec4<f32>(x_699.z, x_699.w, x_699.x, x_699.z));
        let x_703 : f32 = u_xlat10.y;
        u_xlat9.z = x_703;
        let x_706 : f32 = u_xlat58.y;
        u_xlat9.w = x_706;
        let x_709 : f32 = u_xlat8.y;
        u_xlat11.z = x_709;
        let x_712 : f32 = u_xlat7.z;
        u_xlat11.w = x_712;
        let x_714 : vec4<f32> = u_xlat9;
        let x_716 : vec4<f32> = u_xlat11;
        let x_718 : vec3<f32> = (vec3<f32>(x_714.z, x_714.y, x_714.w) + vec3<f32>(x_716.z, x_716.y, x_716.w));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec4<f32> = u_xlat12;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.z, x_721.w) / vec3<f32>(x_723.z, x_723.w, x_723.y));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_734 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_735 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
        let x_737 : vec4<f32> = u_xlat11;
        let x_739 : vec4<f32> = u_xlat7;
        let x_741 : vec3<f32> = (vec3<f32>(x_737.z, x_737.y, x_737.w) / vec3<f32>(x_739.x, x_739.y, x_739.z));
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat9;
        let x_746 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_747 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_752 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.y, x_749.x, x_749.z) * vec3<f32>(x_752.x, x_752.x, x_752.x));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat9;
        let x_760 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_762 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_760.y, x_760.y, x_760.y));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_766 : f32 = u_xlat9.x;
        u_xlat8.w = x_766;
        let x_768 : vec4<f32> = u_xlat6;
        let x_771 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_774 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y) * vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y)) + vec4<f32>(x_774.y, x_774.w, x_774.x, x_774.w));
        let x_777 : vec4<f32> = u_xlat6;
        let x_780 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.x, x_780.y)) + vec2<f32>(x_783.z, x_783.w));
        let x_787 : f32 = u_xlat8.y;
        u_xlat9.w = x_787;
        let x_789 : vec4<f32> = u_xlat9;
        let x_790 : vec2<f32> = vec2<f32>(x_789.y, x_789.z);
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_791.x, x_790.x, x_791.z, x_790.y);
        let x_793 : vec4<f32> = u_xlat6;
        let x_796 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_793.x, x_793.y, x_793.x, x_793.y) * vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y)) + vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.y));
        let x_802 : vec4<f32> = u_xlat6;
        let x_805 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_808 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y) * vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) + vec4<f32>(x_808.w, x_808.y, x_808.w, x_808.z));
        let x_811 : vec4<f32> = u_xlat6;
        let x_814 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.x, x_817.w, x_817.z, x_817.w));
        let x_821 : vec4<f32> = u_xlat7;
        let x_823 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_821.x, x_821.x, x_821.x, x_821.y) * vec4<f32>(x_823.z, x_823.w, x_823.y, x_823.z));
        let x_827 : vec4<f32> = u_xlat7;
        let x_829 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_827.y, x_827.y, x_827.z, x_827.z) * x_829);
        let x_832 : f32 = u_xlat7.z;
        let x_834 : f32 = u_xlat12.y;
        u_xlat6.x = (x_832 * x_834);
        let x_838 : vec4<f32> = u_xlat10;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_849 : vec3<f32> = txVec4;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat32 = x_851;
        let x_853 : vec4<f32> = u_xlat10;
        let x_854 : vec2<f32> = vec2<f32>(x_853.z, x_853.w);
        let x_856 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_854.x, x_854.y, x_856);
        let x_863 : vec3<f32> = txVec5;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_863.xy, x_863.z);
        u_xlat7.x = x_865;
        let x_868 : f32 = u_xlat7.x;
        let x_870 : f32 = u_xlat13.y;
        u_xlat7.x = (x_868 * x_870);
        let x_874 : f32 = u_xlat13.x;
        let x_875 : f32 = u_xlat32;
        let x_878 : f32 = u_xlat7.x;
        u_xlat32 = ((x_874 * x_875) + x_878);
        let x_881 : vec2<f32> = u_xlat58;
        let x_883 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec6;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat58.x = x_892;
        let x_895 : f32 = u_xlat13.z;
        let x_897 : f32 = u_xlat58.x;
        let x_899 : f32 = u_xlat32;
        u_xlat32 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat9;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat58.x = x_914;
        let x_917 : f32 = u_xlat13.w;
        let x_919 : f32 = u_xlat58.x;
        let x_921 : f32 = u_xlat32;
        u_xlat32 = ((x_917 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat11;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec8;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat58.x = x_936;
        let x_939 : f32 = u_xlat14.x;
        let x_941 : f32 = u_xlat58.x;
        let x_943 : f32 = u_xlat32;
        u_xlat32 = ((x_939 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat11;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec9;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat58.x = x_958;
        let x_961 : f32 = u_xlat14.y;
        let x_963 : f32 = u_xlat58.x;
        let x_965 : f32 = u_xlat32;
        u_xlat32 = ((x_961 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat9;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec10;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat58.x = x_980;
        let x_983 : f32 = u_xlat14.z;
        let x_985 : f32 = u_xlat58.x;
        let x_987 : f32 = u_xlat32;
        u_xlat32 = ((x_983 * x_985) + x_987);
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec11;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
        u_xlat58.x = x_1002;
        let x_1005 : f32 = u_xlat14.w;
        let x_1007 : f32 = u_xlat58.x;
        let x_1009 : f32 = u_xlat32;
        u_xlat32 = ((x_1005 * x_1007) + x_1009);
        let x_1012 : vec4<f32> = u_xlat8;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.z, x_1012.w);
        let x_1015 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec12;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat58.x = x_1024;
        let x_1027 : f32 = u_xlat6.x;
        let x_1029 : f32 = u_xlat58.x;
        let x_1031 : f32 = u_xlat32;
        u_xlat83 = ((x_1027 * x_1029) + x_1031);
      } else {
        let x_1034 : vec3<f32> = u_xlat27;
        let x_1037 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.z, x_1037.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat6;
        let x_1045 : vec2<f32> = floor(vec2<f32>(x_1043.x, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec3<f32> = u_xlat27;
        let x_1051 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.z, x_1051.w)) + -(vec2<f32>(x_1054.x, x_1054.y)));
        let x_1058 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1058.x, x_1058.x, x_1058.y, x_1058.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1063 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1061.x, x_1061.x, x_1061.z, x_1061.z) * vec4<f32>(x_1063.x, x_1063.x, x_1063.z, x_1063.z));
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1070 : vec2<f32> = (vec2<f32>(x_1066.y, x_1066.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1070.x, x_1071.z, x_1070.y);
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1076 : vec2<f32> = u_xlat58;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1076));
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1079.w);
        let x_1081 : vec2<f32> = u_xlat58;
        let x_1083 : vec2<f32> = (-(x_1081) + vec2<f32>(1.0f, 1.0f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
        let x_1086 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1086, vec2<f32>(0.0f, 0.0f));
        let x_1088 : vec2<f32> = u_xlat60;
        let x_1090 : vec2<f32> = u_xlat60;
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1094 : vec2<f32> = ((-(x_1088) * x_1090) + vec2<f32>(x_1092.x, x_1092.y));
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1097, vec2<f32>(0.0f, 0.0f));
        let x_1100 : vec2<f32> = u_xlat60;
        let x_1102 : vec2<f32> = u_xlat60;
        let x_1104 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = ((-(x_1100) * x_1102) + vec2<f32>(x_1104.y, x_1104.w));
        let x_1107 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1106.x, x_1107.y, x_1106.y);
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1112 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) + vec2<f32>(2.0f, 2.0f));
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1115 : vec3<f32> = u_xlat33;
        let x_1117 : vec2<f32> = (vec2<f32>(x_1115.x, x_1115.z) + vec2<f32>(2.0f, 2.0f));
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1118.x, x_1117.x, x_1118.z, x_1117.y);
        let x_1121 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1121 * 0.08163200318813323975f);
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec3<f32> = (vec3<f32>(x_1125.z, x_1125.x, x_1125.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1129 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1134 : vec2<f32> = (vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1138 : f32 = u_xlat11.y;
        u_xlat10.x = x_1138;
        let x_1140 : vec2<f32> = u_xlat58;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1148 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec2<f32> = u_xlat58;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1155.y, x_1154.y, x_1155.w);
        let x_1158 : f32 = u_xlat7.x;
        u_xlat8.y = x_1158;
        let x_1161 : f32 = u_xlat9.y;
        u_xlat8.w = x_1161;
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1163 + x_1164);
        let x_1166 : vec2<f32> = u_xlat58;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1170.x, x_1169.x, x_1170.z, x_1169.y);
        let x_1172 : vec2<f32> = u_xlat58;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1176.w);
        let x_1179 : f32 = u_xlat7.y;
        u_xlat9.y = x_1179;
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1181 + x_1182);
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1184 / x_1185);
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1187 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1193 / x_1194);
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1196 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1198.w, x_1198.x, x_1198.y, x_1198.z) * vec4<f32>(x_1201.x, x_1201.x, x_1201.x, x_1201.x));
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1207 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1204.x, x_1204.w, x_1204.y, x_1204.z) * vec4<f32>(x_1207.y, x_1207.y, x_1207.y, x_1207.y));
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1211 : vec3<f32> = vec3<f32>(x_1210.y, x_1210.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1211.x, x_1212.y, x_1211.y, x_1211.z);
        let x_1215 : f32 = u_xlat9.x;
        u_xlat11.y = x_1215;
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1220 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y) * vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y)) + vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
        let x_1236 : f32 = u_xlat11.y;
        u_xlat8.y = x_1236;
        let x_1239 : f32 = u_xlat9.z;
        u_xlat11.y = x_1239;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1258 : vec2<f32> = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1262 : f32 = u_xlat11.y;
        u_xlat8.z = x_1262;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.z));
        let x_1275 : f32 = u_xlat9.w;
        u_xlat11.y = x_1275;
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1281 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y) * vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y)) + vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1284.y));
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1294.w, x_1294.y));
        let x_1297 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1296.x, x_1296.y, x_1297.z);
        let x_1300 : f32 = u_xlat11.y;
        u_xlat8.w = x_1300;
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec3<f32> = vec3<f32>(x_1312.x, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1313.x, x_1314.y, x_1313.y, x_1313.z);
        let x_1316 : vec4<f32> = u_xlat6;
        let x_1319 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y) * vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.y)) + vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1322.y));
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1332.w, x_1332.y));
        let x_1336 : f32 = u_xlat8.x;
        u_xlat9.x = x_1336;
        let x_1338 : vec4<f32> = u_xlat6;
        let x_1341 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat9;
        let x_1346 : vec2<f32> = ((vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1344.x, x_1344.y));
        let x_1347 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.x) * x_1352);
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.y, x_1355.y) * x_1357);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1360.z, x_1360.z, x_1360.z, x_1360.z) * x_1362);
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1366 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1364.w, x_1364.w, x_1364.w, x_1364.w) * x_1366);
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec13;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat8.x = x_1381;
        let x_1384 : vec4<f32> = u_xlat12;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.z, x_1384.w);
        let x_1387 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1395 : vec3<f32> = txVec14;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat86 = x_1397;
        let x_1398 : f32 = u_xlat86;
        let x_1400 : f32 = u_xlat17.y;
        u_xlat86 = (x_1398 * x_1400);
        let x_1403 : f32 = u_xlat17.x;
        let x_1405 : f32 = u_xlat8.x;
        let x_1407 : f32 = u_xlat86;
        u_xlat8.x = ((x_1403 * x_1405) + x_1407);
        let x_1411 : vec2<f32> = u_xlat58;
        let x_1413 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec15;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat58.x = x_1422;
        let x_1425 : f32 = u_xlat17.z;
        let x_1427 : f32 = u_xlat58.x;
        let x_1430 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1425 * x_1427) + x_1430);
        let x_1434 : vec4<f32> = u_xlat15;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1445 : vec3<f32> = txVec16;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat84 = x_1447;
        let x_1449 : f32 = u_xlat17.w;
        let x_1450 : f32 = u_xlat84;
        let x_1453 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1449 * x_1450) + x_1453);
        let x_1457 : vec4<f32> = u_xlat13;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec17;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat84 = x_1469;
        let x_1471 : f32 = u_xlat18.x;
        let x_1472 : f32 = u_xlat84;
        let x_1475 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1471 * x_1472) + x_1475);
        let x_1479 : vec4<f32> = u_xlat13;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.z, x_1479.w);
        let x_1482 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec18;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat84 = x_1491;
        let x_1493 : f32 = u_xlat18.y;
        let x_1494 : f32 = u_xlat84;
        let x_1497 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat14;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec19;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat84 = x_1513;
        let x_1515 : f32 = u_xlat18.z;
        let x_1516 : f32 = u_xlat84;
        let x_1519 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1515 * x_1516) + x_1519);
        let x_1523 : vec4<f32> = u_xlat15;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.z, x_1523.w);
        let x_1526 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec20;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat84 = x_1535;
        let x_1537 : f32 = u_xlat18.w;
        let x_1538 : f32 = u_xlat84;
        let x_1541 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat16;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec21;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat84 = x_1557;
        let x_1559 : f32 = u_xlat19.x;
        let x_1560 : f32 = u_xlat84;
        let x_1563 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec4<f32> = u_xlat16;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.z, x_1567.w);
        let x_1570 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec22;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat84 = x_1579;
        let x_1581 : f32 = u_xlat19.y;
        let x_1582 : f32 = u_xlat84;
        let x_1585 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1581 * x_1582) + x_1585);
        let x_1589 : vec3<f32> = u_xlat34;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec23;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat84 = x_1601;
        let x_1603 : f32 = u_xlat19.z;
        let x_1604 : f32 = u_xlat84;
        let x_1607 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1603 * x_1604) + x_1607);
        let x_1611 : vec2<f32> = u_xlat66;
        let x_1613 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec24;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat84 = x_1622;
        let x_1624 : f32 = u_xlat19.w;
        let x_1625 : f32 = u_xlat84;
        let x_1628 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1624 * x_1625) + x_1628);
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
        let x_1635 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec25;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat84 = x_1644;
        let x_1646 : f32 = u_xlat7.x;
        let x_1647 : f32 = u_xlat84;
        let x_1650 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1646 * x_1647) + x_1650);
        let x_1654 : vec4<f32> = u_xlat11;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.z, x_1654.w);
        let x_1657 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec26;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat84 = x_1666;
        let x_1668 : f32 = u_xlat7.y;
        let x_1669 : f32 = u_xlat84;
        let x_1672 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1668 * x_1669) + x_1672);
        let x_1676 : vec2<f32> = u_xlat61;
        let x_1678 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec27;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat84 = x_1687;
        let x_1689 : f32 = u_xlat7.z;
        let x_1690 : f32 = u_xlat84;
        let x_1693 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat6;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec28;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat6.x = x_1709;
        let x_1712 : f32 = u_xlat7.w;
        let x_1714 : f32 = u_xlat6.x;
        let x_1717 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1712 * x_1714) + x_1717);
      }
    }
  } else {
    let x_1721 : vec3<f32> = u_xlat27;
    let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
    let x_1724 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
    let x_1731 : vec3<f32> = txVec29;
    let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
    u_xlat83 = x_1733;
  }
  let x_1735 : f32 = x_153.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1735) + 1.0f);
  let x_1739 : f32 = u_xlat83;
  let x_1741 : f32 = x_153.x_MainLightShadowParams.x;
  let x_1744 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1739 * x_1741) + x_1744);
  let x_1749 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1749);
  let x_1753 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1753 >= 1.0f);
  let x_1755 : bool = u_xlatb79;
  let x_1756 : bool = u_xlatb53;
  u_xlatb53 = (x_1755 | x_1756);
  let x_1758 : bool = u_xlatb53;
  if (x_1758) {
    x_1759 = 1.0f;
  } else {
    let x_1764 : f32 = u_xlat27.x;
    x_1759 = x_1764;
  }
  let x_1765 : f32 = x_1759;
  u_xlat27.x = x_1765;
  let x_1767 : vec3<f32> = vs_TEXCOORD7;
  let x_1769 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1771 : vec3<f32> = (x_1767 + -(x_1769));
  let x_1772 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec4<f32> = u_xlat6;
  let x_1776 : vec4<f32> = u_xlat6;
  u_xlat53 = dot(vec3<f32>(x_1774.x, x_1774.y, x_1774.z), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1780 : f32 = u_xlat53;
  let x_1782 : f32 = x_153.x_MainLightShadowParams.z;
  let x_1785 : f32 = x_153.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1780 * x_1782) + x_1785);
  let x_1787 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1787, 0.0f, 1.0f);
  let x_1790 : f32 = u_xlat27.x;
  u_xlat83 = (-(x_1790) + 1.0f);
  let x_1793 : f32 = u_xlat79;
  let x_1794 : f32 = u_xlat83;
  let x_1797 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1793 * x_1794) + x_1797);
  let x_1807 : f32 = x_1805.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_1807 == -1.0f));
  let x_1809 : bool = u_xlatb79;
  if (x_1809) {
    let x_1812 : vec3<f32> = vs_TEXCOORD7;
    let x_1815 : vec4<f32> = x_1805.x_MainLightWorldToLight[1i];
    let x_1817 : vec2<f32> = (vec2<f32>(x_1812.y, x_1812.y) * vec2<f32>(x_1815.x, x_1815.y));
    let x_1818 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
    let x_1821 : vec4<f32> = x_1805.x_MainLightWorldToLight[0i];
    let x_1823 : vec3<f32> = vs_TEXCOORD7;
    let x_1826 : vec4<f32> = u_xlat6;
    let x_1828 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1823.x, x_1823.x)) + vec2<f32>(x_1826.x, x_1826.y));
    let x_1829 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
    let x_1832 : vec4<f32> = x_1805.x_MainLightWorldToLight[2i];
    let x_1834 : vec3<f32> = vs_TEXCOORD7;
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1839 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.y) * vec2<f32>(x_1834.z, x_1834.z)) + vec2<f32>(x_1837.x, x_1837.y));
    let x_1840 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
    let x_1842 : vec4<f32> = u_xlat6;
    let x_1845 : vec4<f32> = x_1805.x_MainLightWorldToLight[3i];
    let x_1847 : vec2<f32> = (vec2<f32>(x_1842.x, x_1842.y) + vec2<f32>(x_1845.x, x_1845.y));
    let x_1848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1853 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1854 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
    let x_1861 : vec4<f32> = u_xlat6;
    let x_1864 : f32 = x_29.x_GlobalMipBias.x;
    let x_1865 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1861.x, x_1861.y), x_1864);
    u_xlat6 = x_1865;
    let x_1870 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1872 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1874 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1876 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1877 : vec4<f32> = vec4<f32>(x_1870, x_1872, x_1874, x_1876);
    let x_1884 : vec4<bool> = (vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1877.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1884.x, x_1884.y);
    let x_1887 : bool = u_xlatb7.y;
    if (x_1887) {
      let x_1892 : f32 = u_xlat6.w;
      x_1888 = x_1892;
    } else {
      let x_1895 : f32 = u_xlat6.x;
      x_1888 = x_1895;
    }
    let x_1896 : f32 = x_1888;
    u_xlat79 = x_1896;
    let x_1898 : bool = u_xlatb7.x;
    if (x_1898) {
      let x_1902 : vec4<f32> = u_xlat6;
      x_1899 = vec3<f32>(x_1902.x, x_1902.y, x_1902.z);
    } else {
      let x_1905 : f32 = u_xlat79;
      x_1899 = vec3<f32>(x_1905, x_1905, x_1905);
    }
    let x_1907 : vec3<f32> = x_1899;
    let x_1908 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1914 : vec4<f32> = u_xlat6;
  let x_1917 : vec4<f32> = x_29.x_MainLightColor;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec3<f32> = u_xlat3;
  let x_1924 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(-(x_1922), vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat79;
  let x_1928 : f32 = u_xlat79;
  u_xlat79 = (x_1927 + x_1928);
  let x_1930 : vec4<f32> = u_xlat2;
  let x_1932 : f32 = u_xlat79;
  let x_1936 : vec3<f32> = u_xlat3;
  let x_1938 : vec3<f32> = ((vec3<f32>(x_1930.x, x_1930.y, x_1930.z) * -(vec3<f32>(x_1932, x_1932, x_1932))) + -(x_1936));
  let x_1939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1941 : vec4<f32> = u_xlat2;
  let x_1943 : vec3<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), x_1943);
  let x_1945 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1945, 0.0f, 1.0f);
  let x_1947 : f32 = u_xlat79;
  u_xlat79 = (-(x_1947) + 1.0f);
  let x_1950 : f32 = u_xlat79;
  let x_1951 : f32 = u_xlat79;
  u_xlat79 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat79;
  let x_1954 : f32 = u_xlat79;
  u_xlat79 = (x_1953 * x_1954);
  let x_1957 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1957) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1964 : f32 = u_xlat1.x;
  let x_1965 : f32 = u_xlat83;
  u_xlat1.x = (x_1964 * x_1965);
  let x_1969 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1969 * 6.0f);
  let x_1981 : vec4<f32> = u_xlat7;
  let x_1984 : f32 = u_xlat1.x;
  let x_1985 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1981.x, x_1981.y, x_1981.z), x_1984);
  u_xlat7 = x_1985;
  let x_1987 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1987 + -1.0f);
  let x_1991 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_1993 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1991 * x_1993) + 1.0f);
  let x_1998 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1998, 0.0f);
  let x_2002 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2002);
  let x_2006 : f32 = u_xlat1.x;
  let x_2008 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2006 * x_2008);
  let x_2012 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2012);
  let x_2016 : f32 = u_xlat1.x;
  let x_2018 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2016 * x_2018);
  let x_2021 : vec4<f32> = u_xlat7;
  let x_2023 : vec4<f32> = u_xlat1;
  let x_2025 : vec3<f32> = (vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * vec3<f32>(x_2023.x, x_2023.x, x_2023.x));
  let x_2026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : f32 = u_xlat80;
  let x_2030 : f32 = u_xlat80;
  let x_2034 : vec2<f32> = ((vec2<f32>(x_2028, x_2028) * vec2<f32>(x_2030, x_2030)) + vec2<f32>(-1.0f, 1.0f));
  let x_2035 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2034.x, x_2034.y, x_2035.z, x_2035.w);
  let x_2038 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_2038);
  let x_2041 : vec4<f32> = u_xlat0;
  let x_2044 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2041.x, x_2041.y, x_2041.z)) + vec3<f32>(x_2044, x_2044, x_2044));
  let x_2047 : f32 = u_xlat79;
  let x_2049 : vec3<f32> = u_xlat34;
  let x_2051 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2047, x_2047, x_2047) * x_2049) + vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : vec4<f32> = u_xlat1;
  let x_2056 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2054.x, x_2054.x, x_2054.x) * x_2056);
  let x_2058 : vec4<f32> = u_xlat7;
  let x_2060 : vec3<f32> = u_xlat34;
  let x_2061 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) * x_2060);
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec3<f32> = u_xlat4;
  let x_2065 : vec4<f32> = u_xlat5;
  let x_2068 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2064 * vec3<f32>(x_2065.x, x_2065.y, x_2065.z)) + vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
  let x_2072 : f32 = u_xlat27.x;
  let x_2074 : f32 = x_329.unity_LightData.z;
  u_xlat78 = (x_2072 * x_2074);
  let x_2076 : vec4<f32> = u_xlat2;
  let x_2079 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2076.x, x_2076.y, x_2076.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2084 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2084, 0.0f, 1.0f);
  let x_2087 : f32 = u_xlat78;
  let x_2089 : f32 = u_xlat1.x;
  u_xlat78 = (x_2087 * x_2089);
  let x_2091 : f32 = u_xlat78;
  let x_2093 : vec4<f32> = u_xlat6;
  let x_2095 : vec3<f32> = (vec3<f32>(x_2091, x_2091, x_2091) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2095.x, x_2095.y, x_2096.z, x_2095.z);
  let x_2098 : vec3<f32> = u_xlat3;
  let x_2100 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2102 : vec3<f32> = (x_2098 + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat6;
  let x_2107 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2105.x, x_2105.y, x_2105.z), vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : f32 = u_xlat78;
  u_xlat78 = max(x_2110, 1.17549435e-38f);
  let x_2113 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2113);
  let x_2115 : f32 = u_xlat78;
  let x_2117 : vec4<f32> = u_xlat6;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115, x_2115, x_2115) * vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : vec4<f32> = u_xlat2;
  let x_2124 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2122.x, x_2122.y, x_2122.z), vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2127, 0.0f, 1.0f);
  let x_2130 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2132 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2130.x, x_2130.y, x_2130.z), vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2135, 0.0f, 1.0f);
  let x_2137 : f32 = u_xlat78;
  let x_2138 : f32 = u_xlat78;
  u_xlat78 = (x_2137 * x_2138);
  let x_2140 : f32 = u_xlat78;
  let x_2142 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2140 * x_2142) + 1.00001001358032226562f);
  let x_2146 : f32 = u_xlat80;
  let x_2147 : f32 = u_xlat80;
  u_xlat80 = (x_2146 * x_2147);
  let x_2149 : f32 = u_xlat78;
  let x_2150 : f32 = u_xlat78;
  u_xlat78 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat80;
  u_xlat80 = max(x_2152, 0.10000000149011611938f);
  let x_2155 : f32 = u_xlat78;
  let x_2156 : f32 = u_xlat80;
  u_xlat78 = (x_2155 * x_2156);
  let x_2158 : f32 = u_xlat81;
  let x_2159 : f32 = u_xlat78;
  u_xlat78 = (x_2158 * x_2159);
  let x_2161 : f32 = u_xlat82;
  let x_2162 : f32 = u_xlat78;
  u_xlat78 = (x_2161 / x_2162);
  let x_2164 : vec4<f32> = u_xlat0;
  let x_2166 : f32 = u_xlat78;
  let x_2169 : vec4<f32> = u_xlat5;
  let x_2171 : vec3<f32> = ((vec3<f32>(x_2164.x, x_2164.y, x_2164.z) * vec3<f32>(x_2166, x_2166, x_2166)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2175 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2177 : f32 = x_329.unity_LightData.y;
  u_xlat78 = min(x_2175, x_2177);
  let x_2180 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2180));
  let x_2183 : f32 = u_xlat53;
  let x_2186 : f32 = x_153.x_AdditionalShadowFadeParams.x;
  let x_2189 : f32 = x_153.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_2183 * x_2186) + x_2189);
  let x_2191 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2191, 0.0f, 1.0f);
  let x_2194 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2196 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2198 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2200 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2201 : vec4<f32> = vec4<f32>(x_2194, x_2196, x_2198, x_2200);
  let x_2207 : vec4<bool> = (vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2201.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2207.x, x_2207.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2219 : u32 = u_xlatu_loop_1;
    let x_2220 : u32 = u_xlatu78;
    if ((x_2219 < x_2220)) {
    } else {
      break;
    }
    let x_2223 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2223 >> 2u);
    let x_2226 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2226 & 3u));
    let x_2229 : u32 = u_xlatu83;
    let x_2232 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_2229)];
    let x_2242 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2247 : vec4<u32> = indexable[x_2242];
    u_xlat83 = dot(x_2232, bitcast<vec4<f32>>(x_2247));
    let x_2251 : f32 = u_xlat83;
    u_xlati83 = i32(x_2251);
    let x_2253 : vec3<f32> = vs_TEXCOORD7;
    let x_2264 : i32 = u_xlati83;
    let x_2266 : vec4<f32> = x_2263.x_AdditionalLightsPosition[x_2264];
    let x_2269 : i32 = u_xlati83;
    let x_2271 : vec4<f32> = x_2263.x_AdditionalLightsPosition[x_2269];
    let x_2273 : vec3<f32> = ((-(x_2253) * vec3<f32>(x_2266.w, x_2266.w, x_2266.w)) + vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
    let x_2274 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
    let x_2276 : vec4<f32> = u_xlat9;
    let x_2278 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
    let x_2281 : f32 = u_xlat84;
    u_xlat84 = max(x_2281, 0.00006103515625f);
    let x_2285 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2285);
    let x_2287 : f32 = u_xlat59;
    let x_2289 : vec4<f32> = u_xlat9;
    let x_2291 : vec3<f32> = (vec3<f32>(x_2287, x_2287, x_2287) * vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
    let x_2295 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2295);
    let x_2297 : f32 = u_xlat84;
    let x_2298 : i32 = u_xlati83;
    let x_2300 : f32 = x_2263.x_AdditionalLightsAttenuation[x_2298].x;
    u_xlat84 = (x_2297 * x_2300);
    let x_2302 : f32 = u_xlat84;
    let x_2304 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2302) * x_2304) + 1.0f);
    let x_2307 : f32 = u_xlat84;
    u_xlat84 = max(x_2307, 0.0f);
    let x_2309 : f32 = u_xlat84;
    let x_2310 : f32 = u_xlat84;
    u_xlat84 = (x_2309 * x_2310);
    let x_2312 : f32 = u_xlat84;
    let x_2313 : f32 = u_xlat85;
    u_xlat84 = (x_2312 * x_2313);
    let x_2315 : i32 = u_xlati83;
    let x_2317 : vec4<f32> = x_2263.x_AdditionalLightsSpotDir[x_2315];
    let x_2319 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2317.x, x_2317.y, x_2317.z), vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
    let x_2322 : f32 = u_xlat85;
    let x_2323 : i32 = u_xlati83;
    let x_2325 : f32 = x_2263.x_AdditionalLightsAttenuation[x_2323].z;
    let x_2327 : i32 = u_xlati83;
    let x_2329 : f32 = x_2263.x_AdditionalLightsAttenuation[x_2327].w;
    u_xlat85 = ((x_2322 * x_2325) + x_2329);
    let x_2331 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2331, 0.0f, 1.0f);
    let x_2333 : f32 = u_xlat85;
    let x_2334 : f32 = u_xlat85;
    u_xlat85 = (x_2333 * x_2334);
    let x_2336 : f32 = u_xlat84;
    let x_2337 : f32 = u_xlat85;
    u_xlat84 = (x_2336 * x_2337);
    let x_2341 : i32 = u_xlati83;
    let x_2343 : f32 = x_153.x_AdditionalShadowParams[x_2341].w;
    u_xlati85 = i32(x_2343);
    let x_2346 : i32 = u_xlati85;
    u_xlatb87 = (x_2346 >= 0i);
    let x_2348 : bool = u_xlatb87;
    if (x_2348) {
      let x_2352 : i32 = u_xlati83;
      let x_2354 : f32 = x_153.x_AdditionalShadowParams[x_2352].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2354, x_2354, x_2354, x_2354))));
      let x_2358 : bool = u_xlatb87;
      if (x_2358) {
        let x_2362 : vec4<f32> = u_xlat10;
        let x_2365 : vec4<f32> = u_xlat10;
        let x_2368 : vec4<bool> = (abs(vec4<f32>(x_2362.z, x_2362.z, x_2362.y, x_2362.z)) >= abs(vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.x)));
        let x_2370 : vec3<bool> = vec3<bool>(x_2368.x, x_2368.y, x_2368.z);
        let x_2371 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
        let x_2374 : bool = u_xlatb11.y;
        let x_2376 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2374 & x_2376);
        let x_2378 : vec4<f32> = u_xlat10;
        let x_2381 : vec4<bool> = (-(vec4<f32>(x_2378.z, x_2378.y, x_2378.z, x_2378.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2382 : vec3<bool> = vec3<bool>(x_2381.x, x_2381.y, x_2381.w);
        let x_2383 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2382.x, x_2382.y, x_2383.z, x_2382.z);
        let x_2386 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2386);
        let x_2391 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2391);
        let x_2396 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2396);
        let x_2399 : bool = u_xlatb11.z;
        if (x_2399) {
          let x_2404 : f32 = u_xlat11.y;
          x_2400 = x_2404;
        } else {
          let x_2406 : f32 = u_xlat88;
          x_2400 = x_2406;
        }
        let x_2407 : f32 = x_2400;
        u_xlat88 = x_2407;
        let x_2409 : bool = u_xlatb87;
        if (x_2409) {
          let x_2414 : f32 = u_xlat11.x;
          x_2410 = x_2414;
        } else {
          let x_2416 : f32 = u_xlat88;
          x_2410 = x_2416;
        }
        let x_2417 : f32 = x_2410;
        u_xlat87 = x_2417;
        let x_2418 : i32 = u_xlati83;
        let x_2420 : f32 = x_153.x_AdditionalShadowParams[x_2418].w;
        u_xlat88 = trunc(x_2420);
        let x_2422 : f32 = u_xlat87;
        let x_2423 : f32 = u_xlat88;
        u_xlat87 = (x_2422 + x_2423);
        let x_2425 : f32 = u_xlat87;
        u_xlati85 = i32(x_2425);
      }
      let x_2427 : i32 = u_xlati85;
      u_xlati85 = (x_2427 << bitcast<u32>(2i));
      let x_2429 : vec3<f32> = vs_TEXCOORD7;
      let x_2432 : i32 = u_xlati85;
      let x_2435 : i32 = u_xlati85;
      let x_2439 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2432 + 1i) / 4i)][((x_2435 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2429.y, x_2429.y, x_2429.y, x_2429.y) * x_2439);
      let x_2441 : i32 = u_xlati85;
      let x_2443 : i32 = u_xlati85;
      let x_2446 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[(x_2441 / 4i)][(x_2443 % 4i)];
      let x_2447 : vec3<f32> = vs_TEXCOORD7;
      let x_2450 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2446 * vec4<f32>(x_2447.x, x_2447.x, x_2447.x, x_2447.x)) + x_2450);
      let x_2452 : i32 = u_xlati85;
      let x_2455 : i32 = u_xlati85;
      let x_2459 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2452 + 2i) / 4i)][((x_2455 + 2i) % 4i)];
      let x_2460 : vec3<f32> = vs_TEXCOORD7;
      let x_2463 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2459 * vec4<f32>(x_2460.z, x_2460.z, x_2460.z, x_2460.z)) + x_2463);
      let x_2465 : vec4<f32> = u_xlat11;
      let x_2466 : i32 = u_xlati85;
      let x_2469 : i32 = u_xlati85;
      let x_2473 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2466 + 3i) / 4i)][((x_2469 + 3i) % 4i)];
      u_xlat11 = (x_2465 + x_2473);
      let x_2475 : vec4<f32> = u_xlat11;
      let x_2477 : vec4<f32> = u_xlat11;
      let x_2479 : vec3<f32> = (vec3<f32>(x_2475.x, x_2475.y, x_2475.z) / vec3<f32>(x_2477.w, x_2477.w, x_2477.w));
      let x_2480 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
      let x_2483 : i32 = u_xlati83;
      let x_2485 : f32 = x_153.x_AdditionalShadowParams[x_2483].y;
      u_xlatb85 = (0.0f < x_2485);
      let x_2487 : bool = u_xlatb85;
      if (x_2487) {
        let x_2490 : i32 = u_xlati83;
        let x_2492 : f32 = x_153.x_AdditionalShadowParams[x_2490].y;
        u_xlatb85 = (1.0f == x_2492);
        let x_2494 : bool = u_xlatb85;
        if (x_2494) {
          let x_2497 : vec4<f32> = u_xlat11;
          let x_2501 : vec4<f32> = x_153.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y) + x_2501);
          let x_2504 : vec4<f32> = u_xlat12;
          let x_2505 : vec2<f32> = vec2<f32>(x_2504.x, x_2504.y);
          let x_2507 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2505.x, x_2505.y, x_2507);
          let x_2515 : vec3<f32> = txVec30;
          let x_2517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
          u_xlat13.x = x_2517;
          let x_2520 : vec4<f32> = u_xlat12;
          let x_2521 : vec2<f32> = vec2<f32>(x_2520.z, x_2520.w);
          let x_2523 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
          let x_2530 : vec3<f32> = txVec31;
          let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
          u_xlat13.y = x_2532;
          let x_2534 : vec4<f32> = u_xlat11;
          let x_2538 : vec4<f32> = x_153.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y) + x_2538);
          let x_2541 : vec4<f32> = u_xlat12;
          let x_2542 : vec2<f32> = vec2<f32>(x_2541.x, x_2541.y);
          let x_2544 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2542.x, x_2542.y, x_2544);
          let x_2551 : vec3<f32> = txVec32;
          let x_2553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2551.xy, x_2551.z);
          u_xlat13.z = x_2553;
          let x_2556 : vec4<f32> = u_xlat12;
          let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
          let x_2559 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
          let x_2566 : vec3<f32> = txVec33;
          let x_2568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
          u_xlat13.w = x_2568;
          let x_2570 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2570, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2573 : i32 = u_xlati83;
          let x_2575 : f32 = x_153.x_AdditionalShadowParams[x_2573].y;
          u_xlatb87 = (2.0f == x_2575);
          let x_2577 : bool = u_xlatb87;
          if (x_2577) {
            let x_2580 : vec4<f32> = u_xlat11;
            let x_2584 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2587 : vec2<f32> = ((vec2<f32>(x_2580.x, x_2580.y) * vec2<f32>(x_2584.z, x_2584.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2588 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat12;
            let x_2592 : vec2<f32> = floor(vec2<f32>(x_2590.x, x_2590.y));
            let x_2593 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
            let x_2596 : vec4<f32> = u_xlat11;
            let x_2599 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(x_2599.z, x_2599.w)) + -(vec2<f32>(x_2602.x, x_2602.y)));
            let x_2606 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2606.x, x_2606.x, x_2606.y, x_2606.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2609 : vec4<f32> = u_xlat13;
            let x_2611 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2609.x, x_2609.x, x_2609.z, x_2609.z) * vec4<f32>(x_2611.x, x_2611.x, x_2611.z, x_2611.z));
            let x_2614 : vec4<f32> = u_xlat14;
            let x_2616 : vec2<f32> = (vec2<f32>(x_2614.y, x_2614.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2617 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2616.x, x_2617.y, x_2616.y, x_2617.w);
            let x_2619 : vec4<f32> = u_xlat14;
            let x_2622 : vec2<f32> = u_xlat64;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2619.x, x_2619.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2622));
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2627) + vec2<f32>(1.0f, 1.0f));
            let x_2630 : vec2<f32> = u_xlat64;
            let x_2631 : vec2<f32> = min(x_2630, vec2<f32>(0.0f, 0.0f));
            let x_2632 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec4<f32> = u_xlat15;
            let x_2637 : vec4<f32> = u_xlat15;
            let x_2640 : vec2<f32> = u_xlat66;
            let x_2641 : vec2<f32> = ((-(vec2<f32>(x_2634.x, x_2634.y)) * vec2<f32>(x_2637.x, x_2637.y)) + x_2640);
            let x_2642 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2641.x, x_2641.y, x_2642.z, x_2642.w);
            let x_2644 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2644, vec2<f32>(0.0f, 0.0f));
            let x_2646 : vec2<f32> = u_xlat64;
            let x_2648 : vec2<f32> = u_xlat64;
            let x_2650 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2646) * x_2648) + vec2<f32>(x_2650.y, x_2650.w));
            let x_2653 : vec4<f32> = u_xlat15;
            let x_2655 : vec2<f32> = (vec2<f32>(x_2653.x, x_2653.y) + vec2<f32>(1.0f, 1.0f));
            let x_2656 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2658 + vec2<f32>(1.0f, 1.0f));
            let x_2660 : vec4<f32> = u_xlat14;
            let x_2662 : vec2<f32> = (vec2<f32>(x_2660.x, x_2660.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2663 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2662.x, x_2662.y, x_2663.z, x_2663.w);
            let x_2665 : vec2<f32> = u_xlat66;
            let x_2666 : vec2<f32> = (x_2665 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2667 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2666.x, x_2666.y, x_2667.z, x_2667.w);
            let x_2669 : vec4<f32> = u_xlat15;
            let x_2671 : vec2<f32> = (vec2<f32>(x_2669.x, x_2669.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2672 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec2<f32> = u_xlat64;
            let x_2675 : vec2<f32> = (x_2674 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2676 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2678.y, x_2678.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2682 : f32 = u_xlat15.x;
            u_xlat16.z = x_2682;
            let x_2685 : f32 = u_xlat64.x;
            u_xlat16.w = x_2685;
            let x_2688 : f32 = u_xlat17.x;
            u_xlat14.z = x_2688;
            let x_2691 : f32 = u_xlat13.x;
            u_xlat14.w = x_2691;
            let x_2693 : vec4<f32> = u_xlat14;
            let x_2695 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2693.z, x_2693.w, x_2693.x, x_2693.z) + vec4<f32>(x_2695.z, x_2695.w, x_2695.x, x_2695.z));
            let x_2699 : f32 = u_xlat16.y;
            u_xlat15.z = x_2699;
            let x_2702 : f32 = u_xlat64.y;
            u_xlat15.w = x_2702;
            let x_2705 : f32 = u_xlat14.y;
            u_xlat17.z = x_2705;
            let x_2708 : f32 = u_xlat13.z;
            u_xlat17.w = x_2708;
            let x_2710 : vec4<f32> = u_xlat15;
            let x_2712 : vec4<f32> = u_xlat17;
            let x_2714 : vec3<f32> = (vec3<f32>(x_2710.z, x_2710.y, x_2710.w) + vec3<f32>(x_2712.z, x_2712.y, x_2712.w));
            let x_2715 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
            let x_2717 : vec4<f32> = u_xlat14;
            let x_2719 : vec4<f32> = u_xlat18;
            let x_2721 : vec3<f32> = (vec3<f32>(x_2717.x, x_2717.z, x_2717.w) / vec3<f32>(x_2719.z, x_2719.w, x_2719.y));
            let x_2722 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2721.x, x_2721.y, x_2721.z, x_2722.w);
            let x_2724 : vec4<f32> = u_xlat14;
            let x_2726 : vec3<f32> = (vec3<f32>(x_2724.x, x_2724.y, x_2724.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
            let x_2729 : vec4<f32> = u_xlat17;
            let x_2731 : vec4<f32> = u_xlat13;
            let x_2733 : vec3<f32> = (vec3<f32>(x_2729.z, x_2729.y, x_2729.w) / vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
            let x_2734 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
            let x_2736 : vec4<f32> = u_xlat15;
            let x_2738 : vec3<f32> = (vec3<f32>(x_2736.x, x_2736.y, x_2736.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2739 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2744 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2746 : vec3<f32> = (vec3<f32>(x_2741.y, x_2741.x, x_2741.z) * vec3<f32>(x_2744.x, x_2744.x, x_2744.x));
            let x_2747 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
            let x_2749 : vec4<f32> = u_xlat15;
            let x_2752 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2754 : vec3<f32> = (vec3<f32>(x_2749.x, x_2749.y, x_2749.z) * vec3<f32>(x_2752.y, x_2752.y, x_2752.y));
            let x_2755 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2755.w);
            let x_2758 : f32 = u_xlat15.x;
            u_xlat14.w = x_2758;
            let x_2760 : vec4<f32> = u_xlat12;
            let x_2763 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2766 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y) * vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y)) + vec4<f32>(x_2766.y, x_2766.w, x_2766.x, x_2766.w));
            let x_2769 : vec4<f32> = u_xlat12;
            let x_2772 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2769.x, x_2769.y) * vec2<f32>(x_2772.x, x_2772.y)) + vec2<f32>(x_2775.z, x_2775.w));
            let x_2779 : f32 = u_xlat14.y;
            u_xlat15.w = x_2779;
            let x_2781 : vec4<f32> = u_xlat15;
            let x_2782 : vec2<f32> = vec2<f32>(x_2781.y, x_2781.z);
            let x_2783 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2783.x, x_2782.x, x_2783.z, x_2782.y);
            let x_2785 : vec4<f32> = u_xlat12;
            let x_2788 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y) * vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y)) + vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2791.y));
            let x_2794 : vec4<f32> = u_xlat12;
            let x_2797 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2800 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y) * vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y)) + vec4<f32>(x_2800.w, x_2800.y, x_2800.w, x_2800.z));
            let x_2803 : vec4<f32> = u_xlat12;
            let x_2806 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y) * vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y)) + vec4<f32>(x_2809.x, x_2809.w, x_2809.z, x_2809.w));
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2814 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2812.x, x_2812.x, x_2812.x, x_2812.y) * vec4<f32>(x_2814.z, x_2814.w, x_2814.y, x_2814.z));
            let x_2818 : vec4<f32> = u_xlat13;
            let x_2820 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2818.y, x_2818.y, x_2818.z, x_2818.z) * x_2820);
            let x_2823 : f32 = u_xlat13.z;
            let x_2825 : f32 = u_xlat18.y;
            u_xlat87 = (x_2823 * x_2825);
            let x_2828 : vec4<f32> = u_xlat16;
            let x_2829 : vec2<f32> = vec2<f32>(x_2828.x, x_2828.y);
            let x_2831 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
            let x_2838 : vec3<f32> = txVec34;
            let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
            u_xlat88 = x_2840;
            let x_2842 : vec4<f32> = u_xlat16;
            let x_2843 : vec2<f32> = vec2<f32>(x_2842.z, x_2842.w);
            let x_2845 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2843.x, x_2843.y, x_2845);
            let x_2853 : vec3<f32> = txVec35;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat89 = x_2855;
            let x_2856 : f32 = u_xlat89;
            let x_2858 : f32 = u_xlat19.y;
            u_xlat89 = (x_2856 * x_2858);
            let x_2861 : f32 = u_xlat19.x;
            let x_2862 : f32 = u_xlat88;
            let x_2864 : f32 = u_xlat89;
            u_xlat88 = ((x_2861 * x_2862) + x_2864);
            let x_2867 : vec2<f32> = u_xlat64;
            let x_2869 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec36;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat89 = x_2878;
            let x_2880 : f32 = u_xlat19.z;
            let x_2881 : f32 = u_xlat89;
            let x_2883 : f32 = u_xlat88;
            u_xlat88 = ((x_2880 * x_2881) + x_2883);
            let x_2886 : vec4<f32> = u_xlat15;
            let x_2887 : vec2<f32> = vec2<f32>(x_2886.x, x_2886.y);
            let x_2889 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
            let x_2896 : vec3<f32> = txVec37;
            let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
            u_xlat89 = x_2898;
            let x_2900 : f32 = u_xlat19.w;
            let x_2901 : f32 = u_xlat89;
            let x_2903 : f32 = u_xlat88;
            u_xlat88 = ((x_2900 * x_2901) + x_2903);
            let x_2906 : vec4<f32> = u_xlat17;
            let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
            let x_2909 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
            let x_2916 : vec3<f32> = txVec38;
            let x_2918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
            u_xlat89 = x_2918;
            let x_2920 : f32 = u_xlat20.x;
            let x_2921 : f32 = u_xlat89;
            let x_2923 : f32 = u_xlat88;
            u_xlat88 = ((x_2920 * x_2921) + x_2923);
            let x_2926 : vec4<f32> = u_xlat17;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.z, x_2926.w);
            let x_2929 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2936 : vec3<f32> = txVec39;
            let x_2938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
            u_xlat89 = x_2938;
            let x_2940 : f32 = u_xlat20.y;
            let x_2941 : f32 = u_xlat89;
            let x_2943 : f32 = u_xlat88;
            u_xlat88 = ((x_2940 * x_2941) + x_2943);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.z, x_2946.w);
            let x_2949 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec40;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat89 = x_2958;
            let x_2960 : f32 = u_xlat20.z;
            let x_2961 : f32 = u_xlat89;
            let x_2963 : f32 = u_xlat88;
            u_xlat88 = ((x_2960 * x_2961) + x_2963);
            let x_2966 : vec4<f32> = u_xlat14;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.x, x_2966.y);
            let x_2969 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec41;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat89 = x_2978;
            let x_2980 : f32 = u_xlat20.w;
            let x_2981 : f32 = u_xlat89;
            let x_2983 : f32 = u_xlat88;
            u_xlat88 = ((x_2980 * x_2981) + x_2983);
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2987 : vec2<f32> = vec2<f32>(x_2986.z, x_2986.w);
            let x_2989 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
            let x_2996 : vec3<f32> = txVec42;
            let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
            u_xlat89 = x_2998;
            let x_2999 : f32 = u_xlat87;
            let x_3000 : f32 = u_xlat89;
            let x_3002 : f32 = u_xlat88;
            u_xlat85 = ((x_2999 * x_3000) + x_3002);
          } else {
            let x_3005 : vec4<f32> = u_xlat11;
            let x_3008 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3011 : vec2<f32> = ((vec2<f32>(x_3005.x, x_3005.y) * vec2<f32>(x_3008.z, x_3008.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec4<f32> = u_xlat12;
            let x_3016 : vec2<f32> = floor(vec2<f32>(x_3014.x, x_3014.y));
            let x_3017 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat11;
            let x_3022 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3025 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(x_3022.z, x_3022.w)) + -(vec2<f32>(x_3025.x, x_3025.y)));
            let x_3029 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3029.x, x_3029.x, x_3029.y, x_3029.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3032 : vec4<f32> = u_xlat13;
            let x_3034 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3032.x, x_3032.x, x_3032.z, x_3032.z) * vec4<f32>(x_3034.x, x_3034.x, x_3034.z, x_3034.z));
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3039 : vec2<f32> = (vec2<f32>(x_3037.y, x_3037.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3040 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3040.x, x_3039.x, x_3040.z, x_3039.y);
            let x_3042 : vec4<f32> = u_xlat14;
            let x_3045 : vec2<f32> = u_xlat64;
            let x_3047 : vec2<f32> = ((vec2<f32>(x_3042.x, x_3042.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3045));
            let x_3048 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3047.x, x_3048.y, x_3047.y, x_3048.w);
            let x_3050 : vec2<f32> = u_xlat64;
            let x_3052 : vec2<f32> = (-(x_3050) + vec2<f32>(1.0f, 1.0f));
            let x_3053 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
            let x_3055 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3055, vec2<f32>(0.0f, 0.0f));
            let x_3057 : vec2<f32> = u_xlat66;
            let x_3059 : vec2<f32> = u_xlat66;
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3063 : vec2<f32> = ((-(x_3057) * x_3059) + vec2<f32>(x_3061.x, x_3061.y));
            let x_3064 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3063.x, x_3063.y, x_3064.z, x_3064.w);
            let x_3066 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3066, vec2<f32>(0.0f, 0.0f));
            let x_3069 : vec2<f32> = u_xlat66;
            let x_3071 : vec2<f32> = u_xlat66;
            let x_3073 : vec4<f32> = u_xlat13;
            let x_3075 : vec2<f32> = ((-(x_3069) * x_3071) + vec2<f32>(x_3073.y, x_3073.w));
            let x_3076 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3075.x, x_3076.y, x_3075.y);
            let x_3078 : vec4<f32> = u_xlat14;
            let x_3080 : vec2<f32> = (vec2<f32>(x_3078.x, x_3078.y) + vec2<f32>(2.0f, 2.0f));
            let x_3081 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3080.x, x_3080.y, x_3081.z, x_3081.w);
            let x_3083 : vec3<f32> = u_xlat39;
            let x_3085 : vec2<f32> = (vec2<f32>(x_3083.x, x_3083.z) + vec2<f32>(2.0f, 2.0f));
            let x_3086 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3086.x, x_3085.x, x_3086.z, x_3085.y);
            let x_3089 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3089 * 0.08163200318813323975f);
            let x_3092 : vec4<f32> = u_xlat13;
            let x_3094 : vec3<f32> = (vec3<f32>(x_3092.z, x_3092.x, x_3092.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3095 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat14;
            let x_3099 : vec2<f32> = (vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3100 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3099.x, x_3099.y, x_3100.z, x_3100.w);
            let x_3103 : f32 = u_xlat17.y;
            u_xlat16.x = x_3103;
            let x_3105 : vec2<f32> = u_xlat64;
            let x_3108 : vec2<f32> = ((vec2<f32>(x_3105.x, x_3105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3109 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3109.x, x_3108.x, x_3109.z, x_3108.y);
            let x_3111 : vec2<f32> = u_xlat64;
            let x_3114 : vec2<f32> = ((vec2<f32>(x_3111.x, x_3111.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3115 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3114.x, x_3115.y, x_3114.y, x_3115.w);
            let x_3118 : f32 = u_xlat13.x;
            u_xlat14.y = x_3118;
            let x_3121 : f32 = u_xlat15.y;
            u_xlat14.w = x_3121;
            let x_3123 : vec4<f32> = u_xlat14;
            let x_3124 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3123 + x_3124);
            let x_3126 : vec2<f32> = u_xlat64;
            let x_3129 : vec2<f32> = ((vec2<f32>(x_3126.y, x_3126.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3130 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3130.x, x_3129.x, x_3130.z, x_3129.y);
            let x_3132 : vec2<f32> = u_xlat64;
            let x_3135 : vec2<f32> = ((vec2<f32>(x_3132.y, x_3132.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3136 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3135.x, x_3136.y, x_3135.y, x_3136.w);
            let x_3139 : f32 = u_xlat13.y;
            u_xlat15.y = x_3139;
            let x_3141 : vec4<f32> = u_xlat15;
            let x_3142 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3141 + x_3142);
            let x_3144 : vec4<f32> = u_xlat14;
            let x_3145 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3144 / x_3145);
            let x_3147 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3147 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3149 : vec4<f32> = u_xlat15;
            let x_3150 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3149 / x_3150);
            let x_3152 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3152 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3154 : vec4<f32> = u_xlat14;
            let x_3157 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3154.w, x_3154.x, x_3154.y, x_3154.z) * vec4<f32>(x_3157.x, x_3157.x, x_3157.x, x_3157.x));
            let x_3160 : vec4<f32> = u_xlat15;
            let x_3163 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3160.x, x_3160.w, x_3160.y, x_3160.z) * vec4<f32>(x_3163.y, x_3163.y, x_3163.y, x_3163.y));
            let x_3166 : vec4<f32> = u_xlat14;
            let x_3167 : vec3<f32> = vec3<f32>(x_3166.y, x_3166.z, x_3166.w);
            let x_3168 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3167.x, x_3168.y, x_3167.y, x_3167.z);
            let x_3171 : f32 = u_xlat15.x;
            u_xlat17.y = x_3171;
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3176 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3179 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3173.x, x_3173.y, x_3173.x, x_3173.y) * vec4<f32>(x_3176.x, x_3176.y, x_3176.x, x_3176.y)) + vec4<f32>(x_3179.x, x_3179.y, x_3179.z, x_3179.y));
            let x_3182 : vec4<f32> = u_xlat12;
            let x_3185 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3188 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3182.x, x_3182.y) * vec2<f32>(x_3185.x, x_3185.y)) + vec2<f32>(x_3188.w, x_3188.y));
            let x_3192 : f32 = u_xlat17.y;
            u_xlat14.y = x_3192;
            let x_3195 : f32 = u_xlat15.z;
            u_xlat17.y = x_3195;
            let x_3197 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3203 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3197.x, x_3197.y, x_3197.x, x_3197.y) * vec4<f32>(x_3200.x, x_3200.y, x_3200.x, x_3200.y)) + vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3203.y));
            let x_3206 : vec4<f32> = u_xlat12;
            let x_3209 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3212 : vec4<f32> = u_xlat17;
            let x_3214 : vec2<f32> = ((vec2<f32>(x_3206.x, x_3206.y) * vec2<f32>(x_3209.x, x_3209.y)) + vec2<f32>(x_3212.w, x_3212.y));
            let x_3215 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3218 : f32 = u_xlat17.y;
            u_xlat14.z = x_3218;
            let x_3221 : vec4<f32> = u_xlat12;
            let x_3224 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3221.x, x_3221.y, x_3221.x, x_3221.y) * vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y)) + vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.z));
            let x_3231 : f32 = u_xlat15.w;
            u_xlat17.y = x_3231;
            let x_3234 : vec4<f32> = u_xlat12;
            let x_3237 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3240 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3234.x, x_3234.y, x_3234.x, x_3234.y) * vec4<f32>(x_3237.x, x_3237.y, x_3237.x, x_3237.y)) + vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3240.y));
            let x_3244 : vec4<f32> = u_xlat12;
            let x_3247 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3250 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3244.x, x_3244.y) * vec2<f32>(x_3247.x, x_3247.y)) + vec2<f32>(x_3250.w, x_3250.y));
            let x_3254 : f32 = u_xlat17.y;
            u_xlat14.w = x_3254;
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(x_3260.x, x_3260.y)) + vec2<f32>(x_3263.x, x_3263.w));
            let x_3266 : vec4<f32> = u_xlat17;
            let x_3267 : vec3<f32> = vec3<f32>(x_3266.x, x_3266.z, x_3266.w);
            let x_3268 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3267.x, x_3268.y, x_3267.y, x_3267.z);
            let x_3270 : vec4<f32> = u_xlat12;
            let x_3273 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3276 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3270.x, x_3270.y, x_3270.x, x_3270.y) * vec4<f32>(x_3273.x, x_3273.y, x_3273.x, x_3273.y)) + vec4<f32>(x_3276.x, x_3276.y, x_3276.z, x_3276.y));
            let x_3280 : vec4<f32> = u_xlat12;
            let x_3283 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3286 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3280.x, x_3280.y) * vec2<f32>(x_3283.x, x_3283.y)) + vec2<f32>(x_3286.w, x_3286.y));
            let x_3290 : f32 = u_xlat14.x;
            u_xlat15.x = x_3290;
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3295 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat15;
            let x_3300 : vec2<f32> = ((vec2<f32>(x_3292.x, x_3292.y) * vec2<f32>(x_3295.x, x_3295.y)) + vec2<f32>(x_3298.x, x_3298.y));
            let x_3301 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3300.x, x_3300.y, x_3301.z, x_3301.w);
            let x_3304 : vec4<f32> = u_xlat13;
            let x_3306 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3304.x, x_3304.x, x_3304.x, x_3304.x) * x_3306);
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3311 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3309.y, x_3309.y, x_3309.y, x_3309.y) * x_3311);
            let x_3314 : vec4<f32> = u_xlat13;
            let x_3316 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3314.z, x_3314.z, x_3314.z, x_3314.z) * x_3316);
            let x_3318 : vec4<f32> = u_xlat13;
            let x_3320 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3318.w, x_3318.w, x_3318.w, x_3318.w) * x_3320);
            let x_3323 : vec4<f32> = u_xlat18;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec43;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat87 = x_3335;
            let x_3337 : vec4<f32> = u_xlat18;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.z, x_3337.w);
            let x_3340 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec44;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat88 = x_3349;
            let x_3350 : f32 = u_xlat88;
            let x_3352 : f32 = u_xlat23.y;
            u_xlat88 = (x_3350 * x_3352);
            let x_3355 : f32 = u_xlat23.x;
            let x_3356 : f32 = u_xlat87;
            let x_3358 : f32 = u_xlat88;
            u_xlat87 = ((x_3355 * x_3356) + x_3358);
            let x_3361 : vec2<f32> = u_xlat64;
            let x_3363 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec45;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat88 = x_3372;
            let x_3374 : f32 = u_xlat23.z;
            let x_3375 : f32 = u_xlat88;
            let x_3377 : f32 = u_xlat87;
            u_xlat87 = ((x_3374 * x_3375) + x_3377);
            let x_3380 : vec4<f32> = u_xlat21;
            let x_3381 : vec2<f32> = vec2<f32>(x_3380.x, x_3380.y);
            let x_3383 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3381.x, x_3381.y, x_3383);
            let x_3390 : vec3<f32> = txVec46;
            let x_3392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3390.xy, x_3390.z);
            u_xlat88 = x_3392;
            let x_3394 : f32 = u_xlat23.w;
            let x_3395 : f32 = u_xlat88;
            let x_3397 : f32 = u_xlat87;
            u_xlat87 = ((x_3394 * x_3395) + x_3397);
            let x_3400 : vec4<f32> = u_xlat19;
            let x_3401 : vec2<f32> = vec2<f32>(x_3400.x, x_3400.y);
            let x_3403 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec47;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat88 = x_3412;
            let x_3414 : f32 = u_xlat24.x;
            let x_3415 : f32 = u_xlat88;
            let x_3417 : f32 = u_xlat87;
            u_xlat87 = ((x_3414 * x_3415) + x_3417);
            let x_3420 : vec4<f32> = u_xlat19;
            let x_3421 : vec2<f32> = vec2<f32>(x_3420.z, x_3420.w);
            let x_3423 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec48;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat88 = x_3432;
            let x_3434 : f32 = u_xlat24.y;
            let x_3435 : f32 = u_xlat88;
            let x_3437 : f32 = u_xlat87;
            u_xlat87 = ((x_3434 * x_3435) + x_3437);
            let x_3440 : vec4<f32> = u_xlat20;
            let x_3441 : vec2<f32> = vec2<f32>(x_3440.x, x_3440.y);
            let x_3443 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec49;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat88 = x_3452;
            let x_3454 : f32 = u_xlat24.z;
            let x_3455 : f32 = u_xlat88;
            let x_3457 : f32 = u_xlat87;
            u_xlat87 = ((x_3454 * x_3455) + x_3457);
            let x_3460 : vec4<f32> = u_xlat21;
            let x_3461 : vec2<f32> = vec2<f32>(x_3460.z, x_3460.w);
            let x_3463 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec50;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat88 = x_3472;
            let x_3474 : f32 = u_xlat24.w;
            let x_3475 : f32 = u_xlat88;
            let x_3477 : f32 = u_xlat87;
            u_xlat87 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec4<f32> = u_xlat22;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.x, x_3480.y);
            let x_3483 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3490 : vec3<f32> = txVec51;
            let x_3492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3490.xy, x_3490.z);
            u_xlat88 = x_3492;
            let x_3494 : f32 = u_xlat25.x;
            let x_3495 : f32 = u_xlat88;
            let x_3497 : f32 = u_xlat87;
            u_xlat87 = ((x_3494 * x_3495) + x_3497);
            let x_3500 : vec4<f32> = u_xlat22;
            let x_3501 : vec2<f32> = vec2<f32>(x_3500.z, x_3500.w);
            let x_3503 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3501.x, x_3501.y, x_3503);
            let x_3510 : vec3<f32> = txVec52;
            let x_3512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3510.xy, x_3510.z);
            u_xlat88 = x_3512;
            let x_3514 : f32 = u_xlat25.y;
            let x_3515 : f32 = u_xlat88;
            let x_3517 : f32 = u_xlat87;
            u_xlat87 = ((x_3514 * x_3515) + x_3517);
            let x_3520 : vec2<f32> = u_xlat40;
            let x_3522 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3520.x, x_3520.y, x_3522);
            let x_3529 : vec3<f32> = txVec53;
            let x_3531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3529.xy, x_3529.z);
            u_xlat88 = x_3531;
            let x_3533 : f32 = u_xlat25.z;
            let x_3534 : f32 = u_xlat88;
            let x_3536 : f32 = u_xlat87;
            u_xlat87 = ((x_3533 * x_3534) + x_3536);
            let x_3539 : vec2<f32> = u_xlat72;
            let x_3541 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3539.x, x_3539.y, x_3541);
            let x_3548 : vec3<f32> = txVec54;
            let x_3550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3548.xy, x_3548.z);
            u_xlat88 = x_3550;
            let x_3552 : f32 = u_xlat25.w;
            let x_3553 : f32 = u_xlat88;
            let x_3555 : f32 = u_xlat87;
            u_xlat87 = ((x_3552 * x_3553) + x_3555);
            let x_3558 : vec4<f32> = u_xlat17;
            let x_3559 : vec2<f32> = vec2<f32>(x_3558.x, x_3558.y);
            let x_3561 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec55;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat88 = x_3570;
            let x_3572 : f32 = u_xlat13.x;
            let x_3573 : f32 = u_xlat88;
            let x_3575 : f32 = u_xlat87;
            u_xlat87 = ((x_3572 * x_3573) + x_3575);
            let x_3578 : vec4<f32> = u_xlat17;
            let x_3579 : vec2<f32> = vec2<f32>(x_3578.z, x_3578.w);
            let x_3581 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3579.x, x_3579.y, x_3581);
            let x_3588 : vec3<f32> = txVec56;
            let x_3590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3588.xy, x_3588.z);
            u_xlat88 = x_3590;
            let x_3592 : f32 = u_xlat13.y;
            let x_3593 : f32 = u_xlat88;
            let x_3595 : f32 = u_xlat87;
            u_xlat87 = ((x_3592 * x_3593) + x_3595);
            let x_3598 : vec2<f32> = u_xlat67;
            let x_3600 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3598.x, x_3598.y, x_3600);
            let x_3607 : vec3<f32> = txVec57;
            let x_3609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3607.xy, x_3607.z);
            u_xlat88 = x_3609;
            let x_3611 : f32 = u_xlat13.z;
            let x_3612 : f32 = u_xlat88;
            let x_3614 : f32 = u_xlat87;
            u_xlat87 = ((x_3611 * x_3612) + x_3614);
            let x_3617 : vec4<f32> = u_xlat12;
            let x_3618 : vec2<f32> = vec2<f32>(x_3617.x, x_3617.y);
            let x_3620 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3618.x, x_3618.y, x_3620);
            let x_3627 : vec3<f32> = txVec58;
            let x_3629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3627.xy, x_3627.z);
            u_xlat88 = x_3629;
            let x_3631 : f32 = u_xlat13.w;
            let x_3632 : f32 = u_xlat88;
            let x_3634 : f32 = u_xlat87;
            u_xlat85 = ((x_3631 * x_3632) + x_3634);
          }
        }
      } else {
        let x_3638 : vec4<f32> = u_xlat11;
        let x_3639 : vec2<f32> = vec2<f32>(x_3638.x, x_3638.y);
        let x_3641 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3639.x, x_3639.y, x_3641);
        let x_3648 : vec3<f32> = txVec59;
        let x_3650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3648.xy, x_3648.z);
        u_xlat85 = x_3650;
      }
      let x_3651 : i32 = u_xlati83;
      let x_3653 : f32 = x_153.x_AdditionalShadowParams[x_3651].x;
      u_xlat87 = (1.0f + -(x_3653));
      let x_3656 : f32 = u_xlat85;
      let x_3657 : i32 = u_xlati83;
      let x_3659 : f32 = x_153.x_AdditionalShadowParams[x_3657].x;
      let x_3661 : f32 = u_xlat87;
      u_xlat85 = ((x_3656 * x_3659) + x_3661);
      let x_3664 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3664);
      let x_3668 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3668 >= 1.0f);
      let x_3670 : bool = u_xlatb87;
      let x_3671 : bool = u_xlatb88;
      u_xlatb87 = (x_3670 | x_3671);
      let x_3673 : bool = u_xlatb87;
      let x_3674 : f32 = u_xlat85;
      u_xlat85 = select(x_3674, 1.0f, x_3673);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3677 : f32 = u_xlat85;
    u_xlat87 = (-(x_3677) + 1.0f);
    let x_3680 : f32 = u_xlat53;
    let x_3681 : f32 = u_xlat87;
    let x_3683 : f32 = u_xlat85;
    u_xlat85 = ((x_3680 * x_3681) + x_3683);
    let x_3686 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3686 & 31i)));
    let x_3690 : i32 = u_xlati87;
    let x_3693 : f32 = x_1805.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3690) & bitcast<u32>(x_3693)));
    let x_3697 : i32 = u_xlati87;
    if ((x_3697 != 0i)) {
      let x_3701 : i32 = u_xlati83;
      let x_3703 : f32 = x_1805.x_AdditionalLightsLightTypes[x_3701].el;
      u_xlati87 = i32(x_3703);
      let x_3706 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3706 != 0i));
      let x_3710 : i32 = u_xlati83;
      u_xlati11 = (x_3710 << bitcast<u32>(2i));
      let x_3712 : i32 = u_xlati88;
      if ((x_3712 != 0i)) {
        let x_3717 : vec3<f32> = vs_TEXCOORD7;
        let x_3719 : i32 = u_xlati11;
        let x_3722 : i32 = u_xlati11;
        let x_3726 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3719 + 1i) / 4i)][((x_3722 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3717.y, x_3717.y, x_3717.y) * vec3<f32>(x_3726.x, x_3726.y, x_3726.w));
        let x_3729 : i32 = u_xlati11;
        let x_3731 : i32 = u_xlati11;
        let x_3734 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3729 / 4i)][(x_3731 % 4i)];
        let x_3736 : vec3<f32> = vs_TEXCOORD7;
        let x_3739 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3734.x, x_3734.y, x_3734.w) * vec3<f32>(x_3736.x, x_3736.x, x_3736.x)) + x_3739);
        let x_3741 : i32 = u_xlati11;
        let x_3744 : i32 = u_xlati11;
        let x_3748 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3741 + 2i) / 4i)][((x_3744 + 2i) % 4i)];
        let x_3750 : vec3<f32> = vs_TEXCOORD7;
        let x_3753 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3748.x, x_3748.y, x_3748.w) * vec3<f32>(x_3750.z, x_3750.z, x_3750.z)) + x_3753);
        let x_3755 : vec3<f32> = u_xlat37;
        let x_3756 : i32 = u_xlati11;
        let x_3759 : i32 = u_xlati11;
        let x_3763 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3756 + 3i) / 4i)][((x_3759 + 3i) % 4i)];
        u_xlat37 = (x_3755 + vec3<f32>(x_3763.x, x_3763.y, x_3763.w));
        let x_3766 : vec3<f32> = u_xlat37;
        let x_3768 : vec3<f32> = u_xlat37;
        let x_3770 : vec2<f32> = (vec2<f32>(x_3766.x, x_3766.y) / vec2<f32>(x_3768.z, x_3768.z));
        let x_3771 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3770.x, x_3770.y, x_3771.z);
        let x_3773 : vec3<f32> = u_xlat37;
        let x_3776 : vec2<f32> = ((vec2<f32>(x_3773.x, x_3773.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3777 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3776.x, x_3776.y, x_3777.z);
        let x_3779 : vec3<f32> = u_xlat37;
        let x_3783 : vec2<f32> = clamp(vec2<f32>(x_3779.x, x_3779.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3784 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3783.x, x_3783.y, x_3784.z);
        let x_3786 : i32 = u_xlati83;
        let x_3788 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3786];
        let x_3790 : vec3<f32> = u_xlat37;
        let x_3793 : i32 = u_xlati83;
        let x_3795 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3793];
        let x_3797 : vec2<f32> = ((vec2<f32>(x_3788.x, x_3788.y) * vec2<f32>(x_3790.x, x_3790.y)) + vec2<f32>(x_3795.z, x_3795.w));
        let x_3798 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3797.x, x_3797.y, x_3798.z);
      } else {
        let x_3801 : i32 = u_xlati87;
        u_xlatb87 = (x_3801 == 1i);
        let x_3803 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3803);
        let x_3805 : i32 = u_xlati87;
        if ((x_3805 != 0i)) {
          let x_3809 : vec3<f32> = vs_TEXCOORD7;
          let x_3811 : i32 = u_xlati11;
          let x_3814 : i32 = u_xlati11;
          let x_3818 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3811 + 1i) / 4i)][((x_3814 + 1i) % 4i)];
          let x_3820 : vec2<f32> = (vec2<f32>(x_3809.y, x_3809.y) * vec2<f32>(x_3818.x, x_3818.y));
          let x_3821 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3820.x, x_3820.y, x_3821.z, x_3821.w);
          let x_3823 : i32 = u_xlati11;
          let x_3825 : i32 = u_xlati11;
          let x_3828 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3823 / 4i)][(x_3825 % 4i)];
          let x_3830 : vec3<f32> = vs_TEXCOORD7;
          let x_3833 : vec4<f32> = u_xlat12;
          let x_3835 : vec2<f32> = ((vec2<f32>(x_3828.x, x_3828.y) * vec2<f32>(x_3830.x, x_3830.x)) + vec2<f32>(x_3833.x, x_3833.y));
          let x_3836 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3835.x, x_3835.y, x_3836.z, x_3836.w);
          let x_3838 : i32 = u_xlati11;
          let x_3841 : i32 = u_xlati11;
          let x_3845 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3838 + 2i) / 4i)][((x_3841 + 2i) % 4i)];
          let x_3847 : vec3<f32> = vs_TEXCOORD7;
          let x_3850 : vec4<f32> = u_xlat12;
          let x_3852 : vec2<f32> = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3847.z, x_3847.z)) + vec2<f32>(x_3850.x, x_3850.y));
          let x_3853 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3852.x, x_3852.y, x_3853.z, x_3853.w);
          let x_3855 : vec4<f32> = u_xlat12;
          let x_3857 : i32 = u_xlati11;
          let x_3860 : i32 = u_xlati11;
          let x_3864 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3857 + 3i) / 4i)][((x_3860 + 3i) % 4i)];
          let x_3866 : vec2<f32> = (vec2<f32>(x_3855.x, x_3855.y) + vec2<f32>(x_3864.x, x_3864.y));
          let x_3867 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3866.x, x_3866.y, x_3867.z, x_3867.w);
          let x_3869 : vec4<f32> = u_xlat12;
          let x_3872 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3873 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3872.x, x_3872.y, x_3873.z, x_3873.w);
          let x_3875 : vec4<f32> = u_xlat12;
          let x_3877 : vec2<f32> = fract(vec2<f32>(x_3875.x, x_3875.y));
          let x_3878 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3877.x, x_3877.y, x_3878.z, x_3878.w);
          let x_3880 : i32 = u_xlati83;
          let x_3882 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3880];
          let x_3884 : vec4<f32> = u_xlat12;
          let x_3887 : i32 = u_xlati83;
          let x_3889 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3887];
          let x_3891 : vec2<f32> = ((vec2<f32>(x_3882.x, x_3882.y) * vec2<f32>(x_3884.x, x_3884.y)) + vec2<f32>(x_3889.z, x_3889.w));
          let x_3892 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3891.x, x_3891.y, x_3892.z);
        } else {
          let x_3895 : vec3<f32> = vs_TEXCOORD7;
          let x_3897 : i32 = u_xlati11;
          let x_3900 : i32 = u_xlati11;
          let x_3904 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3897 + 1i) / 4i)][((x_3900 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3895.y, x_3895.y, x_3895.y, x_3895.y) * x_3904);
          let x_3906 : i32 = u_xlati11;
          let x_3908 : i32 = u_xlati11;
          let x_3911 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3906 / 4i)][(x_3908 % 4i)];
          let x_3912 : vec3<f32> = vs_TEXCOORD7;
          let x_3915 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3911 * vec4<f32>(x_3912.x, x_3912.x, x_3912.x, x_3912.x)) + x_3915);
          let x_3917 : i32 = u_xlati11;
          let x_3920 : i32 = u_xlati11;
          let x_3924 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3917 + 2i) / 4i)][((x_3920 + 2i) % 4i)];
          let x_3925 : vec3<f32> = vs_TEXCOORD7;
          let x_3928 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3924 * vec4<f32>(x_3925.z, x_3925.z, x_3925.z, x_3925.z)) + x_3928);
          let x_3930 : vec4<f32> = u_xlat12;
          let x_3931 : i32 = u_xlati11;
          let x_3934 : i32 = u_xlati11;
          let x_3938 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3931 + 3i) / 4i)][((x_3934 + 3i) % 4i)];
          u_xlat12 = (x_3930 + x_3938);
          let x_3940 : vec4<f32> = u_xlat12;
          let x_3942 : vec4<f32> = u_xlat12;
          let x_3944 : vec3<f32> = (vec3<f32>(x_3940.x, x_3940.y, x_3940.z) / vec3<f32>(x_3942.w, x_3942.w, x_3942.w));
          let x_3945 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
          let x_3947 : vec4<f32> = u_xlat12;
          let x_3949 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3947.x, x_3947.y, x_3947.z), vec3<f32>(x_3949.x, x_3949.y, x_3949.z));
          let x_3952 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3952);
          let x_3954 : f32 = u_xlat87;
          let x_3956 : vec4<f32> = u_xlat12;
          let x_3958 : vec3<f32> = (vec3<f32>(x_3954, x_3954, x_3954) * vec3<f32>(x_3956.x, x_3956.y, x_3956.z));
          let x_3959 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3958.x, x_3958.y, x_3958.z, x_3959.w);
          let x_3961 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3961.x, x_3961.y, x_3961.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3966 : f32 = u_xlat87;
          u_xlat87 = max(x_3966, 0.00000099999999747524f);
          let x_3969 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3969);
          let x_3971 : f32 = u_xlat87;
          let x_3973 : vec4<f32> = u_xlat12;
          let x_3975 : vec3<f32> = (vec3<f32>(x_3971, x_3971, x_3971) * vec3<f32>(x_3973.z, x_3973.x, x_3973.y));
          let x_3976 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3975.x, x_3975.y, x_3975.z, x_3976.w);
          let x_3979 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3979);
          let x_3983 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3983, 0.0f, 1.0f);
          let x_3986 : vec4<f32> = u_xlat13;
          let x_3988 : vec4<bool> = (vec4<f32>(x_3986.y, x_3986.y, x_3986.y, x_3986.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3989 : vec2<bool> = vec2<bool>(x_3988.x, x_3988.w);
          let x_3990 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3989.x, x_3990.y, x_3990.z, x_3989.y);
          let x_3993 : bool = u_xlatb11.x;
          if (x_3993) {
            let x_3998 : f32 = u_xlat13.x;
            x_3994 = x_3998;
          } else {
            let x_4001 : f32 = u_xlat13.x;
            x_3994 = -(x_4001);
          }
          let x_4003 : f32 = x_3994;
          u_xlat11.x = x_4003;
          let x_4006 : bool = u_xlatb11.w;
          if (x_4006) {
            let x_4011 : f32 = u_xlat13.x;
            x_4007 = x_4011;
          } else {
            let x_4014 : f32 = u_xlat13.x;
            x_4007 = -(x_4014);
          }
          let x_4016 : f32 = x_4007;
          u_xlat11.w = x_4016;
          let x_4018 : vec4<f32> = u_xlat12;
          let x_4020 : f32 = u_xlat87;
          let x_4023 : vec4<f32> = u_xlat11;
          let x_4025 : vec2<f32> = ((vec2<f32>(x_4018.x, x_4018.y) * vec2<f32>(x_4020, x_4020)) + vec2<f32>(x_4023.x, x_4023.w));
          let x_4026 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4025.x, x_4026.y, x_4026.z, x_4025.y);
          let x_4028 : vec4<f32> = u_xlat11;
          let x_4031 : vec2<f32> = ((vec2<f32>(x_4028.x, x_4028.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4032 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4031.x, x_4032.y, x_4032.z, x_4031.y);
          let x_4034 : vec4<f32> = u_xlat11;
          let x_4038 : vec2<f32> = clamp(vec2<f32>(x_4034.x, x_4034.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4039 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4038.x, x_4039.y, x_4039.z, x_4038.y);
          let x_4041 : i32 = u_xlati83;
          let x_4043 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4041];
          let x_4045 : vec4<f32> = u_xlat11;
          let x_4048 : i32 = u_xlati83;
          let x_4050 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4048];
          let x_4052 : vec2<f32> = ((vec2<f32>(x_4043.x, x_4043.y) * vec2<f32>(x_4045.x, x_4045.w)) + vec2<f32>(x_4050.z, x_4050.w));
          let x_4053 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4052.x, x_4052.y, x_4053.z);
        }
      }
      let x_4060 : vec3<f32> = u_xlat37;
      let x_4062 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4060.x, x_4060.y), 0.0f);
      u_xlat11 = x_4062;
      let x_4064 : bool = u_xlatb7.y;
      if (x_4064) {
        let x_4069 : f32 = u_xlat11.w;
        x_4065 = x_4069;
      } else {
        let x_4072 : f32 = u_xlat11.x;
        x_4065 = x_4072;
      }
      let x_4073 : f32 = x_4065;
      u_xlat87 = x_4073;
      let x_4075 : bool = u_xlatb7.x;
      if (x_4075) {
        let x_4079 : vec4<f32> = u_xlat11;
        x_4076 = vec3<f32>(x_4079.x, x_4079.y, x_4079.z);
      } else {
        let x_4082 : f32 = u_xlat87;
        x_4076 = vec3<f32>(x_4082, x_4082, x_4082);
      }
      let x_4084 : vec3<f32> = x_4076;
      let x_4085 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4084.x, x_4084.y, x_4084.z, x_4085.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4091 : vec4<f32> = u_xlat11;
    let x_4093 : i32 = u_xlati83;
    let x_4095 : vec4<f32> = x_2263.x_AdditionalLightsColor[x_4093];
    let x_4097 : vec3<f32> = (vec3<f32>(x_4091.x, x_4091.y, x_4091.z) * vec3<f32>(x_4095.x, x_4095.y, x_4095.z));
    let x_4098 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4097.x, x_4097.y, x_4097.z, x_4098.w);
    let x_4100 : f32 = u_xlat84;
    let x_4101 : f32 = u_xlat85;
    u_xlat83 = (x_4100 * x_4101);
    let x_4103 : vec4<f32> = u_xlat2;
    let x_4105 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4103.x, x_4103.y, x_4103.z), vec3<f32>(x_4105.x, x_4105.y, x_4105.z));
    let x_4108 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4108, 0.0f, 1.0f);
    let x_4110 : f32 = u_xlat83;
    let x_4111 : f32 = u_xlat84;
    u_xlat83 = (x_4110 * x_4111);
    let x_4113 : f32 = u_xlat83;
    let x_4115 : vec4<f32> = u_xlat11;
    let x_4117 : vec3<f32> = (vec3<f32>(x_4113, x_4113, x_4113) * vec3<f32>(x_4115.x, x_4115.y, x_4115.z));
    let x_4118 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4117.x, x_4117.y, x_4117.z, x_4118.w);
    let x_4120 : vec4<f32> = u_xlat9;
    let x_4122 : f32 = u_xlat59;
    let x_4125 : vec3<f32> = u_xlat3;
    let x_4126 : vec3<f32> = ((vec3<f32>(x_4120.x, x_4120.y, x_4120.z) * vec3<f32>(x_4122, x_4122, x_4122)) + x_4125);
    let x_4127 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4126.x, x_4126.y, x_4126.z, x_4127.w);
    let x_4129 : vec4<f32> = u_xlat9;
    let x_4131 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4129.x, x_4129.y, x_4129.z), vec3<f32>(x_4131.x, x_4131.y, x_4131.z));
    let x_4134 : f32 = u_xlat83;
    u_xlat83 = max(x_4134, 1.17549435e-38f);
    let x_4136 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4136);
    let x_4138 : f32 = u_xlat83;
    let x_4140 : vec4<f32> = u_xlat9;
    let x_4142 : vec3<f32> = (vec3<f32>(x_4138, x_4138, x_4138) * vec3<f32>(x_4140.x, x_4140.y, x_4140.z));
    let x_4143 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);
    let x_4145 : vec4<f32> = u_xlat2;
    let x_4147 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4145.x, x_4145.y, x_4145.z), vec3<f32>(x_4147.x, x_4147.y, x_4147.z));
    let x_4150 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4150, 0.0f, 1.0f);
    let x_4152 : vec4<f32> = u_xlat10;
    let x_4154 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4152.x, x_4152.y, x_4152.z), vec3<f32>(x_4154.x, x_4154.y, x_4154.z));
    let x_4157 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4157, 0.0f, 1.0f);
    let x_4159 : f32 = u_xlat83;
    let x_4160 : f32 = u_xlat83;
    u_xlat83 = (x_4159 * x_4160);
    let x_4162 : f32 = u_xlat83;
    let x_4164 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4162 * x_4164) + 1.00001001358032226562f);
    let x_4167 : f32 = u_xlat84;
    let x_4168 : f32 = u_xlat84;
    u_xlat84 = (x_4167 * x_4168);
    let x_4170 : f32 = u_xlat83;
    let x_4171 : f32 = u_xlat83;
    u_xlat83 = (x_4170 * x_4171);
    let x_4173 : f32 = u_xlat84;
    u_xlat84 = max(x_4173, 0.10000000149011611938f);
    let x_4175 : f32 = u_xlat83;
    let x_4176 : f32 = u_xlat84;
    u_xlat83 = (x_4175 * x_4176);
    let x_4178 : f32 = u_xlat81;
    let x_4179 : f32 = u_xlat83;
    u_xlat83 = (x_4178 * x_4179);
    let x_4181 : f32 = u_xlat82;
    let x_4182 : f32 = u_xlat83;
    u_xlat83 = (x_4181 / x_4182);
    let x_4184 : vec4<f32> = u_xlat0;
    let x_4186 : f32 = u_xlat83;
    let x_4189 : vec4<f32> = u_xlat5;
    let x_4191 : vec3<f32> = ((vec3<f32>(x_4184.x, x_4184.y, x_4184.z) * vec3<f32>(x_4186, x_4186, x_4186)) + vec3<f32>(x_4189.x, x_4189.y, x_4189.z));
    let x_4192 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4191.x, x_4191.y, x_4191.z, x_4192.w);
    let x_4194 : vec4<f32> = u_xlat9;
    let x_4196 : vec4<f32> = u_xlat11;
    let x_4199 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4194.x, x_4194.y, x_4194.z) * vec3<f32>(x_4196.x, x_4196.y, x_4196.z)) + x_4199);

    continuing {
      let x_4201 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4201 + bitcast<u32>(1i));
    }
  }
  let x_4203 : vec4<f32> = u_xlat6;
  let x_4205 : vec4<f32> = u_xlat1;
  let x_4208 : vec3<f32> = u_xlat4;
  let x_4209 : vec3<f32> = ((vec3<f32>(x_4203.x, x_4203.y, x_4203.z) * vec3<f32>(x_4205.x, x_4205.y, x_4205.w)) + x_4208);
  let x_4210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4209.x, x_4209.y, x_4209.z, x_4210.w);
  let x_4214 : vec3<f32> = u_xlat34;
  let x_4215 : vec4<f32> = u_xlat0;
  let x_4217 : vec3<f32> = (x_4214 + vec3<f32>(x_4215.x, x_4215.y, x_4215.z));
  let x_4218 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4217.x, x_4217.y, x_4217.z, x_4218.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


