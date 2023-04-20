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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_175 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_322 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1687 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2150 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
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
  var x_1640 : f32;
  var x_1757 : f32;
  var x_1768 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2290 : f32;
  var x_2300 : f32;
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
  var x_3886 : f32;
  var x_3899 : f32;
  var x_3957 : f32;
  var x_3968 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_85 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_85 == 0.0f);
  let x_90 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_96 : vec3<f32> = (-(x_90) + x_95);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_105);
  let x_107 : f32 = u_xlat53;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : bool = u_xlatb27;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb27;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb27;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat27;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  u_xlat2.w = 1.0f;
  let x_179 : vec4<f32> = x_175.unity_SHAr;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_175.unity_SHAg;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_175.unity_SHAb;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_191, x_192);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_196.y, x_196.z, x_196.z, x_196.x) * vec4<f32>(x_198.x, x_198.y, x_198.z, x_198.z));
  let x_204 : vec4<f32> = x_175.unity_SHBr;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_204, x_205);
  let x_210 : vec4<f32> = x_175.unity_SHBg;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_175.unity_SHBb;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_216, x_217);
  let x_221 : f32 = u_xlat2.y;
  let x_223 : f32 = u_xlat2.y;
  u_xlat27.x = (x_221 * x_223);
  let x_227 : f32 = u_xlat2.x;
  let x_229 : f32 = u_xlat2.x;
  let x_232 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_227 * x_229) + -(x_232));
  let x_238 : vec4<f32> = x_175.unity_SHC;
  let x_240 : vec3<f32> = u_xlat27;
  let x_243 : vec4<f32> = u_xlat6;
  u_xlat27 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat27;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat27 = (x_246 + x_247);
  let x_249 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_254 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_254) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_260 : f32 = u_xlat80;
  u_xlat81 = (-(x_260) + 1.0f);
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265, x_265, x_265));
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec3<f32> = u_xlat1;
  let x_277 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_286) + 1.0f);
  let x_291 : f32 = u_xlat1.x;
  let x_293 : f32 = u_xlat1.x;
  u_xlat80 = (x_291 * x_293);
  let x_295 : f32 = u_xlat80;
  u_xlat80 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat80;
  let x_300 : f32 = u_xlat80;
  u_xlat82 = (x_299 * x_300);
  let x_304 : f32 = u_xlat0.w;
  let x_305 : f32 = u_xlat81;
  u_xlat78 = (x_304 + x_305);
  let x_307 : f32 = u_xlat78;
  u_xlat78 = clamp(x_307, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat80;
  u_xlat81 = ((x_309 * 4.0f) + 2.0f);
  let x_325 : f32 = x_322.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_325);
  let x_327 : bool = u_xlatb5;
  if (x_327) {
    let x_331 : f32 = x_322.x_MainLightShadowParams.y;
    u_xlatb5 = (x_331 == 1.0f);
    let x_333 : bool = u_xlatb5;
    if (x_333) {
      let x_337 : vec4<f32> = vs_TEXCOORD8;
      let x_340 : vec4<f32> = x_322.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_337.x, x_337.y, x_337.x, x_337.y) + x_340);
      let x_344 : vec4<f32> = u_xlat5;
      let x_345 : vec2<f32> = vec2<f32>(x_344.x, x_344.y);
      let x_348 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_345.x, x_345.y, x_348);
      let x_360 : vec3<f32> = txVec0;
      let x_362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_360.xy, x_360.z);
      u_xlat6.x = x_362;
      let x_365 : vec4<f32> = u_xlat5;
      let x_366 : vec2<f32> = vec2<f32>(x_365.z, x_365.w);
      let x_368 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_366.x, x_366.y, x_368);
      let x_375 : vec3<f32> = txVec1;
      let x_377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_375.xy, x_375.z);
      u_xlat6.y = x_377;
      let x_379 : vec4<f32> = vs_TEXCOORD8;
      let x_383 : vec4<f32> = x_322.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_379.x, x_379.y, x_379.x, x_379.y) + x_383);
      let x_386 : vec4<f32> = u_xlat5;
      let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
      let x_389 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_387.x, x_387.y, x_389);
      let x_396 : vec3<f32> = txVec2;
      let x_398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_396.xy, x_396.z);
      u_xlat6.z = x_398;
      let x_401 : vec4<f32> = u_xlat5;
      let x_402 : vec2<f32> = vec2<f32>(x_401.z, x_401.w);
      let x_404 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_402.x, x_402.y, x_404);
      let x_411 : vec3<f32> = txVec3;
      let x_413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_411.xy, x_411.z);
      u_xlat6.w = x_413;
      let x_415 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_415, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_423 : f32 = x_322.x_MainLightShadowParams.y;
      u_xlatb31 = (x_423 == 2.0f);
      let x_425 : bool = u_xlatb31;
      if (x_425) {
        let x_429 : vec4<f32> = vs_TEXCOORD8;
        let x_433 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_438 : vec2<f32> = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_433.z, x_433.w)) + vec2<f32>(0.5f, 0.5f));
        let x_439 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_438.x, x_438.y, x_439.z);
        let x_441 : vec3<f32> = u_xlat31;
        let x_443 : vec2<f32> = floor(vec2<f32>(x_441.x, x_441.y));
        let x_444 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_443.x, x_443.y, x_444.z);
        let x_446 : vec4<f32> = vs_TEXCOORD8;
        let x_449 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_452 : vec3<f32> = u_xlat31;
        let x_455 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_449.z, x_449.w)) + -(vec2<f32>(x_452.x, x_452.y)));
        let x_456 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_464 : vec4<f32> = u_xlat7;
        let x_466 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_464.x, x_464.x, x_464.z, x_464.z) * vec4<f32>(x_466.x, x_466.x, x_466.z, x_466.z));
        let x_471 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_471.y, x_471.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_476 : vec4<f32> = u_xlat8;
        let x_479 : vec4<f32> = u_xlat6;
        let x_482 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_479.x, x_479.y)));
        let x_483 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_482.x, x_483.y, x_482.y, x_483.w);
        let x_485 : vec4<f32> = u_xlat6;
        let x_489 : vec2<f32> = (-(vec2<f32>(x_485.x, x_485.y)) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_493.x, x_493.y), vec2<f32>(0.0f, 0.0f));
        let x_497 : vec2<f32> = u_xlat60;
        let x_499 : vec2<f32> = u_xlat60;
        let x_501 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_497) * x_499) + vec2<f32>(x_501.x, x_501.y));
        let x_504 : vec4<f32> = u_xlat6;
        let x_506 : vec2<f32> = max(vec2<f32>(x_504.x, x_504.y), vec2<f32>(0.0f, 0.0f));
        let x_507 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_509 : vec4<f32> = u_xlat6;
        let x_512 : vec4<f32> = u_xlat6;
        let x_515 : vec4<f32> = u_xlat7;
        let x_517 : vec2<f32> = ((-(vec2<f32>(x_509.x, x_509.y)) * vec2<f32>(x_512.x, x_512.y)) + vec2<f32>(x_515.y, x_515.w));
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_520 + vec2<f32>(1.0f, 1.0f));
        let x_522 : vec4<f32> = u_xlat6;
        let x_524 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) + vec2<f32>(1.0f, 1.0f));
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_528 : vec4<f32> = u_xlat7;
        let x_532 : vec2<f32> = (vec2<f32>(x_528.x, x_528.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_536 : vec4<f32> = u_xlat8;
        let x_538 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_539 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec2<f32> = u_xlat60;
        let x_542 : vec2<f32> = (x_541 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_543 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_546 : vec4<f32> = u_xlat6;
        let x_548 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat7;
        let x_553 : vec2<f32> = (vec2<f32>(x_551.y, x_551.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : f32 = u_xlat8.x;
        u_xlat9.z = x_557;
        let x_560 : f32 = u_xlat6.x;
        u_xlat9.w = x_560;
        let x_563 : f32 = u_xlat11.x;
        u_xlat10.z = x_563;
        let x_566 : f32 = u_xlat58.x;
        u_xlat10.w = x_566;
        let x_568 : vec4<f32> = u_xlat9;
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_568.z, x_568.w, x_568.x, x_568.z) + vec4<f32>(x_570.z, x_570.w, x_570.x, x_570.z));
        let x_574 : f32 = u_xlat9.y;
        u_xlat8.z = x_574;
        let x_577 : f32 = u_xlat6.y;
        u_xlat8.w = x_577;
        let x_580 : f32 = u_xlat10.y;
        u_xlat11.z = x_580;
        let x_583 : f32 = u_xlat58.y;
        u_xlat11.w = x_583;
        let x_585 : vec4<f32> = u_xlat8;
        let x_587 : vec4<f32> = u_xlat11;
        let x_589 : vec3<f32> = (vec3<f32>(x_585.z, x_585.y, x_585.w) + vec3<f32>(x_587.z, x_587.y, x_587.w));
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat10;
        let x_594 : vec4<f32> = u_xlat7;
        let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.z, x_592.w) / vec3<f32>(x_594.z, x_594.w, x_594.y));
        let x_597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat8;
        let x_605 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_606 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat11;
        let x_610 : vec4<f32> = u_xlat6;
        let x_612 : vec3<f32> = (vec3<f32>(x_608.z, x_608.y, x_608.w) / vec3<f32>(x_610.x, x_610.y, x_610.z));
        let x_613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_615 : vec4<f32> = u_xlat9;
        let x_617 : vec3<f32> = (vec3<f32>(x_615.x, x_615.y, x_615.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat8;
        let x_623 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.y, x_620.x, x_620.z) * vec3<f32>(x_623.x, x_623.x, x_623.x));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat9;
        let x_631 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_633 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_631.y, x_631.y, x_631.y));
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
        let x_637 : f32 = u_xlat9.x;
        u_xlat8.w = x_637;
        let x_639 : vec3<f32> = u_xlat31;
        let x_642 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.y, x_645.w, x_645.x, x_645.w));
        let x_648 : vec3<f32> = u_xlat31;
        let x_651 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_654 : vec4<f32> = u_xlat8;
        let x_656 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_651.x, x_651.y)) + vec2<f32>(x_654.z, x_654.w));
        let x_657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_660 : f32 = u_xlat8.y;
        u_xlat9.w = x_660;
        let x_662 : vec4<f32> = u_xlat9;
        let x_663 : vec2<f32> = vec2<f32>(x_662.y, x_662.z);
        let x_664 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_664.x, x_663.x, x_664.z, x_663.y);
        let x_667 : vec3<f32> = u_xlat31;
        let x_670 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y) * vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y)) + vec4<f32>(x_673.x, x_673.y, x_673.z, x_673.y));
        let x_676 : vec3<f32> = u_xlat31;
        let x_679 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_682 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y) * vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y)) + vec4<f32>(x_682.w, x_682.y, x_682.w, x_682.z));
        let x_685 : vec3<f32> = u_xlat31;
        let x_688 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) * vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y)) + vec4<f32>(x_691.x, x_691.w, x_691.z, x_691.w));
        let x_695 : vec4<f32> = u_xlat6;
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_695.x, x_695.x, x_695.x, x_695.y) * vec4<f32>(x_697.z, x_697.w, x_697.y, x_697.z));
        let x_701 : vec4<f32> = u_xlat6;
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_701.y, x_701.y, x_701.z, x_701.z) * x_703);
        let x_706 : f32 = u_xlat6.z;
        let x_708 : f32 = u_xlat7.y;
        u_xlat31.x = (x_706 * x_708);
        let x_712 : vec4<f32> = u_xlat10;
        let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
        let x_715 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_723 : vec3<f32> = txVec4;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat57.x = x_725;
        let x_728 : vec4<f32> = u_xlat10;
        let x_729 : vec2<f32> = vec2<f32>(x_728.z, x_728.w);
        let x_731 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_739 : vec3<f32> = txVec5;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
        u_xlat83 = x_741;
        let x_742 : f32 = u_xlat83;
        let x_744 : f32 = u_xlat13.y;
        u_xlat83 = (x_742 * x_744);
        let x_747 : f32 = u_xlat13.x;
        let x_749 : f32 = u_xlat57.x;
        let x_751 : f32 = u_xlat83;
        u_xlat57.x = ((x_747 * x_749) + x_751);
        let x_755 : vec4<f32> = u_xlat11;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec6;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_765.xy, x_765.z);
        u_xlat83 = x_767;
        let x_769 : f32 = u_xlat13.z;
        let x_770 : f32 = u_xlat83;
        let x_773 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_769 * x_770) + x_773);
        let x_777 : vec4<f32> = u_xlat9;
        let x_778 : vec2<f32> = vec2<f32>(x_777.x, x_777.y);
        let x_780 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec7;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_787.xy, x_787.z);
        u_xlat83 = x_789;
        let x_791 : f32 = u_xlat13.w;
        let x_792 : f32 = u_xlat83;
        let x_795 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_791 * x_792) + x_795);
        let x_799 : vec4<f32> = u_xlat12;
        let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
        let x_802 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec8;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
        u_xlat83 = x_811;
        let x_813 : f32 = u_xlat14.x;
        let x_814 : f32 = u_xlat83;
        let x_817 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_813 * x_814) + x_817);
        let x_821 : vec4<f32> = u_xlat12;
        let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
        let x_824 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec9;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat83 = x_833;
        let x_835 : f32 = u_xlat14.y;
        let x_836 : f32 = u_xlat83;
        let x_839 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat9;
        let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
        let x_846 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec10;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat83 = x_855;
        let x_857 : f32 = u_xlat14.z;
        let x_858 : f32 = u_xlat83;
        let x_861 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat8;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec11;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat83 = x_877;
        let x_879 : f32 = u_xlat14.w;
        let x_880 : f32 = u_xlat83;
        let x_883 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec12;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat83 = x_899;
        let x_901 : f32 = u_xlat31.x;
        let x_902 : f32 = u_xlat83;
        let x_905 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_901 * x_902) + x_905);
      } else {
        let x_909 : vec4<f32> = vs_TEXCOORD8;
        let x_912 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_915 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + vec2<f32>(0.5f, 0.5f));
        let x_916 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_915.x, x_915.y, x_916.z);
        let x_918 : vec3<f32> = u_xlat31;
        let x_920 : vec2<f32> = floor(vec2<f32>(x_918.x, x_918.y));
        let x_921 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_920.x, x_920.y, x_921.z);
        let x_923 : vec4<f32> = vs_TEXCOORD8;
        let x_926 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_929 : vec3<f32> = u_xlat31;
        let x_932 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926.z, x_926.w)) + -(vec2<f32>(x_929.x, x_929.y)));
        let x_933 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_935.x, x_935.x, x_935.y, x_935.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_938 : vec4<f32> = u_xlat7;
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z) * vec4<f32>(x_940.x, x_940.x, x_940.z, x_940.z));
        let x_943 : vec4<f32> = u_xlat8;
        let x_947 : vec2<f32> = (vec2<f32>(x_943.y, x_943.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_947.x, x_948.z, x_947.y);
        let x_950 : vec4<f32> = u_xlat8;
        let x_953 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_950.x, x_950.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_953.x, x_953.y)));
        let x_957 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = (-(vec2<f32>(x_957.x, x_957.y)) + vec2<f32>(1.0f, 1.0f));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_961.y, x_960.y, x_961.w);
        let x_963 : vec4<f32> = u_xlat6;
        let x_965 : vec2<f32> = min(vec2<f32>(x_963.x, x_963.y), vec2<f32>(0.0f, 0.0f));
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat8;
        let x_974 : vec4<f32> = u_xlat7;
        let x_976 : vec2<f32> = ((-(vec2<f32>(x_968.x, x_968.y)) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_974.x, x_974.z));
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_977.w);
        let x_979 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = max(vec2<f32>(x_979.x, x_979.y), vec2<f32>(0.0f, 0.0f));
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_984 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = u_xlat8;
        let x_990 : vec4<f32> = u_xlat7;
        let x_992 : vec2<f32> = ((-(vec2<f32>(x_984.x, x_984.y)) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_993.x, x_992.x, x_993.z, x_992.y);
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_995 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_999 : f32 = u_xlat7.y;
        u_xlat8.z = (x_999 * 0.08163200318813323975f);
        let x_1003 : vec2<f32> = u_xlat58;
        let x_1006 : vec2<f32> = (vec2<f32>(x_1003.y, x_1003.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1009.x, x_1009.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1013 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1013 * 0.08163200318813323975f);
        let x_1017 : f32 = u_xlat10.y;
        u_xlat8.x = x_1017;
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1026 : vec2<f32> = ((vec2<f32>(x_1019.x, x_1019.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1027 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1026.x, x_1027.z, x_1026.y);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1034.y, x_1033.y, x_1034.w);
        let x_1037 : f32 = u_xlat58.x;
        u_xlat7.y = x_1037;
        let x_1040 : f32 = u_xlat9.y;
        u_xlat7.w = x_1040;
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1042 + x_1043);
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1045.y, x_1045.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1049 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1049.x, x_1048.x, x_1049.z, x_1048.y);
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1051.y, x_1051.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1055.w);
        let x_1058 : f32 = u_xlat58.y;
        u_xlat9.y = x_1058;
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1060 + x_1061);
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1063 / x_1064);
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1066 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1072 / x_1073);
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1075 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1077 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1077.w, x_1077.x, x_1077.y, x_1077.z) * vec4<f32>(x_1080.x, x_1080.x, x_1080.x, x_1080.x));
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1086 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1083.x, x_1083.w, x_1083.y, x_1083.z) * vec4<f32>(x_1086.y, x_1086.y, x_1086.y, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat7;
        let x_1090 : vec3<f32> = vec3<f32>(x_1089.y, x_1089.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1090.z);
        let x_1094 : f32 = u_xlat9.x;
        u_xlat10.y = x_1094;
        let x_1096 : vec3<f32> = u_xlat31;
        let x_1099 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1102.y));
        let x_1105 : vec3<f32> = u_xlat31;
        let x_1108 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(x_1108.x, x_1108.y)) + vec2<f32>(x_1111.w, x_1111.y));
        let x_1114 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1117 : f32 = u_xlat10.y;
        u_xlat7.y = x_1117;
        let x_1120 : f32 = u_xlat9.z;
        u_xlat10.y = x_1120;
        let x_1122 : vec3<f32> = u_xlat31;
        let x_1125 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.y));
        let x_1132 : vec3<f32> = u_xlat31;
        let x_1135 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.w, x_1138.y));
        let x_1142 : f32 = u_xlat10.y;
        u_xlat7.z = x_1142;
        let x_1144 : vec3<f32> = u_xlat31;
        let x_1147 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.z));
        let x_1154 : f32 = u_xlat9.w;
        u_xlat10.y = x_1154;
        let x_1157 : vec3<f32> = u_xlat31;
        let x_1160 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y) * vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y)) + vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.y));
        let x_1167 : vec3<f32> = u_xlat31;
        let x_1170 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.w, x_1173.y));
        let x_1177 : f32 = u_xlat10.y;
        u_xlat7.w = x_1177;
        let x_1180 : vec3<f32> = u_xlat31;
        let x_1183 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.x, x_1186.w));
        let x_1189 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec3<f32> = vec3<f32>(x_1191.x, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1193.y, x_1192.y, x_1192.z);
        let x_1195 : vec3<f32> = u_xlat31;
        let x_1198 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1205 : vec3<f32> = u_xlat31;
        let x_1208 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1205.x, x_1205.y) * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1211.w, x_1211.y));
        let x_1215 : f32 = u_xlat7.x;
        u_xlat9.x = x_1215;
        let x_1217 : vec3<f32> = u_xlat31;
        let x_1220 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.x, x_1223.y));
        let x_1226 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1225.x, x_1225.y, x_1226.z);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x) * x_1231);
        let x_1234 : vec4<f32> = u_xlat6;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1234.y, x_1234.y, x_1234.y, x_1234.y) * x_1236);
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1239.z, x_1239.z, x_1239.z, x_1239.z) * x_1241);
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1243.w, x_1243.w, x_1243.w, x_1243.w) * x_1245);
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.x, x_1248.y);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec13;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat83 = x_1260;
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec14;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat7.x = x_1274;
        let x_1277 : f32 = u_xlat7.x;
        let x_1279 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1277 * x_1279);
        let x_1283 : f32 = u_xlat17.x;
        let x_1284 : f32 = u_xlat83;
        let x_1287 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1283 * x_1284) + x_1287);
        let x_1290 : vec4<f32> = u_xlat12;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec15;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat7.x = x_1302;
        let x_1305 : f32 = u_xlat17.z;
        let x_1307 : f32 = u_xlat7.x;
        let x_1309 : f32 = u_xlat83;
        u_xlat83 = ((x_1305 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat14;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec16;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat7.x = x_1324;
        let x_1327 : f32 = u_xlat17.w;
        let x_1329 : f32 = u_xlat7.x;
        let x_1331 : f32 = u_xlat83;
        u_xlat83 = ((x_1327 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat13;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec17;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat7.x = x_1346;
        let x_1349 : f32 = u_xlat18.x;
        let x_1351 : f32 = u_xlat7.x;
        let x_1353 : f32 = u_xlat83;
        u_xlat83 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat13;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec18;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat7.x = x_1368;
        let x_1371 : f32 = u_xlat18.y;
        let x_1373 : f32 = u_xlat7.x;
        let x_1375 : f32 = u_xlat83;
        u_xlat83 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec2<f32> = u_xlat64;
        let x_1380 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec19;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat7.x = x_1389;
        let x_1392 : f32 = u_xlat18.z;
        let x_1394 : f32 = u_xlat7.x;
        let x_1396 : f32 = u_xlat83;
        u_xlat83 = ((x_1392 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat14;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.z, x_1399.w);
        let x_1402 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec20;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat7.x = x_1411;
        let x_1414 : f32 = u_xlat18.w;
        let x_1416 : f32 = u_xlat7.x;
        let x_1418 : f32 = u_xlat83;
        u_xlat83 = ((x_1414 * x_1416) + x_1418);
        let x_1421 : vec4<f32> = u_xlat15;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
        let x_1424 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec21;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat7.x = x_1433;
        let x_1436 : f32 = u_xlat19.x;
        let x_1438 : f32 = u_xlat7.x;
        let x_1440 : f32 = u_xlat83;
        u_xlat83 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat15;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec22;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat7.x = x_1455;
        let x_1458 : f32 = u_xlat19.y;
        let x_1460 : f32 = u_xlat7.x;
        let x_1462 : f32 = u_xlat83;
        u_xlat83 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec2<f32> = u_xlat33;
        let x_1467 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec23;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat7.x = x_1476;
        let x_1479 : f32 = u_xlat19.z;
        let x_1481 : f32 = u_xlat7.x;
        let x_1483 : f32 = u_xlat83;
        u_xlat83 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat16;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec24;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat7.x = x_1498;
        let x_1501 : f32 = u_xlat19.w;
        let x_1503 : f32 = u_xlat7.x;
        let x_1505 : f32 = u_xlat83;
        u_xlat83 = ((x_1501 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat10;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec25;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat7.x = x_1520;
        let x_1523 : f32 = u_xlat6.x;
        let x_1525 : f32 = u_xlat7.x;
        let x_1527 : f32 = u_xlat83;
        u_xlat83 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat10;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec26;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat6.x = x_1542;
        let x_1545 : f32 = u_xlat6.y;
        let x_1547 : f32 = u_xlat6.x;
        let x_1549 : f32 = u_xlat83;
        u_xlat83 = ((x_1545 * x_1547) + x_1549);
        let x_1552 : vec2<f32> = u_xlat61;
        let x_1554 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec27;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat6.x = x_1563;
        let x_1566 : f32 = u_xlat6.z;
        let x_1568 : f32 = u_xlat6.x;
        let x_1570 : f32 = u_xlat83;
        u_xlat83 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec3<f32> = u_xlat31;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
        let x_1576 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec28;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
        u_xlat31.x = x_1585;
        let x_1588 : f32 = u_xlat6.w;
        let x_1590 : f32 = u_xlat31.x;
        let x_1592 : f32 = u_xlat83;
        u_xlat5.x = ((x_1588 * x_1590) + x_1592);
      }
    }
  } else {
    let x_1597 : vec4<f32> = vs_TEXCOORD8;
    let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
    let x_1600 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
    let x_1607 : vec3<f32> = txVec29;
    let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
    u_xlat5.x = x_1609;
  }
  let x_1612 : f32 = x_322.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_1612) + 1.0f);
  let x_1617 : f32 = u_xlat5.x;
  let x_1619 : f32 = x_322.x_MainLightShadowParams.x;
  let x_1622 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_1617 * x_1619) + x_1622);
  let x_1626 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_1626);
  let x_1632 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_1632 >= 1.0f);
  let x_1636 : bool = u_xlatb57.x;
  let x_1637 : bool = u_xlatb31;
  u_xlatb31 = (x_1636 | x_1637);
  let x_1639 : bool = u_xlatb31;
  if (x_1639) {
    x_1640 = 1.0f;
  } else {
    let x_1645 : f32 = u_xlat5.x;
    x_1640 = x_1645;
  }
  let x_1646 : f32 = x_1640;
  u_xlat5.x = x_1646;
  let x_1648 : vec3<f32> = vs_TEXCOORD7;
  let x_1650 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1648 + -(x_1650));
  let x_1653 : vec3<f32> = u_xlat31;
  let x_1654 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1653, x_1654);
  let x_1658 : f32 = u_xlat31.x;
  let x_1660 : f32 = x_322.x_MainLightShadowParams.z;
  let x_1663 : f32 = x_322.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_1658 * x_1660) + x_1663);
  let x_1667 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1667, 0.0f, 1.0f);
  let x_1671 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1671) + 1.0f);
  let x_1675 : f32 = u_xlat57.x;
  let x_1676 : f32 = u_xlat83;
  let x_1679 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1675 * x_1676) + x_1679);
  let x_1689 : f32 = x_1687.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_1689 == -1.0f));
  let x_1694 : bool = u_xlatb57.x;
  if (x_1694) {
    let x_1697 : vec3<f32> = vs_TEXCOORD7;
    let x_1700 : vec4<f32> = x_1687.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_1697.y, x_1697.y) * vec2<f32>(x_1700.x, x_1700.y));
    let x_1704 : vec4<f32> = x_1687.x_MainLightWorldToLight[0i];
    let x_1706 : vec3<f32> = vs_TEXCOORD7;
    let x_1709 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1706.x, x_1706.x)) + x_1709);
    let x_1712 : vec4<f32> = x_1687.x_MainLightWorldToLight[2i];
    let x_1714 : vec3<f32> = vs_TEXCOORD7;
    let x_1717 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1714.z, x_1714.z)) + x_1717);
    let x_1719 : vec2<f32> = u_xlat57;
    let x_1722 : vec4<f32> = x_1687.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_1719 + vec2<f32>(x_1722.x, x_1722.y));
    let x_1725 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_1725 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1733 : vec2<f32> = u_xlat57;
    let x_1735 : f32 = x_29.x_GlobalMipBias.x;
    let x_1736 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1733, x_1735);
    u_xlat6 = x_1736;
    let x_1738 : f32 = x_1687.x_MainLightCookieTextureFormat;
    let x_1740 : f32 = x_1687.x_MainLightCookieTextureFormat;
    let x_1742 : f32 = x_1687.x_MainLightCookieTextureFormat;
    let x_1744 : f32 = x_1687.x_MainLightCookieTextureFormat;
    let x_1745 : vec4<f32> = vec4<f32>(x_1738, x_1740, x_1742, x_1744);
    let x_1753 : vec4<bool> = (vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1745.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_1753.x, x_1753.y);
    let x_1756 : bool = u_xlatb57.y;
    if (x_1756) {
      let x_1761 : f32 = u_xlat6.w;
      x_1757 = x_1761;
    } else {
      let x_1764 : f32 = u_xlat6.x;
      x_1757 = x_1764;
    }
    let x_1765 : f32 = x_1757;
    u_xlat83 = x_1765;
    let x_1767 : bool = u_xlatb57.x;
    if (x_1767) {
      let x_1771 : vec4<f32> = u_xlat6;
      x_1768 = vec3<f32>(x_1771.x, x_1771.y, x_1771.z);
    } else {
      let x_1774 : f32 = u_xlat83;
      x_1768 = vec3<f32>(x_1774, x_1774, x_1774);
    }
    let x_1776 : vec3<f32> = x_1768;
    let x_1777 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1783 : vec4<f32> = u_xlat6;
  let x_1786 : vec4<f32> = x_29.x_MainLightColor;
  let x_1788 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.y, x_1783.z) * vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1791 : vec3<f32> = u_xlat3;
  let x_1793 : vec4<f32> = u_xlat2;
  u_xlat57.x = dot(-(x_1791), vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1798 : f32 = u_xlat57.x;
  let x_1800 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1798 + x_1800);
  let x_1803 : vec4<f32> = u_xlat2;
  let x_1805 : vec2<f32> = u_xlat57;
  let x_1809 : vec3<f32> = u_xlat3;
  let x_1811 : vec3<f32> = ((vec3<f32>(x_1803.x, x_1803.y, x_1803.z) * -(vec3<f32>(x_1805.x, x_1805.x, x_1805.x))) + -(x_1809));
  let x_1812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  let x_1814 : vec4<f32> = u_xlat2;
  let x_1816 : vec3<f32> = u_xlat3;
  u_xlat57.x = dot(vec3<f32>(x_1814.x, x_1814.y, x_1814.z), x_1816);
  let x_1820 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1820, 0.0f, 1.0f);
  let x_1824 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_1824) + 1.0f);
  let x_1829 : f32 = u_xlat57.x;
  let x_1831 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1829 * x_1831);
  let x_1835 : f32 = u_xlat57.x;
  let x_1837 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1835 * x_1837);
  let x_1841 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1841) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1848 : f32 = u_xlat1.x;
  let x_1849 : f32 = u_xlat83;
  u_xlat1.x = (x_1848 * x_1849);
  let x_1853 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1853 * 6.0f);
  let x_1865 : vec4<f32> = u_xlat7;
  let x_1868 : f32 = u_xlat1.x;
  let x_1869 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1865.x, x_1865.y, x_1865.z), x_1868);
  u_xlat7 = x_1869;
  let x_1871 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1871 + -1.0f);
  let x_1875 : f32 = x_175.unity_SpecCube0_HDR.w;
  let x_1877 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1875 * x_1877) + 1.0f);
  let x_1882 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1882, 0.0f);
  let x_1886 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1886);
  let x_1890 : f32 = u_xlat1.x;
  let x_1892 : f32 = x_175.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1890 * x_1892);
  let x_1896 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1896);
  let x_1900 : f32 = u_xlat1.x;
  let x_1902 : f32 = x_175.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1900 * x_1902);
  let x_1905 : vec4<f32> = u_xlat7;
  let x_1907 : vec3<f32> = u_xlat1;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * vec3<f32>(x_1907.x, x_1907.x, x_1907.x));
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1912 : f32 = u_xlat80;
  let x_1914 : f32 = u_xlat80;
  let x_1918 : vec2<f32> = ((vec2<f32>(x_1912, x_1912) * vec2<f32>(x_1914, x_1914)) + vec2<f32>(-1.0f, 1.0f));
  let x_1919 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1919.w);
  let x_1922 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1922);
  let x_1926 : vec4<f32> = u_xlat0;
  let x_1929 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1926.x, x_1926.y, x_1926.z)) + vec3<f32>(x_1929, x_1929, x_1929));
  let x_1932 : vec2<f32> = u_xlat57;
  let x_1934 : vec3<f32> = u_xlat34;
  let x_1936 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1932.x, x_1932.x, x_1932.x) * x_1934) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec3<f32> = u_xlat1;
  let x_1941 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1939.x, x_1939.x, x_1939.x) * x_1941);
  let x_1943 : vec4<f32> = u_xlat7;
  let x_1945 : vec3<f32> = u_xlat34;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * x_1945);
  let x_1947 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1949 : vec3<f32> = u_xlat27;
  let x_1950 : vec3<f32> = u_xlat4;
  let x_1952 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1949 * x_1950) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1956 : f32 = u_xlat5.x;
  let x_1958 : f32 = x_175.unity_LightData.z;
  u_xlat78 = (x_1956 * x_1958);
  let x_1961 : vec4<f32> = u_xlat2;
  let x_1964 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_1961.x, x_1961.y, x_1961.z), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1967, 0.0f, 1.0f);
  let x_1969 : f32 = u_xlat78;
  let x_1970 : f32 = u_xlat79;
  u_xlat78 = (x_1969 * x_1970);
  let x_1972 : f32 = u_xlat78;
  let x_1974 : vec4<f32> = u_xlat6;
  let x_1976 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1976.x, x_1977.y, x_1976.y, x_1976.z);
  let x_1979 : vec3<f32> = u_xlat3;
  let x_1981 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1983 : vec3<f32> = (x_1979 + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat6;
  let x_1988 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_1986.x, x_1986.y, x_1986.z), vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : f32 = u_xlat78;
  u_xlat78 = max(x_1991, 1.17549435e-38f);
  let x_1994 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1994);
  let x_1996 : f32 = u_xlat78;
  let x_1998 : vec4<f32> = u_xlat6;
  let x_2000 : vec3<f32> = (vec3<f32>(x_1996, x_1996, x_1996) * vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : vec4<f32> = u_xlat2;
  let x_2005 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2008, 0.0f, 1.0f);
  let x_2011 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2013 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_2011.x, x_2011.y, x_2011.z), vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2016, 0.0f, 1.0f);
  let x_2018 : f32 = u_xlat78;
  let x_2019 : f32 = u_xlat78;
  u_xlat78 = (x_2018 * x_2019);
  let x_2021 : f32 = u_xlat78;
  let x_2023 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2021 * x_2023) + 1.00001001358032226562f);
  let x_2027 : f32 = u_xlat79;
  let x_2028 : f32 = u_xlat79;
  u_xlat79 = (x_2027 * x_2028);
  let x_2030 : f32 = u_xlat78;
  let x_2031 : f32 = u_xlat78;
  u_xlat78 = (x_2030 * x_2031);
  let x_2033 : f32 = u_xlat79;
  u_xlat79 = max(x_2033, 0.10000000149011611938f);
  let x_2036 : f32 = u_xlat78;
  let x_2037 : f32 = u_xlat79;
  u_xlat78 = (x_2036 * x_2037);
  let x_2039 : f32 = u_xlat81;
  let x_2040 : f32 = u_xlat78;
  u_xlat78 = (x_2039 * x_2040);
  let x_2042 : f32 = u_xlat82;
  let x_2043 : f32 = u_xlat78;
  u_xlat78 = (x_2042 / x_2043);
  let x_2045 : vec4<f32> = u_xlat0;
  let x_2047 : f32 = u_xlat78;
  let x_2050 : vec3<f32> = u_xlat4;
  let x_2051 : vec3<f32> = ((vec3<f32>(x_2045.x, x_2045.y, x_2045.z) * vec3<f32>(x_2047, x_2047, x_2047)) + x_2050);
  let x_2052 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
  let x_2055 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2057 : f32 = x_175.unity_LightData.y;
  u_xlat78 = min(x_2055, x_2057);
  let x_2061 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2061));
  let x_2065 : f32 = u_xlat31.x;
  let x_2068 : f32 = x_322.x_AdditionalShadowFadeParams.x;
  let x_2071 : f32 = x_322.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2065 * x_2068) + x_2071);
  let x_2073 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2073, 0.0f, 1.0f);
  let x_2077 : f32 = x_1687.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2079 : f32 = x_1687.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2081 : f32 = x_1687.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2083 : f32 = x_1687.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2084 : vec4<f32> = vec4<f32>(x_2077, x_2079, x_2081, x_2083);
  let x_2091 : vec4<bool> = (vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2084.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2091.x, x_2091.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2103 : u32 = u_xlatu_loop_1;
    let x_2104 : u32 = u_xlatu78;
    if ((x_2103 < x_2104)) {
    } else {
      break;
    }
    let x_2107 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2107 >> 2u);
    let x_2111 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2111 & 3u));
    let x_2114 : u32 = u_xlatu31;
    let x_2117 : vec4<f32> = x_175.unity_LightIndices[bitcast<i32>(x_2114)];
    let x_2127 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2132 : vec4<u32> = indexable[x_2127];
    u_xlat31.x = dot(x_2117, bitcast<vec4<f32>>(x_2132));
    let x_2138 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2138);
    let x_2140 : vec3<f32> = vs_TEXCOORD7;
    let x_2151 : i32 = u_xlati31;
    let x_2153 : vec4<f32> = x_2150.x_AdditionalLightsPosition[x_2151];
    let x_2156 : i32 = u_xlati31;
    let x_2158 : vec4<f32> = x_2150.x_AdditionalLightsPosition[x_2156];
    let x_2160 : vec3<f32> = ((-(x_2140) * vec3<f32>(x_2153.w, x_2153.w, x_2153.w)) + vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
    let x_2161 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
    let x_2164 : vec4<f32> = u_xlat9;
    let x_2166 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2164.x, x_2164.y, x_2164.z), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
    let x_2169 : f32 = u_xlat84;
    u_xlat84 = max(x_2169, 0.00006103515625f);
    let x_2173 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2173);
    let x_2175 : f32 = u_xlat59;
    let x_2177 : vec4<f32> = u_xlat9;
    let x_2179 : vec3<f32> = (vec3<f32>(x_2175, x_2175, x_2175) * vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
    let x_2180 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
    let x_2183 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2183);
    let x_2185 : f32 = u_xlat84;
    let x_2186 : i32 = u_xlati31;
    let x_2188 : f32 = x_2150.x_AdditionalLightsAttenuation[x_2186].x;
    u_xlat84 = (x_2185 * x_2188);
    let x_2190 : f32 = u_xlat84;
    let x_2192 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2190) * x_2192) + 1.0f);
    let x_2195 : f32 = u_xlat84;
    u_xlat84 = max(x_2195, 0.0f);
    let x_2197 : f32 = u_xlat84;
    let x_2198 : f32 = u_xlat84;
    u_xlat84 = (x_2197 * x_2198);
    let x_2200 : f32 = u_xlat84;
    let x_2201 : f32 = u_xlat85;
    u_xlat84 = (x_2200 * x_2201);
    let x_2203 : i32 = u_xlati31;
    let x_2205 : vec4<f32> = x_2150.x_AdditionalLightsSpotDir[x_2203];
    let x_2207 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
    let x_2210 : f32 = u_xlat85;
    let x_2211 : i32 = u_xlati31;
    let x_2213 : f32 = x_2150.x_AdditionalLightsAttenuation[x_2211].z;
    let x_2215 : i32 = u_xlati31;
    let x_2217 : f32 = x_2150.x_AdditionalLightsAttenuation[x_2215].w;
    u_xlat85 = ((x_2210 * x_2213) + x_2217);
    let x_2219 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2219, 0.0f, 1.0f);
    let x_2221 : f32 = u_xlat85;
    let x_2222 : f32 = u_xlat85;
    u_xlat85 = (x_2221 * x_2222);
    let x_2224 : f32 = u_xlat84;
    let x_2225 : f32 = u_xlat85;
    u_xlat84 = (x_2224 * x_2225);
    let x_2229 : i32 = u_xlati31;
    let x_2231 : f32 = x_322.x_AdditionalShadowParams[x_2229].w;
    u_xlati85 = i32(x_2231);
    let x_2234 : i32 = u_xlati85;
    u_xlatb87 = (x_2234 >= 0i);
    let x_2236 : bool = u_xlatb87;
    if (x_2236) {
      let x_2240 : i32 = u_xlati31;
      let x_2242 : f32 = x_322.x_AdditionalShadowParams[x_2240].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2242, x_2242, x_2242, x_2242))));
      let x_2246 : bool = u_xlatb87;
      if (x_2246) {
        let x_2251 : vec4<f32> = u_xlat10;
        let x_2254 : vec4<f32> = u_xlat10;
        let x_2257 : vec4<bool> = (abs(vec4<f32>(x_2251.z, x_2251.z, x_2251.y, x_2251.z)) >= abs(vec4<f32>(x_2254.x, x_2254.y, x_2254.x, x_2254.x)));
        let x_2259 : vec3<bool> = vec3<bool>(x_2257.x, x_2257.y, x_2257.z);
        let x_2260 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
        let x_2263 : bool = u_xlatb11.y;
        let x_2265 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2263 & x_2265);
        let x_2267 : vec4<f32> = u_xlat10;
        let x_2270 : vec4<bool> = (-(vec4<f32>(x_2267.z, x_2267.y, x_2267.z, x_2267.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2271 : vec3<bool> = vec3<bool>(x_2270.x, x_2270.y, x_2270.w);
        let x_2272 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2271.x, x_2271.y, x_2272.z, x_2271.z);
        let x_2275 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2275);
        let x_2280 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2280);
        let x_2286 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2286);
        let x_2289 : bool = u_xlatb11.z;
        if (x_2289) {
          let x_2294 : f32 = u_xlat11.y;
          x_2290 = x_2294;
        } else {
          let x_2296 : f32 = u_xlat88;
          x_2290 = x_2296;
        }
        let x_2297 : f32 = x_2290;
        u_xlat88 = x_2297;
        let x_2299 : bool = u_xlatb87;
        if (x_2299) {
          let x_2304 : f32 = u_xlat11.x;
          x_2300 = x_2304;
        } else {
          let x_2306 : f32 = u_xlat88;
          x_2300 = x_2306;
        }
        let x_2307 : f32 = x_2300;
        u_xlat87 = x_2307;
        let x_2308 : i32 = u_xlati31;
        let x_2310 : f32 = x_322.x_AdditionalShadowParams[x_2308].w;
        u_xlat88 = trunc(x_2310);
        let x_2312 : f32 = u_xlat87;
        let x_2313 : f32 = u_xlat88;
        u_xlat87 = (x_2312 + x_2313);
        let x_2315 : f32 = u_xlat87;
        u_xlati85 = i32(x_2315);
      }
      let x_2317 : i32 = u_xlati85;
      u_xlati85 = (x_2317 << bitcast<u32>(2i));
      let x_2319 : vec3<f32> = vs_TEXCOORD7;
      let x_2322 : i32 = u_xlati85;
      let x_2325 : i32 = u_xlati85;
      let x_2329 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2322 + 1i) / 4i)][((x_2325 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2319.y, x_2319.y, x_2319.y, x_2319.y) * x_2329);
      let x_2331 : i32 = u_xlati85;
      let x_2333 : i32 = u_xlati85;
      let x_2336 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[(x_2331 / 4i)][(x_2333 % 4i)];
      let x_2337 : vec3<f32> = vs_TEXCOORD7;
      let x_2340 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2336 * vec4<f32>(x_2337.x, x_2337.x, x_2337.x, x_2337.x)) + x_2340);
      let x_2342 : i32 = u_xlati85;
      let x_2345 : i32 = u_xlati85;
      let x_2349 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2342 + 2i) / 4i)][((x_2345 + 2i) % 4i)];
      let x_2350 : vec3<f32> = vs_TEXCOORD7;
      let x_2353 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2349 * vec4<f32>(x_2350.z, x_2350.z, x_2350.z, x_2350.z)) + x_2353);
      let x_2355 : vec4<f32> = u_xlat11;
      let x_2356 : i32 = u_xlati85;
      let x_2359 : i32 = u_xlati85;
      let x_2363 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2356 + 3i) / 4i)][((x_2359 + 3i) % 4i)];
      u_xlat11 = (x_2355 + x_2363);
      let x_2365 : vec4<f32> = u_xlat11;
      let x_2367 : vec4<f32> = u_xlat11;
      let x_2369 : vec3<f32> = (vec3<f32>(x_2365.x, x_2365.y, x_2365.z) / vec3<f32>(x_2367.w, x_2367.w, x_2367.w));
      let x_2370 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
      let x_2373 : i32 = u_xlati31;
      let x_2375 : f32 = x_322.x_AdditionalShadowParams[x_2373].y;
      u_xlatb85 = (0.0f < x_2375);
      let x_2377 : bool = u_xlatb85;
      if (x_2377) {
        let x_2380 : i32 = u_xlati31;
        let x_2382 : f32 = x_322.x_AdditionalShadowParams[x_2380].y;
        u_xlatb85 = (1.0f == x_2382);
        let x_2384 : bool = u_xlatb85;
        if (x_2384) {
          let x_2387 : vec4<f32> = u_xlat11;
          let x_2391 : vec4<f32> = x_322.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2387.x, x_2387.y, x_2387.x, x_2387.y) + x_2391);
          let x_2394 : vec4<f32> = u_xlat12;
          let x_2395 : vec2<f32> = vec2<f32>(x_2394.x, x_2394.y);
          let x_2397 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
          let x_2405 : vec3<f32> = txVec30;
          let x_2407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2405.xy, x_2405.z);
          u_xlat13.x = x_2407;
          let x_2410 : vec4<f32> = u_xlat12;
          let x_2411 : vec2<f32> = vec2<f32>(x_2410.z, x_2410.w);
          let x_2413 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2411.x, x_2411.y, x_2413);
          let x_2420 : vec3<f32> = txVec31;
          let x_2422 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2420.xy, x_2420.z);
          u_xlat13.y = x_2422;
          let x_2424 : vec4<f32> = u_xlat11;
          let x_2428 : vec4<f32> = x_322.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2424.x, x_2424.y, x_2424.x, x_2424.y) + x_2428);
          let x_2431 : vec4<f32> = u_xlat12;
          let x_2432 : vec2<f32> = vec2<f32>(x_2431.x, x_2431.y);
          let x_2434 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2432.x, x_2432.y, x_2434);
          let x_2441 : vec3<f32> = txVec32;
          let x_2443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2441.xy, x_2441.z);
          u_xlat13.z = x_2443;
          let x_2446 : vec4<f32> = u_xlat12;
          let x_2447 : vec2<f32> = vec2<f32>(x_2446.z, x_2446.w);
          let x_2449 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
          let x_2456 : vec3<f32> = txVec33;
          let x_2458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
          u_xlat13.w = x_2458;
          let x_2460 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2460, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2463 : i32 = u_xlati31;
          let x_2465 : f32 = x_322.x_AdditionalShadowParams[x_2463].y;
          u_xlatb87 = (2.0f == x_2465);
          let x_2467 : bool = u_xlatb87;
          if (x_2467) {
            let x_2470 : vec4<f32> = u_xlat11;
            let x_2474 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2477 : vec2<f32> = ((vec2<f32>(x_2470.x, x_2470.y) * vec2<f32>(x_2474.z, x_2474.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2478 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec4<f32> = u_xlat12;
            let x_2482 : vec2<f32> = floor(vec2<f32>(x_2480.x, x_2480.y));
            let x_2483 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat11;
            let x_2488 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2491 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(x_2488.z, x_2488.w)) + -(vec2<f32>(x_2491.x, x_2491.y)));
            let x_2495 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2495.x, x_2495.x, x_2495.y, x_2495.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2498 : vec4<f32> = u_xlat13;
            let x_2500 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2498.x, x_2498.x, x_2498.z, x_2498.z) * vec4<f32>(x_2500.x, x_2500.x, x_2500.z, x_2500.z));
            let x_2503 : vec4<f32> = u_xlat14;
            let x_2505 : vec2<f32> = (vec2<f32>(x_2503.y, x_2503.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2506 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2505.x, x_2506.y, x_2505.y, x_2506.w);
            let x_2508 : vec4<f32> = u_xlat14;
            let x_2511 : vec2<f32> = u_xlat64;
            let x_2513 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2511));
            let x_2514 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2517 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2517) + vec2<f32>(1.0f, 1.0f));
            let x_2520 : vec2<f32> = u_xlat64;
            let x_2521 : vec2<f32> = min(x_2520, vec2<f32>(0.0f, 0.0f));
            let x_2522 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec4<f32> = u_xlat15;
            let x_2527 : vec4<f32> = u_xlat15;
            let x_2530 : vec2<f32> = u_xlat66;
            let x_2531 : vec2<f32> = ((-(vec2<f32>(x_2524.x, x_2524.y)) * vec2<f32>(x_2527.x, x_2527.y)) + x_2530);
            let x_2532 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
            let x_2534 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2534, vec2<f32>(0.0f, 0.0f));
            let x_2536 : vec2<f32> = u_xlat64;
            let x_2538 : vec2<f32> = u_xlat64;
            let x_2540 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2536) * x_2538) + vec2<f32>(x_2540.y, x_2540.w));
            let x_2543 : vec4<f32> = u_xlat15;
            let x_2545 : vec2<f32> = (vec2<f32>(x_2543.x, x_2543.y) + vec2<f32>(1.0f, 1.0f));
            let x_2546 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2548 + vec2<f32>(1.0f, 1.0f));
            let x_2550 : vec4<f32> = u_xlat14;
            let x_2552 : vec2<f32> = (vec2<f32>(x_2550.x, x_2550.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2553 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
            let x_2555 : vec2<f32> = u_xlat66;
            let x_2556 : vec2<f32> = (x_2555 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2557 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2556.x, x_2556.y, x_2557.z, x_2557.w);
            let x_2559 : vec4<f32> = u_xlat15;
            let x_2561 : vec2<f32> = (vec2<f32>(x_2559.x, x_2559.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2562 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
            let x_2564 : vec2<f32> = u_xlat64;
            let x_2565 : vec2<f32> = (x_2564 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2566 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2565.x, x_2565.y, x_2566.z, x_2566.w);
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2568.y, x_2568.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2572 : f32 = u_xlat15.x;
            u_xlat16.z = x_2572;
            let x_2575 : f32 = u_xlat64.x;
            u_xlat16.w = x_2575;
            let x_2578 : f32 = u_xlat17.x;
            u_xlat14.z = x_2578;
            let x_2581 : f32 = u_xlat13.x;
            u_xlat14.w = x_2581;
            let x_2583 : vec4<f32> = u_xlat14;
            let x_2585 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2583.z, x_2583.w, x_2583.x, x_2583.z) + vec4<f32>(x_2585.z, x_2585.w, x_2585.x, x_2585.z));
            let x_2589 : f32 = u_xlat16.y;
            u_xlat15.z = x_2589;
            let x_2592 : f32 = u_xlat64.y;
            u_xlat15.w = x_2592;
            let x_2595 : f32 = u_xlat14.y;
            u_xlat17.z = x_2595;
            let x_2598 : f32 = u_xlat13.z;
            u_xlat17.w = x_2598;
            let x_2600 : vec4<f32> = u_xlat15;
            let x_2602 : vec4<f32> = u_xlat17;
            let x_2604 : vec3<f32> = (vec3<f32>(x_2600.z, x_2600.y, x_2600.w) + vec3<f32>(x_2602.z, x_2602.y, x_2602.w));
            let x_2605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat14;
            let x_2609 : vec4<f32> = u_xlat18;
            let x_2611 : vec3<f32> = (vec3<f32>(x_2607.x, x_2607.z, x_2607.w) / vec3<f32>(x_2609.z, x_2609.w, x_2609.y));
            let x_2612 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat14;
            let x_2616 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.y, x_2614.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2617 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
            let x_2619 : vec4<f32> = u_xlat17;
            let x_2621 : vec4<f32> = u_xlat13;
            let x_2623 : vec3<f32> = (vec3<f32>(x_2619.z, x_2619.y, x_2619.w) / vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
            let x_2624 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2628 : vec3<f32> = (vec3<f32>(x_2626.x, x_2626.y, x_2626.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2629 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
            let x_2631 : vec4<f32> = u_xlat14;
            let x_2634 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2636 : vec3<f32> = (vec3<f32>(x_2631.y, x_2631.x, x_2631.z) * vec3<f32>(x_2634.x, x_2634.x, x_2634.x));
            let x_2637 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
            let x_2639 : vec4<f32> = u_xlat15;
            let x_2642 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2644 : vec3<f32> = (vec3<f32>(x_2639.x, x_2639.y, x_2639.z) * vec3<f32>(x_2642.y, x_2642.y, x_2642.y));
            let x_2645 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
            let x_2648 : f32 = u_xlat15.x;
            u_xlat14.w = x_2648;
            let x_2650 : vec4<f32> = u_xlat12;
            let x_2653 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2656 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2650.x, x_2650.y, x_2650.x, x_2650.y) * vec4<f32>(x_2653.x, x_2653.y, x_2653.x, x_2653.y)) + vec4<f32>(x_2656.y, x_2656.w, x_2656.x, x_2656.w));
            let x_2659 : vec4<f32> = u_xlat12;
            let x_2662 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2665 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2659.x, x_2659.y) * vec2<f32>(x_2662.x, x_2662.y)) + vec2<f32>(x_2665.z, x_2665.w));
            let x_2669 : f32 = u_xlat14.y;
            u_xlat15.w = x_2669;
            let x_2671 : vec4<f32> = u_xlat15;
            let x_2672 : vec2<f32> = vec2<f32>(x_2671.y, x_2671.z);
            let x_2673 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2673.x, x_2672.x, x_2673.z, x_2672.y);
            let x_2675 : vec4<f32> = u_xlat12;
            let x_2678 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.y) * vec4<f32>(x_2678.x, x_2678.y, x_2678.x, x_2678.y)) + vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2681.y));
            let x_2684 : vec4<f32> = u_xlat12;
            let x_2687 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2690 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2684.x, x_2684.y, x_2684.x, x_2684.y) * vec4<f32>(x_2687.x, x_2687.y, x_2687.x, x_2687.y)) + vec4<f32>(x_2690.w, x_2690.y, x_2690.w, x_2690.z));
            let x_2693 : vec4<f32> = u_xlat12;
            let x_2696 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2699 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2693.x, x_2693.y, x_2693.x, x_2693.y) * vec4<f32>(x_2696.x, x_2696.y, x_2696.x, x_2696.y)) + vec4<f32>(x_2699.x, x_2699.w, x_2699.z, x_2699.w));
            let x_2702 : vec4<f32> = u_xlat13;
            let x_2704 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2702.x, x_2702.x, x_2702.x, x_2702.y) * vec4<f32>(x_2704.z, x_2704.w, x_2704.y, x_2704.z));
            let x_2708 : vec4<f32> = u_xlat13;
            let x_2710 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2708.y, x_2708.y, x_2708.z, x_2708.z) * x_2710);
            let x_2713 : f32 = u_xlat13.z;
            let x_2715 : f32 = u_xlat18.y;
            u_xlat87 = (x_2713 * x_2715);
            let x_2718 : vec4<f32> = u_xlat16;
            let x_2719 : vec2<f32> = vec2<f32>(x_2718.x, x_2718.y);
            let x_2721 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2719.x, x_2719.y, x_2721);
            let x_2728 : vec3<f32> = txVec34;
            let x_2730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2728.xy, x_2728.z);
            u_xlat88 = x_2730;
            let x_2732 : vec4<f32> = u_xlat16;
            let x_2733 : vec2<f32> = vec2<f32>(x_2732.z, x_2732.w);
            let x_2735 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2733.x, x_2733.y, x_2735);
            let x_2743 : vec3<f32> = txVec35;
            let x_2745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
            u_xlat89 = x_2745;
            let x_2746 : f32 = u_xlat89;
            let x_2748 : f32 = u_xlat19.y;
            u_xlat89 = (x_2746 * x_2748);
            let x_2751 : f32 = u_xlat19.x;
            let x_2752 : f32 = u_xlat88;
            let x_2754 : f32 = u_xlat89;
            u_xlat88 = ((x_2751 * x_2752) + x_2754);
            let x_2757 : vec2<f32> = u_xlat64;
            let x_2759 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
            let x_2766 : vec3<f32> = txVec36;
            let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
            u_xlat89 = x_2768;
            let x_2770 : f32 = u_xlat19.z;
            let x_2771 : f32 = u_xlat89;
            let x_2773 : f32 = u_xlat88;
            u_xlat88 = ((x_2770 * x_2771) + x_2773);
            let x_2776 : vec4<f32> = u_xlat15;
            let x_2777 : vec2<f32> = vec2<f32>(x_2776.x, x_2776.y);
            let x_2779 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2777.x, x_2777.y, x_2779);
            let x_2786 : vec3<f32> = txVec37;
            let x_2788 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2786.xy, x_2786.z);
            u_xlat89 = x_2788;
            let x_2790 : f32 = u_xlat19.w;
            let x_2791 : f32 = u_xlat89;
            let x_2793 : f32 = u_xlat88;
            u_xlat88 = ((x_2790 * x_2791) + x_2793);
            let x_2796 : vec4<f32> = u_xlat17;
            let x_2797 : vec2<f32> = vec2<f32>(x_2796.x, x_2796.y);
            let x_2799 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2797.x, x_2797.y, x_2799);
            let x_2806 : vec3<f32> = txVec38;
            let x_2808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2806.xy, x_2806.z);
            u_xlat89 = x_2808;
            let x_2810 : f32 = u_xlat20.x;
            let x_2811 : f32 = u_xlat89;
            let x_2813 : f32 = u_xlat88;
            u_xlat88 = ((x_2810 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat17;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.z, x_2816.w);
            let x_2819 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec39;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat89 = x_2828;
            let x_2830 : f32 = u_xlat20.y;
            let x_2831 : f32 = u_xlat89;
            let x_2833 : f32 = u_xlat88;
            u_xlat88 = ((x_2830 * x_2831) + x_2833);
            let x_2836 : vec4<f32> = u_xlat15;
            let x_2837 : vec2<f32> = vec2<f32>(x_2836.z, x_2836.w);
            let x_2839 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
            let x_2846 : vec3<f32> = txVec40;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat89 = x_2848;
            let x_2850 : f32 = u_xlat20.z;
            let x_2851 : f32 = u_xlat89;
            let x_2853 : f32 = u_xlat88;
            u_xlat88 = ((x_2850 * x_2851) + x_2853);
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2857 : vec2<f32> = vec2<f32>(x_2856.x, x_2856.y);
            let x_2859 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
            let x_2866 : vec3<f32> = txVec41;
            let x_2868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
            u_xlat89 = x_2868;
            let x_2870 : f32 = u_xlat20.w;
            let x_2871 : f32 = u_xlat89;
            let x_2873 : f32 = u_xlat88;
            u_xlat88 = ((x_2870 * x_2871) + x_2873);
            let x_2876 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = vec2<f32>(x_2876.z, x_2876.w);
            let x_2879 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2877.x, x_2877.y, x_2879);
            let x_2886 : vec3<f32> = txVec42;
            let x_2888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2886.xy, x_2886.z);
            u_xlat89 = x_2888;
            let x_2889 : f32 = u_xlat87;
            let x_2890 : f32 = u_xlat89;
            let x_2892 : f32 = u_xlat88;
            u_xlat85 = ((x_2889 * x_2890) + x_2892);
          } else {
            let x_2895 : vec4<f32> = u_xlat11;
            let x_2898 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2901 : vec2<f32> = ((vec2<f32>(x_2895.x, x_2895.y) * vec2<f32>(x_2898.z, x_2898.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2902 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat12;
            let x_2906 : vec2<f32> = floor(vec2<f32>(x_2904.x, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2909.x, x_2909.y) * vec2<f32>(x_2912.z, x_2912.w)) + -(vec2<f32>(x_2915.x, x_2915.y)));
            let x_2919 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2919.x, x_2919.x, x_2919.y, x_2919.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2922 : vec4<f32> = u_xlat13;
            let x_2924 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2922.x, x_2922.x, x_2922.z, x_2922.z) * vec4<f32>(x_2924.x, x_2924.x, x_2924.z, x_2924.z));
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2929 : vec2<f32> = (vec2<f32>(x_2927.y, x_2927.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2930 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2930.x, x_2929.x, x_2930.z, x_2929.y);
            let x_2932 : vec4<f32> = u_xlat14;
            let x_2935 : vec2<f32> = u_xlat64;
            let x_2937 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2935));
            let x_2938 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2937.x, x_2938.y, x_2937.y, x_2938.w);
            let x_2940 : vec2<f32> = u_xlat64;
            let x_2942 : vec2<f32> = (-(x_2940) + vec2<f32>(1.0f, 1.0f));
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2945 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2945, vec2<f32>(0.0f, 0.0f));
            let x_2947 : vec2<f32> = u_xlat66;
            let x_2949 : vec2<f32> = u_xlat66;
            let x_2951 : vec4<f32> = u_xlat14;
            let x_2953 : vec2<f32> = ((-(x_2947) * x_2949) + vec2<f32>(x_2951.x, x_2951.y));
            let x_2954 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2956 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2956, vec2<f32>(0.0f, 0.0f));
            let x_2959 : vec2<f32> = u_xlat66;
            let x_2961 : vec2<f32> = u_xlat66;
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2965 : vec2<f32> = ((-(x_2959) * x_2961) + vec2<f32>(x_2963.y, x_2963.w));
            let x_2966 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2965.x, x_2966.y, x_2965.y);
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2971 : vec2<f32> = (vec2<f32>(x_2968.x, x_2968.y) + vec2<f32>(2.0f, 2.0f));
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
            let x_2974 : vec3<f32> = u_xlat39;
            let x_2976 : vec2<f32> = (vec2<f32>(x_2974.x, x_2974.z) + vec2<f32>(2.0f, 2.0f));
            let x_2977 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2977.x, x_2976.x, x_2977.z, x_2976.y);
            let x_2980 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2980 * 0.08163200318813323975f);
            let x_2983 : vec4<f32> = u_xlat13;
            let x_2986 : vec3<f32> = (vec3<f32>(x_2983.z, x_2983.x, x_2983.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2987 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2986.x, x_2986.y, x_2986.z, x_2987.w);
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2991 : vec2<f32> = (vec2<f32>(x_2989.x, x_2989.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2992 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2991.x, x_2991.y, x_2992.z, x_2992.w);
            let x_2995 : f32 = u_xlat17.y;
            u_xlat16.x = x_2995;
            let x_2997 : vec2<f32> = u_xlat64;
            let x_3000 : vec2<f32> = ((vec2<f32>(x_2997.x, x_2997.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3001 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3001.x, x_3000.x, x_3001.z, x_3000.y);
            let x_3003 : vec2<f32> = u_xlat64;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_3003.x, x_3003.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3007 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3006.x, x_3007.y, x_3006.y, x_3007.w);
            let x_3010 : f32 = u_xlat13.x;
            u_xlat14.y = x_3010;
            let x_3013 : f32 = u_xlat15.y;
            u_xlat14.w = x_3013;
            let x_3015 : vec4<f32> = u_xlat14;
            let x_3016 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3015 + x_3016);
            let x_3018 : vec2<f32> = u_xlat64;
            let x_3021 : vec2<f32> = ((vec2<f32>(x_3018.y, x_3018.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3022 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3022.x, x_3021.x, x_3022.z, x_3021.y);
            let x_3024 : vec2<f32> = u_xlat64;
            let x_3027 : vec2<f32> = ((vec2<f32>(x_3024.y, x_3024.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3028 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3027.x, x_3028.y, x_3027.y, x_3028.w);
            let x_3031 : f32 = u_xlat13.y;
            u_xlat15.y = x_3031;
            let x_3033 : vec4<f32> = u_xlat15;
            let x_3034 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3033 + x_3034);
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3037 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3036 / x_3037);
            let x_3039 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3039 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3041 : vec4<f32> = u_xlat15;
            let x_3042 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3041 / x_3042);
            let x_3044 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3044 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3046 : vec4<f32> = u_xlat14;
            let x_3049 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3046.w, x_3046.x, x_3046.y, x_3046.z) * vec4<f32>(x_3049.x, x_3049.x, x_3049.x, x_3049.x));
            let x_3052 : vec4<f32> = u_xlat15;
            let x_3055 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3052.x, x_3052.w, x_3052.y, x_3052.z) * vec4<f32>(x_3055.y, x_3055.y, x_3055.y, x_3055.y));
            let x_3058 : vec4<f32> = u_xlat14;
            let x_3059 : vec3<f32> = vec3<f32>(x_3058.y, x_3058.z, x_3058.w);
            let x_3060 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3059.x, x_3060.y, x_3059.y, x_3059.z);
            let x_3063 : f32 = u_xlat15.x;
            u_xlat17.y = x_3063;
            let x_3065 : vec4<f32> = u_xlat12;
            let x_3068 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y) * vec4<f32>(x_3068.x, x_3068.y, x_3068.x, x_3068.y)) + vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3071.y));
            let x_3074 : vec4<f32> = u_xlat12;
            let x_3077 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3080 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3074.x, x_3074.y) * vec2<f32>(x_3077.x, x_3077.y)) + vec2<f32>(x_3080.w, x_3080.y));
            let x_3084 : f32 = u_xlat17.y;
            u_xlat14.y = x_3084;
            let x_3087 : f32 = u_xlat15.z;
            u_xlat17.y = x_3087;
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3092 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y) * vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y)) + vec4<f32>(x_3095.x, x_3095.y, x_3095.z, x_3095.y));
            let x_3098 : vec4<f32> = u_xlat12;
            let x_3101 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat17;
            let x_3106 : vec2<f32> = ((vec2<f32>(x_3098.x, x_3098.y) * vec2<f32>(x_3101.x, x_3101.y)) + vec2<f32>(x_3104.w, x_3104.y));
            let x_3107 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
            let x_3110 : f32 = u_xlat17.y;
            u_xlat14.z = x_3110;
            let x_3113 : vec4<f32> = u_xlat12;
            let x_3116 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3119 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3113.x, x_3113.y, x_3113.x, x_3113.y) * vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y)) + vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.z));
            let x_3123 : f32 = u_xlat15.w;
            u_xlat17.y = x_3123;
            let x_3126 : vec4<f32> = u_xlat12;
            let x_3129 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.y) * vec4<f32>(x_3129.x, x_3129.y, x_3129.x, x_3129.y)) + vec4<f32>(x_3132.x, x_3132.y, x_3132.z, x_3132.y));
            let x_3136 : vec4<f32> = u_xlat12;
            let x_3139 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3142 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3136.x, x_3136.y) * vec2<f32>(x_3139.x, x_3139.y)) + vec2<f32>(x_3142.w, x_3142.y));
            let x_3146 : f32 = u_xlat17.y;
            u_xlat14.w = x_3146;
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3152 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3155 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3149.x, x_3149.y) * vec2<f32>(x_3152.x, x_3152.y)) + vec2<f32>(x_3155.x, x_3155.w));
            let x_3158 : vec4<f32> = u_xlat17;
            let x_3159 : vec3<f32> = vec3<f32>(x_3158.x, x_3158.z, x_3158.w);
            let x_3160 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3159.x, x_3160.y, x_3159.y, x_3159.z);
            let x_3162 : vec4<f32> = u_xlat12;
            let x_3165 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3168 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y) * vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.y)) + vec4<f32>(x_3168.x, x_3168.y, x_3168.z, x_3168.y));
            let x_3172 : vec4<f32> = u_xlat12;
            let x_3175 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(x_3175.x, x_3175.y)) + vec2<f32>(x_3178.w, x_3178.y));
            let x_3182 : f32 = u_xlat14.x;
            u_xlat15.x = x_3182;
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3190 : vec4<f32> = u_xlat15;
            let x_3192 : vec2<f32> = ((vec2<f32>(x_3184.x, x_3184.y) * vec2<f32>(x_3187.x, x_3187.y)) + vec2<f32>(x_3190.x, x_3190.y));
            let x_3193 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3192.x, x_3192.y, x_3193.z, x_3193.w);
            let x_3196 : vec4<f32> = u_xlat13;
            let x_3198 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3196.x, x_3196.x, x_3196.x, x_3196.x) * x_3198);
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3203 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3201.y, x_3201.y, x_3201.y, x_3201.y) * x_3203);
            let x_3206 : vec4<f32> = u_xlat13;
            let x_3208 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3206.z, x_3206.z, x_3206.z, x_3206.z) * x_3208);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3210.w, x_3210.w, x_3210.w, x_3210.w) * x_3212);
            let x_3215 : vec4<f32> = u_xlat18;
            let x_3216 : vec2<f32> = vec2<f32>(x_3215.x, x_3215.y);
            let x_3218 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3216.x, x_3216.y, x_3218);
            let x_3225 : vec3<f32> = txVec43;
            let x_3227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3225.xy, x_3225.z);
            u_xlat87 = x_3227;
            let x_3229 : vec4<f32> = u_xlat18;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.z, x_3229.w);
            let x_3232 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec44;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat88 = x_3241;
            let x_3242 : f32 = u_xlat88;
            let x_3244 : f32 = u_xlat23.y;
            u_xlat88 = (x_3242 * x_3244);
            let x_3247 : f32 = u_xlat23.x;
            let x_3248 : f32 = u_xlat87;
            let x_3250 : f32 = u_xlat88;
            u_xlat87 = ((x_3247 * x_3248) + x_3250);
            let x_3253 : vec2<f32> = u_xlat64;
            let x_3255 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec45;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat88 = x_3264;
            let x_3266 : f32 = u_xlat23.z;
            let x_3267 : f32 = u_xlat88;
            let x_3269 : f32 = u_xlat87;
            u_xlat87 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec4<f32> = u_xlat21;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.x, x_3272.y);
            let x_3275 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec46;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat88 = x_3284;
            let x_3286 : f32 = u_xlat23.w;
            let x_3287 : f32 = u_xlat88;
            let x_3289 : f32 = u_xlat87;
            u_xlat87 = ((x_3286 * x_3287) + x_3289);
            let x_3292 : vec4<f32> = u_xlat19;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.x, x_3292.y);
            let x_3295 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec47;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat88 = x_3304;
            let x_3306 : f32 = u_xlat24.x;
            let x_3307 : f32 = u_xlat88;
            let x_3309 : f32 = u_xlat87;
            u_xlat87 = ((x_3306 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat19;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.z, x_3312.w);
            let x_3315 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec48;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat88 = x_3324;
            let x_3326 : f32 = u_xlat24.y;
            let x_3327 : f32 = u_xlat88;
            let x_3329 : f32 = u_xlat87;
            u_xlat87 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec4<f32> = u_xlat20;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.x, x_3332.y);
            let x_3335 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec49;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat88 = x_3344;
            let x_3346 : f32 = u_xlat24.z;
            let x_3347 : f32 = u_xlat88;
            let x_3349 : f32 = u_xlat87;
            u_xlat87 = ((x_3346 * x_3347) + x_3349);
            let x_3352 : vec4<f32> = u_xlat21;
            let x_3353 : vec2<f32> = vec2<f32>(x_3352.z, x_3352.w);
            let x_3355 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec50;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat88 = x_3364;
            let x_3366 : f32 = u_xlat24.w;
            let x_3367 : f32 = u_xlat88;
            let x_3369 : f32 = u_xlat87;
            u_xlat87 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat22;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
            let x_3375 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec51;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat88 = x_3384;
            let x_3386 : f32 = u_xlat25.x;
            let x_3387 : f32 = u_xlat88;
            let x_3389 : f32 = u_xlat87;
            u_xlat87 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat22;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.z, x_3392.w);
            let x_3395 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec52;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat88 = x_3404;
            let x_3406 : f32 = u_xlat25.y;
            let x_3407 : f32 = u_xlat88;
            let x_3409 : f32 = u_xlat87;
            u_xlat87 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec2<f32> = u_xlat40;
            let x_3414 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec53;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat88 = x_3423;
            let x_3425 : f32 = u_xlat25.z;
            let x_3426 : f32 = u_xlat88;
            let x_3428 : f32 = u_xlat87;
            u_xlat87 = ((x_3425 * x_3426) + x_3428);
            let x_3431 : vec2<f32> = u_xlat72;
            let x_3433 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3431.x, x_3431.y, x_3433);
            let x_3440 : vec3<f32> = txVec54;
            let x_3442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3440.xy, x_3440.z);
            u_xlat88 = x_3442;
            let x_3444 : f32 = u_xlat25.w;
            let x_3445 : f32 = u_xlat88;
            let x_3447 : f32 = u_xlat87;
            u_xlat87 = ((x_3444 * x_3445) + x_3447);
            let x_3450 : vec4<f32> = u_xlat17;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.x, x_3450.y);
            let x_3453 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec55;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat88 = x_3462;
            let x_3464 : f32 = u_xlat13.x;
            let x_3465 : f32 = u_xlat88;
            let x_3467 : f32 = u_xlat87;
            u_xlat87 = ((x_3464 * x_3465) + x_3467);
            let x_3470 : vec4<f32> = u_xlat17;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.z, x_3470.w);
            let x_3473 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec56;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat88 = x_3482;
            let x_3484 : f32 = u_xlat13.y;
            let x_3485 : f32 = u_xlat88;
            let x_3487 : f32 = u_xlat87;
            u_xlat87 = ((x_3484 * x_3485) + x_3487);
            let x_3490 : vec2<f32> = u_xlat67;
            let x_3492 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec57;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat88 = x_3501;
            let x_3503 : f32 = u_xlat13.z;
            let x_3504 : f32 = u_xlat88;
            let x_3506 : f32 = u_xlat87;
            u_xlat87 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat12;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec58;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat88 = x_3521;
            let x_3523 : f32 = u_xlat13.w;
            let x_3524 : f32 = u_xlat88;
            let x_3526 : f32 = u_xlat87;
            u_xlat85 = ((x_3523 * x_3524) + x_3526);
          }
        }
      } else {
        let x_3530 : vec4<f32> = u_xlat11;
        let x_3531 : vec2<f32> = vec2<f32>(x_3530.x, x_3530.y);
        let x_3533 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
        let x_3540 : vec3<f32> = txVec59;
        let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
        u_xlat85 = x_3542;
      }
      let x_3543 : i32 = u_xlati31;
      let x_3545 : f32 = x_322.x_AdditionalShadowParams[x_3543].x;
      u_xlat87 = (1.0f + -(x_3545));
      let x_3548 : f32 = u_xlat85;
      let x_3549 : i32 = u_xlati31;
      let x_3551 : f32 = x_322.x_AdditionalShadowParams[x_3549].x;
      let x_3553 : f32 = u_xlat87;
      u_xlat85 = ((x_3548 * x_3551) + x_3553);
      let x_3556 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3556);
      let x_3560 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3560 >= 1.0f);
      let x_3562 : bool = u_xlatb87;
      let x_3563 : bool = u_xlatb88;
      u_xlatb87 = (x_3562 | x_3563);
      let x_3565 : bool = u_xlatb87;
      let x_3566 : f32 = u_xlat85;
      u_xlat85 = select(x_3566, 1.0f, x_3565);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3569 : f32 = u_xlat85;
    u_xlat87 = (-(x_3569) + 1.0f);
    let x_3572 : f32 = u_xlat79;
    let x_3573 : f32 = u_xlat87;
    let x_3575 : f32 = u_xlat85;
    u_xlat85 = ((x_3572 * x_3573) + x_3575);
    let x_3578 : i32 = u_xlati31;
    u_xlati87 = (1i << bitcast<u32>((x_3578 & 31i)));
    let x_3582 : i32 = u_xlati87;
    let x_3585 : f32 = x_1687.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3582) & bitcast<u32>(x_3585)));
    let x_3589 : i32 = u_xlati87;
    if ((x_3589 != 0i)) {
      let x_3593 : i32 = u_xlati31;
      let x_3595 : f32 = x_1687.x_AdditionalLightsLightTypes[x_3593].el;
      u_xlati87 = i32(x_3595);
      let x_3598 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3598 != 0i));
      let x_3602 : i32 = u_xlati31;
      u_xlati11 = (x_3602 << bitcast<u32>(2i));
      let x_3604 : i32 = u_xlati88;
      if ((x_3604 != 0i)) {
        let x_3609 : vec3<f32> = vs_TEXCOORD7;
        let x_3611 : i32 = u_xlati11;
        let x_3614 : i32 = u_xlati11;
        let x_3618 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3611 + 1i) / 4i)][((x_3614 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3609.y, x_3609.y, x_3609.y) * vec3<f32>(x_3618.x, x_3618.y, x_3618.w));
        let x_3621 : i32 = u_xlati11;
        let x_3623 : i32 = u_xlati11;
        let x_3626 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_3621 / 4i)][(x_3623 % 4i)];
        let x_3628 : vec3<f32> = vs_TEXCOORD7;
        let x_3631 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3626.x, x_3626.y, x_3626.w) * vec3<f32>(x_3628.x, x_3628.x, x_3628.x)) + x_3631);
        let x_3633 : i32 = u_xlati11;
        let x_3636 : i32 = u_xlati11;
        let x_3640 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3633 + 2i) / 4i)][((x_3636 + 2i) % 4i)];
        let x_3642 : vec3<f32> = vs_TEXCOORD7;
        let x_3645 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3640.x, x_3640.y, x_3640.w) * vec3<f32>(x_3642.z, x_3642.z, x_3642.z)) + x_3645);
        let x_3647 : vec3<f32> = u_xlat37;
        let x_3648 : i32 = u_xlati11;
        let x_3651 : i32 = u_xlati11;
        let x_3655 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3648 + 3i) / 4i)][((x_3651 + 3i) % 4i)];
        u_xlat37 = (x_3647 + vec3<f32>(x_3655.x, x_3655.y, x_3655.w));
        let x_3658 : vec3<f32> = u_xlat37;
        let x_3660 : vec3<f32> = u_xlat37;
        let x_3662 : vec2<f32> = (vec2<f32>(x_3658.x, x_3658.y) / vec2<f32>(x_3660.z, x_3660.z));
        let x_3663 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3662.x, x_3662.y, x_3663.z);
        let x_3665 : vec3<f32> = u_xlat37;
        let x_3668 : vec2<f32> = ((vec2<f32>(x_3665.x, x_3665.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3669 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3668.x, x_3668.y, x_3669.z);
        let x_3671 : vec3<f32> = u_xlat37;
        let x_3675 : vec2<f32> = clamp(vec2<f32>(x_3671.x, x_3671.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3676 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3675.x, x_3675.y, x_3676.z);
        let x_3678 : i32 = u_xlati31;
        let x_3680 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3678];
        let x_3682 : vec3<f32> = u_xlat37;
        let x_3685 : i32 = u_xlati31;
        let x_3687 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3685];
        let x_3689 : vec2<f32> = ((vec2<f32>(x_3680.x, x_3680.y) * vec2<f32>(x_3682.x, x_3682.y)) + vec2<f32>(x_3687.z, x_3687.w));
        let x_3690 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3689.x, x_3689.y, x_3690.z);
      } else {
        let x_3693 : i32 = u_xlati87;
        u_xlatb87 = (x_3693 == 1i);
        let x_3695 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3695);
        let x_3697 : i32 = u_xlati87;
        if ((x_3697 != 0i)) {
          let x_3701 : vec3<f32> = vs_TEXCOORD7;
          let x_3703 : i32 = u_xlati11;
          let x_3706 : i32 = u_xlati11;
          let x_3710 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3703 + 1i) / 4i)][((x_3706 + 1i) % 4i)];
          let x_3712 : vec2<f32> = (vec2<f32>(x_3701.y, x_3701.y) * vec2<f32>(x_3710.x, x_3710.y));
          let x_3713 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3712.x, x_3712.y, x_3713.z, x_3713.w);
          let x_3715 : i32 = u_xlati11;
          let x_3717 : i32 = u_xlati11;
          let x_3720 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_3715 / 4i)][(x_3717 % 4i)];
          let x_3722 : vec3<f32> = vs_TEXCOORD7;
          let x_3725 : vec4<f32> = u_xlat12;
          let x_3727 : vec2<f32> = ((vec2<f32>(x_3720.x, x_3720.y) * vec2<f32>(x_3722.x, x_3722.x)) + vec2<f32>(x_3725.x, x_3725.y));
          let x_3728 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3727.x, x_3727.y, x_3728.z, x_3728.w);
          let x_3730 : i32 = u_xlati11;
          let x_3733 : i32 = u_xlati11;
          let x_3737 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3730 + 2i) / 4i)][((x_3733 + 2i) % 4i)];
          let x_3739 : vec3<f32> = vs_TEXCOORD7;
          let x_3742 : vec4<f32> = u_xlat12;
          let x_3744 : vec2<f32> = ((vec2<f32>(x_3737.x, x_3737.y) * vec2<f32>(x_3739.z, x_3739.z)) + vec2<f32>(x_3742.x, x_3742.y));
          let x_3745 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3744.x, x_3744.y, x_3745.z, x_3745.w);
          let x_3747 : vec4<f32> = u_xlat12;
          let x_3749 : i32 = u_xlati11;
          let x_3752 : i32 = u_xlati11;
          let x_3756 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3749 + 3i) / 4i)][((x_3752 + 3i) % 4i)];
          let x_3758 : vec2<f32> = (vec2<f32>(x_3747.x, x_3747.y) + vec2<f32>(x_3756.x, x_3756.y));
          let x_3759 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3758.x, x_3758.y, x_3759.z, x_3759.w);
          let x_3761 : vec4<f32> = u_xlat12;
          let x_3764 : vec2<f32> = ((vec2<f32>(x_3761.x, x_3761.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3765 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3764.x, x_3764.y, x_3765.z, x_3765.w);
          let x_3767 : vec4<f32> = u_xlat12;
          let x_3769 : vec2<f32> = fract(vec2<f32>(x_3767.x, x_3767.y));
          let x_3770 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
          let x_3772 : i32 = u_xlati31;
          let x_3774 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3772];
          let x_3776 : vec4<f32> = u_xlat12;
          let x_3779 : i32 = u_xlati31;
          let x_3781 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3779];
          let x_3783 : vec2<f32> = ((vec2<f32>(x_3774.x, x_3774.y) * vec2<f32>(x_3776.x, x_3776.y)) + vec2<f32>(x_3781.z, x_3781.w));
          let x_3784 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3783.x, x_3783.y, x_3784.z);
        } else {
          let x_3787 : vec3<f32> = vs_TEXCOORD7;
          let x_3789 : i32 = u_xlati11;
          let x_3792 : i32 = u_xlati11;
          let x_3796 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3789 + 1i) / 4i)][((x_3792 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3787.y, x_3787.y, x_3787.y, x_3787.y) * x_3796);
          let x_3798 : i32 = u_xlati11;
          let x_3800 : i32 = u_xlati11;
          let x_3803 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[(x_3798 / 4i)][(x_3800 % 4i)];
          let x_3804 : vec3<f32> = vs_TEXCOORD7;
          let x_3807 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3803 * vec4<f32>(x_3804.x, x_3804.x, x_3804.x, x_3804.x)) + x_3807);
          let x_3809 : i32 = u_xlati11;
          let x_3812 : i32 = u_xlati11;
          let x_3816 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3809 + 2i) / 4i)][((x_3812 + 2i) % 4i)];
          let x_3817 : vec3<f32> = vs_TEXCOORD7;
          let x_3820 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3816 * vec4<f32>(x_3817.z, x_3817.z, x_3817.z, x_3817.z)) + x_3820);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3823 : i32 = u_xlati11;
          let x_3826 : i32 = u_xlati11;
          let x_3830 : vec4<f32> = x_1687.x_AdditionalLightsWorldToLights[((x_3823 + 3i) / 4i)][((x_3826 + 3i) % 4i)];
          u_xlat12 = (x_3822 + x_3830);
          let x_3832 : vec4<f32> = u_xlat12;
          let x_3834 : vec4<f32> = u_xlat12;
          let x_3836 : vec3<f32> = (vec3<f32>(x_3832.x, x_3832.y, x_3832.z) / vec3<f32>(x_3834.w, x_3834.w, x_3834.w));
          let x_3837 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
          let x_3839 : vec4<f32> = u_xlat12;
          let x_3841 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3839.x, x_3839.y, x_3839.z), vec3<f32>(x_3841.x, x_3841.y, x_3841.z));
          let x_3844 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3844);
          let x_3846 : f32 = u_xlat87;
          let x_3848 : vec4<f32> = u_xlat12;
          let x_3850 : vec3<f32> = (vec3<f32>(x_3846, x_3846, x_3846) * vec3<f32>(x_3848.x, x_3848.y, x_3848.z));
          let x_3851 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3850.x, x_3850.y, x_3850.z, x_3851.w);
          let x_3853 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3853.x, x_3853.y, x_3853.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3858 : f32 = u_xlat87;
          u_xlat87 = max(x_3858, 0.00000099999999747524f);
          let x_3861 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3861);
          let x_3863 : f32 = u_xlat87;
          let x_3865 : vec4<f32> = u_xlat12;
          let x_3867 : vec3<f32> = (vec3<f32>(x_3863, x_3863, x_3863) * vec3<f32>(x_3865.z, x_3865.x, x_3865.y));
          let x_3868 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
          let x_3871 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3871);
          let x_3875 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3875, 0.0f, 1.0f);
          let x_3878 : vec4<f32> = u_xlat13;
          let x_3880 : vec4<bool> = (vec4<f32>(x_3878.y, x_3878.y, x_3878.y, x_3878.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3881 : vec2<bool> = vec2<bool>(x_3880.x, x_3880.w);
          let x_3882 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3881.x, x_3882.y, x_3882.z, x_3881.y);
          let x_3885 : bool = u_xlatb11.x;
          if (x_3885) {
            let x_3890 : f32 = u_xlat13.x;
            x_3886 = x_3890;
          } else {
            let x_3893 : f32 = u_xlat13.x;
            x_3886 = -(x_3893);
          }
          let x_3895 : f32 = x_3886;
          u_xlat11.x = x_3895;
          let x_3898 : bool = u_xlatb11.w;
          if (x_3898) {
            let x_3903 : f32 = u_xlat13.x;
            x_3899 = x_3903;
          } else {
            let x_3906 : f32 = u_xlat13.x;
            x_3899 = -(x_3906);
          }
          let x_3908 : f32 = x_3899;
          u_xlat11.w = x_3908;
          let x_3910 : vec4<f32> = u_xlat12;
          let x_3912 : f32 = u_xlat87;
          let x_3915 : vec4<f32> = u_xlat11;
          let x_3917 : vec2<f32> = ((vec2<f32>(x_3910.x, x_3910.y) * vec2<f32>(x_3912, x_3912)) + vec2<f32>(x_3915.x, x_3915.w));
          let x_3918 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3917.x, x_3918.y, x_3918.z, x_3917.y);
          let x_3920 : vec4<f32> = u_xlat11;
          let x_3923 : vec2<f32> = ((vec2<f32>(x_3920.x, x_3920.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3924 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3923.x, x_3924.y, x_3924.z, x_3923.y);
          let x_3926 : vec4<f32> = u_xlat11;
          let x_3930 : vec2<f32> = clamp(vec2<f32>(x_3926.x, x_3926.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3931 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3930.x, x_3931.y, x_3931.z, x_3930.y);
          let x_3933 : i32 = u_xlati31;
          let x_3935 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3933];
          let x_3937 : vec4<f32> = u_xlat11;
          let x_3940 : i32 = u_xlati31;
          let x_3942 : vec4<f32> = x_1687.x_AdditionalLightsCookieAtlasUVRects[x_3940];
          let x_3944 : vec2<f32> = ((vec2<f32>(x_3935.x, x_3935.y) * vec2<f32>(x_3937.x, x_3937.w)) + vec2<f32>(x_3942.z, x_3942.w));
          let x_3945 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3944.x, x_3944.y, x_3945.z);
        }
      }
      let x_3952 : vec3<f32> = u_xlat37;
      let x_3954 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3952.x, x_3952.y), 0.0f);
      u_xlat11 = x_3954;
      let x_3956 : bool = u_xlatb7.y;
      if (x_3956) {
        let x_3961 : f32 = u_xlat11.w;
        x_3957 = x_3961;
      } else {
        let x_3964 : f32 = u_xlat11.x;
        x_3957 = x_3964;
      }
      let x_3965 : f32 = x_3957;
      u_xlat87 = x_3965;
      let x_3967 : bool = u_xlatb7.x;
      if (x_3967) {
        let x_3971 : vec4<f32> = u_xlat11;
        x_3968 = vec3<f32>(x_3971.x, x_3971.y, x_3971.z);
      } else {
        let x_3974 : f32 = u_xlat87;
        x_3968 = vec3<f32>(x_3974, x_3974, x_3974);
      }
      let x_3976 : vec3<f32> = x_3968;
      let x_3977 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3976.x, x_3976.y, x_3976.z, x_3977.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3983 : vec4<f32> = u_xlat11;
    let x_3985 : i32 = u_xlati31;
    let x_3987 : vec4<f32> = x_2150.x_AdditionalLightsColor[x_3985];
    let x_3989 : vec3<f32> = (vec3<f32>(x_3983.x, x_3983.y, x_3983.z) * vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
    let x_3990 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
    let x_3992 : f32 = u_xlat84;
    let x_3993 : f32 = u_xlat85;
    u_xlat31.x = (x_3992 * x_3993);
    let x_3996 : vec4<f32> = u_xlat2;
    let x_3998 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3996.x, x_3996.y, x_3996.z), vec3<f32>(x_3998.x, x_3998.y, x_3998.z));
    let x_4001 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4001, 0.0f, 1.0f);
    let x_4004 : f32 = u_xlat31.x;
    let x_4005 : f32 = u_xlat84;
    u_xlat31.x = (x_4004 * x_4005);
    let x_4008 : vec3<f32> = u_xlat31;
    let x_4010 : vec4<f32> = u_xlat11;
    let x_4012 : vec3<f32> = (vec3<f32>(x_4008.x, x_4008.x, x_4008.x) * vec3<f32>(x_4010.x, x_4010.y, x_4010.z));
    let x_4013 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4012.x, x_4012.y, x_4012.z, x_4013.w);
    let x_4015 : vec4<f32> = u_xlat9;
    let x_4017 : f32 = u_xlat59;
    let x_4020 : vec3<f32> = u_xlat3;
    let x_4021 : vec3<f32> = ((vec3<f32>(x_4015.x, x_4015.y, x_4015.z) * vec3<f32>(x_4017, x_4017, x_4017)) + x_4020);
    let x_4022 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4021.x, x_4021.y, x_4021.z, x_4022.w);
    let x_4024 : vec4<f32> = u_xlat9;
    let x_4026 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_4024.x, x_4024.y, x_4024.z), vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4031 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_4031, 1.17549435e-38f);
    let x_4035 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_4035);
    let x_4038 : vec3<f32> = u_xlat31;
    let x_4040 : vec4<f32> = u_xlat9;
    let x_4042 : vec3<f32> = (vec3<f32>(x_4038.x, x_4038.x, x_4038.x) * vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
    let x_4043 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
    let x_4045 : vec4<f32> = u_xlat2;
    let x_4047 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_4045.x, x_4045.y, x_4045.z), vec3<f32>(x_4047.x, x_4047.y, x_4047.z));
    let x_4052 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_4052, 0.0f, 1.0f);
    let x_4055 : vec4<f32> = u_xlat10;
    let x_4057 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4055.x, x_4055.y, x_4055.z), vec3<f32>(x_4057.x, x_4057.y, x_4057.z));
    let x_4060 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4060, 0.0f, 1.0f);
    let x_4063 : f32 = u_xlat31.x;
    let x_4065 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4063 * x_4065);
    let x_4069 : f32 = u_xlat31.x;
    let x_4071 : f32 = u_xlat8.x;
    u_xlat31.x = ((x_4069 * x_4071) + 1.00001001358032226562f);
    let x_4075 : f32 = u_xlat84;
    let x_4076 : f32 = u_xlat84;
    u_xlat84 = (x_4075 * x_4076);
    let x_4079 : f32 = u_xlat31.x;
    let x_4081 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4079 * x_4081);
    let x_4084 : f32 = u_xlat84;
    u_xlat84 = max(x_4084, 0.10000000149011611938f);
    let x_4087 : f32 = u_xlat31.x;
    let x_4088 : f32 = u_xlat84;
    u_xlat31.x = (x_4087 * x_4088);
    let x_4091 : f32 = u_xlat81;
    let x_4093 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4091 * x_4093);
    let x_4096 : f32 = u_xlat82;
    let x_4098 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4096 / x_4098);
    let x_4101 : vec4<f32> = u_xlat0;
    let x_4103 : vec3<f32> = u_xlat31;
    let x_4106 : vec3<f32> = u_xlat4;
    let x_4107 : vec3<f32> = ((vec3<f32>(x_4101.x, x_4101.y, x_4101.z) * vec3<f32>(x_4103.x, x_4103.x, x_4103.x)) + x_4106);
    let x_4108 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4107.x, x_4107.y, x_4107.z, x_4108.w);
    let x_4110 : vec4<f32> = u_xlat9;
    let x_4112 : vec4<f32> = u_xlat11;
    let x_4115 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4110.x, x_4110.y, x_4110.z) * vec3<f32>(x_4112.x, x_4112.y, x_4112.z)) + x_4115);

    continuing {
      let x_4117 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4117 + bitcast<u32>(1i));
    }
  }
  let x_4119 : vec4<f32> = u_xlat6;
  let x_4121 : vec4<f32> = u_xlat5;
  let x_4124 : vec3<f32> = u_xlat1;
  let x_4125 : vec3<f32> = ((vec3<f32>(x_4119.x, x_4119.y, x_4119.z) * vec3<f32>(x_4121.x, x_4121.z, x_4121.w)) + x_4124);
  let x_4126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
  let x_4130 : vec3<f32> = u_xlat34;
  let x_4131 : vec4<f32> = u_xlat0;
  let x_4133 : vec3<f32> = (x_4130 + vec3<f32>(x_4131.x, x_4131.y, x_4131.z));
  let x_4134 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4133.x, x_4133.y, x_4133.z, x_4134.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


