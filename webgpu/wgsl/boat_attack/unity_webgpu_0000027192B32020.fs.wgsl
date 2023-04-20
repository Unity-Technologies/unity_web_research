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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_150 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_1781 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1959 : UnityPerDraw;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2216 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
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
  var x_1733 : f32;
  var x_1864 : f32;
  var x_1875 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2353 : f32;
  var x_2363 : f32;
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
  var x_3947 : f32;
  var x_3960 : f32;
  var x_4018 : f32;
  var x_4029 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat53;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb27;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb27;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb27;
  if (x_116) {
    let x_121 : f32 = u_xlat2.z;
    x_117 = x_121;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[2i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.z = x_126;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat27;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
  let x_142 : vec3<f32> = vs_TEXCOORD7;
  let x_153 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres0;
  let x_156 : vec3<f32> = (x_142 + -(vec3<f32>(x_153.x, x_153.y, x_153.z)));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres1;
  let x_165 : vec3<f32> = (x_160 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_172 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_169 + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_177 : vec3<f32> = vs_TEXCOORD7;
  let x_179 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres3;
  let x_182 : vec3<f32> = (x_177 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec3<f32> = u_xlat5;
  let x_198 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_197, x_198);
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = x_150.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_210 < x_212);
  let x_215 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_215);
  let x_220 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_247.y, x_247.z, x_247.w));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_255 : vec3<f32> = max(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_255.z);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_258, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_266) + 4.0f);
  let x_273 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_273);
  let x_277 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_281 : vec3<f32> = vs_TEXCOORD7;
  let x_283 : i32 = u_xlati2;
  let x_286 : i32 = u_xlati2;
  let x_290 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_283 + 1i) / 4i)][((x_286 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_281.y, x_281.y, x_281.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : i32 = u_xlati2;
  let x_295 : i32 = u_xlati2;
  let x_298 : vec4<f32> = x_150.x_MainLightWorldToShadow[(x_293 / 4i)][(x_295 % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_303 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : i32 = u_xlati2;
  let x_308 : i32 = u_xlati2;
  let x_312 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_305 + 2i) / 4i)][((x_308 + 2i) % 4i)];
  let x_314 : vec3<f32> = vs_TEXCOORD7;
  let x_317 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + x_317);
  let x_319 : vec3<f32> = u_xlat28;
  let x_320 : i32 = u_xlati2;
  let x_323 : i32 = u_xlati2;
  let x_327 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_320 + 3i) / 4i)][((x_323 + 3i) % 4i)];
  let x_329 : vec3<f32> = (x_319 + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_337 : vec4<f32> = vs_TEXCOORD0;
  let x_340 : f32 = x_29.x_GlobalMipBias.x;
  let x_341 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_337.z, x_337.w), x_340);
  u_xlat4 = x_341;
  let x_346 : vec4<f32> = vs_TEXCOORD0;
  let x_349 : f32 = x_29.x_GlobalMipBias.x;
  let x_350 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_346.z, x_346.w), x_349);
  u_xlat5 = vec3<f32>(x_350.x, x_350.y, x_350.z);
  let x_352 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec3<f32> = u_xlat27;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat80;
  u_xlat80 = (x_364 + 0.5f);
  let x_367 : f32 = u_xlat80;
  let x_369 : vec3<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat80 = max(x_374, 0.00009999999747378752f);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : f32 = u_xlat80;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) / vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  u_xlat80 = ((-(x_384) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_390 : f32 = u_xlat80;
  u_xlat81 = (-(x_390) + 1.0f);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : f32 = u_xlat80;
  u_xlat5 = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395, x_395, x_395));
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  let x_407 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_416) + 1.0f);
  let x_419 : f32 = u_xlat1;
  let x_420 : f32 = u_xlat1;
  u_xlat80 = (x_419 * x_420);
  let x_422 : f32 = u_xlat80;
  u_xlat80 = max(x_422, 0.0078125f);
  let x_426 : f32 = u_xlat80;
  let x_427 : f32 = u_xlat80;
  u_xlat82 = (x_426 * x_427);
  let x_431 : f32 = u_xlat0.w;
  let x_432 : f32 = u_xlat81;
  u_xlat78 = (x_431 + x_432);
  let x_434 : f32 = u_xlat78;
  u_xlat78 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat80;
  u_xlat81 = ((x_436 * 4.0f) + 2.0f);
  let x_442 : f32 = x_150.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_442);
  let x_444 : bool = u_xlatb83;
  if (x_444) {
    let x_448 : f32 = x_150.x_MainLightShadowParams.y;
    u_xlatb83 = (x_448 == 1.0f);
    let x_450 : bool = u_xlatb83;
    if (x_450) {
      let x_453 : vec4<f32> = u_xlat2;
      let x_456 : vec4<f32> = x_150.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y) + x_456);
      let x_460 : vec4<f32> = u_xlat6;
      let x_461 : vec2<f32> = vec2<f32>(x_460.x, x_460.y);
      let x_463 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_461.x, x_461.y, x_463);
      let x_476 : vec3<f32> = txVec0;
      let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
      u_xlat7.x = x_478;
      let x_481 : vec4<f32> = u_xlat6;
      let x_482 : vec2<f32> = vec2<f32>(x_481.z, x_481.w);
      let x_484 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_491 : vec3<f32> = txVec1;
      let x_493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_491.xy, x_491.z);
      u_xlat7.y = x_493;
      let x_495 : vec4<f32> = u_xlat2;
      let x_499 : vec4<f32> = x_150.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_495.x, x_495.y, x_495.x, x_495.y) + x_499);
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_512 : vec3<f32> = txVec2;
      let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_512.xy, x_512.z);
      u_xlat7.z = x_514;
      let x_517 : vec4<f32> = u_xlat6;
      let x_518 : vec2<f32> = vec2<f32>(x_517.z, x_517.w);
      let x_520 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_518.x, x_518.y, x_520);
      let x_527 : vec3<f32> = txVec3;
      let x_529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_527.xy, x_527.z);
      u_xlat7.w = x_529;
      let x_532 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_539 : f32 = x_150.x_MainLightShadowParams.y;
      u_xlatb6 = (x_539 == 2.0f);
      let x_541 : bool = u_xlatb6;
      if (x_541) {
        let x_544 : vec4<f32> = u_xlat2;
        let x_548 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_552 : vec2<f32> = ((vec2<f32>(x_544.x, x_544.y) * vec2<f32>(x_548.z, x_548.w)) + vec2<f32>(0.5f, 0.5f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = floor(vec2<f32>(x_555.x, x_555.y));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_562 : vec4<f32> = u_xlat2;
        let x_565 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_565.z, x_565.w)) + -(vec2<f32>(x_568.x, x_568.y)));
        let x_572 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_572.x, x_572.x, x_572.y, x_572.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_577.x, x_577.x, x_577.z, x_577.z) * vec4<f32>(x_579.x, x_579.x, x_579.z, x_579.z));
        let x_582 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = (vec2<f32>(x_582.y, x_582.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_587.y, x_586.y, x_587.w);
        let x_589 : vec4<f32> = u_xlat8;
        let x_592 : vec2<f32> = u_xlat58;
        let x_594 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.z) * vec2<f32>(0.5f, 0.5f)) + -(x_592));
        let x_595 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_598 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_598) + vec2<f32>(1.0f, 1.0f));
        let x_603 : vec2<f32> = u_xlat58;
        let x_605 : vec2<f32> = min(x_603, vec2<f32>(0.0f, 0.0f));
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat9;
        let x_611 : vec4<f32> = u_xlat9;
        let x_614 : vec2<f32> = u_xlat60;
        let x_615 : vec2<f32> = ((-(vec2<f32>(x_608.x, x_608.y)) * vec2<f32>(x_611.x, x_611.y)) + x_614);
        let x_616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_618 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_618, vec2<f32>(0.0f, 0.0f));
        let x_620 : vec2<f32> = u_xlat58;
        let x_622 : vec2<f32> = u_xlat58;
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_620) * x_622) + vec2<f32>(x_624.y, x_624.w));
        let x_627 : vec4<f32> = u_xlat9;
        let x_629 : vec2<f32> = (vec2<f32>(x_627.x, x_627.y) + vec2<f32>(1.0f, 1.0f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_632 + vec2<f32>(1.0f, 1.0f));
        let x_635 : vec4<f32> = u_xlat8;
        let x_639 : vec2<f32> = (vec2<f32>(x_635.x, x_635.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_640 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_642 : vec2<f32> = u_xlat60;
        let x_643 : vec2<f32> = (x_642 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_646 : vec4<f32> = u_xlat9;
        let x_648 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_652 : vec2<f32> = u_xlat58;
        let x_653 : vec2<f32> = (x_652 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_656.y, x_656.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_660 : f32 = u_xlat9.x;
        u_xlat10.z = x_660;
        let x_663 : f32 = u_xlat58.x;
        u_xlat10.w = x_663;
        let x_666 : f32 = u_xlat11.x;
        u_xlat8.z = x_666;
        let x_669 : f32 = u_xlat7.x;
        u_xlat8.w = x_669;
        let x_672 : vec4<f32> = u_xlat8;
        let x_674 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_672.z, x_672.w, x_672.x, x_672.z) + vec4<f32>(x_674.z, x_674.w, x_674.x, x_674.z));
        let x_678 : f32 = u_xlat10.y;
        u_xlat9.z = x_678;
        let x_681 : f32 = u_xlat58.y;
        u_xlat9.w = x_681;
        let x_684 : f32 = u_xlat8.y;
        u_xlat11.z = x_684;
        let x_687 : f32 = u_xlat7.z;
        u_xlat11.w = x_687;
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec4<f32> = u_xlat11;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.z, x_689.y, x_689.w) + vec3<f32>(x_691.z, x_691.y, x_691.w));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = u_xlat12;
        let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.z, x_696.w) / vec3<f32>(x_698.z, x_698.w, x_698.y));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat8;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat11;
        let x_713 : vec4<f32> = u_xlat7;
        let x_715 : vec3<f32> = (vec3<f32>(x_711.z, x_711.y, x_711.w) / vec3<f32>(x_713.x, x_713.y, x_713.z));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat9;
        let x_720 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat8;
        let x_726 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_728 : vec3<f32> = (vec3<f32>(x_723.y, x_723.x, x_723.z) * vec3<f32>(x_726.x, x_726.x, x_726.x));
        let x_729 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat9;
        let x_734 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_736 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_734.y, x_734.y, x_734.y));
        let x_737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_740 : f32 = u_xlat9.x;
        u_xlat8.w = x_740;
        let x_742 : vec4<f32> = u_xlat6;
        let x_745 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) * vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) + vec4<f32>(x_748.y, x_748.w, x_748.x, x_748.w));
        let x_751 : vec4<f32> = u_xlat6;
        let x_754 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(x_754.x, x_754.y)) + vec2<f32>(x_757.z, x_757.w));
        let x_761 : f32 = u_xlat8.y;
        u_xlat9.w = x_761;
        let x_763 : vec4<f32> = u_xlat9;
        let x_764 : vec2<f32> = vec2<f32>(x_763.y, x_763.z);
        let x_765 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_765.x, x_764.x, x_765.z, x_764.y);
        let x_767 : vec4<f32> = u_xlat6;
        let x_770 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y) * vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y)) + vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.y));
        let x_776 : vec4<f32> = u_xlat6;
        let x_779 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_782 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y) * vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y)) + vec4<f32>(x_782.w, x_782.y, x_782.w, x_782.z));
        let x_785 : vec4<f32> = u_xlat6;
        let x_788 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.x, x_791.w, x_791.z, x_791.w));
        let x_795 : vec4<f32> = u_xlat7;
        let x_797 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_795.x, x_795.x, x_795.x, x_795.y) * vec4<f32>(x_797.z, x_797.w, x_797.y, x_797.z));
        let x_801 : vec4<f32> = u_xlat7;
        let x_803 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_801.y, x_801.y, x_801.z, x_801.z) * x_803);
        let x_806 : f32 = u_xlat7.z;
        let x_808 : f32 = u_xlat12.y;
        u_xlat6.x = (x_806 * x_808);
        let x_812 : vec4<f32> = u_xlat10;
        let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
        let x_815 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_823 : vec3<f32> = txVec4;
        let x_825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_823.xy, x_823.z);
        u_xlat32 = x_825;
        let x_827 : vec4<f32> = u_xlat10;
        let x_828 : vec2<f32> = vec2<f32>(x_827.z, x_827.w);
        let x_830 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec5;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat7.x = x_839;
        let x_842 : f32 = u_xlat7.x;
        let x_844 : f32 = u_xlat13.y;
        u_xlat7.x = (x_842 * x_844);
        let x_848 : f32 = u_xlat13.x;
        let x_849 : f32 = u_xlat32;
        let x_852 : f32 = u_xlat7.x;
        u_xlat32 = ((x_848 * x_849) + x_852);
        let x_855 : vec2<f32> = u_xlat58;
        let x_857 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec6;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat58.x = x_866;
        let x_869 : f32 = u_xlat13.z;
        let x_871 : f32 = u_xlat58.x;
        let x_873 : f32 = u_xlat32;
        u_xlat32 = ((x_869 * x_871) + x_873);
        let x_876 : vec4<f32> = u_xlat9;
        let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
        let x_879 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec7;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
        u_xlat58.x = x_888;
        let x_891 : f32 = u_xlat13.w;
        let x_893 : f32 = u_xlat58.x;
        let x_895 : f32 = u_xlat32;
        u_xlat32 = ((x_891 * x_893) + x_895);
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
        let x_901 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec8;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat58.x = x_910;
        let x_913 : f32 = u_xlat14.x;
        let x_915 : f32 = u_xlat58.x;
        let x_917 : f32 = u_xlat32;
        u_xlat32 = ((x_913 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat11;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec9;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat58.x = x_932;
        let x_935 : f32 = u_xlat14.y;
        let x_937 : f32 = u_xlat58.x;
        let x_939 : f32 = u_xlat32;
        u_xlat32 = ((x_935 * x_937) + x_939);
        let x_942 : vec4<f32> = u_xlat9;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec10;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat58.x = x_954;
        let x_957 : f32 = u_xlat14.z;
        let x_959 : f32 = u_xlat58.x;
        let x_961 : f32 = u_xlat32;
        u_xlat32 = ((x_957 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat8;
        let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
        let x_967 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec11;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_974.xy, x_974.z);
        u_xlat58.x = x_976;
        let x_979 : f32 = u_xlat14.w;
        let x_981 : f32 = u_xlat58.x;
        let x_983 : f32 = u_xlat32;
        u_xlat32 = ((x_979 * x_981) + x_983);
        let x_986 : vec4<f32> = u_xlat8;
        let x_987 : vec2<f32> = vec2<f32>(x_986.z, x_986.w);
        let x_989 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_996 : vec3<f32> = txVec12;
        let x_998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
        u_xlat58.x = x_998;
        let x_1001 : f32 = u_xlat6.x;
        let x_1003 : f32 = u_xlat58.x;
        let x_1005 : f32 = u_xlat32;
        u_xlat83 = ((x_1001 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = u_xlat2;
        let x_1011 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat2;
        let x_1025 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z) * vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.y, x_1040.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = u_xlat58;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1050));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat58;
        let x_1057 : vec2<f32> = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1060, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat60;
        let x_1064 : vec2<f32> = u_xlat60;
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.x, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1074 : vec2<f32> = u_xlat60;
        let x_1076 : vec2<f32> = u_xlat60;
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec2<f32> = ((-(x_1074) * x_1076) + vec2<f32>(x_1078.y, x_1078.w));
        let x_1081 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(2.0f, 2.0f));
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec3<f32> = u_xlat33;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.z) + vec2<f32>(2.0f, 2.0f));
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1095 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1095 * 0.08163200318813323975f);
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1099.z, x_1099.x, x_1099.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat11.y;
        u_xlat10.x = x_1112;
        let x_1114 : vec2<f32> = u_xlat58;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec2<f32> = u_xlat58;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat7.x;
        u_xlat8.y = x_1132;
        let x_1135 : f32 = u_xlat9.y;
        u_xlat8.w = x_1135;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1137 + x_1138);
        let x_1140 : vec2<f32> = u_xlat58;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec2<f32> = u_xlat58;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1146.y, x_1146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1153 : f32 = u_xlat7.y;
        u_xlat9.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat9;
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1155 + x_1156);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1172.w, x_1172.x, x_1172.y, x_1172.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x));
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1181 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1178.x, x_1178.w, x_1178.y, x_1178.z) * vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1189 : f32 = u_xlat9.x;
        u_xlat11.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1203 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat11.y;
        u_xlat8.y = x_1210;
        let x_1213 : f32 = u_xlat9.z;
        u_xlat11.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : f32 = u_xlat11.y;
        u_xlat8.z = x_1236;
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.z));
        let x_1249 : f32 = u_xlat9.w;
        u_xlat11.y = x_1249;
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1271 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1270.x, x_1270.y, x_1271.z);
        let x_1274 : f32 = u_xlat11.y;
        u_xlat8.w = x_1274;
        let x_1277 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.x, x_1283.w));
        let x_1286 : vec4<f32> = u_xlat11;
        let x_1287 : vec3<f32> = vec3<f32>(x_1286.x, x_1286.z, x_1286.w);
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1288.y, x_1287.y, x_1287.z);
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1303 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.w, x_1306.y));
        let x_1310 : f32 = u_xlat8.x;
        u_xlat9.x = x_1310;
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.x, x_1318.y));
        let x_1321 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1324.x, x_1324.x, x_1324.x, x_1324.x) * x_1326);
        let x_1329 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1329.y, x_1329.y, x_1329.y, x_1329.y) * x_1331);
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1336 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1334.z, x_1334.z, x_1334.z, x_1334.z) * x_1336);
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1340 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1338.w, x_1338.w, x_1338.w, x_1338.w) * x_1340);
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec13;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
        u_xlat8.x = x_1355;
        let x_1358 : vec4<f32> = u_xlat12;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.z, x_1358.w);
        let x_1361 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1369 : vec3<f32> = txVec14;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
        u_xlat86 = x_1371;
        let x_1372 : f32 = u_xlat86;
        let x_1374 : f32 = u_xlat17.y;
        u_xlat86 = (x_1372 * x_1374);
        let x_1377 : f32 = u_xlat17.x;
        let x_1379 : f32 = u_xlat8.x;
        let x_1381 : f32 = u_xlat86;
        u_xlat8.x = ((x_1377 * x_1379) + x_1381);
        let x_1385 : vec2<f32> = u_xlat58;
        let x_1387 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec15;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat58.x = x_1396;
        let x_1399 : f32 = u_xlat17.z;
        let x_1401 : f32 = u_xlat58.x;
        let x_1404 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1399 * x_1401) + x_1404);
        let x_1408 : vec4<f32> = u_xlat15;
        let x_1409 : vec2<f32> = vec2<f32>(x_1408.x, x_1408.y);
        let x_1411 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1419 : vec3<f32> = txVec16;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat84 = x_1421;
        let x_1423 : f32 = u_xlat17.w;
        let x_1424 : f32 = u_xlat84;
        let x_1427 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat13;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec17;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat84 = x_1443;
        let x_1445 : f32 = u_xlat18.x;
        let x_1446 : f32 = u_xlat84;
        let x_1449 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat13;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec18;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat84 = x_1465;
        let x_1467 : f32 = u_xlat18.y;
        let x_1468 : f32 = u_xlat84;
        let x_1471 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat14;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec19;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat84 = x_1487;
        let x_1489 : f32 = u_xlat18.z;
        let x_1490 : f32 = u_xlat84;
        let x_1493 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat15;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec20;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat84 = x_1509;
        let x_1511 : f32 = u_xlat18.w;
        let x_1512 : f32 = u_xlat84;
        let x_1515 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat16;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec21;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat84 = x_1531;
        let x_1533 : f32 = u_xlat19.x;
        let x_1534 : f32 = u_xlat84;
        let x_1537 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat16;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec22;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat84 = x_1553;
        let x_1555 : f32 = u_xlat19.y;
        let x_1556 : f32 = u_xlat84;
        let x_1559 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec3<f32> = u_xlat34;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec23;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1573.xy, x_1573.z);
        u_xlat84 = x_1575;
        let x_1577 : f32 = u_xlat19.z;
        let x_1578 : f32 = u_xlat84;
        let x_1581 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1577 * x_1578) + x_1581);
        let x_1585 : vec2<f32> = u_xlat66;
        let x_1587 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec24;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat84 = x_1596;
        let x_1598 : f32 = u_xlat19.w;
        let x_1599 : f32 = u_xlat84;
        let x_1602 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1598 * x_1599) + x_1602);
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec25;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat84 = x_1618;
        let x_1620 : f32 = u_xlat7.x;
        let x_1621 : f32 = u_xlat84;
        let x_1624 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1620 * x_1621) + x_1624);
        let x_1628 : vec4<f32> = u_xlat11;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec26;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat84 = x_1640;
        let x_1642 : f32 = u_xlat7.y;
        let x_1643 : f32 = u_xlat84;
        let x_1646 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1642 * x_1643) + x_1646);
        let x_1650 : vec2<f32> = u_xlat61;
        let x_1652 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec27;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat84 = x_1661;
        let x_1663 : f32 = u_xlat7.z;
        let x_1664 : f32 = u_xlat84;
        let x_1667 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1663 * x_1664) + x_1667);
        let x_1671 : vec4<f32> = u_xlat6;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.x, x_1671.y);
        let x_1674 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec28;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat6.x = x_1683;
        let x_1686 : f32 = u_xlat7.w;
        let x_1688 : f32 = u_xlat6.x;
        let x_1691 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1686 * x_1688) + x_1691);
      }
    }
  } else {
    let x_1695 : vec4<f32> = u_xlat2;
    let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
    let x_1698 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
    let x_1705 : vec3<f32> = txVec29;
    let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
    u_xlat83 = x_1707;
  }
  let x_1709 : f32 = x_150.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1709) + 1.0f);
  let x_1713 : f32 = u_xlat83;
  let x_1715 : f32 = x_150.x_MainLightShadowParams.x;
  let x_1718 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1713 * x_1715) + x_1718);
  let x_1723 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1723);
  let x_1727 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1727 >= 1.0f);
  let x_1729 : bool = u_xlatb54;
  let x_1730 : bool = u_xlatb28;
  u_xlatb28 = (x_1729 | x_1730);
  let x_1732 : bool = u_xlatb28;
  if (x_1732) {
    x_1733 = 1.0f;
  } else {
    let x_1738 : f32 = u_xlat2.x;
    x_1733 = x_1738;
  }
  let x_1739 : f32 = x_1733;
  u_xlat2.x = x_1739;
  let x_1741 : vec3<f32> = vs_TEXCOORD7;
  let x_1743 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1745 : vec3<f32> = (x_1741 + -(x_1743));
  let x_1746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1748 : vec4<f32> = u_xlat6;
  let x_1750 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_1748.x, x_1748.y, x_1748.z), vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1756 : f32 = u_xlat28.x;
  let x_1758 : f32 = x_150.x_MainLightShadowParams.z;
  let x_1761 : f32 = x_150.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1756 * x_1758) + x_1761);
  let x_1763 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1763, 0.0f, 1.0f);
  let x_1766 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_1766) + 1.0f);
  let x_1769 : f32 = u_xlat54;
  let x_1770 : f32 = u_xlat83;
  let x_1773 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1769 * x_1770) + x_1773);
  let x_1783 : f32 = x_1781.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1783 == -1.0f));
  let x_1785 : bool = u_xlatb54;
  if (x_1785) {
    let x_1788 : vec3<f32> = vs_TEXCOORD7;
    let x_1791 : vec4<f32> = x_1781.x_MainLightWorldToLight[1i];
    let x_1793 : vec2<f32> = (vec2<f32>(x_1788.y, x_1788.y) * vec2<f32>(x_1791.x, x_1791.y));
    let x_1794 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
    let x_1797 : vec4<f32> = x_1781.x_MainLightWorldToLight[0i];
    let x_1799 : vec3<f32> = vs_TEXCOORD7;
    let x_1802 : vec4<f32> = u_xlat6;
    let x_1804 : vec2<f32> = ((vec2<f32>(x_1797.x, x_1797.y) * vec2<f32>(x_1799.x, x_1799.x)) + vec2<f32>(x_1802.x, x_1802.y));
    let x_1805 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
    let x_1808 : vec4<f32> = x_1781.x_MainLightWorldToLight[2i];
    let x_1810 : vec3<f32> = vs_TEXCOORD7;
    let x_1813 : vec4<f32> = u_xlat6;
    let x_1815 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1810.z, x_1810.z)) + vec2<f32>(x_1813.x, x_1813.y));
    let x_1816 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1815.x, x_1815.y, x_1816.z, x_1816.w);
    let x_1818 : vec4<f32> = u_xlat6;
    let x_1821 : vec4<f32> = x_1781.x_MainLightWorldToLight[3i];
    let x_1823 : vec2<f32> = (vec2<f32>(x_1818.x, x_1818.y) + vec2<f32>(x_1821.x, x_1821.y));
    let x_1824 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
    let x_1826 : vec4<f32> = u_xlat6;
    let x_1829 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1830 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1840 : f32 = x_29.x_GlobalMipBias.x;
    let x_1841 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1837.x, x_1837.y), x_1840);
    u_xlat6 = x_1841;
    let x_1846 : f32 = x_1781.x_MainLightCookieTextureFormat;
    let x_1848 : f32 = x_1781.x_MainLightCookieTextureFormat;
    let x_1850 : f32 = x_1781.x_MainLightCookieTextureFormat;
    let x_1852 : f32 = x_1781.x_MainLightCookieTextureFormat;
    let x_1853 : vec4<f32> = vec4<f32>(x_1846, x_1848, x_1850, x_1852);
    let x_1860 : vec4<bool> = (vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1853.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1860.x, x_1860.y);
    let x_1863 : bool = u_xlatb7.y;
    if (x_1863) {
      let x_1868 : f32 = u_xlat6.w;
      x_1864 = x_1868;
    } else {
      let x_1871 : f32 = u_xlat6.x;
      x_1864 = x_1871;
    }
    let x_1872 : f32 = x_1864;
    u_xlat54 = x_1872;
    let x_1874 : bool = u_xlatb7.x;
    if (x_1874) {
      let x_1878 : vec4<f32> = u_xlat6;
      x_1875 = vec3<f32>(x_1878.x, x_1878.y, x_1878.z);
    } else {
      let x_1881 : f32 = u_xlat54;
      x_1875 = vec3<f32>(x_1881, x_1881, x_1881);
    }
    let x_1883 : vec3<f32> = x_1875;
    let x_1884 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1890 : vec4<f32> = u_xlat6;
  let x_1893 : vec4<f32> = x_29.x_MainLightColor;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.y, x_1890.z) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec3<f32> = u_xlat3;
  let x_1900 : vec3<f32> = u_xlat27;
  u_xlat54 = dot(-(x_1898), x_1900);
  let x_1902 : f32 = u_xlat54;
  let x_1903 : f32 = u_xlat54;
  u_xlat54 = (x_1902 + x_1903);
  let x_1905 : vec3<f32> = u_xlat27;
  let x_1906 : f32 = u_xlat54;
  let x_1910 : vec3<f32> = u_xlat3;
  let x_1912 : vec3<f32> = ((x_1905 * -(vec3<f32>(x_1906, x_1906, x_1906))) + -(x_1910));
  let x_1913 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
  let x_1915 : vec3<f32> = u_xlat27;
  let x_1916 : vec3<f32> = u_xlat3;
  u_xlat54 = dot(x_1915, x_1916);
  let x_1918 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1918, 0.0f, 1.0f);
  let x_1920 : f32 = u_xlat54;
  u_xlat54 = (-(x_1920) + 1.0f);
  let x_1923 : f32 = u_xlat54;
  let x_1924 : f32 = u_xlat54;
  u_xlat54 = (x_1923 * x_1924);
  let x_1926 : f32 = u_xlat54;
  let x_1927 : f32 = u_xlat54;
  u_xlat54 = (x_1926 * x_1927);
  let x_1929 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1929) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1935 : f32 = u_xlat1;
  let x_1936 : f32 = u_xlat83;
  u_xlat1 = (x_1935 * x_1936);
  let x_1938 : f32 = u_xlat1;
  u_xlat1 = (x_1938 * 6.0f);
  let x_1949 : vec4<f32> = u_xlat7;
  let x_1951 : f32 = u_xlat1;
  let x_1952 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1949.x, x_1949.y, x_1949.z), x_1951);
  u_xlat7 = x_1952;
  let x_1954 : f32 = u_xlat7.w;
  u_xlat1 = (x_1954 + -1.0f);
  let x_1961 : f32 = x_1959.unity_SpecCube0_HDR.w;
  let x_1962 : f32 = u_xlat1;
  u_xlat1 = ((x_1961 * x_1962) + 1.0f);
  let x_1965 : f32 = u_xlat1;
  u_xlat1 = max(x_1965, 0.0f);
  let x_1967 : f32 = u_xlat1;
  u_xlat1 = log2(x_1967);
  let x_1969 : f32 = u_xlat1;
  let x_1971 : f32 = x_1959.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1969 * x_1971);
  let x_1973 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1973);
  let x_1975 : f32 = u_xlat1;
  let x_1977 : f32 = x_1959.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1975 * x_1977);
  let x_1979 : vec4<f32> = u_xlat7;
  let x_1981 : f32 = u_xlat1;
  let x_1983 : vec3<f32> = (vec3<f32>(x_1979.x, x_1979.y, x_1979.z) * vec3<f32>(x_1981, x_1981, x_1981));
  let x_1984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : f32 = u_xlat80;
  let x_1988 : f32 = u_xlat80;
  let x_1992 : vec2<f32> = ((vec2<f32>(x_1986, x_1986) * vec2<f32>(x_1988, x_1988)) + vec2<f32>(-1.0f, 1.0f));
  let x_1993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1992.x, x_1992.y, x_1993.z, x_1993.w);
  let x_1996 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1996);
  let x_1998 : vec4<f32> = u_xlat0;
  let x_2001 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1998.x, x_1998.y, x_1998.z)) + vec3<f32>(x_2001, x_2001, x_2001));
  let x_2004 : f32 = u_xlat54;
  let x_2006 : vec3<f32> = u_xlat34;
  let x_2008 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2004, x_2004, x_2004) * x_2006) + vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : f32 = u_xlat1;
  let x_2013 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2011, x_2011, x_2011) * x_2013);
  let x_2015 : vec4<f32> = u_xlat7;
  let x_2017 : vec3<f32> = u_xlat34;
  let x_2018 : vec3<f32> = (vec3<f32>(x_2015.x, x_2015.y, x_2015.z) * x_2017);
  let x_2019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
  let x_2021 : vec4<f32> = u_xlat4;
  let x_2023 : vec3<f32> = u_xlat5;
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2027 : vec3<f32> = ((vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * x_2023) + vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2031 : f32 = u_xlat2.x;
  let x_2033 : f32 = x_1959.unity_LightData.z;
  u_xlat78 = (x_2031 * x_2033);
  let x_2035 : vec3<f32> = u_xlat27;
  let x_2037 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_2035, vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2040, 0.0f, 1.0f);
  let x_2042 : f32 = u_xlat78;
  let x_2043 : f32 = u_xlat1;
  u_xlat78 = (x_2042 * x_2043);
  let x_2045 : f32 = u_xlat78;
  let x_2047 : vec4<f32> = u_xlat6;
  let x_2049 : vec3<f32> = (vec3<f32>(x_2045, x_2045, x_2045) * vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
  let x_2050 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2049.x, x_2050.y, x_2049.y, x_2049.z);
  let x_2052 : vec3<f32> = u_xlat3;
  let x_2054 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2056 : vec3<f32> = (x_2052 + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat6;
  let x_2061 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2059.x, x_2059.y, x_2059.z), vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : f32 = u_xlat78;
  u_xlat78 = max(x_2064, 1.17549435e-38f);
  let x_2067 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2067);
  let x_2069 : f32 = u_xlat78;
  let x_2071 : vec4<f32> = u_xlat6;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec3<f32> = u_xlat27;
  let x_2077 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_2076, vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
  let x_2080 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2080, 0.0f, 1.0f);
  let x_2083 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2085 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2088, 0.0f, 1.0f);
  let x_2090 : f32 = u_xlat78;
  let x_2091 : f32 = u_xlat78;
  u_xlat78 = (x_2090 * x_2091);
  let x_2093 : f32 = u_xlat78;
  let x_2095 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2093 * x_2095) + 1.00001001358032226562f);
  let x_2099 : f32 = u_xlat1;
  let x_2100 : f32 = u_xlat1;
  u_xlat1 = (x_2099 * x_2100);
  let x_2102 : f32 = u_xlat78;
  let x_2103 : f32 = u_xlat78;
  u_xlat78 = (x_2102 * x_2103);
  let x_2105 : f32 = u_xlat1;
  u_xlat1 = max(x_2105, 0.10000000149011611938f);
  let x_2108 : f32 = u_xlat78;
  let x_2109 : f32 = u_xlat1;
  u_xlat78 = (x_2108 * x_2109);
  let x_2111 : f32 = u_xlat81;
  let x_2112 : f32 = u_xlat78;
  u_xlat78 = (x_2111 * x_2112);
  let x_2114 : f32 = u_xlat82;
  let x_2115 : f32 = u_xlat78;
  u_xlat78 = (x_2114 / x_2115);
  let x_2117 : vec4<f32> = u_xlat0;
  let x_2119 : f32 = u_xlat78;
  let x_2122 : vec3<f32> = u_xlat5;
  let x_2123 : vec3<f32> = ((vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * vec3<f32>(x_2119, x_2119, x_2119)) + x_2122);
  let x_2124 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
  let x_2127 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2129 : f32 = x_1959.unity_LightData.y;
  u_xlat78 = min(x_2127, x_2129);
  let x_2132 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2132));
  let x_2136 : f32 = u_xlat28.x;
  let x_2139 : f32 = x_150.x_AdditionalShadowFadeParams.x;
  let x_2142 : f32 = x_150.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2136 * x_2139) + x_2142);
  let x_2144 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2144, 0.0f, 1.0f);
  let x_2147 : f32 = x_1781.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2149 : f32 = x_1781.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2151 : f32 = x_1781.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2153 : f32 = x_1781.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2154 : vec4<f32> = vec4<f32>(x_2147, x_2149, x_2151, x_2153);
  let x_2160 : vec4<bool> = (vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2154.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2160.x, x_2160.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2172 : u32 = u_xlatu_loop_1;
    let x_2173 : u32 = u_xlatu78;
    if ((x_2172 < x_2173)) {
    } else {
      break;
    }
    let x_2176 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2176 >> 2u);
    let x_2179 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2179 & 3u));
    let x_2182 : u32 = u_xlatu83;
    let x_2185 : vec4<f32> = x_1959.unity_LightIndices[bitcast<i32>(x_2182)];
    let x_2195 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2200 : vec4<u32> = indexable[x_2195];
    u_xlat83 = dot(x_2185, bitcast<vec4<f32>>(x_2200));
    let x_2204 : f32 = u_xlat83;
    u_xlati83 = i32(x_2204);
    let x_2206 : vec3<f32> = vs_TEXCOORD7;
    let x_2217 : i32 = u_xlati83;
    let x_2219 : vec4<f32> = x_2216.x_AdditionalLightsPosition[x_2217];
    let x_2222 : i32 = u_xlati83;
    let x_2224 : vec4<f32> = x_2216.x_AdditionalLightsPosition[x_2222];
    let x_2226 : vec3<f32> = ((-(x_2206) * vec3<f32>(x_2219.w, x_2219.w, x_2219.w)) + vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
    let x_2227 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
    let x_2229 : vec4<f32> = u_xlat9;
    let x_2231 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2229.x, x_2229.y, x_2229.z), vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
    let x_2234 : f32 = u_xlat84;
    u_xlat84 = max(x_2234, 0.00006103515625f);
    let x_2238 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2238);
    let x_2240 : f32 = u_xlat59;
    let x_2242 : vec4<f32> = u_xlat9;
    let x_2244 : vec3<f32> = (vec3<f32>(x_2240, x_2240, x_2240) * vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
    let x_2245 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
    let x_2248 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2248);
    let x_2250 : f32 = u_xlat84;
    let x_2251 : i32 = u_xlati83;
    let x_2253 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2251].x;
    u_xlat84 = (x_2250 * x_2253);
    let x_2255 : f32 = u_xlat84;
    let x_2257 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2255) * x_2257) + 1.0f);
    let x_2260 : f32 = u_xlat84;
    u_xlat84 = max(x_2260, 0.0f);
    let x_2262 : f32 = u_xlat84;
    let x_2263 : f32 = u_xlat84;
    u_xlat84 = (x_2262 * x_2263);
    let x_2265 : f32 = u_xlat84;
    let x_2266 : f32 = u_xlat85;
    u_xlat84 = (x_2265 * x_2266);
    let x_2268 : i32 = u_xlati83;
    let x_2270 : vec4<f32> = x_2216.x_AdditionalLightsSpotDir[x_2268];
    let x_2272 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2270.x, x_2270.y, x_2270.z), vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : f32 = u_xlat85;
    let x_2276 : i32 = u_xlati83;
    let x_2278 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2276].z;
    let x_2280 : i32 = u_xlati83;
    let x_2282 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2280].w;
    u_xlat85 = ((x_2275 * x_2278) + x_2282);
    let x_2284 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2284, 0.0f, 1.0f);
    let x_2286 : f32 = u_xlat85;
    let x_2287 : f32 = u_xlat85;
    u_xlat85 = (x_2286 * x_2287);
    let x_2289 : f32 = u_xlat84;
    let x_2290 : f32 = u_xlat85;
    u_xlat84 = (x_2289 * x_2290);
    let x_2294 : i32 = u_xlati83;
    let x_2296 : f32 = x_150.x_AdditionalShadowParams[x_2294].w;
    u_xlati85 = i32(x_2296);
    let x_2299 : i32 = u_xlati85;
    u_xlatb87 = (x_2299 >= 0i);
    let x_2301 : bool = u_xlatb87;
    if (x_2301) {
      let x_2305 : i32 = u_xlati83;
      let x_2307 : f32 = x_150.x_AdditionalShadowParams[x_2305].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2307, x_2307, x_2307, x_2307))));
      let x_2311 : bool = u_xlatb87;
      if (x_2311) {
        let x_2315 : vec4<f32> = u_xlat10;
        let x_2318 : vec4<f32> = u_xlat10;
        let x_2321 : vec4<bool> = (abs(vec4<f32>(x_2315.z, x_2315.z, x_2315.y, x_2315.z)) >= abs(vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.x)));
        let x_2323 : vec3<bool> = vec3<bool>(x_2321.x, x_2321.y, x_2321.z);
        let x_2324 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
        let x_2327 : bool = u_xlatb11.y;
        let x_2329 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2327 & x_2329);
        let x_2331 : vec4<f32> = u_xlat10;
        let x_2334 : vec4<bool> = (-(vec4<f32>(x_2331.z, x_2331.y, x_2331.z, x_2331.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2335 : vec3<bool> = vec3<bool>(x_2334.x, x_2334.y, x_2334.w);
        let x_2336 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2335.x, x_2335.y, x_2336.z, x_2335.z);
        let x_2339 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2339);
        let x_2344 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2344);
        let x_2349 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2349);
        let x_2352 : bool = u_xlatb11.z;
        if (x_2352) {
          let x_2357 : f32 = u_xlat11.y;
          x_2353 = x_2357;
        } else {
          let x_2359 : f32 = u_xlat88;
          x_2353 = x_2359;
        }
        let x_2360 : f32 = x_2353;
        u_xlat88 = x_2360;
        let x_2362 : bool = u_xlatb87;
        if (x_2362) {
          let x_2367 : f32 = u_xlat11.x;
          x_2363 = x_2367;
        } else {
          let x_2369 : f32 = u_xlat88;
          x_2363 = x_2369;
        }
        let x_2370 : f32 = x_2363;
        u_xlat87 = x_2370;
        let x_2371 : i32 = u_xlati83;
        let x_2373 : f32 = x_150.x_AdditionalShadowParams[x_2371].w;
        u_xlat88 = trunc(x_2373);
        let x_2375 : f32 = u_xlat87;
        let x_2376 : f32 = u_xlat88;
        u_xlat87 = (x_2375 + x_2376);
        let x_2378 : f32 = u_xlat87;
        u_xlati85 = i32(x_2378);
      }
      let x_2380 : i32 = u_xlati85;
      u_xlati85 = (x_2380 << bitcast<u32>(2i));
      let x_2382 : vec3<f32> = vs_TEXCOORD7;
      let x_2385 : i32 = u_xlati85;
      let x_2388 : i32 = u_xlati85;
      let x_2392 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2385 + 1i) / 4i)][((x_2388 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2382.y, x_2382.y, x_2382.y, x_2382.y) * x_2392);
      let x_2394 : i32 = u_xlati85;
      let x_2396 : i32 = u_xlati85;
      let x_2399 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[(x_2394 / 4i)][(x_2396 % 4i)];
      let x_2400 : vec3<f32> = vs_TEXCOORD7;
      let x_2403 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2399 * vec4<f32>(x_2400.x, x_2400.x, x_2400.x, x_2400.x)) + x_2403);
      let x_2405 : i32 = u_xlati85;
      let x_2408 : i32 = u_xlati85;
      let x_2412 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2405 + 2i) / 4i)][((x_2408 + 2i) % 4i)];
      let x_2413 : vec3<f32> = vs_TEXCOORD7;
      let x_2416 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2412 * vec4<f32>(x_2413.z, x_2413.z, x_2413.z, x_2413.z)) + x_2416);
      let x_2418 : vec4<f32> = u_xlat11;
      let x_2419 : i32 = u_xlati85;
      let x_2422 : i32 = u_xlati85;
      let x_2426 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2419 + 3i) / 4i)][((x_2422 + 3i) % 4i)];
      u_xlat11 = (x_2418 + x_2426);
      let x_2428 : vec4<f32> = u_xlat11;
      let x_2430 : vec4<f32> = u_xlat11;
      let x_2432 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) / vec3<f32>(x_2430.w, x_2430.w, x_2430.w));
      let x_2433 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
      let x_2436 : i32 = u_xlati83;
      let x_2438 : f32 = x_150.x_AdditionalShadowParams[x_2436].y;
      u_xlatb85 = (0.0f < x_2438);
      let x_2440 : bool = u_xlatb85;
      if (x_2440) {
        let x_2443 : i32 = u_xlati83;
        let x_2445 : f32 = x_150.x_AdditionalShadowParams[x_2443].y;
        u_xlatb85 = (1.0f == x_2445);
        let x_2447 : bool = u_xlatb85;
        if (x_2447) {
          let x_2450 : vec4<f32> = u_xlat11;
          let x_2454 : vec4<f32> = x_150.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2450.x, x_2450.y, x_2450.x, x_2450.y) + x_2454);
          let x_2457 : vec4<f32> = u_xlat12;
          let x_2458 : vec2<f32> = vec2<f32>(x_2457.x, x_2457.y);
          let x_2460 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
          let x_2468 : vec3<f32> = txVec30;
          let x_2470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2468.xy, x_2468.z);
          u_xlat13.x = x_2470;
          let x_2473 : vec4<f32> = u_xlat12;
          let x_2474 : vec2<f32> = vec2<f32>(x_2473.z, x_2473.w);
          let x_2476 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
          let x_2483 : vec3<f32> = txVec31;
          let x_2485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2483.xy, x_2483.z);
          u_xlat13.y = x_2485;
          let x_2487 : vec4<f32> = u_xlat11;
          let x_2491 : vec4<f32> = x_150.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2487.x, x_2487.y, x_2487.x, x_2487.y) + x_2491);
          let x_2494 : vec4<f32> = u_xlat12;
          let x_2495 : vec2<f32> = vec2<f32>(x_2494.x, x_2494.y);
          let x_2497 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
          let x_2504 : vec3<f32> = txVec32;
          let x_2506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
          u_xlat13.z = x_2506;
          let x_2509 : vec4<f32> = u_xlat12;
          let x_2510 : vec2<f32> = vec2<f32>(x_2509.z, x_2509.w);
          let x_2512 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
          let x_2519 : vec3<f32> = txVec33;
          let x_2521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2519.xy, x_2519.z);
          u_xlat13.w = x_2521;
          let x_2523 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2523, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2526 : i32 = u_xlati83;
          let x_2528 : f32 = x_150.x_AdditionalShadowParams[x_2526].y;
          u_xlatb87 = (2.0f == x_2528);
          let x_2530 : bool = u_xlatb87;
          if (x_2530) {
            let x_2533 : vec4<f32> = u_xlat11;
            let x_2537 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2540 : vec2<f32> = ((vec2<f32>(x_2533.x, x_2533.y) * vec2<f32>(x_2537.z, x_2537.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2541 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2540.x, x_2540.y, x_2541.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat12;
            let x_2545 : vec2<f32> = floor(vec2<f32>(x_2543.x, x_2543.y));
            let x_2546 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2552 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2555 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2552.z, x_2552.w)) + -(vec2<f32>(x_2555.x, x_2555.y)));
            let x_2559 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2559.x, x_2559.x, x_2559.y, x_2559.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2562 : vec4<f32> = u_xlat13;
            let x_2564 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2562.x, x_2562.x, x_2562.z, x_2562.z) * vec4<f32>(x_2564.x, x_2564.x, x_2564.z, x_2564.z));
            let x_2567 : vec4<f32> = u_xlat14;
            let x_2569 : vec2<f32> = (vec2<f32>(x_2567.y, x_2567.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2570 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2569.x, x_2570.y, x_2569.y, x_2570.w);
            let x_2572 : vec4<f32> = u_xlat14;
            let x_2575 : vec2<f32> = u_xlat64;
            let x_2577 : vec2<f32> = ((vec2<f32>(x_2572.x, x_2572.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2575));
            let x_2578 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2577.x, x_2577.y, x_2578.z, x_2578.w);
            let x_2580 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2580) + vec2<f32>(1.0f, 1.0f));
            let x_2583 : vec2<f32> = u_xlat64;
            let x_2584 : vec2<f32> = min(x_2583, vec2<f32>(0.0f, 0.0f));
            let x_2585 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat15;
            let x_2590 : vec4<f32> = u_xlat15;
            let x_2593 : vec2<f32> = u_xlat66;
            let x_2594 : vec2<f32> = ((-(vec2<f32>(x_2587.x, x_2587.y)) * vec2<f32>(x_2590.x, x_2590.y)) + x_2593);
            let x_2595 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
            let x_2597 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2597, vec2<f32>(0.0f, 0.0f));
            let x_2599 : vec2<f32> = u_xlat64;
            let x_2601 : vec2<f32> = u_xlat64;
            let x_2603 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2599) * x_2601) + vec2<f32>(x_2603.y, x_2603.w));
            let x_2606 : vec4<f32> = u_xlat15;
            let x_2608 : vec2<f32> = (vec2<f32>(x_2606.x, x_2606.y) + vec2<f32>(1.0f, 1.0f));
            let x_2609 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2611 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2611 + vec2<f32>(1.0f, 1.0f));
            let x_2613 : vec4<f32> = u_xlat14;
            let x_2615 : vec2<f32> = (vec2<f32>(x_2613.x, x_2613.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2616 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2615.x, x_2615.y, x_2616.z, x_2616.w);
            let x_2618 : vec2<f32> = u_xlat66;
            let x_2619 : vec2<f32> = (x_2618 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
            let x_2622 : vec4<f32> = u_xlat15;
            let x_2624 : vec2<f32> = (vec2<f32>(x_2622.x, x_2622.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2625 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec2<f32> = u_xlat64;
            let x_2628 : vec2<f32> = (x_2627 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2629 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2628.x, x_2628.y, x_2629.z, x_2629.w);
            let x_2631 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2631.y, x_2631.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2635 : f32 = u_xlat15.x;
            u_xlat16.z = x_2635;
            let x_2638 : f32 = u_xlat64.x;
            u_xlat16.w = x_2638;
            let x_2641 : f32 = u_xlat17.x;
            u_xlat14.z = x_2641;
            let x_2644 : f32 = u_xlat13.x;
            u_xlat14.w = x_2644;
            let x_2646 : vec4<f32> = u_xlat14;
            let x_2648 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2646.z, x_2646.w, x_2646.x, x_2646.z) + vec4<f32>(x_2648.z, x_2648.w, x_2648.x, x_2648.z));
            let x_2652 : f32 = u_xlat16.y;
            u_xlat15.z = x_2652;
            let x_2655 : f32 = u_xlat64.y;
            u_xlat15.w = x_2655;
            let x_2658 : f32 = u_xlat14.y;
            u_xlat17.z = x_2658;
            let x_2661 : f32 = u_xlat13.z;
            u_xlat17.w = x_2661;
            let x_2663 : vec4<f32> = u_xlat15;
            let x_2665 : vec4<f32> = u_xlat17;
            let x_2667 : vec3<f32> = (vec3<f32>(x_2663.z, x_2663.y, x_2663.w) + vec3<f32>(x_2665.z, x_2665.y, x_2665.w));
            let x_2668 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
            let x_2670 : vec4<f32> = u_xlat14;
            let x_2672 : vec4<f32> = u_xlat18;
            let x_2674 : vec3<f32> = (vec3<f32>(x_2670.x, x_2670.z, x_2670.w) / vec3<f32>(x_2672.z, x_2672.w, x_2672.y));
            let x_2675 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat14;
            let x_2679 : vec3<f32> = (vec3<f32>(x_2677.x, x_2677.y, x_2677.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2680 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2680.w);
            let x_2682 : vec4<f32> = u_xlat17;
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2686 : vec3<f32> = (vec3<f32>(x_2682.z, x_2682.y, x_2682.w) / vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
            let x_2687 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
            let x_2689 : vec4<f32> = u_xlat15;
            let x_2691 : vec3<f32> = (vec3<f32>(x_2689.x, x_2689.y, x_2689.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2692 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat14;
            let x_2697 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2699 : vec3<f32> = (vec3<f32>(x_2694.y, x_2694.x, x_2694.z) * vec3<f32>(x_2697.x, x_2697.x, x_2697.x));
            let x_2700 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
            let x_2702 : vec4<f32> = u_xlat15;
            let x_2705 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2707 : vec3<f32> = (vec3<f32>(x_2702.x, x_2702.y, x_2702.z) * vec3<f32>(x_2705.y, x_2705.y, x_2705.y));
            let x_2708 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
            let x_2711 : f32 = u_xlat15.x;
            u_xlat14.w = x_2711;
            let x_2713 : vec4<f32> = u_xlat12;
            let x_2716 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2719 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y) * vec4<f32>(x_2716.x, x_2716.y, x_2716.x, x_2716.y)) + vec4<f32>(x_2719.y, x_2719.w, x_2719.x, x_2719.w));
            let x_2722 : vec4<f32> = u_xlat12;
            let x_2725 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2728 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2722.x, x_2722.y) * vec2<f32>(x_2725.x, x_2725.y)) + vec2<f32>(x_2728.z, x_2728.w));
            let x_2732 : f32 = u_xlat14.y;
            u_xlat15.w = x_2732;
            let x_2734 : vec4<f32> = u_xlat15;
            let x_2735 : vec2<f32> = vec2<f32>(x_2734.y, x_2734.z);
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2736.x, x_2735.x, x_2736.z, x_2735.y);
            let x_2738 : vec4<f32> = u_xlat12;
            let x_2741 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2744 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.y) * vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.y)) + vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2744.y));
            let x_2747 : vec4<f32> = u_xlat12;
            let x_2750 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y) * vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y)) + vec4<f32>(x_2753.w, x_2753.y, x_2753.w, x_2753.z));
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2759 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.x, x_2762.w, x_2762.z, x_2762.w));
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2767 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2765.x, x_2765.x, x_2765.x, x_2765.y) * vec4<f32>(x_2767.z, x_2767.w, x_2767.y, x_2767.z));
            let x_2771 : vec4<f32> = u_xlat13;
            let x_2773 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2771.y, x_2771.y, x_2771.z, x_2771.z) * x_2773);
            let x_2776 : f32 = u_xlat13.z;
            let x_2778 : f32 = u_xlat18.y;
            u_xlat87 = (x_2776 * x_2778);
            let x_2781 : vec4<f32> = u_xlat16;
            let x_2782 : vec2<f32> = vec2<f32>(x_2781.x, x_2781.y);
            let x_2784 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2782.x, x_2782.y, x_2784);
            let x_2791 : vec3<f32> = txVec34;
            let x_2793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2791.xy, x_2791.z);
            u_xlat88 = x_2793;
            let x_2795 : vec4<f32> = u_xlat16;
            let x_2796 : vec2<f32> = vec2<f32>(x_2795.z, x_2795.w);
            let x_2798 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2796.x, x_2796.y, x_2798);
            let x_2806 : vec3<f32> = txVec35;
            let x_2808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2806.xy, x_2806.z);
            u_xlat89 = x_2808;
            let x_2809 : f32 = u_xlat89;
            let x_2811 : f32 = u_xlat19.y;
            u_xlat89 = (x_2809 * x_2811);
            let x_2814 : f32 = u_xlat19.x;
            let x_2815 : f32 = u_xlat88;
            let x_2817 : f32 = u_xlat89;
            u_xlat88 = ((x_2814 * x_2815) + x_2817);
            let x_2820 : vec2<f32> = u_xlat64;
            let x_2822 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
            let x_2829 : vec3<f32> = txVec36;
            let x_2831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2829.xy, x_2829.z);
            u_xlat89 = x_2831;
            let x_2833 : f32 = u_xlat19.z;
            let x_2834 : f32 = u_xlat89;
            let x_2836 : f32 = u_xlat88;
            u_xlat88 = ((x_2833 * x_2834) + x_2836);
            let x_2839 : vec4<f32> = u_xlat15;
            let x_2840 : vec2<f32> = vec2<f32>(x_2839.x, x_2839.y);
            let x_2842 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec37;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat89 = x_2851;
            let x_2853 : f32 = u_xlat19.w;
            let x_2854 : f32 = u_xlat89;
            let x_2856 : f32 = u_xlat88;
            u_xlat88 = ((x_2853 * x_2854) + x_2856);
            let x_2859 : vec4<f32> = u_xlat17;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.x, x_2859.y);
            let x_2862 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec38;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat89 = x_2871;
            let x_2873 : f32 = u_xlat20.x;
            let x_2874 : f32 = u_xlat89;
            let x_2876 : f32 = u_xlat88;
            u_xlat88 = ((x_2873 * x_2874) + x_2876);
            let x_2879 : vec4<f32> = u_xlat17;
            let x_2880 : vec2<f32> = vec2<f32>(x_2879.z, x_2879.w);
            let x_2882 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec39;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat89 = x_2891;
            let x_2893 : f32 = u_xlat20.y;
            let x_2894 : f32 = u_xlat89;
            let x_2896 : f32 = u_xlat88;
            u_xlat88 = ((x_2893 * x_2894) + x_2896);
            let x_2899 : vec4<f32> = u_xlat15;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.z, x_2899.w);
            let x_2902 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2909 : vec3<f32> = txVec40;
            let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
            u_xlat89 = x_2911;
            let x_2913 : f32 = u_xlat20.z;
            let x_2914 : f32 = u_xlat89;
            let x_2916 : f32 = u_xlat88;
            u_xlat88 = ((x_2913 * x_2914) + x_2916);
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec2<f32> = vec2<f32>(x_2919.x, x_2919.y);
            let x_2922 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
            let x_2929 : vec3<f32> = txVec41;
            let x_2931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
            u_xlat89 = x_2931;
            let x_2933 : f32 = u_xlat20.w;
            let x_2934 : f32 = u_xlat89;
            let x_2936 : f32 = u_xlat88;
            u_xlat88 = ((x_2933 * x_2934) + x_2936);
            let x_2939 : vec4<f32> = u_xlat14;
            let x_2940 : vec2<f32> = vec2<f32>(x_2939.z, x_2939.w);
            let x_2942 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2940.x, x_2940.y, x_2942);
            let x_2949 : vec3<f32> = txVec42;
            let x_2951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
            u_xlat89 = x_2951;
            let x_2952 : f32 = u_xlat87;
            let x_2953 : f32 = u_xlat89;
            let x_2955 : f32 = u_xlat88;
            u_xlat85 = ((x_2952 * x_2953) + x_2955);
          } else {
            let x_2958 : vec4<f32> = u_xlat11;
            let x_2961 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2964 : vec2<f32> = ((vec2<f32>(x_2958.x, x_2958.y) * vec2<f32>(x_2961.z, x_2961.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2965 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2964.x, x_2964.y, x_2965.z, x_2965.w);
            let x_2967 : vec4<f32> = u_xlat12;
            let x_2969 : vec2<f32> = floor(vec2<f32>(x_2967.x, x_2967.y));
            let x_2970 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2975 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(x_2975.z, x_2975.w)) + -(vec2<f32>(x_2978.x, x_2978.y)));
            let x_2982 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2982.x, x_2982.x, x_2982.y, x_2982.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2985.x, x_2985.x, x_2985.z, x_2985.z) * vec4<f32>(x_2987.x, x_2987.x, x_2987.z, x_2987.z));
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2992 : vec2<f32> = (vec2<f32>(x_2990.y, x_2990.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2993 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2993.x, x_2992.x, x_2993.z, x_2992.y);
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2998 : vec2<f32> = u_xlat64;
            let x_3000 : vec2<f32> = ((vec2<f32>(x_2995.x, x_2995.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2998));
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3000.x, x_3001.y, x_3000.y, x_3001.w);
            let x_3003 : vec2<f32> = u_xlat64;
            let x_3005 : vec2<f32> = (-(x_3003) + vec2<f32>(1.0f, 1.0f));
            let x_3006 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3005.x, x_3005.y, x_3006.z, x_3006.w);
            let x_3008 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3008, vec2<f32>(0.0f, 0.0f));
            let x_3010 : vec2<f32> = u_xlat66;
            let x_3012 : vec2<f32> = u_xlat66;
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3016 : vec2<f32> = ((-(x_3010) * x_3012) + vec2<f32>(x_3014.x, x_3014.y));
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3019 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3019, vec2<f32>(0.0f, 0.0f));
            let x_3022 : vec2<f32> = u_xlat66;
            let x_3024 : vec2<f32> = u_xlat66;
            let x_3026 : vec4<f32> = u_xlat13;
            let x_3028 : vec2<f32> = ((-(x_3022) * x_3024) + vec2<f32>(x_3026.y, x_3026.w));
            let x_3029 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3028.x, x_3029.y, x_3028.y);
            let x_3031 : vec4<f32> = u_xlat14;
            let x_3033 : vec2<f32> = (vec2<f32>(x_3031.x, x_3031.y) + vec2<f32>(2.0f, 2.0f));
            let x_3034 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3033.x, x_3033.y, x_3034.z, x_3034.w);
            let x_3036 : vec3<f32> = u_xlat39;
            let x_3038 : vec2<f32> = (vec2<f32>(x_3036.x, x_3036.z) + vec2<f32>(2.0f, 2.0f));
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3039.x, x_3038.x, x_3039.z, x_3038.y);
            let x_3042 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3042 * 0.08163200318813323975f);
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3047 : vec3<f32> = (vec3<f32>(x_3045.z, x_3045.x, x_3045.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3048 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3052 : vec2<f32> = (vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3053 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
            let x_3056 : f32 = u_xlat17.y;
            u_xlat16.x = x_3056;
            let x_3058 : vec2<f32> = u_xlat64;
            let x_3061 : vec2<f32> = ((vec2<f32>(x_3058.x, x_3058.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3062 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3062.x, x_3061.x, x_3062.z, x_3061.y);
            let x_3064 : vec2<f32> = u_xlat64;
            let x_3067 : vec2<f32> = ((vec2<f32>(x_3064.x, x_3064.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3067.x, x_3068.y, x_3067.y, x_3068.w);
            let x_3071 : f32 = u_xlat13.x;
            u_xlat14.y = x_3071;
            let x_3074 : f32 = u_xlat15.y;
            u_xlat14.w = x_3074;
            let x_3076 : vec4<f32> = u_xlat14;
            let x_3077 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3076 + x_3077);
            let x_3079 : vec2<f32> = u_xlat64;
            let x_3082 : vec2<f32> = ((vec2<f32>(x_3079.y, x_3079.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3083 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3083.x, x_3082.x, x_3083.z, x_3082.y);
            let x_3085 : vec2<f32> = u_xlat64;
            let x_3088 : vec2<f32> = ((vec2<f32>(x_3085.y, x_3085.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3089 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3088.x, x_3089.y, x_3088.y, x_3089.w);
            let x_3092 : f32 = u_xlat13.y;
            u_xlat15.y = x_3092;
            let x_3094 : vec4<f32> = u_xlat15;
            let x_3095 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3094 + x_3095);
            let x_3097 : vec4<f32> = u_xlat14;
            let x_3098 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3097 / x_3098);
            let x_3100 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3100 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3102 : vec4<f32> = u_xlat15;
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3102 / x_3103);
            let x_3105 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3105 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3107 : vec4<f32> = u_xlat14;
            let x_3110 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3107.w, x_3107.x, x_3107.y, x_3107.z) * vec4<f32>(x_3110.x, x_3110.x, x_3110.x, x_3110.x));
            let x_3113 : vec4<f32> = u_xlat15;
            let x_3116 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3113.x, x_3113.w, x_3113.y, x_3113.z) * vec4<f32>(x_3116.y, x_3116.y, x_3116.y, x_3116.y));
            let x_3119 : vec4<f32> = u_xlat14;
            let x_3120 : vec3<f32> = vec3<f32>(x_3119.y, x_3119.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3120.x, x_3121.y, x_3120.y, x_3120.z);
            let x_3124 : f32 = u_xlat15.x;
            u_xlat17.y = x_3124;
            let x_3126 : vec4<f32> = u_xlat12;
            let x_3129 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.y) * vec4<f32>(x_3129.x, x_3129.y, x_3129.x, x_3129.y)) + vec4<f32>(x_3132.x, x_3132.y, x_3132.z, x_3132.y));
            let x_3135 : vec4<f32> = u_xlat12;
            let x_3138 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3141 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3135.x, x_3135.y) * vec2<f32>(x_3138.x, x_3138.y)) + vec2<f32>(x_3141.w, x_3141.y));
            let x_3145 : f32 = u_xlat17.y;
            u_xlat14.y = x_3145;
            let x_3148 : f32 = u_xlat15.z;
            u_xlat17.y = x_3148;
            let x_3150 : vec4<f32> = u_xlat12;
            let x_3153 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3156.y));
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat17;
            let x_3167 : vec2<f32> = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3162.x, x_3162.y)) + vec2<f32>(x_3165.w, x_3165.y));
            let x_3168 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3167.x, x_3167.y, x_3168.z, x_3168.w);
            let x_3171 : f32 = u_xlat17.y;
            u_xlat14.z = x_3171;
            let x_3174 : vec4<f32> = u_xlat12;
            let x_3177 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) * vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y)) + vec4<f32>(x_3180.x, x_3180.y, x_3180.x, x_3180.z));
            let x_3184 : f32 = u_xlat15.w;
            u_xlat17.y = x_3184;
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3190 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3193.y));
            let x_3197 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3203 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3197.x, x_3197.y) * vec2<f32>(x_3200.x, x_3200.y)) + vec2<f32>(x_3203.w, x_3203.y));
            let x_3207 : f32 = u_xlat17.y;
            u_xlat14.w = x_3207;
            let x_3210 : vec4<f32> = u_xlat12;
            let x_3213 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3216 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3210.x, x_3210.y) * vec2<f32>(x_3213.x, x_3213.y)) + vec2<f32>(x_3216.x, x_3216.w));
            let x_3219 : vec4<f32> = u_xlat17;
            let x_3220 : vec3<f32> = vec3<f32>(x_3219.x, x_3219.z, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3220.x, x_3221.y, x_3220.y, x_3220.z);
            let x_3223 : vec4<f32> = u_xlat12;
            let x_3226 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3229 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3223.x, x_3223.y, x_3223.x, x_3223.y) * vec4<f32>(x_3226.x, x_3226.y, x_3226.x, x_3226.y)) + vec4<f32>(x_3229.x, x_3229.y, x_3229.z, x_3229.y));
            let x_3233 : vec4<f32> = u_xlat12;
            let x_3236 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.w, x_3239.y));
            let x_3243 : f32 = u_xlat14.x;
            u_xlat15.x = x_3243;
            let x_3245 : vec4<f32> = u_xlat12;
            let x_3248 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3251 : vec4<f32> = u_xlat15;
            let x_3253 : vec2<f32> = ((vec2<f32>(x_3245.x, x_3245.y) * vec2<f32>(x_3248.x, x_3248.y)) + vec2<f32>(x_3251.x, x_3251.y));
            let x_3254 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
            let x_3257 : vec4<f32> = u_xlat13;
            let x_3259 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3257.x, x_3257.x, x_3257.x, x_3257.x) * x_3259);
            let x_3262 : vec4<f32> = u_xlat13;
            let x_3264 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3262.y, x_3262.y, x_3262.y, x_3262.y) * x_3264);
            let x_3267 : vec4<f32> = u_xlat13;
            let x_3269 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3267.z, x_3267.z, x_3267.z, x_3267.z) * x_3269);
            let x_3271 : vec4<f32> = u_xlat13;
            let x_3273 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3271.w, x_3271.w, x_3271.w, x_3271.w) * x_3273);
            let x_3276 : vec4<f32> = u_xlat18;
            let x_3277 : vec2<f32> = vec2<f32>(x_3276.x, x_3276.y);
            let x_3279 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
            let x_3286 : vec3<f32> = txVec43;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat87 = x_3288;
            let x_3290 : vec4<f32> = u_xlat18;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec44;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat88 = x_3302;
            let x_3303 : f32 = u_xlat88;
            let x_3305 : f32 = u_xlat23.y;
            u_xlat88 = (x_3303 * x_3305);
            let x_3308 : f32 = u_xlat23.x;
            let x_3309 : f32 = u_xlat87;
            let x_3311 : f32 = u_xlat88;
            u_xlat87 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec2<f32> = u_xlat64;
            let x_3316 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
            let x_3323 : vec3<f32> = txVec45;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat88 = x_3325;
            let x_3327 : f32 = u_xlat23.z;
            let x_3328 : f32 = u_xlat88;
            let x_3330 : f32 = u_xlat87;
            u_xlat87 = ((x_3327 * x_3328) + x_3330);
            let x_3333 : vec4<f32> = u_xlat21;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.x, x_3333.y);
            let x_3336 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec46;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat88 = x_3345;
            let x_3347 : f32 = u_xlat23.w;
            let x_3348 : f32 = u_xlat88;
            let x_3350 : f32 = u_xlat87;
            u_xlat87 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec4<f32> = u_xlat19;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.x, x_3353.y);
            let x_3356 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec47;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat88 = x_3365;
            let x_3367 : f32 = u_xlat24.x;
            let x_3368 : f32 = u_xlat88;
            let x_3370 : f32 = u_xlat87;
            u_xlat87 = ((x_3367 * x_3368) + x_3370);
            let x_3373 : vec4<f32> = u_xlat19;
            let x_3374 : vec2<f32> = vec2<f32>(x_3373.z, x_3373.w);
            let x_3376 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3374.x, x_3374.y, x_3376);
            let x_3383 : vec3<f32> = txVec48;
            let x_3385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3383.xy, x_3383.z);
            u_xlat88 = x_3385;
            let x_3387 : f32 = u_xlat24.y;
            let x_3388 : f32 = u_xlat88;
            let x_3390 : f32 = u_xlat87;
            u_xlat87 = ((x_3387 * x_3388) + x_3390);
            let x_3393 : vec4<f32> = u_xlat20;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.x, x_3393.y);
            let x_3396 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec49;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat88 = x_3405;
            let x_3407 : f32 = u_xlat24.z;
            let x_3408 : f32 = u_xlat88;
            let x_3410 : f32 = u_xlat87;
            u_xlat87 = ((x_3407 * x_3408) + x_3410);
            let x_3413 : vec4<f32> = u_xlat21;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.z, x_3413.w);
            let x_3416 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec50;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat88 = x_3425;
            let x_3427 : f32 = u_xlat24.w;
            let x_3428 : f32 = u_xlat88;
            let x_3430 : f32 = u_xlat87;
            u_xlat87 = ((x_3427 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat22;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.x, x_3433.y);
            let x_3436 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec51;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat88 = x_3445;
            let x_3447 : f32 = u_xlat25.x;
            let x_3448 : f32 = u_xlat88;
            let x_3450 : f32 = u_xlat87;
            u_xlat87 = ((x_3447 * x_3448) + x_3450);
            let x_3453 : vec4<f32> = u_xlat22;
            let x_3454 : vec2<f32> = vec2<f32>(x_3453.z, x_3453.w);
            let x_3456 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec52;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat88 = x_3465;
            let x_3467 : f32 = u_xlat25.y;
            let x_3468 : f32 = u_xlat88;
            let x_3470 : f32 = u_xlat87;
            u_xlat87 = ((x_3467 * x_3468) + x_3470);
            let x_3473 : vec2<f32> = u_xlat40;
            let x_3475 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec53;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat88 = x_3484;
            let x_3486 : f32 = u_xlat25.z;
            let x_3487 : f32 = u_xlat88;
            let x_3489 : f32 = u_xlat87;
            u_xlat87 = ((x_3486 * x_3487) + x_3489);
            let x_3492 : vec2<f32> = u_xlat72;
            let x_3494 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec54;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat88 = x_3503;
            let x_3505 : f32 = u_xlat25.w;
            let x_3506 : f32 = u_xlat88;
            let x_3508 : f32 = u_xlat87;
            u_xlat87 = ((x_3505 * x_3506) + x_3508);
            let x_3511 : vec4<f32> = u_xlat17;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.x, x_3511.y);
            let x_3514 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec55;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat88 = x_3523;
            let x_3525 : f32 = u_xlat13.x;
            let x_3526 : f32 = u_xlat88;
            let x_3528 : f32 = u_xlat87;
            u_xlat87 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec4<f32> = u_xlat17;
            let x_3532 : vec2<f32> = vec2<f32>(x_3531.z, x_3531.w);
            let x_3534 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec56;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat88 = x_3543;
            let x_3545 : f32 = u_xlat13.y;
            let x_3546 : f32 = u_xlat88;
            let x_3548 : f32 = u_xlat87;
            u_xlat87 = ((x_3545 * x_3546) + x_3548);
            let x_3551 : vec2<f32> = u_xlat67;
            let x_3553 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec57;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat88 = x_3562;
            let x_3564 : f32 = u_xlat13.z;
            let x_3565 : f32 = u_xlat88;
            let x_3567 : f32 = u_xlat87;
            u_xlat87 = ((x_3564 * x_3565) + x_3567);
            let x_3570 : vec4<f32> = u_xlat12;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
            let x_3573 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec58;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat88 = x_3582;
            let x_3584 : f32 = u_xlat13.w;
            let x_3585 : f32 = u_xlat88;
            let x_3587 : f32 = u_xlat87;
            u_xlat85 = ((x_3584 * x_3585) + x_3587);
          }
        }
      } else {
        let x_3591 : vec4<f32> = u_xlat11;
        let x_3592 : vec2<f32> = vec2<f32>(x_3591.x, x_3591.y);
        let x_3594 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
        let x_3601 : vec3<f32> = txVec59;
        let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
        u_xlat85 = x_3603;
      }
      let x_3604 : i32 = u_xlati83;
      let x_3606 : f32 = x_150.x_AdditionalShadowParams[x_3604].x;
      u_xlat87 = (1.0f + -(x_3606));
      let x_3609 : f32 = u_xlat85;
      let x_3610 : i32 = u_xlati83;
      let x_3612 : f32 = x_150.x_AdditionalShadowParams[x_3610].x;
      let x_3614 : f32 = u_xlat87;
      u_xlat85 = ((x_3609 * x_3612) + x_3614);
      let x_3617 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3617);
      let x_3621 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3621 >= 1.0f);
      let x_3623 : bool = u_xlatb87;
      let x_3624 : bool = u_xlatb88;
      u_xlatb87 = (x_3623 | x_3624);
      let x_3626 : bool = u_xlatb87;
      let x_3627 : f32 = u_xlat85;
      u_xlat85 = select(x_3627, 1.0f, x_3626);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3630 : f32 = u_xlat85;
    u_xlat87 = (-(x_3630) + 1.0f);
    let x_3633 : f32 = u_xlat1;
    let x_3634 : f32 = u_xlat87;
    let x_3636 : f32 = u_xlat85;
    u_xlat85 = ((x_3633 * x_3634) + x_3636);
    let x_3639 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3639 & 31i)));
    let x_3643 : i32 = u_xlati87;
    let x_3646 : f32 = x_1781.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3643) & bitcast<u32>(x_3646)));
    let x_3650 : i32 = u_xlati87;
    if ((x_3650 != 0i)) {
      let x_3654 : i32 = u_xlati83;
      let x_3656 : f32 = x_1781.x_AdditionalLightsLightTypes[x_3654].el;
      u_xlati87 = i32(x_3656);
      let x_3659 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3659 != 0i));
      let x_3663 : i32 = u_xlati83;
      u_xlati11 = (x_3663 << bitcast<u32>(2i));
      let x_3665 : i32 = u_xlati88;
      if ((x_3665 != 0i)) {
        let x_3670 : vec3<f32> = vs_TEXCOORD7;
        let x_3672 : i32 = u_xlati11;
        let x_3675 : i32 = u_xlati11;
        let x_3679 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3672 + 1i) / 4i)][((x_3675 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3670.y, x_3670.y, x_3670.y) * vec3<f32>(x_3679.x, x_3679.y, x_3679.w));
        let x_3682 : i32 = u_xlati11;
        let x_3684 : i32 = u_xlati11;
        let x_3687 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[(x_3682 / 4i)][(x_3684 % 4i)];
        let x_3689 : vec3<f32> = vs_TEXCOORD7;
        let x_3692 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3687.x, x_3687.y, x_3687.w) * vec3<f32>(x_3689.x, x_3689.x, x_3689.x)) + x_3692);
        let x_3694 : i32 = u_xlati11;
        let x_3697 : i32 = u_xlati11;
        let x_3701 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3694 + 2i) / 4i)][((x_3697 + 2i) % 4i)];
        let x_3703 : vec3<f32> = vs_TEXCOORD7;
        let x_3706 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3701.x, x_3701.y, x_3701.w) * vec3<f32>(x_3703.z, x_3703.z, x_3703.z)) + x_3706);
        let x_3708 : vec3<f32> = u_xlat37;
        let x_3709 : i32 = u_xlati11;
        let x_3712 : i32 = u_xlati11;
        let x_3716 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3709 + 3i) / 4i)][((x_3712 + 3i) % 4i)];
        u_xlat37 = (x_3708 + vec3<f32>(x_3716.x, x_3716.y, x_3716.w));
        let x_3719 : vec3<f32> = u_xlat37;
        let x_3721 : vec3<f32> = u_xlat37;
        let x_3723 : vec2<f32> = (vec2<f32>(x_3719.x, x_3719.y) / vec2<f32>(x_3721.z, x_3721.z));
        let x_3724 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3723.x, x_3723.y, x_3724.z);
        let x_3726 : vec3<f32> = u_xlat37;
        let x_3729 : vec2<f32> = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3730 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3729.x, x_3729.y, x_3730.z);
        let x_3732 : vec3<f32> = u_xlat37;
        let x_3736 : vec2<f32> = clamp(vec2<f32>(x_3732.x, x_3732.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3737 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3736.x, x_3736.y, x_3737.z);
        let x_3739 : i32 = u_xlati83;
        let x_3741 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_3739];
        let x_3743 : vec3<f32> = u_xlat37;
        let x_3746 : i32 = u_xlati83;
        let x_3748 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_3746];
        let x_3750 : vec2<f32> = ((vec2<f32>(x_3741.x, x_3741.y) * vec2<f32>(x_3743.x, x_3743.y)) + vec2<f32>(x_3748.z, x_3748.w));
        let x_3751 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3750.x, x_3750.y, x_3751.z);
      } else {
        let x_3754 : i32 = u_xlati87;
        u_xlatb87 = (x_3754 == 1i);
        let x_3756 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3756);
        let x_3758 : i32 = u_xlati87;
        if ((x_3758 != 0i)) {
          let x_3762 : vec3<f32> = vs_TEXCOORD7;
          let x_3764 : i32 = u_xlati11;
          let x_3767 : i32 = u_xlati11;
          let x_3771 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3764 + 1i) / 4i)][((x_3767 + 1i) % 4i)];
          let x_3773 : vec2<f32> = (vec2<f32>(x_3762.y, x_3762.y) * vec2<f32>(x_3771.x, x_3771.y));
          let x_3774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3773.x, x_3773.y, x_3774.z, x_3774.w);
          let x_3776 : i32 = u_xlati11;
          let x_3778 : i32 = u_xlati11;
          let x_3781 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[(x_3776 / 4i)][(x_3778 % 4i)];
          let x_3783 : vec3<f32> = vs_TEXCOORD7;
          let x_3786 : vec4<f32> = u_xlat12;
          let x_3788 : vec2<f32> = ((vec2<f32>(x_3781.x, x_3781.y) * vec2<f32>(x_3783.x, x_3783.x)) + vec2<f32>(x_3786.x, x_3786.y));
          let x_3789 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3788.x, x_3788.y, x_3789.z, x_3789.w);
          let x_3791 : i32 = u_xlati11;
          let x_3794 : i32 = u_xlati11;
          let x_3798 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3791 + 2i) / 4i)][((x_3794 + 2i) % 4i)];
          let x_3800 : vec3<f32> = vs_TEXCOORD7;
          let x_3803 : vec4<f32> = u_xlat12;
          let x_3805 : vec2<f32> = ((vec2<f32>(x_3798.x, x_3798.y) * vec2<f32>(x_3800.z, x_3800.z)) + vec2<f32>(x_3803.x, x_3803.y));
          let x_3806 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3805.x, x_3805.y, x_3806.z, x_3806.w);
          let x_3808 : vec4<f32> = u_xlat12;
          let x_3810 : i32 = u_xlati11;
          let x_3813 : i32 = u_xlati11;
          let x_3817 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3810 + 3i) / 4i)][((x_3813 + 3i) % 4i)];
          let x_3819 : vec2<f32> = (vec2<f32>(x_3808.x, x_3808.y) + vec2<f32>(x_3817.x, x_3817.y));
          let x_3820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3819.x, x_3819.y, x_3820.z, x_3820.w);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3825 : vec2<f32> = ((vec2<f32>(x_3822.x, x_3822.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3826 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3825.x, x_3825.y, x_3826.z, x_3826.w);
          let x_3828 : vec4<f32> = u_xlat12;
          let x_3830 : vec2<f32> = fract(vec2<f32>(x_3828.x, x_3828.y));
          let x_3831 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3830.x, x_3830.y, x_3831.z, x_3831.w);
          let x_3833 : i32 = u_xlati83;
          let x_3835 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_3833];
          let x_3837 : vec4<f32> = u_xlat12;
          let x_3840 : i32 = u_xlati83;
          let x_3842 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_3840];
          let x_3844 : vec2<f32> = ((vec2<f32>(x_3835.x, x_3835.y) * vec2<f32>(x_3837.x, x_3837.y)) + vec2<f32>(x_3842.z, x_3842.w));
          let x_3845 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3844.x, x_3844.y, x_3845.z);
        } else {
          let x_3848 : vec3<f32> = vs_TEXCOORD7;
          let x_3850 : i32 = u_xlati11;
          let x_3853 : i32 = u_xlati11;
          let x_3857 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3850 + 1i) / 4i)][((x_3853 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3848.y, x_3848.y, x_3848.y, x_3848.y) * x_3857);
          let x_3859 : i32 = u_xlati11;
          let x_3861 : i32 = u_xlati11;
          let x_3864 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[(x_3859 / 4i)][(x_3861 % 4i)];
          let x_3865 : vec3<f32> = vs_TEXCOORD7;
          let x_3868 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3864 * vec4<f32>(x_3865.x, x_3865.x, x_3865.x, x_3865.x)) + x_3868);
          let x_3870 : i32 = u_xlati11;
          let x_3873 : i32 = u_xlati11;
          let x_3877 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3870 + 2i) / 4i)][((x_3873 + 2i) % 4i)];
          let x_3878 : vec3<f32> = vs_TEXCOORD7;
          let x_3881 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3877 * vec4<f32>(x_3878.z, x_3878.z, x_3878.z, x_3878.z)) + x_3881);
          let x_3883 : vec4<f32> = u_xlat12;
          let x_3884 : i32 = u_xlati11;
          let x_3887 : i32 = u_xlati11;
          let x_3891 : vec4<f32> = x_1781.x_AdditionalLightsWorldToLights[((x_3884 + 3i) / 4i)][((x_3887 + 3i) % 4i)];
          u_xlat12 = (x_3883 + x_3891);
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3895 : vec4<f32> = u_xlat12;
          let x_3897 : vec3<f32> = (vec3<f32>(x_3893.x, x_3893.y, x_3893.z) / vec3<f32>(x_3895.w, x_3895.w, x_3895.w));
          let x_3898 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3897.x, x_3897.y, x_3897.z, x_3898.w);
          let x_3900 : vec4<f32> = u_xlat12;
          let x_3902 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3900.x, x_3900.y, x_3900.z), vec3<f32>(x_3902.x, x_3902.y, x_3902.z));
          let x_3905 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3905);
          let x_3907 : f32 = u_xlat87;
          let x_3909 : vec4<f32> = u_xlat12;
          let x_3911 : vec3<f32> = (vec3<f32>(x_3907, x_3907, x_3907) * vec3<f32>(x_3909.x, x_3909.y, x_3909.z));
          let x_3912 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3911.x, x_3911.y, x_3911.z, x_3912.w);
          let x_3914 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3914.x, x_3914.y, x_3914.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3919 : f32 = u_xlat87;
          u_xlat87 = max(x_3919, 0.00000099999999747524f);
          let x_3922 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3922);
          let x_3924 : f32 = u_xlat87;
          let x_3926 : vec4<f32> = u_xlat12;
          let x_3928 : vec3<f32> = (vec3<f32>(x_3924, x_3924, x_3924) * vec3<f32>(x_3926.z, x_3926.x, x_3926.y));
          let x_3929 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3928.x, x_3928.y, x_3928.z, x_3929.w);
          let x_3932 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3932);
          let x_3936 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3936, 0.0f, 1.0f);
          let x_3939 : vec4<f32> = u_xlat13;
          let x_3941 : vec4<bool> = (vec4<f32>(x_3939.y, x_3939.y, x_3939.y, x_3939.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3942 : vec2<bool> = vec2<bool>(x_3941.x, x_3941.w);
          let x_3943 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3942.x, x_3943.y, x_3943.z, x_3942.y);
          let x_3946 : bool = u_xlatb11.x;
          if (x_3946) {
            let x_3951 : f32 = u_xlat13.x;
            x_3947 = x_3951;
          } else {
            let x_3954 : f32 = u_xlat13.x;
            x_3947 = -(x_3954);
          }
          let x_3956 : f32 = x_3947;
          u_xlat11.x = x_3956;
          let x_3959 : bool = u_xlatb11.w;
          if (x_3959) {
            let x_3964 : f32 = u_xlat13.x;
            x_3960 = x_3964;
          } else {
            let x_3967 : f32 = u_xlat13.x;
            x_3960 = -(x_3967);
          }
          let x_3969 : f32 = x_3960;
          u_xlat11.w = x_3969;
          let x_3971 : vec4<f32> = u_xlat12;
          let x_3973 : f32 = u_xlat87;
          let x_3976 : vec4<f32> = u_xlat11;
          let x_3978 : vec2<f32> = ((vec2<f32>(x_3971.x, x_3971.y) * vec2<f32>(x_3973, x_3973)) + vec2<f32>(x_3976.x, x_3976.w));
          let x_3979 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3978.x, x_3979.y, x_3979.z, x_3978.y);
          let x_3981 : vec4<f32> = u_xlat11;
          let x_3984 : vec2<f32> = ((vec2<f32>(x_3981.x, x_3981.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3985 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3984.x, x_3985.y, x_3985.z, x_3984.y);
          let x_3987 : vec4<f32> = u_xlat11;
          let x_3991 : vec2<f32> = clamp(vec2<f32>(x_3987.x, x_3987.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3992 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3991.x, x_3992.y, x_3992.z, x_3991.y);
          let x_3994 : i32 = u_xlati83;
          let x_3996 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_3994];
          let x_3998 : vec4<f32> = u_xlat11;
          let x_4001 : i32 = u_xlati83;
          let x_4003 : vec4<f32> = x_1781.x_AdditionalLightsCookieAtlasUVRects[x_4001];
          let x_4005 : vec2<f32> = ((vec2<f32>(x_3996.x, x_3996.y) * vec2<f32>(x_3998.x, x_3998.w)) + vec2<f32>(x_4003.z, x_4003.w));
          let x_4006 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4005.x, x_4005.y, x_4006.z);
        }
      }
      let x_4013 : vec3<f32> = u_xlat37;
      let x_4015 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4013.x, x_4013.y), 0.0f);
      u_xlat11 = x_4015;
      let x_4017 : bool = u_xlatb7.y;
      if (x_4017) {
        let x_4022 : f32 = u_xlat11.w;
        x_4018 = x_4022;
      } else {
        let x_4025 : f32 = u_xlat11.x;
        x_4018 = x_4025;
      }
      let x_4026 : f32 = x_4018;
      u_xlat87 = x_4026;
      let x_4028 : bool = u_xlatb7.x;
      if (x_4028) {
        let x_4032 : vec4<f32> = u_xlat11;
        x_4029 = vec3<f32>(x_4032.x, x_4032.y, x_4032.z);
      } else {
        let x_4035 : f32 = u_xlat87;
        x_4029 = vec3<f32>(x_4035, x_4035, x_4035);
      }
      let x_4037 : vec3<f32> = x_4029;
      let x_4038 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4037.x, x_4037.y, x_4037.z, x_4038.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4044 : vec4<f32> = u_xlat11;
    let x_4046 : i32 = u_xlati83;
    let x_4048 : vec4<f32> = x_2216.x_AdditionalLightsColor[x_4046];
    let x_4050 : vec3<f32> = (vec3<f32>(x_4044.x, x_4044.y, x_4044.z) * vec3<f32>(x_4048.x, x_4048.y, x_4048.z));
    let x_4051 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4050.x, x_4050.y, x_4050.z, x_4051.w);
    let x_4053 : f32 = u_xlat84;
    let x_4054 : f32 = u_xlat85;
    u_xlat83 = (x_4053 * x_4054);
    let x_4056 : vec3<f32> = u_xlat27;
    let x_4057 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4056, vec3<f32>(x_4057.x, x_4057.y, x_4057.z));
    let x_4060 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4060, 0.0f, 1.0f);
    let x_4062 : f32 = u_xlat83;
    let x_4063 : f32 = u_xlat84;
    u_xlat83 = (x_4062 * x_4063);
    let x_4065 : f32 = u_xlat83;
    let x_4067 : vec4<f32> = u_xlat11;
    let x_4069 : vec3<f32> = (vec3<f32>(x_4065, x_4065, x_4065) * vec3<f32>(x_4067.x, x_4067.y, x_4067.z));
    let x_4070 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4069.x, x_4069.y, x_4069.z, x_4070.w);
    let x_4072 : vec4<f32> = u_xlat9;
    let x_4074 : f32 = u_xlat59;
    let x_4077 : vec3<f32> = u_xlat3;
    let x_4078 : vec3<f32> = ((vec3<f32>(x_4072.x, x_4072.y, x_4072.z) * vec3<f32>(x_4074, x_4074, x_4074)) + x_4077);
    let x_4079 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4078.x, x_4078.y, x_4078.z, x_4079.w);
    let x_4081 : vec4<f32> = u_xlat9;
    let x_4083 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4081.x, x_4081.y, x_4081.z), vec3<f32>(x_4083.x, x_4083.y, x_4083.z));
    let x_4086 : f32 = u_xlat83;
    u_xlat83 = max(x_4086, 1.17549435e-38f);
    let x_4088 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4088);
    let x_4090 : f32 = u_xlat83;
    let x_4092 : vec4<f32> = u_xlat9;
    let x_4094 : vec3<f32> = (vec3<f32>(x_4090, x_4090, x_4090) * vec3<f32>(x_4092.x, x_4092.y, x_4092.z));
    let x_4095 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4094.x, x_4094.y, x_4094.z, x_4095.w);
    let x_4097 : vec3<f32> = u_xlat27;
    let x_4098 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4097, vec3<f32>(x_4098.x, x_4098.y, x_4098.z));
    let x_4101 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4101, 0.0f, 1.0f);
    let x_4103 : vec4<f32> = u_xlat10;
    let x_4105 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4103.x, x_4103.y, x_4103.z), vec3<f32>(x_4105.x, x_4105.y, x_4105.z));
    let x_4108 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4108, 0.0f, 1.0f);
    let x_4110 : f32 = u_xlat83;
    let x_4111 : f32 = u_xlat83;
    u_xlat83 = (x_4110 * x_4111);
    let x_4113 : f32 = u_xlat83;
    let x_4115 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4113 * x_4115) + 1.00001001358032226562f);
    let x_4118 : f32 = u_xlat84;
    let x_4119 : f32 = u_xlat84;
    u_xlat84 = (x_4118 * x_4119);
    let x_4121 : f32 = u_xlat83;
    let x_4122 : f32 = u_xlat83;
    u_xlat83 = (x_4121 * x_4122);
    let x_4124 : f32 = u_xlat84;
    u_xlat84 = max(x_4124, 0.10000000149011611938f);
    let x_4126 : f32 = u_xlat83;
    let x_4127 : f32 = u_xlat84;
    u_xlat83 = (x_4126 * x_4127);
    let x_4129 : f32 = u_xlat81;
    let x_4130 : f32 = u_xlat83;
    u_xlat83 = (x_4129 * x_4130);
    let x_4132 : f32 = u_xlat82;
    let x_4133 : f32 = u_xlat83;
    u_xlat83 = (x_4132 / x_4133);
    let x_4135 : vec4<f32> = u_xlat0;
    let x_4137 : f32 = u_xlat83;
    let x_4140 : vec3<f32> = u_xlat5;
    let x_4141 : vec3<f32> = ((vec3<f32>(x_4135.x, x_4135.y, x_4135.z) * vec3<f32>(x_4137, x_4137, x_4137)) + x_4140);
    let x_4142 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);
    let x_4144 : vec4<f32> = u_xlat9;
    let x_4146 : vec4<f32> = u_xlat11;
    let x_4149 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4144.x, x_4144.y, x_4144.z) * vec3<f32>(x_4146.x, x_4146.y, x_4146.z)) + x_4149);

    continuing {
      let x_4151 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4151 + bitcast<u32>(1i));
    }
  }
  let x_4153 : vec4<f32> = u_xlat6;
  let x_4155 : vec4<f32> = u_xlat2;
  let x_4158 : vec4<f32> = u_xlat4;
  let x_4160 : vec3<f32> = ((vec3<f32>(x_4153.x, x_4153.y, x_4153.z) * vec3<f32>(x_4155.x, x_4155.z, x_4155.w)) + vec3<f32>(x_4158.x, x_4158.y, x_4158.z));
  let x_4161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4160.x, x_4160.y, x_4160.z, x_4161.w);
  let x_4165 : vec3<f32> = u_xlat34;
  let x_4166 : vec4<f32> = u_xlat0;
  let x_4168 : vec3<f32> = (x_4165 + vec3<f32>(x_4166.x, x_4166.y, x_4166.z));
  let x_4169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4168.x, x_4168.y, x_4168.z, x_4169.w);
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


