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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1663 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2126 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1616 : f32;
  var x_1733 : f32;
  var x_1744 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2266 : f32;
  var x_2276 : f32;
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
  var x_3862 : f32;
  var x_3875 : f32;
  var x_3933 : f32;
  var x_3944 : vec3<f32>;
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
  u_xlat1.x = x_49.x;
  let x_59 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_59 == 0.0f);
  let x_65 : vec3<f32> = vs_TEXCOORD7;
  let x_70 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_71 : vec3<f32> = (-(x_65) + x_70);
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_75.x, x_75.y, x_75.z), vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_80);
  let x_82 : f32 = u_xlat53;
  let x_84 : vec4<f32> = u_xlat2;
  let x_86 : vec3<f32> = (vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
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
  u_xlat2.w = 1.0f;
  let x_155 : vec4<f32> = x_151.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_151.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_161, x_162);
  let x_167 : vec4<f32> = x_151.unity_SHAb;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_167, x_168);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_172.y, x_172.z, x_172.z, x_172.x) * vec4<f32>(x_174.x, x_174.y, x_174.z, x_174.z));
  let x_180 : vec4<f32> = x_151.unity_SHBr;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_180, x_181);
  let x_186 : vec4<f32> = x_151.unity_SHBg;
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_186, x_187);
  let x_192 : vec4<f32> = x_151.unity_SHBb;
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_192, x_193);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat27.x = (x_197 * x_199);
  let x_203 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_203 * x_205) + -(x_208));
  let x_214 : vec4<f32> = x_151.unity_SHC;
  let x_216 : vec3<f32> = u_xlat27;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat27 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec3<f32> = u_xlat27;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat27 = (x_222 + x_223);
  let x_225 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_230) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_236 : f32 = u_xlat80;
  u_xlat81 = (-(x_236) + 1.0f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241, x_241, x_241));
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec3<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_262) + 1.0f);
  let x_267 : f32 = u_xlat1.x;
  let x_269 : f32 = u_xlat1.x;
  u_xlat80 = (x_267 * x_269);
  let x_271 : f32 = u_xlat80;
  u_xlat80 = max(x_271, 0.0078125f);
  let x_275 : f32 = u_xlat80;
  let x_276 : f32 = u_xlat80;
  u_xlat82 = (x_275 * x_276);
  let x_280 : f32 = u_xlat0.w;
  let x_281 : f32 = u_xlat81;
  u_xlat78 = (x_280 + x_281);
  let x_283 : f32 = u_xlat78;
  u_xlat78 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat80;
  u_xlat81 = ((x_285 * 4.0f) + 2.0f);
  let x_301 : f32 = x_298.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_301);
  let x_303 : bool = u_xlatb5;
  if (x_303) {
    let x_307 : f32 = x_298.x_MainLightShadowParams.y;
    u_xlatb5 = (x_307 == 1.0f);
    let x_309 : bool = u_xlatb5;
    if (x_309) {
      let x_313 : vec4<f32> = vs_TEXCOORD8;
      let x_316 : vec4<f32> = x_298.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_316);
      let x_320 : vec4<f32> = u_xlat5;
      let x_321 : vec2<f32> = vec2<f32>(x_320.x, x_320.y);
      let x_324 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_321.x, x_321.y, x_324);
      let x_336 : vec3<f32> = txVec0;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat6.x = x_338;
      let x_341 : vec4<f32> = u_xlat5;
      let x_342 : vec2<f32> = vec2<f32>(x_341.z, x_341.w);
      let x_344 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_342.x, x_342.y, x_344);
      let x_351 : vec3<f32> = txVec1;
      let x_353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_351.xy, x_351.z);
      u_xlat6.y = x_353;
      let x_355 : vec4<f32> = vs_TEXCOORD8;
      let x_359 : vec4<f32> = x_298.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_355.x, x_355.y, x_355.x, x_355.y) + x_359);
      let x_362 : vec4<f32> = u_xlat5;
      let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
      let x_365 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_372 : vec3<f32> = txVec2;
      let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_372.xy, x_372.z);
      u_xlat6.z = x_374;
      let x_377 : vec4<f32> = u_xlat5;
      let x_378 : vec2<f32> = vec2<f32>(x_377.z, x_377.w);
      let x_380 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_387 : vec3<f32> = txVec3;
      let x_389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_387.xy, x_387.z);
      u_xlat6.w = x_389;
      let x_391 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_391, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_399 : f32 = x_298.x_MainLightShadowParams.y;
      u_xlatb31 = (x_399 == 2.0f);
      let x_401 : bool = u_xlatb31;
      if (x_401) {
        let x_405 : vec4<f32> = vs_TEXCOORD8;
        let x_409 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_414 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_409.z, x_409.w)) + vec2<f32>(0.5f, 0.5f));
        let x_415 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_414.x, x_414.y, x_415.z);
        let x_417 : vec3<f32> = u_xlat31;
        let x_419 : vec2<f32> = floor(vec2<f32>(x_417.x, x_417.y));
        let x_420 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_419.x, x_419.y, x_420.z);
        let x_422 : vec4<f32> = vs_TEXCOORD8;
        let x_425 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_428 : vec3<f32> = u_xlat31;
        let x_431 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + -(vec2<f32>(x_428.x, x_428.y)));
        let x_432 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_435.x, x_435.x, x_435.y, x_435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_440 : vec4<f32> = u_xlat7;
        let x_442 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z) * vec4<f32>(x_442.x, x_442.x, x_442.z, x_442.z));
        let x_447 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_447.y, x_447.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_452 : vec4<f32> = u_xlat8;
        let x_455 : vec4<f32> = u_xlat6;
        let x_458 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_458.x, x_459.y, x_458.y, x_459.w);
        let x_461 : vec4<f32> = u_xlat6;
        let x_465 : vec2<f32> = (-(vec2<f32>(x_461.x, x_461.y)) + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_469 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_469.x, x_469.y), vec2<f32>(0.0f, 0.0f));
        let x_473 : vec2<f32> = u_xlat60;
        let x_475 : vec2<f32> = u_xlat60;
        let x_477 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_473) * x_475) + vec2<f32>(x_477.x, x_477.y));
        let x_480 : vec4<f32> = u_xlat6;
        let x_482 : vec2<f32> = max(vec2<f32>(x_480.x, x_480.y), vec2<f32>(0.0f, 0.0f));
        let x_483 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_485 : vec4<f32> = u_xlat6;
        let x_488 : vec4<f32> = u_xlat6;
        let x_491 : vec4<f32> = u_xlat7;
        let x_493 : vec2<f32> = ((-(vec2<f32>(x_485.x, x_485.y)) * vec2<f32>(x_488.x, x_488.y)) + vec2<f32>(x_491.y, x_491.w));
        let x_494 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_496 + vec2<f32>(1.0f, 1.0f));
        let x_498 : vec4<f32> = u_xlat6;
        let x_500 : vec2<f32> = (vec2<f32>(x_498.x, x_498.y) + vec2<f32>(1.0f, 1.0f));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_504 : vec4<f32> = u_xlat7;
        let x_508 : vec2<f32> = (vec2<f32>(x_504.x, x_504.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec4<f32> = u_xlat8;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_515 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_517 : vec2<f32> = u_xlat60;
        let x_518 : vec2<f32> = (x_517 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : vec4<f32> = u_xlat6;
        let x_524 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_525 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat7;
        let x_529 : vec2<f32> = (vec2<f32>(x_527.y, x_527.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_533 : f32 = u_xlat8.x;
        u_xlat9.z = x_533;
        let x_536 : f32 = u_xlat6.x;
        u_xlat9.w = x_536;
        let x_539 : f32 = u_xlat11.x;
        u_xlat10.z = x_539;
        let x_542 : f32 = u_xlat58.x;
        u_xlat10.w = x_542;
        let x_544 : vec4<f32> = u_xlat9;
        let x_546 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_544.z, x_544.w, x_544.x, x_544.z) + vec4<f32>(x_546.z, x_546.w, x_546.x, x_546.z));
        let x_550 : f32 = u_xlat9.y;
        u_xlat8.z = x_550;
        let x_553 : f32 = u_xlat6.y;
        u_xlat8.w = x_553;
        let x_556 : f32 = u_xlat10.y;
        u_xlat11.z = x_556;
        let x_559 : f32 = u_xlat58.y;
        u_xlat11.w = x_559;
        let x_561 : vec4<f32> = u_xlat8;
        let x_563 : vec4<f32> = u_xlat11;
        let x_565 : vec3<f32> = (vec3<f32>(x_561.z, x_561.y, x_561.w) + vec3<f32>(x_563.z, x_563.y, x_563.w));
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat10;
        let x_570 : vec4<f32> = u_xlat7;
        let x_572 : vec3<f32> = (vec3<f32>(x_568.x, x_568.z, x_568.w) / vec3<f32>(x_570.z, x_570.w, x_570.y));
        let x_573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat8;
        let x_581 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_582 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat11;
        let x_586 : vec4<f32> = u_xlat6;
        let x_588 : vec3<f32> = (vec3<f32>(x_584.z, x_584.y, x_584.w) / vec3<f32>(x_586.x, x_586.y, x_586.z));
        let x_589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat9;
        let x_593 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat8;
        let x_599 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_601 : vec3<f32> = (vec3<f32>(x_596.y, x_596.x, x_596.z) * vec3<f32>(x_599.x, x_599.x, x_599.x));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat9;
        let x_607 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_609 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_607.y, x_607.y, x_607.y));
        let x_610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_613 : f32 = u_xlat9.x;
        u_xlat8.w = x_613;
        let x_615 : vec3<f32> = u_xlat31;
        let x_618 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y) * vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y)) + vec4<f32>(x_621.y, x_621.w, x_621.x, x_621.w));
        let x_624 : vec3<f32> = u_xlat31;
        let x_627 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_630 : vec4<f32> = u_xlat8;
        let x_632 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.x, x_627.y)) + vec2<f32>(x_630.z, x_630.w));
        let x_633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_636 : f32 = u_xlat8.y;
        u_xlat9.w = x_636;
        let x_638 : vec4<f32> = u_xlat9;
        let x_639 : vec2<f32> = vec2<f32>(x_638.y, x_638.z);
        let x_640 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_640.x, x_639.x, x_640.z, x_639.y);
        let x_643 : vec3<f32> = u_xlat31;
        let x_646 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.y, x_649.z, x_649.y));
        let x_652 : vec3<f32> = u_xlat31;
        let x_655 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.w, x_658.y, x_658.w, x_658.z));
        let x_661 : vec3<f32> = u_xlat31;
        let x_664 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y) * vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y)) + vec4<f32>(x_667.x, x_667.w, x_667.z, x_667.w));
        let x_671 : vec4<f32> = u_xlat6;
        let x_673 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_671.x, x_671.x, x_671.x, x_671.y) * vec4<f32>(x_673.z, x_673.w, x_673.y, x_673.z));
        let x_677 : vec4<f32> = u_xlat6;
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_677.y, x_677.y, x_677.z, x_677.z) * x_679);
        let x_682 : f32 = u_xlat6.z;
        let x_684 : f32 = u_xlat7.y;
        u_xlat31.x = (x_682 * x_684);
        let x_688 : vec4<f32> = u_xlat10;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_699 : vec3<f32> = txVec4;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_699.xy, x_699.z);
        u_xlat57.x = x_701;
        let x_704 : vec4<f32> = u_xlat10;
        let x_705 : vec2<f32> = vec2<f32>(x_704.z, x_704.w);
        let x_707 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_715 : vec3<f32> = txVec5;
        let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_715.xy, x_715.z);
        u_xlat83 = x_717;
        let x_718 : f32 = u_xlat83;
        let x_720 : f32 = u_xlat13.y;
        u_xlat83 = (x_718 * x_720);
        let x_723 : f32 = u_xlat13.x;
        let x_725 : f32 = u_xlat57.x;
        let x_727 : f32 = u_xlat83;
        u_xlat57.x = ((x_723 * x_725) + x_727);
        let x_731 : vec4<f32> = u_xlat11;
        let x_732 : vec2<f32> = vec2<f32>(x_731.x, x_731.y);
        let x_734 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_741 : vec3<f32> = txVec6;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_741.xy, x_741.z);
        u_xlat83 = x_743;
        let x_745 : f32 = u_xlat13.z;
        let x_746 : f32 = u_xlat83;
        let x_749 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_745 * x_746) + x_749);
        let x_753 : vec4<f32> = u_xlat9;
        let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
        let x_756 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec7;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_763.xy, x_763.z);
        u_xlat83 = x_765;
        let x_767 : f32 = u_xlat13.w;
        let x_768 : f32 = u_xlat83;
        let x_771 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_767 * x_768) + x_771);
        let x_775 : vec4<f32> = u_xlat12;
        let x_776 : vec2<f32> = vec2<f32>(x_775.x, x_775.y);
        let x_778 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec8;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
        u_xlat83 = x_787;
        let x_789 : f32 = u_xlat14.x;
        let x_790 : f32 = u_xlat83;
        let x_793 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_789 * x_790) + x_793);
        let x_797 : vec4<f32> = u_xlat12;
        let x_798 : vec2<f32> = vec2<f32>(x_797.z, x_797.w);
        let x_800 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec9;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_807.xy, x_807.z);
        u_xlat83 = x_809;
        let x_811 : f32 = u_xlat14.y;
        let x_812 : f32 = u_xlat83;
        let x_815 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_811 * x_812) + x_815);
        let x_819 : vec4<f32> = u_xlat9;
        let x_820 : vec2<f32> = vec2<f32>(x_819.z, x_819.w);
        let x_822 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec10;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_829.xy, x_829.z);
        u_xlat83 = x_831;
        let x_833 : f32 = u_xlat14.z;
        let x_834 : f32 = u_xlat83;
        let x_837 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_833 * x_834) + x_837);
        let x_841 : vec4<f32> = u_xlat8;
        let x_842 : vec2<f32> = vec2<f32>(x_841.x, x_841.y);
        let x_844 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_842.x, x_842.y, x_844);
        let x_851 : vec3<f32> = txVec11;
        let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_851.xy, x_851.z);
        u_xlat83 = x_853;
        let x_855 : f32 = u_xlat14.w;
        let x_856 : f32 = u_xlat83;
        let x_859 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_855 * x_856) + x_859);
        let x_863 : vec4<f32> = u_xlat8;
        let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
        let x_866 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_864.x, x_864.y, x_866);
        let x_873 : vec3<f32> = txVec12;
        let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_873.xy, x_873.z);
        u_xlat83 = x_875;
        let x_877 : f32 = u_xlat31.x;
        let x_878 : f32 = u_xlat83;
        let x_881 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_877 * x_878) + x_881);
      } else {
        let x_885 : vec4<f32> = vs_TEXCOORD8;
        let x_888 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_891 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.y) * vec2<f32>(x_888.z, x_888.w)) + vec2<f32>(0.5f, 0.5f));
        let x_892 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_891.x, x_891.y, x_892.z);
        let x_894 : vec3<f32> = u_xlat31;
        let x_896 : vec2<f32> = floor(vec2<f32>(x_894.x, x_894.y));
        let x_897 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_896.x, x_896.y, x_897.z);
        let x_899 : vec4<f32> = vs_TEXCOORD8;
        let x_902 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_905 : vec3<f32> = u_xlat31;
        let x_908 : vec2<f32> = ((vec2<f32>(x_899.x, x_899.y) * vec2<f32>(x_902.z, x_902.w)) + -(vec2<f32>(x_905.x, x_905.y)));
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_911.x, x_911.x, x_911.y, x_911.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_914.x, x_914.x, x_914.z, x_914.z) * vec4<f32>(x_916.x, x_916.x, x_916.z, x_916.z));
        let x_919 : vec4<f32> = u_xlat8;
        let x_923 : vec2<f32> = (vec2<f32>(x_919.y, x_919.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_924 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_924.x, x_923.x, x_924.z, x_923.y);
        let x_926 : vec4<f32> = u_xlat8;
        let x_929 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_926.x, x_926.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_929.x, x_929.y)));
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = (-(vec2<f32>(x_933.x, x_933.y)) + vec2<f32>(1.0f, 1.0f));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = min(vec2<f32>(x_939.x, x_939.y), vec2<f32>(0.0f, 0.0f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat8;
        let x_950 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = ((-(vec2<f32>(x_944.x, x_944.y)) * vec2<f32>(x_947.x, x_947.y)) + vec2<f32>(x_950.x, x_950.z));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_953.w);
        let x_955 : vec4<f32> = u_xlat6;
        let x_957 : vec2<f32> = max(vec2<f32>(x_955.x, x_955.y), vec2<f32>(0.0f, 0.0f));
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat8;
        let x_963 : vec4<f32> = u_xlat8;
        let x_966 : vec4<f32> = u_xlat7;
        let x_968 : vec2<f32> = ((-(vec2<f32>(x_960.x, x_960.y)) * vec2<f32>(x_963.x, x_963.y)) + vec2<f32>(x_966.y, x_966.w));
        let x_969 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_969.x, x_968.x, x_969.z, x_968.y);
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_971 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_975 : f32 = u_xlat7.y;
        u_xlat8.z = (x_975 * 0.08163200318813323975f);
        let x_979 : vec2<f32> = u_xlat58;
        let x_982 : vec2<f32> = (vec2<f32>(x_979.y, x_979.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_983 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_985.x, x_985.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : f32 = u_xlat7.w;
        u_xlat10.z = (x_989 * 0.08163200318813323975f);
        let x_993 : f32 = u_xlat10.y;
        u_xlat8.x = x_993;
        let x_995 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1003.x, x_1002.x, x_1003.z, x_1002.y);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1010 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1009.x, x_1010.y, x_1009.y, x_1010.w);
        let x_1013 : f32 = u_xlat58.x;
        u_xlat7.y = x_1013;
        let x_1016 : f32 = u_xlat9.y;
        u_xlat7.w = x_1016;
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1018 + x_1019);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1021.y, x_1021.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1027.y, x_1027.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1031.w);
        let x_1034 : f32 = u_xlat58.y;
        u_xlat9.y = x_1034;
        let x_1036 : vec4<f32> = u_xlat9;
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1036 + x_1037);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1039 / x_1040);
        let x_1042 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1042 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1048 / x_1049);
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1051 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1056 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1053.w, x_1053.x, x_1053.y, x_1053.z) * vec4<f32>(x_1056.x, x_1056.x, x_1056.x, x_1056.x));
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1062 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1059.x, x_1059.w, x_1059.y, x_1059.z) * vec4<f32>(x_1062.y, x_1062.y, x_1062.y, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat7;
        let x_1066 : vec3<f32> = vec3<f32>(x_1065.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1066.z);
        let x_1070 : f32 = u_xlat9.x;
        u_xlat10.y = x_1070;
        let x_1072 : vec3<f32> = u_xlat31;
        let x_1075 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.y));
        let x_1081 : vec3<f32> = u_xlat31;
        let x_1084 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.w, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : f32 = u_xlat10.y;
        u_xlat7.y = x_1093;
        let x_1096 : f32 = u_xlat9.z;
        u_xlat10.y = x_1096;
        let x_1098 : vec3<f32> = u_xlat31;
        let x_1101 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1104.y));
        let x_1108 : vec3<f32> = u_xlat31;
        let x_1111 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.w, x_1114.y));
        let x_1118 : f32 = u_xlat10.y;
        u_xlat7.z = x_1118;
        let x_1120 : vec3<f32> = u_xlat31;
        let x_1123 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.z));
        let x_1130 : f32 = u_xlat9.w;
        u_xlat10.y = x_1130;
        let x_1133 : vec3<f32> = u_xlat31;
        let x_1136 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y) * vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y)) + vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1139.y));
        let x_1143 : vec3<f32> = u_xlat31;
        let x_1146 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.w, x_1149.y));
        let x_1153 : f32 = u_xlat10.y;
        u_xlat7.w = x_1153;
        let x_1156 : vec3<f32> = u_xlat31;
        let x_1159 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.x, x_1162.w));
        let x_1165 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat10;
        let x_1168 : vec3<f32> = vec3<f32>(x_1167.x, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1168.z);
        let x_1171 : vec3<f32> = u_xlat31;
        let x_1174 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1181 : vec3<f32> = u_xlat31;
        let x_1184 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.w, x_1187.y));
        let x_1191 : f32 = u_xlat7.x;
        u_xlat9.x = x_1191;
        let x_1193 : vec3<f32> = u_xlat31;
        let x_1196 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1201 : vec2<f32> = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.x, x_1199.y));
        let x_1202 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1201.x, x_1201.y, x_1202.z);
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1205.x, x_1205.x, x_1205.x, x_1205.x) * x_1207);
        let x_1210 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1210.y, x_1210.y, x_1210.y, x_1210.y) * x_1212);
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1215.z, x_1215.z, x_1215.z, x_1215.z) * x_1217);
        let x_1219 : vec4<f32> = u_xlat6;
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1219.w, x_1219.w, x_1219.w, x_1219.w) * x_1221);
        let x_1224 : vec4<f32> = u_xlat11;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec13;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat83 = x_1236;
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.z, x_1238.w);
        let x_1241 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec14;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat7.x = x_1250;
        let x_1253 : f32 = u_xlat7.x;
        let x_1255 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1253 * x_1255);
        let x_1259 : f32 = u_xlat17.x;
        let x_1260 : f32 = u_xlat83;
        let x_1263 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1259 * x_1260) + x_1263);
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec15;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat7.x = x_1278;
        let x_1281 : f32 = u_xlat17.z;
        let x_1283 : f32 = u_xlat7.x;
        let x_1285 : f32 = u_xlat83;
        u_xlat83 = ((x_1281 * x_1283) + x_1285);
        let x_1288 : vec4<f32> = u_xlat14;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec16;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1298.xy, x_1298.z);
        u_xlat7.x = x_1300;
        let x_1303 : f32 = u_xlat17.w;
        let x_1305 : f32 = u_xlat7.x;
        let x_1307 : f32 = u_xlat83;
        u_xlat83 = ((x_1303 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat13;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.x, x_1310.y);
        let x_1313 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec17;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat7.x = x_1322;
        let x_1325 : f32 = u_xlat18.x;
        let x_1327 : f32 = u_xlat7.x;
        let x_1329 : f32 = u_xlat83;
        u_xlat83 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat13;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec18;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat7.x = x_1344;
        let x_1347 : f32 = u_xlat18.y;
        let x_1349 : f32 = u_xlat7.x;
        let x_1351 : f32 = u_xlat83;
        u_xlat83 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec2<f32> = u_xlat64;
        let x_1356 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec19;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat7.x = x_1365;
        let x_1368 : f32 = u_xlat18.z;
        let x_1370 : f32 = u_xlat7.x;
        let x_1372 : f32 = u_xlat83;
        u_xlat83 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec4<f32> = u_xlat14;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec20;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat7.x = x_1387;
        let x_1390 : f32 = u_xlat18.w;
        let x_1392 : f32 = u_xlat7.x;
        let x_1394 : f32 = u_xlat83;
        u_xlat83 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat15;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec21;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat7.x = x_1409;
        let x_1412 : f32 = u_xlat19.x;
        let x_1414 : f32 = u_xlat7.x;
        let x_1416 : f32 = u_xlat83;
        u_xlat83 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat15;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.z, x_1419.w);
        let x_1422 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec22;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat7.x = x_1431;
        let x_1434 : f32 = u_xlat19.y;
        let x_1436 : f32 = u_xlat7.x;
        let x_1438 : f32 = u_xlat83;
        u_xlat83 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec2<f32> = u_xlat33;
        let x_1443 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec23;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat7.x = x_1452;
        let x_1455 : f32 = u_xlat19.z;
        let x_1457 : f32 = u_xlat7.x;
        let x_1459 : f32 = u_xlat83;
        u_xlat83 = ((x_1455 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat16;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec24;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat7.x = x_1474;
        let x_1477 : f32 = u_xlat19.w;
        let x_1479 : f32 = u_xlat7.x;
        let x_1481 : f32 = u_xlat83;
        u_xlat83 = ((x_1477 * x_1479) + x_1481);
        let x_1484 : vec4<f32> = u_xlat10;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec25;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat7.x = x_1496;
        let x_1499 : f32 = u_xlat6.x;
        let x_1501 : f32 = u_xlat7.x;
        let x_1503 : f32 = u_xlat83;
        u_xlat83 = ((x_1499 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat10;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec26;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat6.x = x_1518;
        let x_1521 : f32 = u_xlat6.y;
        let x_1523 : f32 = u_xlat6.x;
        let x_1525 : f32 = u_xlat83;
        u_xlat83 = ((x_1521 * x_1523) + x_1525);
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec27;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat6.x = x_1539;
        let x_1542 : f32 = u_xlat6.z;
        let x_1544 : f32 = u_xlat6.x;
        let x_1546 : f32 = u_xlat83;
        u_xlat83 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec3<f32> = u_xlat31;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
        let x_1552 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec28;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat31.x = x_1561;
        let x_1564 : f32 = u_xlat6.w;
        let x_1566 : f32 = u_xlat31.x;
        let x_1568 : f32 = u_xlat83;
        u_xlat5.x = ((x_1564 * x_1566) + x_1568);
      }
    }
  } else {
    let x_1573 : vec4<f32> = vs_TEXCOORD8;
    let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
    let x_1576 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
    let x_1583 : vec3<f32> = txVec29;
    let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
    u_xlat5.x = x_1585;
  }
  let x_1588 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_1588) + 1.0f);
  let x_1593 : f32 = u_xlat5.x;
  let x_1595 : f32 = x_298.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_1593 * x_1595) + x_1598);
  let x_1602 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_1602);
  let x_1608 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_1608 >= 1.0f);
  let x_1612 : bool = u_xlatb57.x;
  let x_1613 : bool = u_xlatb31;
  u_xlatb31 = (x_1612 | x_1613);
  let x_1615 : bool = u_xlatb31;
  if (x_1615) {
    x_1616 = 1.0f;
  } else {
    let x_1621 : f32 = u_xlat5.x;
    x_1616 = x_1621;
  }
  let x_1622 : f32 = x_1616;
  u_xlat5.x = x_1622;
  let x_1624 : vec3<f32> = vs_TEXCOORD7;
  let x_1626 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1624 + -(x_1626));
  let x_1629 : vec3<f32> = u_xlat31;
  let x_1630 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1629, x_1630);
  let x_1634 : f32 = u_xlat31.x;
  let x_1636 : f32 = x_298.x_MainLightShadowParams.z;
  let x_1639 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_1634 * x_1636) + x_1639);
  let x_1643 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1643, 0.0f, 1.0f);
  let x_1647 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1647) + 1.0f);
  let x_1651 : f32 = u_xlat57.x;
  let x_1652 : f32 = u_xlat83;
  let x_1655 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1651 * x_1652) + x_1655);
  let x_1665 : f32 = x_1663.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_1665 == -1.0f));
  let x_1670 : bool = u_xlatb57.x;
  if (x_1670) {
    let x_1673 : vec3<f32> = vs_TEXCOORD7;
    let x_1676 : vec4<f32> = x_1663.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_1673.y, x_1673.y) * vec2<f32>(x_1676.x, x_1676.y));
    let x_1680 : vec4<f32> = x_1663.x_MainLightWorldToLight[0i];
    let x_1682 : vec3<f32> = vs_TEXCOORD7;
    let x_1685 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1680.x, x_1680.y) * vec2<f32>(x_1682.x, x_1682.x)) + x_1685);
    let x_1688 : vec4<f32> = x_1663.x_MainLightWorldToLight[2i];
    let x_1690 : vec3<f32> = vs_TEXCOORD7;
    let x_1693 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.z, x_1690.z)) + x_1693);
    let x_1695 : vec2<f32> = u_xlat57;
    let x_1698 : vec4<f32> = x_1663.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_1695 + vec2<f32>(x_1698.x, x_1698.y));
    let x_1701 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_1701 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1709 : vec2<f32> = u_xlat57;
    let x_1711 : f32 = x_29.x_GlobalMipBias.x;
    let x_1712 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1709, x_1711);
    u_xlat6 = x_1712;
    let x_1714 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1716 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1718 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1720 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1721 : vec4<f32> = vec4<f32>(x_1714, x_1716, x_1718, x_1720);
    let x_1729 : vec4<bool> = (vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1721.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_1729.x, x_1729.y);
    let x_1732 : bool = u_xlatb57.y;
    if (x_1732) {
      let x_1737 : f32 = u_xlat6.w;
      x_1733 = x_1737;
    } else {
      let x_1740 : f32 = u_xlat6.x;
      x_1733 = x_1740;
    }
    let x_1741 : f32 = x_1733;
    u_xlat83 = x_1741;
    let x_1743 : bool = u_xlatb57.x;
    if (x_1743) {
      let x_1747 : vec4<f32> = u_xlat6;
      x_1744 = vec3<f32>(x_1747.x, x_1747.y, x_1747.z);
    } else {
      let x_1750 : f32 = u_xlat83;
      x_1744 = vec3<f32>(x_1750, x_1750, x_1750);
    }
    let x_1752 : vec3<f32> = x_1744;
    let x_1753 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1759 : vec4<f32> = u_xlat6;
  let x_1762 : vec4<f32> = x_29.x_MainLightColor;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec3<f32> = u_xlat3;
  let x_1769 : vec4<f32> = u_xlat2;
  u_xlat57.x = dot(-(x_1767), vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1774 : f32 = u_xlat57.x;
  let x_1776 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1774 + x_1776);
  let x_1779 : vec4<f32> = u_xlat2;
  let x_1781 : vec2<f32> = u_xlat57;
  let x_1785 : vec3<f32> = u_xlat3;
  let x_1787 : vec3<f32> = ((vec3<f32>(x_1779.x, x_1779.y, x_1779.z) * -(vec3<f32>(x_1781.x, x_1781.x, x_1781.x))) + -(x_1785));
  let x_1788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1790 : vec4<f32> = u_xlat2;
  let x_1792 : vec3<f32> = u_xlat3;
  u_xlat57.x = dot(vec3<f32>(x_1790.x, x_1790.y, x_1790.z), x_1792);
  let x_1796 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1796, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_1800) + 1.0f);
  let x_1805 : f32 = u_xlat57.x;
  let x_1807 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1805 * x_1807);
  let x_1811 : f32 = u_xlat57.x;
  let x_1813 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1811 * x_1813);
  let x_1817 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1817) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1824 : f32 = u_xlat1.x;
  let x_1825 : f32 = u_xlat83;
  u_xlat1.x = (x_1824 * x_1825);
  let x_1829 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1829 * 6.0f);
  let x_1841 : vec4<f32> = u_xlat7;
  let x_1844 : f32 = u_xlat1.x;
  let x_1845 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1841.x, x_1841.y, x_1841.z), x_1844);
  u_xlat7 = x_1845;
  let x_1847 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1847 + -1.0f);
  let x_1851 : f32 = x_151.unity_SpecCube0_HDR.w;
  let x_1853 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1851 * x_1853) + 1.0f);
  let x_1858 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1858, 0.0f);
  let x_1862 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1862);
  let x_1866 : f32 = u_xlat1.x;
  let x_1868 : f32 = x_151.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1866 * x_1868);
  let x_1872 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1872);
  let x_1876 : f32 = u_xlat1.x;
  let x_1878 : f32 = x_151.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1876 * x_1878);
  let x_1881 : vec4<f32> = u_xlat7;
  let x_1883 : vec3<f32> = u_xlat1;
  let x_1885 : vec3<f32> = (vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * vec3<f32>(x_1883.x, x_1883.x, x_1883.x));
  let x_1886 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1888 : f32 = u_xlat80;
  let x_1890 : f32 = u_xlat80;
  let x_1894 : vec2<f32> = ((vec2<f32>(x_1888, x_1888) * vec2<f32>(x_1890, x_1890)) + vec2<f32>(-1.0f, 1.0f));
  let x_1895 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1894.x, x_1894.y, x_1895.z, x_1895.w);
  let x_1898 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1898);
  let x_1902 : vec4<f32> = u_xlat0;
  let x_1905 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1902.x, x_1902.y, x_1902.z)) + vec3<f32>(x_1905, x_1905, x_1905));
  let x_1908 : vec2<f32> = u_xlat57;
  let x_1910 : vec3<f32> = u_xlat34;
  let x_1912 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1908.x, x_1908.x, x_1908.x) * x_1910) + vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : vec3<f32> = u_xlat1;
  let x_1917 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1915.x, x_1915.x, x_1915.x) * x_1917);
  let x_1919 : vec4<f32> = u_xlat7;
  let x_1921 : vec3<f32> = u_xlat34;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.y, x_1919.z) * x_1921);
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec3<f32> = u_xlat27;
  let x_1926 : vec3<f32> = u_xlat4;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1925 * x_1926) + vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1932 : f32 = u_xlat5.x;
  let x_1934 : f32 = x_151.unity_LightData.z;
  u_xlat78 = (x_1932 * x_1934);
  let x_1937 : vec4<f32> = u_xlat2;
  let x_1940 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1943, 0.0f, 1.0f);
  let x_1945 : f32 = u_xlat78;
  let x_1946 : f32 = u_xlat79;
  u_xlat78 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat78;
  let x_1950 : vec4<f32> = u_xlat6;
  let x_1952 : vec3<f32> = (vec3<f32>(x_1948, x_1948, x_1948) * vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1952.x, x_1953.y, x_1952.y, x_1952.z);
  let x_1955 : vec3<f32> = u_xlat3;
  let x_1957 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1959 : vec3<f32> = (x_1955 + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
  let x_1962 : vec4<f32> = u_xlat6;
  let x_1964 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_1962.x, x_1962.y, x_1962.z), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : f32 = u_xlat78;
  u_xlat78 = max(x_1967, 1.17549435e-38f);
  let x_1970 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1970);
  let x_1972 : f32 = u_xlat78;
  let x_1974 : vec4<f32> = u_xlat6;
  let x_1976 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  let x_1979 : vec4<f32> = u_xlat2;
  let x_1981 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1984, 0.0f, 1.0f);
  let x_1987 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1989 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
  let x_1992 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1992, 0.0f, 1.0f);
  let x_1994 : f32 = u_xlat78;
  let x_1995 : f32 = u_xlat78;
  u_xlat78 = (x_1994 * x_1995);
  let x_1997 : f32 = u_xlat78;
  let x_1999 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1997 * x_1999) + 1.00001001358032226562f);
  let x_2003 : f32 = u_xlat79;
  let x_2004 : f32 = u_xlat79;
  u_xlat79 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat78;
  let x_2007 : f32 = u_xlat78;
  u_xlat78 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat79;
  u_xlat79 = max(x_2009, 0.10000000149011611938f);
  let x_2012 : f32 = u_xlat78;
  let x_2013 : f32 = u_xlat79;
  u_xlat78 = (x_2012 * x_2013);
  let x_2015 : f32 = u_xlat81;
  let x_2016 : f32 = u_xlat78;
  u_xlat78 = (x_2015 * x_2016);
  let x_2018 : f32 = u_xlat82;
  let x_2019 : f32 = u_xlat78;
  u_xlat78 = (x_2018 / x_2019);
  let x_2021 : vec4<f32> = u_xlat0;
  let x_2023 : f32 = u_xlat78;
  let x_2026 : vec3<f32> = u_xlat4;
  let x_2027 : vec3<f32> = ((vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * vec3<f32>(x_2023, x_2023, x_2023)) + x_2026);
  let x_2028 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2031 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2033 : f32 = x_151.unity_LightData.y;
  u_xlat78 = min(x_2031, x_2033);
  let x_2037 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2037));
  let x_2041 : f32 = u_xlat31.x;
  let x_2044 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_2047 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2041 * x_2044) + x_2047);
  let x_2049 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2049, 0.0f, 1.0f);
  let x_2053 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2055 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2057 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2059 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2060 : vec4<f32> = vec4<f32>(x_2053, x_2055, x_2057, x_2059);
  let x_2067 : vec4<bool> = (vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2060.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2067.x, x_2067.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2079 : u32 = u_xlatu_loop_1;
    let x_2080 : u32 = u_xlatu78;
    if ((x_2079 < x_2080)) {
    } else {
      break;
    }
    let x_2083 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2083 >> 2u);
    let x_2087 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2087 & 3u));
    let x_2090 : u32 = u_xlatu31;
    let x_2093 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_2090)];
    let x_2103 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2108 : vec4<u32> = indexable[x_2103];
    u_xlat31.x = dot(x_2093, bitcast<vec4<f32>>(x_2108));
    let x_2114 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2114);
    let x_2116 : vec3<f32> = vs_TEXCOORD7;
    let x_2127 : i32 = u_xlati31;
    let x_2129 : vec4<f32> = x_2126.x_AdditionalLightsPosition[x_2127];
    let x_2132 : i32 = u_xlati31;
    let x_2134 : vec4<f32> = x_2126.x_AdditionalLightsPosition[x_2132];
    let x_2136 : vec3<f32> = ((-(x_2116) * vec3<f32>(x_2129.w, x_2129.w, x_2129.w)) + vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2140 : vec4<f32> = u_xlat9;
    let x_2142 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : f32 = u_xlat84;
    u_xlat84 = max(x_2145, 0.00006103515625f);
    let x_2149 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2149);
    let x_2151 : f32 = u_xlat59;
    let x_2153 : vec4<f32> = u_xlat9;
    let x_2155 : vec3<f32> = (vec3<f32>(x_2151, x_2151, x_2151) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
    let x_2156 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
    let x_2159 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2159);
    let x_2161 : f32 = u_xlat84;
    let x_2162 : i32 = u_xlati31;
    let x_2164 : f32 = x_2126.x_AdditionalLightsAttenuation[x_2162].x;
    u_xlat84 = (x_2161 * x_2164);
    let x_2166 : f32 = u_xlat84;
    let x_2168 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2166) * x_2168) + 1.0f);
    let x_2171 : f32 = u_xlat84;
    u_xlat84 = max(x_2171, 0.0f);
    let x_2173 : f32 = u_xlat84;
    let x_2174 : f32 = u_xlat84;
    u_xlat84 = (x_2173 * x_2174);
    let x_2176 : f32 = u_xlat84;
    let x_2177 : f32 = u_xlat85;
    u_xlat84 = (x_2176 * x_2177);
    let x_2179 : i32 = u_xlati31;
    let x_2181 : vec4<f32> = x_2126.x_AdditionalLightsSpotDir[x_2179];
    let x_2183 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2181.x, x_2181.y, x_2181.z), vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
    let x_2186 : f32 = u_xlat85;
    let x_2187 : i32 = u_xlati31;
    let x_2189 : f32 = x_2126.x_AdditionalLightsAttenuation[x_2187].z;
    let x_2191 : i32 = u_xlati31;
    let x_2193 : f32 = x_2126.x_AdditionalLightsAttenuation[x_2191].w;
    u_xlat85 = ((x_2186 * x_2189) + x_2193);
    let x_2195 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2195, 0.0f, 1.0f);
    let x_2197 : f32 = u_xlat85;
    let x_2198 : f32 = u_xlat85;
    u_xlat85 = (x_2197 * x_2198);
    let x_2200 : f32 = u_xlat84;
    let x_2201 : f32 = u_xlat85;
    u_xlat84 = (x_2200 * x_2201);
    let x_2205 : i32 = u_xlati31;
    let x_2207 : f32 = x_298.x_AdditionalShadowParams[x_2205].w;
    u_xlati85 = i32(x_2207);
    let x_2210 : i32 = u_xlati85;
    u_xlatb87 = (x_2210 >= 0i);
    let x_2212 : bool = u_xlatb87;
    if (x_2212) {
      let x_2216 : i32 = u_xlati31;
      let x_2218 : f32 = x_298.x_AdditionalShadowParams[x_2216].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2218, x_2218, x_2218, x_2218))));
      let x_2222 : bool = u_xlatb87;
      if (x_2222) {
        let x_2227 : vec4<f32> = u_xlat10;
        let x_2230 : vec4<f32> = u_xlat10;
        let x_2233 : vec4<bool> = (abs(vec4<f32>(x_2227.z, x_2227.z, x_2227.y, x_2227.z)) >= abs(vec4<f32>(x_2230.x, x_2230.y, x_2230.x, x_2230.x)));
        let x_2235 : vec3<bool> = vec3<bool>(x_2233.x, x_2233.y, x_2233.z);
        let x_2236 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
        let x_2239 : bool = u_xlatb11.y;
        let x_2241 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2239 & x_2241);
        let x_2243 : vec4<f32> = u_xlat10;
        let x_2246 : vec4<bool> = (-(vec4<f32>(x_2243.z, x_2243.y, x_2243.z, x_2243.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2247 : vec3<bool> = vec3<bool>(x_2246.x, x_2246.y, x_2246.w);
        let x_2248 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2247.x, x_2247.y, x_2248.z, x_2247.z);
        let x_2251 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2251);
        let x_2256 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2256);
        let x_2262 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2262);
        let x_2265 : bool = u_xlatb11.z;
        if (x_2265) {
          let x_2270 : f32 = u_xlat11.y;
          x_2266 = x_2270;
        } else {
          let x_2272 : f32 = u_xlat88;
          x_2266 = x_2272;
        }
        let x_2273 : f32 = x_2266;
        u_xlat88 = x_2273;
        let x_2275 : bool = u_xlatb87;
        if (x_2275) {
          let x_2280 : f32 = u_xlat11.x;
          x_2276 = x_2280;
        } else {
          let x_2282 : f32 = u_xlat88;
          x_2276 = x_2282;
        }
        let x_2283 : f32 = x_2276;
        u_xlat87 = x_2283;
        let x_2284 : i32 = u_xlati31;
        let x_2286 : f32 = x_298.x_AdditionalShadowParams[x_2284].w;
        u_xlat88 = trunc(x_2286);
        let x_2288 : f32 = u_xlat87;
        let x_2289 : f32 = u_xlat88;
        u_xlat87 = (x_2288 + x_2289);
        let x_2291 : f32 = u_xlat87;
        u_xlati85 = i32(x_2291);
      }
      let x_2293 : i32 = u_xlati85;
      u_xlati85 = (x_2293 << bitcast<u32>(2i));
      let x_2295 : vec3<f32> = vs_TEXCOORD7;
      let x_2298 : i32 = u_xlati85;
      let x_2301 : i32 = u_xlati85;
      let x_2305 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2298 + 1i) / 4i)][((x_2301 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2295.y, x_2295.y, x_2295.y, x_2295.y) * x_2305);
      let x_2307 : i32 = u_xlati85;
      let x_2309 : i32 = u_xlati85;
      let x_2312 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_2307 / 4i)][(x_2309 % 4i)];
      let x_2313 : vec3<f32> = vs_TEXCOORD7;
      let x_2316 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2312 * vec4<f32>(x_2313.x, x_2313.x, x_2313.x, x_2313.x)) + x_2316);
      let x_2318 : i32 = u_xlati85;
      let x_2321 : i32 = u_xlati85;
      let x_2325 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2318 + 2i) / 4i)][((x_2321 + 2i) % 4i)];
      let x_2326 : vec3<f32> = vs_TEXCOORD7;
      let x_2329 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2325 * vec4<f32>(x_2326.z, x_2326.z, x_2326.z, x_2326.z)) + x_2329);
      let x_2331 : vec4<f32> = u_xlat11;
      let x_2332 : i32 = u_xlati85;
      let x_2335 : i32 = u_xlati85;
      let x_2339 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2332 + 3i) / 4i)][((x_2335 + 3i) % 4i)];
      u_xlat11 = (x_2331 + x_2339);
      let x_2341 : vec4<f32> = u_xlat11;
      let x_2343 : vec4<f32> = u_xlat11;
      let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) / vec3<f32>(x_2343.w, x_2343.w, x_2343.w));
      let x_2346 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
      let x_2349 : i32 = u_xlati31;
      let x_2351 : f32 = x_298.x_AdditionalShadowParams[x_2349].y;
      u_xlatb85 = (0.0f < x_2351);
      let x_2353 : bool = u_xlatb85;
      if (x_2353) {
        let x_2356 : i32 = u_xlati31;
        let x_2358 : f32 = x_298.x_AdditionalShadowParams[x_2356].y;
        u_xlatb85 = (1.0f == x_2358);
        let x_2360 : bool = u_xlatb85;
        if (x_2360) {
          let x_2363 : vec4<f32> = u_xlat11;
          let x_2367 : vec4<f32> = x_298.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) + x_2367);
          let x_2370 : vec4<f32> = u_xlat12;
          let x_2371 : vec2<f32> = vec2<f32>(x_2370.x, x_2370.y);
          let x_2373 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
          let x_2381 : vec3<f32> = txVec30;
          let x_2383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
          u_xlat13.x = x_2383;
          let x_2386 : vec4<f32> = u_xlat12;
          let x_2387 : vec2<f32> = vec2<f32>(x_2386.z, x_2386.w);
          let x_2389 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2387.x, x_2387.y, x_2389);
          let x_2396 : vec3<f32> = txVec31;
          let x_2398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2396.xy, x_2396.z);
          u_xlat13.y = x_2398;
          let x_2400 : vec4<f32> = u_xlat11;
          let x_2404 : vec4<f32> = x_298.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2400.x, x_2400.y, x_2400.x, x_2400.y) + x_2404);
          let x_2407 : vec4<f32> = u_xlat12;
          let x_2408 : vec2<f32> = vec2<f32>(x_2407.x, x_2407.y);
          let x_2410 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2408.x, x_2408.y, x_2410);
          let x_2417 : vec3<f32> = txVec32;
          let x_2419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2417.xy, x_2417.z);
          u_xlat13.z = x_2419;
          let x_2422 : vec4<f32> = u_xlat12;
          let x_2423 : vec2<f32> = vec2<f32>(x_2422.z, x_2422.w);
          let x_2425 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
          let x_2432 : vec3<f32> = txVec33;
          let x_2434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2432.xy, x_2432.z);
          u_xlat13.w = x_2434;
          let x_2436 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2436, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2439 : i32 = u_xlati31;
          let x_2441 : f32 = x_298.x_AdditionalShadowParams[x_2439].y;
          u_xlatb87 = (2.0f == x_2441);
          let x_2443 : bool = u_xlatb87;
          if (x_2443) {
            let x_2446 : vec4<f32> = u_xlat11;
            let x_2450 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2453 : vec2<f32> = ((vec2<f32>(x_2446.x, x_2446.y) * vec2<f32>(x_2450.z, x_2450.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2454 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2453.x, x_2453.y, x_2454.z, x_2454.w);
            let x_2456 : vec4<f32> = u_xlat12;
            let x_2458 : vec2<f32> = floor(vec2<f32>(x_2456.x, x_2456.y));
            let x_2459 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat11;
            let x_2464 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2467 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2461.x, x_2461.y) * vec2<f32>(x_2464.z, x_2464.w)) + -(vec2<f32>(x_2467.x, x_2467.y)));
            let x_2471 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2471.x, x_2471.x, x_2471.y, x_2471.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2474 : vec4<f32> = u_xlat13;
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2474.x, x_2474.x, x_2474.z, x_2474.z) * vec4<f32>(x_2476.x, x_2476.x, x_2476.z, x_2476.z));
            let x_2479 : vec4<f32> = u_xlat14;
            let x_2481 : vec2<f32> = (vec2<f32>(x_2479.y, x_2479.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2482 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2481.x, x_2482.y, x_2481.y, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat14;
            let x_2487 : vec2<f32> = u_xlat64;
            let x_2489 : vec2<f32> = ((vec2<f32>(x_2484.x, x_2484.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2487));
            let x_2490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2493 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2493) + vec2<f32>(1.0f, 1.0f));
            let x_2496 : vec2<f32> = u_xlat64;
            let x_2497 : vec2<f32> = min(x_2496, vec2<f32>(0.0f, 0.0f));
            let x_2498 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat15;
            let x_2503 : vec4<f32> = u_xlat15;
            let x_2506 : vec2<f32> = u_xlat66;
            let x_2507 : vec2<f32> = ((-(vec2<f32>(x_2500.x, x_2500.y)) * vec2<f32>(x_2503.x, x_2503.y)) + x_2506);
            let x_2508 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2510, vec2<f32>(0.0f, 0.0f));
            let x_2512 : vec2<f32> = u_xlat64;
            let x_2514 : vec2<f32> = u_xlat64;
            let x_2516 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2512) * x_2514) + vec2<f32>(x_2516.y, x_2516.w));
            let x_2519 : vec4<f32> = u_xlat15;
            let x_2521 : vec2<f32> = (vec2<f32>(x_2519.x, x_2519.y) + vec2<f32>(1.0f, 1.0f));
            let x_2522 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2524 + vec2<f32>(1.0f, 1.0f));
            let x_2526 : vec4<f32> = u_xlat14;
            let x_2528 : vec2<f32> = (vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2529 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec2<f32> = u_xlat66;
            let x_2532 : vec2<f32> = (x_2531 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat15;
            let x_2537 : vec2<f32> = (vec2<f32>(x_2535.x, x_2535.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2538 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
            let x_2540 : vec2<f32> = u_xlat64;
            let x_2541 : vec2<f32> = (x_2540 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2542 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2544.y, x_2544.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2548 : f32 = u_xlat15.x;
            u_xlat16.z = x_2548;
            let x_2551 : f32 = u_xlat64.x;
            u_xlat16.w = x_2551;
            let x_2554 : f32 = u_xlat17.x;
            u_xlat14.z = x_2554;
            let x_2557 : f32 = u_xlat13.x;
            u_xlat14.w = x_2557;
            let x_2559 : vec4<f32> = u_xlat14;
            let x_2561 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2559.z, x_2559.w, x_2559.x, x_2559.z) + vec4<f32>(x_2561.z, x_2561.w, x_2561.x, x_2561.z));
            let x_2565 : f32 = u_xlat16.y;
            u_xlat15.z = x_2565;
            let x_2568 : f32 = u_xlat64.y;
            u_xlat15.w = x_2568;
            let x_2571 : f32 = u_xlat14.y;
            u_xlat17.z = x_2571;
            let x_2574 : f32 = u_xlat13.z;
            u_xlat17.w = x_2574;
            let x_2576 : vec4<f32> = u_xlat15;
            let x_2578 : vec4<f32> = u_xlat17;
            let x_2580 : vec3<f32> = (vec3<f32>(x_2576.z, x_2576.y, x_2576.w) + vec3<f32>(x_2578.z, x_2578.y, x_2578.w));
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
            let x_2583 : vec4<f32> = u_xlat14;
            let x_2585 : vec4<f32> = u_xlat18;
            let x_2587 : vec3<f32> = (vec3<f32>(x_2583.x, x_2583.z, x_2583.w) / vec3<f32>(x_2585.z, x_2585.w, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat14;
            let x_2592 : vec3<f32> = (vec3<f32>(x_2590.x, x_2590.y, x_2590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
            let x_2595 : vec4<f32> = u_xlat17;
            let x_2597 : vec4<f32> = u_xlat13;
            let x_2599 : vec3<f32> = (vec3<f32>(x_2595.z, x_2595.y, x_2595.w) / vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
            let x_2600 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2604 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2605 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat14;
            let x_2610 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2612 : vec3<f32> = (vec3<f32>(x_2607.y, x_2607.x, x_2607.z) * vec3<f32>(x_2610.x, x_2610.x, x_2610.x));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
            let x_2615 : vec4<f32> = u_xlat15;
            let x_2618 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2620 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) * vec3<f32>(x_2618.y, x_2618.y, x_2618.y));
            let x_2621 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
            let x_2624 : f32 = u_xlat15.x;
            u_xlat14.w = x_2624;
            let x_2626 : vec4<f32> = u_xlat12;
            let x_2629 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) * vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y)) + vec4<f32>(x_2632.y, x_2632.w, x_2632.x, x_2632.w));
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2638 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2641 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2635.x, x_2635.y) * vec2<f32>(x_2638.x, x_2638.y)) + vec2<f32>(x_2641.z, x_2641.w));
            let x_2645 : f32 = u_xlat14.y;
            u_xlat15.w = x_2645;
            let x_2647 : vec4<f32> = u_xlat15;
            let x_2648 : vec2<f32> = vec2<f32>(x_2647.y, x_2647.z);
            let x_2649 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2649.x, x_2648.x, x_2649.z, x_2648.y);
            let x_2651 : vec4<f32> = u_xlat12;
            let x_2654 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2657 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2651.x, x_2651.y, x_2651.x, x_2651.y) * vec4<f32>(x_2654.x, x_2654.y, x_2654.x, x_2654.y)) + vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2657.y));
            let x_2660 : vec4<f32> = u_xlat12;
            let x_2663 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2666 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) * vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y)) + vec4<f32>(x_2666.w, x_2666.y, x_2666.w, x_2666.z));
            let x_2669 : vec4<f32> = u_xlat12;
            let x_2672 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2675 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.y) * vec4<f32>(x_2672.x, x_2672.y, x_2672.x, x_2672.y)) + vec4<f32>(x_2675.x, x_2675.w, x_2675.z, x_2675.w));
            let x_2678 : vec4<f32> = u_xlat13;
            let x_2680 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2678.x, x_2678.x, x_2678.x, x_2678.y) * vec4<f32>(x_2680.z, x_2680.w, x_2680.y, x_2680.z));
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2686 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2684.y, x_2684.y, x_2684.z, x_2684.z) * x_2686);
            let x_2689 : f32 = u_xlat13.z;
            let x_2691 : f32 = u_xlat18.y;
            u_xlat87 = (x_2689 * x_2691);
            let x_2694 : vec4<f32> = u_xlat16;
            let x_2695 : vec2<f32> = vec2<f32>(x_2694.x, x_2694.y);
            let x_2697 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2695.x, x_2695.y, x_2697);
            let x_2704 : vec3<f32> = txVec34;
            let x_2706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
            u_xlat88 = x_2706;
            let x_2708 : vec4<f32> = u_xlat16;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.z, x_2708.w);
            let x_2711 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
            let x_2719 : vec3<f32> = txVec35;
            let x_2721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2719.xy, x_2719.z);
            u_xlat89 = x_2721;
            let x_2722 : f32 = u_xlat89;
            let x_2724 : f32 = u_xlat19.y;
            u_xlat89 = (x_2722 * x_2724);
            let x_2727 : f32 = u_xlat19.x;
            let x_2728 : f32 = u_xlat88;
            let x_2730 : f32 = u_xlat89;
            u_xlat88 = ((x_2727 * x_2728) + x_2730);
            let x_2733 : vec2<f32> = u_xlat64;
            let x_2735 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2733.x, x_2733.y, x_2735);
            let x_2742 : vec3<f32> = txVec36;
            let x_2744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2742.xy, x_2742.z);
            u_xlat89 = x_2744;
            let x_2746 : f32 = u_xlat19.z;
            let x_2747 : f32 = u_xlat89;
            let x_2749 : f32 = u_xlat88;
            u_xlat88 = ((x_2746 * x_2747) + x_2749);
            let x_2752 : vec4<f32> = u_xlat15;
            let x_2753 : vec2<f32> = vec2<f32>(x_2752.x, x_2752.y);
            let x_2755 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
            let x_2762 : vec3<f32> = txVec37;
            let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
            u_xlat89 = x_2764;
            let x_2766 : f32 = u_xlat19.w;
            let x_2767 : f32 = u_xlat89;
            let x_2769 : f32 = u_xlat88;
            u_xlat88 = ((x_2766 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat17;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
            let x_2775 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec38;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat89 = x_2784;
            let x_2786 : f32 = u_xlat20.x;
            let x_2787 : f32 = u_xlat89;
            let x_2789 : f32 = u_xlat88;
            u_xlat88 = ((x_2786 * x_2787) + x_2789);
            let x_2792 : vec4<f32> = u_xlat17;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.z, x_2792.w);
            let x_2795 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec39;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat89 = x_2804;
            let x_2806 : f32 = u_xlat20.y;
            let x_2807 : f32 = u_xlat89;
            let x_2809 : f32 = u_xlat88;
            u_xlat88 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat15;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec40;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat89 = x_2824;
            let x_2826 : f32 = u_xlat20.z;
            let x_2827 : f32 = u_xlat89;
            let x_2829 : f32 = u_xlat88;
            u_xlat88 = ((x_2826 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat14;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.x, x_2832.y);
            let x_2835 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec41;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat89 = x_2844;
            let x_2846 : f32 = u_xlat20.w;
            let x_2847 : f32 = u_xlat89;
            let x_2849 : f32 = u_xlat88;
            u_xlat88 = ((x_2846 * x_2847) + x_2849);
            let x_2852 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.z, x_2852.w);
            let x_2855 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec42;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat89 = x_2864;
            let x_2865 : f32 = u_xlat87;
            let x_2866 : f32 = u_xlat89;
            let x_2868 : f32 = u_xlat88;
            u_xlat85 = ((x_2865 * x_2866) + x_2868);
          } else {
            let x_2871 : vec4<f32> = u_xlat11;
            let x_2874 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2877 : vec2<f32> = ((vec2<f32>(x_2871.x, x_2871.y) * vec2<f32>(x_2874.z, x_2874.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2878 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec4<f32> = u_xlat12;
            let x_2882 : vec2<f32> = floor(vec2<f32>(x_2880.x, x_2880.y));
            let x_2883 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2882.x, x_2882.y, x_2883.z, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2885.x, x_2885.y) * vec2<f32>(x_2888.z, x_2888.w)) + -(vec2<f32>(x_2891.x, x_2891.y)));
            let x_2895 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2895.x, x_2895.x, x_2895.y, x_2895.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2898 : vec4<f32> = u_xlat13;
            let x_2900 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2898.x, x_2898.x, x_2898.z, x_2898.z) * vec4<f32>(x_2900.x, x_2900.x, x_2900.z, x_2900.z));
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2905 : vec2<f32> = (vec2<f32>(x_2903.y, x_2903.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2906 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2906.x, x_2905.x, x_2906.z, x_2905.y);
            let x_2908 : vec4<f32> = u_xlat14;
            let x_2911 : vec2<f32> = u_xlat64;
            let x_2913 : vec2<f32> = ((vec2<f32>(x_2908.x, x_2908.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2911));
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2913.x, x_2914.y, x_2913.y, x_2914.w);
            let x_2916 : vec2<f32> = u_xlat64;
            let x_2918 : vec2<f32> = (-(x_2916) + vec2<f32>(1.0f, 1.0f));
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2921, vec2<f32>(0.0f, 0.0f));
            let x_2923 : vec2<f32> = u_xlat66;
            let x_2925 : vec2<f32> = u_xlat66;
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2929 : vec2<f32> = ((-(x_2923) * x_2925) + vec2<f32>(x_2927.x, x_2927.y));
            let x_2930 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
            let x_2932 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2932, vec2<f32>(0.0f, 0.0f));
            let x_2935 : vec2<f32> = u_xlat66;
            let x_2937 : vec2<f32> = u_xlat66;
            let x_2939 : vec4<f32> = u_xlat13;
            let x_2941 : vec2<f32> = ((-(x_2935) * x_2937) + vec2<f32>(x_2939.y, x_2939.w));
            let x_2942 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2941.x, x_2942.y, x_2941.y);
            let x_2944 : vec4<f32> = u_xlat14;
            let x_2947 : vec2<f32> = (vec2<f32>(x_2944.x, x_2944.y) + vec2<f32>(2.0f, 2.0f));
            let x_2948 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2947.x, x_2947.y, x_2948.z, x_2948.w);
            let x_2950 : vec3<f32> = u_xlat39;
            let x_2952 : vec2<f32> = (vec2<f32>(x_2950.x, x_2950.z) + vec2<f32>(2.0f, 2.0f));
            let x_2953 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2953.x, x_2952.x, x_2953.z, x_2952.y);
            let x_2956 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2956 * 0.08163200318813323975f);
            let x_2959 : vec4<f32> = u_xlat13;
            let x_2962 : vec3<f32> = (vec3<f32>(x_2959.z, x_2959.x, x_2959.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2963 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2963.w);
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2967 : vec2<f32> = (vec2<f32>(x_2965.x, x_2965.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2968 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat17.y;
            u_xlat16.x = x_2971;
            let x_2973 : vec2<f32> = u_xlat64;
            let x_2976 : vec2<f32> = ((vec2<f32>(x_2973.x, x_2973.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2977 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2977.x, x_2976.x, x_2977.z, x_2976.y);
            let x_2979 : vec2<f32> = u_xlat64;
            let x_2982 : vec2<f32> = ((vec2<f32>(x_2979.x, x_2979.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2983 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2982.x, x_2983.y, x_2982.y, x_2983.w);
            let x_2986 : f32 = u_xlat13.x;
            u_xlat14.y = x_2986;
            let x_2989 : f32 = u_xlat15.y;
            u_xlat14.w = x_2989;
            let x_2991 : vec4<f32> = u_xlat14;
            let x_2992 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2991 + x_2992);
            let x_2994 : vec2<f32> = u_xlat64;
            let x_2997 : vec2<f32> = ((vec2<f32>(x_2994.y, x_2994.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2998 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2998.x, x_2997.x, x_2998.z, x_2997.y);
            let x_3000 : vec2<f32> = u_xlat64;
            let x_3003 : vec2<f32> = ((vec2<f32>(x_3000.y, x_3000.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3004 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3003.x, x_3004.y, x_3003.y, x_3004.w);
            let x_3007 : f32 = u_xlat13.y;
            u_xlat15.y = x_3007;
            let x_3009 : vec4<f32> = u_xlat15;
            let x_3010 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3009 + x_3010);
            let x_3012 : vec4<f32> = u_xlat14;
            let x_3013 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3012 / x_3013);
            let x_3015 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3015 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3017 : vec4<f32> = u_xlat15;
            let x_3018 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3017 / x_3018);
            let x_3020 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3020 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3025 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3022.w, x_3022.x, x_3022.y, x_3022.z) * vec4<f32>(x_3025.x, x_3025.x, x_3025.x, x_3025.x));
            let x_3028 : vec4<f32> = u_xlat15;
            let x_3031 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3028.x, x_3028.w, x_3028.y, x_3028.z) * vec4<f32>(x_3031.y, x_3031.y, x_3031.y, x_3031.y));
            let x_3034 : vec4<f32> = u_xlat14;
            let x_3035 : vec3<f32> = vec3<f32>(x_3034.y, x_3034.z, x_3034.w);
            let x_3036 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3035.x, x_3036.y, x_3035.y, x_3035.z);
            let x_3039 : f32 = u_xlat15.x;
            u_xlat17.y = x_3039;
            let x_3041 : vec4<f32> = u_xlat12;
            let x_3044 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y) * vec4<f32>(x_3044.x, x_3044.y, x_3044.x, x_3044.y)) + vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3047.y));
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3053 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(x_3053.x, x_3053.y)) + vec2<f32>(x_3056.w, x_3056.y));
            let x_3060 : f32 = u_xlat17.y;
            u_xlat14.y = x_3060;
            let x_3063 : f32 = u_xlat15.z;
            u_xlat17.y = x_3063;
            let x_3065 : vec4<f32> = u_xlat12;
            let x_3068 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y) * vec4<f32>(x_3068.x, x_3068.y, x_3068.x, x_3068.y)) + vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3071.y));
            let x_3074 : vec4<f32> = u_xlat12;
            let x_3077 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3080 : vec4<f32> = u_xlat17;
            let x_3082 : vec2<f32> = ((vec2<f32>(x_3074.x, x_3074.y) * vec2<f32>(x_3077.x, x_3077.y)) + vec2<f32>(x_3080.w, x_3080.y));
            let x_3083 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3082.x, x_3082.y, x_3083.z, x_3083.w);
            let x_3086 : f32 = u_xlat17.y;
            u_xlat14.z = x_3086;
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3092 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y) * vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y)) + vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.z));
            let x_3099 : f32 = u_xlat15.w;
            u_xlat17.y = x_3099;
            let x_3102 : vec4<f32> = u_xlat12;
            let x_3105 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y) * vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.y)) + vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3108.y));
            let x_3112 : vec4<f32> = u_xlat12;
            let x_3115 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(x_3115.x, x_3115.y)) + vec2<f32>(x_3118.w, x_3118.y));
            let x_3122 : f32 = u_xlat17.y;
            u_xlat14.w = x_3122;
            let x_3125 : vec4<f32> = u_xlat12;
            let x_3128 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3131 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(x_3128.x, x_3128.y)) + vec2<f32>(x_3131.x, x_3131.w));
            let x_3134 : vec4<f32> = u_xlat17;
            let x_3135 : vec3<f32> = vec3<f32>(x_3134.x, x_3134.z, x_3134.w);
            let x_3136 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3135.x, x_3136.y, x_3135.y, x_3135.z);
            let x_3138 : vec4<f32> = u_xlat12;
            let x_3141 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3144 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y) * vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y)) + vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3144.y));
            let x_3148 : vec4<f32> = u_xlat12;
            let x_3151 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3148.x, x_3148.y) * vec2<f32>(x_3151.x, x_3151.y)) + vec2<f32>(x_3154.w, x_3154.y));
            let x_3158 : f32 = u_xlat14.x;
            u_xlat15.x = x_3158;
            let x_3160 : vec4<f32> = u_xlat12;
            let x_3163 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat15;
            let x_3168 : vec2<f32> = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.x, x_3163.y)) + vec2<f32>(x_3166.x, x_3166.y));
            let x_3169 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3174 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3172.x, x_3172.x, x_3172.x, x_3172.x) * x_3174);
            let x_3177 : vec4<f32> = u_xlat13;
            let x_3179 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3177.y, x_3177.y, x_3177.y, x_3177.y) * x_3179);
            let x_3182 : vec4<f32> = u_xlat13;
            let x_3184 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3182.z, x_3182.z, x_3182.z, x_3182.z) * x_3184);
            let x_3186 : vec4<f32> = u_xlat13;
            let x_3188 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3186.w, x_3186.w, x_3186.w, x_3186.w) * x_3188);
            let x_3191 : vec4<f32> = u_xlat18;
            let x_3192 : vec2<f32> = vec2<f32>(x_3191.x, x_3191.y);
            let x_3194 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec43;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat87 = x_3203;
            let x_3205 : vec4<f32> = u_xlat18;
            let x_3206 : vec2<f32> = vec2<f32>(x_3205.z, x_3205.w);
            let x_3208 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec44;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat88 = x_3217;
            let x_3218 : f32 = u_xlat88;
            let x_3220 : f32 = u_xlat23.y;
            u_xlat88 = (x_3218 * x_3220);
            let x_3223 : f32 = u_xlat23.x;
            let x_3224 : f32 = u_xlat87;
            let x_3226 : f32 = u_xlat88;
            u_xlat87 = ((x_3223 * x_3224) + x_3226);
            let x_3229 : vec2<f32> = u_xlat64;
            let x_3231 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec45;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat88 = x_3240;
            let x_3242 : f32 = u_xlat23.z;
            let x_3243 : f32 = u_xlat88;
            let x_3245 : f32 = u_xlat87;
            u_xlat87 = ((x_3242 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat21;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec46;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat88 = x_3260;
            let x_3262 : f32 = u_xlat23.w;
            let x_3263 : f32 = u_xlat88;
            let x_3265 : f32 = u_xlat87;
            u_xlat87 = ((x_3262 * x_3263) + x_3265);
            let x_3268 : vec4<f32> = u_xlat19;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.x, x_3268.y);
            let x_3271 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3278 : vec3<f32> = txVec47;
            let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
            u_xlat88 = x_3280;
            let x_3282 : f32 = u_xlat24.x;
            let x_3283 : f32 = u_xlat88;
            let x_3285 : f32 = u_xlat87;
            u_xlat87 = ((x_3282 * x_3283) + x_3285);
            let x_3288 : vec4<f32> = u_xlat19;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.z, x_3288.w);
            let x_3291 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec48;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat88 = x_3300;
            let x_3302 : f32 = u_xlat24.y;
            let x_3303 : f32 = u_xlat88;
            let x_3305 : f32 = u_xlat87;
            u_xlat87 = ((x_3302 * x_3303) + x_3305);
            let x_3308 : vec4<f32> = u_xlat20;
            let x_3309 : vec2<f32> = vec2<f32>(x_3308.x, x_3308.y);
            let x_3311 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3318 : vec3<f32> = txVec49;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat88 = x_3320;
            let x_3322 : f32 = u_xlat24.z;
            let x_3323 : f32 = u_xlat88;
            let x_3325 : f32 = u_xlat87;
            u_xlat87 = ((x_3322 * x_3323) + x_3325);
            let x_3328 : vec4<f32> = u_xlat21;
            let x_3329 : vec2<f32> = vec2<f32>(x_3328.z, x_3328.w);
            let x_3331 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec50;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat88 = x_3340;
            let x_3342 : f32 = u_xlat24.w;
            let x_3343 : f32 = u_xlat88;
            let x_3345 : f32 = u_xlat87;
            u_xlat87 = ((x_3342 * x_3343) + x_3345);
            let x_3348 : vec4<f32> = u_xlat22;
            let x_3349 : vec2<f32> = vec2<f32>(x_3348.x, x_3348.y);
            let x_3351 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec51;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat88 = x_3360;
            let x_3362 : f32 = u_xlat25.x;
            let x_3363 : f32 = u_xlat88;
            let x_3365 : f32 = u_xlat87;
            u_xlat87 = ((x_3362 * x_3363) + x_3365);
            let x_3368 : vec4<f32> = u_xlat22;
            let x_3369 : vec2<f32> = vec2<f32>(x_3368.z, x_3368.w);
            let x_3371 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3369.x, x_3369.y, x_3371);
            let x_3378 : vec3<f32> = txVec52;
            let x_3380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3378.xy, x_3378.z);
            u_xlat88 = x_3380;
            let x_3382 : f32 = u_xlat25.y;
            let x_3383 : f32 = u_xlat88;
            let x_3385 : f32 = u_xlat87;
            u_xlat87 = ((x_3382 * x_3383) + x_3385);
            let x_3388 : vec2<f32> = u_xlat40;
            let x_3390 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec53;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat88 = x_3399;
            let x_3401 : f32 = u_xlat25.z;
            let x_3402 : f32 = u_xlat88;
            let x_3404 : f32 = u_xlat87;
            u_xlat87 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec2<f32> = u_xlat72;
            let x_3409 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec54;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat88 = x_3418;
            let x_3420 : f32 = u_xlat25.w;
            let x_3421 : f32 = u_xlat88;
            let x_3423 : f32 = u_xlat87;
            u_xlat87 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat17;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec55;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat88 = x_3438;
            let x_3440 : f32 = u_xlat13.x;
            let x_3441 : f32 = u_xlat88;
            let x_3443 : f32 = u_xlat87;
            u_xlat87 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat17;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.z, x_3446.w);
            let x_3449 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec56;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat88 = x_3458;
            let x_3460 : f32 = u_xlat13.y;
            let x_3461 : f32 = u_xlat88;
            let x_3463 : f32 = u_xlat87;
            u_xlat87 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec2<f32> = u_xlat67;
            let x_3468 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec57;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat88 = x_3477;
            let x_3479 : f32 = u_xlat13.z;
            let x_3480 : f32 = u_xlat88;
            let x_3482 : f32 = u_xlat87;
            u_xlat87 = ((x_3479 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat12;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec58;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat88 = x_3497;
            let x_3499 : f32 = u_xlat13.w;
            let x_3500 : f32 = u_xlat88;
            let x_3502 : f32 = u_xlat87;
            u_xlat85 = ((x_3499 * x_3500) + x_3502);
          }
        }
      } else {
        let x_3506 : vec4<f32> = u_xlat11;
        let x_3507 : vec2<f32> = vec2<f32>(x_3506.x, x_3506.y);
        let x_3509 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
        let x_3516 : vec3<f32> = txVec59;
        let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
        u_xlat85 = x_3518;
      }
      let x_3519 : i32 = u_xlati31;
      let x_3521 : f32 = x_298.x_AdditionalShadowParams[x_3519].x;
      u_xlat87 = (1.0f + -(x_3521));
      let x_3524 : f32 = u_xlat85;
      let x_3525 : i32 = u_xlati31;
      let x_3527 : f32 = x_298.x_AdditionalShadowParams[x_3525].x;
      let x_3529 : f32 = u_xlat87;
      u_xlat85 = ((x_3524 * x_3527) + x_3529);
      let x_3532 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3532);
      let x_3536 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3536 >= 1.0f);
      let x_3538 : bool = u_xlatb87;
      let x_3539 : bool = u_xlatb88;
      u_xlatb87 = (x_3538 | x_3539);
      let x_3541 : bool = u_xlatb87;
      let x_3542 : f32 = u_xlat85;
      u_xlat85 = select(x_3542, 1.0f, x_3541);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3545 : f32 = u_xlat85;
    u_xlat87 = (-(x_3545) + 1.0f);
    let x_3548 : f32 = u_xlat79;
    let x_3549 : f32 = u_xlat87;
    let x_3551 : f32 = u_xlat85;
    u_xlat85 = ((x_3548 * x_3549) + x_3551);
    let x_3554 : i32 = u_xlati31;
    u_xlati87 = (1i << bitcast<u32>((x_3554 & 31i)));
    let x_3558 : i32 = u_xlati87;
    let x_3561 : f32 = x_1663.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3558) & bitcast<u32>(x_3561)));
    let x_3565 : i32 = u_xlati87;
    if ((x_3565 != 0i)) {
      let x_3569 : i32 = u_xlati31;
      let x_3571 : f32 = x_1663.x_AdditionalLightsLightTypes[x_3569].el;
      u_xlati87 = i32(x_3571);
      let x_3574 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3574 != 0i));
      let x_3578 : i32 = u_xlati31;
      u_xlati11 = (x_3578 << bitcast<u32>(2i));
      let x_3580 : i32 = u_xlati88;
      if ((x_3580 != 0i)) {
        let x_3585 : vec3<f32> = vs_TEXCOORD7;
        let x_3587 : i32 = u_xlati11;
        let x_3590 : i32 = u_xlati11;
        let x_3594 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3587 + 1i) / 4i)][((x_3590 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3585.y, x_3585.y, x_3585.y) * vec3<f32>(x_3594.x, x_3594.y, x_3594.w));
        let x_3597 : i32 = u_xlati11;
        let x_3599 : i32 = u_xlati11;
        let x_3602 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[(x_3597 / 4i)][(x_3599 % 4i)];
        let x_3604 : vec3<f32> = vs_TEXCOORD7;
        let x_3607 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3602.x, x_3602.y, x_3602.w) * vec3<f32>(x_3604.x, x_3604.x, x_3604.x)) + x_3607);
        let x_3609 : i32 = u_xlati11;
        let x_3612 : i32 = u_xlati11;
        let x_3616 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3609 + 2i) / 4i)][((x_3612 + 2i) % 4i)];
        let x_3618 : vec3<f32> = vs_TEXCOORD7;
        let x_3621 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3616.x, x_3616.y, x_3616.w) * vec3<f32>(x_3618.z, x_3618.z, x_3618.z)) + x_3621);
        let x_3623 : vec3<f32> = u_xlat37;
        let x_3624 : i32 = u_xlati11;
        let x_3627 : i32 = u_xlati11;
        let x_3631 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3624 + 3i) / 4i)][((x_3627 + 3i) % 4i)];
        u_xlat37 = (x_3623 + vec3<f32>(x_3631.x, x_3631.y, x_3631.w));
        let x_3634 : vec3<f32> = u_xlat37;
        let x_3636 : vec3<f32> = u_xlat37;
        let x_3638 : vec2<f32> = (vec2<f32>(x_3634.x, x_3634.y) / vec2<f32>(x_3636.z, x_3636.z));
        let x_3639 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3638.x, x_3638.y, x_3639.z);
        let x_3641 : vec3<f32> = u_xlat37;
        let x_3644 : vec2<f32> = ((vec2<f32>(x_3641.x, x_3641.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3645 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3644.x, x_3644.y, x_3645.z);
        let x_3647 : vec3<f32> = u_xlat37;
        let x_3651 : vec2<f32> = clamp(vec2<f32>(x_3647.x, x_3647.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3652 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3651.x, x_3651.y, x_3652.z);
        let x_3654 : i32 = u_xlati31;
        let x_3656 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3654];
        let x_3658 : vec3<f32> = u_xlat37;
        let x_3661 : i32 = u_xlati31;
        let x_3663 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3661];
        let x_3665 : vec2<f32> = ((vec2<f32>(x_3656.x, x_3656.y) * vec2<f32>(x_3658.x, x_3658.y)) + vec2<f32>(x_3663.z, x_3663.w));
        let x_3666 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3665.x, x_3665.y, x_3666.z);
      } else {
        let x_3669 : i32 = u_xlati87;
        u_xlatb87 = (x_3669 == 1i);
        let x_3671 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3671);
        let x_3673 : i32 = u_xlati87;
        if ((x_3673 != 0i)) {
          let x_3677 : vec3<f32> = vs_TEXCOORD7;
          let x_3679 : i32 = u_xlati11;
          let x_3682 : i32 = u_xlati11;
          let x_3686 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3679 + 1i) / 4i)][((x_3682 + 1i) % 4i)];
          let x_3688 : vec2<f32> = (vec2<f32>(x_3677.y, x_3677.y) * vec2<f32>(x_3686.x, x_3686.y));
          let x_3689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3688.x, x_3688.y, x_3689.z, x_3689.w);
          let x_3691 : i32 = u_xlati11;
          let x_3693 : i32 = u_xlati11;
          let x_3696 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[(x_3691 / 4i)][(x_3693 % 4i)];
          let x_3698 : vec3<f32> = vs_TEXCOORD7;
          let x_3701 : vec4<f32> = u_xlat12;
          let x_3703 : vec2<f32> = ((vec2<f32>(x_3696.x, x_3696.y) * vec2<f32>(x_3698.x, x_3698.x)) + vec2<f32>(x_3701.x, x_3701.y));
          let x_3704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3703.x, x_3703.y, x_3704.z, x_3704.w);
          let x_3706 : i32 = u_xlati11;
          let x_3709 : i32 = u_xlati11;
          let x_3713 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3706 + 2i) / 4i)][((x_3709 + 2i) % 4i)];
          let x_3715 : vec3<f32> = vs_TEXCOORD7;
          let x_3718 : vec4<f32> = u_xlat12;
          let x_3720 : vec2<f32> = ((vec2<f32>(x_3713.x, x_3713.y) * vec2<f32>(x_3715.z, x_3715.z)) + vec2<f32>(x_3718.x, x_3718.y));
          let x_3721 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3720.x, x_3720.y, x_3721.z, x_3721.w);
          let x_3723 : vec4<f32> = u_xlat12;
          let x_3725 : i32 = u_xlati11;
          let x_3728 : i32 = u_xlati11;
          let x_3732 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3725 + 3i) / 4i)][((x_3728 + 3i) % 4i)];
          let x_3734 : vec2<f32> = (vec2<f32>(x_3723.x, x_3723.y) + vec2<f32>(x_3732.x, x_3732.y));
          let x_3735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
          let x_3737 : vec4<f32> = u_xlat12;
          let x_3740 : vec2<f32> = ((vec2<f32>(x_3737.x, x_3737.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3741 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3740.x, x_3740.y, x_3741.z, x_3741.w);
          let x_3743 : vec4<f32> = u_xlat12;
          let x_3745 : vec2<f32> = fract(vec2<f32>(x_3743.x, x_3743.y));
          let x_3746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3745.x, x_3745.y, x_3746.z, x_3746.w);
          let x_3748 : i32 = u_xlati31;
          let x_3750 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3748];
          let x_3752 : vec4<f32> = u_xlat12;
          let x_3755 : i32 = u_xlati31;
          let x_3757 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3755];
          let x_3759 : vec2<f32> = ((vec2<f32>(x_3750.x, x_3750.y) * vec2<f32>(x_3752.x, x_3752.y)) + vec2<f32>(x_3757.z, x_3757.w));
          let x_3760 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3759.x, x_3759.y, x_3760.z);
        } else {
          let x_3763 : vec3<f32> = vs_TEXCOORD7;
          let x_3765 : i32 = u_xlati11;
          let x_3768 : i32 = u_xlati11;
          let x_3772 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3765 + 1i) / 4i)][((x_3768 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3763.y, x_3763.y, x_3763.y, x_3763.y) * x_3772);
          let x_3774 : i32 = u_xlati11;
          let x_3776 : i32 = u_xlati11;
          let x_3779 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[(x_3774 / 4i)][(x_3776 % 4i)];
          let x_3780 : vec3<f32> = vs_TEXCOORD7;
          let x_3783 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3779 * vec4<f32>(x_3780.x, x_3780.x, x_3780.x, x_3780.x)) + x_3783);
          let x_3785 : i32 = u_xlati11;
          let x_3788 : i32 = u_xlati11;
          let x_3792 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3785 + 2i) / 4i)][((x_3788 + 2i) % 4i)];
          let x_3793 : vec3<f32> = vs_TEXCOORD7;
          let x_3796 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3792 * vec4<f32>(x_3793.z, x_3793.z, x_3793.z, x_3793.z)) + x_3796);
          let x_3798 : vec4<f32> = u_xlat12;
          let x_3799 : i32 = u_xlati11;
          let x_3802 : i32 = u_xlati11;
          let x_3806 : vec4<f32> = x_1663.x_AdditionalLightsWorldToLights[((x_3799 + 3i) / 4i)][((x_3802 + 3i) % 4i)];
          u_xlat12 = (x_3798 + x_3806);
          let x_3808 : vec4<f32> = u_xlat12;
          let x_3810 : vec4<f32> = u_xlat12;
          let x_3812 : vec3<f32> = (vec3<f32>(x_3808.x, x_3808.y, x_3808.z) / vec3<f32>(x_3810.w, x_3810.w, x_3810.w));
          let x_3813 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3812.x, x_3812.y, x_3812.z, x_3813.w);
          let x_3815 : vec4<f32> = u_xlat12;
          let x_3817 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3815.x, x_3815.y, x_3815.z), vec3<f32>(x_3817.x, x_3817.y, x_3817.z));
          let x_3820 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3820);
          let x_3822 : f32 = u_xlat87;
          let x_3824 : vec4<f32> = u_xlat12;
          let x_3826 : vec3<f32> = (vec3<f32>(x_3822, x_3822, x_3822) * vec3<f32>(x_3824.x, x_3824.y, x_3824.z));
          let x_3827 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3827.w);
          let x_3829 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3829.x, x_3829.y, x_3829.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3834 : f32 = u_xlat87;
          u_xlat87 = max(x_3834, 0.00000099999999747524f);
          let x_3837 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3837);
          let x_3839 : f32 = u_xlat87;
          let x_3841 : vec4<f32> = u_xlat12;
          let x_3843 : vec3<f32> = (vec3<f32>(x_3839, x_3839, x_3839) * vec3<f32>(x_3841.z, x_3841.x, x_3841.y));
          let x_3844 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3843.x, x_3843.y, x_3843.z, x_3844.w);
          let x_3847 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3847);
          let x_3851 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3851, 0.0f, 1.0f);
          let x_3854 : vec4<f32> = u_xlat13;
          let x_3856 : vec4<bool> = (vec4<f32>(x_3854.y, x_3854.y, x_3854.y, x_3854.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3857 : vec2<bool> = vec2<bool>(x_3856.x, x_3856.w);
          let x_3858 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3857.x, x_3858.y, x_3858.z, x_3857.y);
          let x_3861 : bool = u_xlatb11.x;
          if (x_3861) {
            let x_3866 : f32 = u_xlat13.x;
            x_3862 = x_3866;
          } else {
            let x_3869 : f32 = u_xlat13.x;
            x_3862 = -(x_3869);
          }
          let x_3871 : f32 = x_3862;
          u_xlat11.x = x_3871;
          let x_3874 : bool = u_xlatb11.w;
          if (x_3874) {
            let x_3879 : f32 = u_xlat13.x;
            x_3875 = x_3879;
          } else {
            let x_3882 : f32 = u_xlat13.x;
            x_3875 = -(x_3882);
          }
          let x_3884 : f32 = x_3875;
          u_xlat11.w = x_3884;
          let x_3886 : vec4<f32> = u_xlat12;
          let x_3888 : f32 = u_xlat87;
          let x_3891 : vec4<f32> = u_xlat11;
          let x_3893 : vec2<f32> = ((vec2<f32>(x_3886.x, x_3886.y) * vec2<f32>(x_3888, x_3888)) + vec2<f32>(x_3891.x, x_3891.w));
          let x_3894 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3893.x, x_3894.y, x_3894.z, x_3893.y);
          let x_3896 : vec4<f32> = u_xlat11;
          let x_3899 : vec2<f32> = ((vec2<f32>(x_3896.x, x_3896.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3900 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3899.x, x_3900.y, x_3900.z, x_3899.y);
          let x_3902 : vec4<f32> = u_xlat11;
          let x_3906 : vec2<f32> = clamp(vec2<f32>(x_3902.x, x_3902.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3907 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3906.x, x_3907.y, x_3907.z, x_3906.y);
          let x_3909 : i32 = u_xlati31;
          let x_3911 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3909];
          let x_3913 : vec4<f32> = u_xlat11;
          let x_3916 : i32 = u_xlati31;
          let x_3918 : vec4<f32> = x_1663.x_AdditionalLightsCookieAtlasUVRects[x_3916];
          let x_3920 : vec2<f32> = ((vec2<f32>(x_3911.x, x_3911.y) * vec2<f32>(x_3913.x, x_3913.w)) + vec2<f32>(x_3918.z, x_3918.w));
          let x_3921 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3920.x, x_3920.y, x_3921.z);
        }
      }
      let x_3928 : vec3<f32> = u_xlat37;
      let x_3930 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3928.x, x_3928.y), 0.0f);
      u_xlat11 = x_3930;
      let x_3932 : bool = u_xlatb7.y;
      if (x_3932) {
        let x_3937 : f32 = u_xlat11.w;
        x_3933 = x_3937;
      } else {
        let x_3940 : f32 = u_xlat11.x;
        x_3933 = x_3940;
      }
      let x_3941 : f32 = x_3933;
      u_xlat87 = x_3941;
      let x_3943 : bool = u_xlatb7.x;
      if (x_3943) {
        let x_3947 : vec4<f32> = u_xlat11;
        x_3944 = vec3<f32>(x_3947.x, x_3947.y, x_3947.z);
      } else {
        let x_3950 : f32 = u_xlat87;
        x_3944 = vec3<f32>(x_3950, x_3950, x_3950);
      }
      let x_3952 : vec3<f32> = x_3944;
      let x_3953 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3952.x, x_3952.y, x_3952.z, x_3953.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3959 : vec4<f32> = u_xlat11;
    let x_3961 : i32 = u_xlati31;
    let x_3963 : vec4<f32> = x_2126.x_AdditionalLightsColor[x_3961];
    let x_3965 : vec3<f32> = (vec3<f32>(x_3959.x, x_3959.y, x_3959.z) * vec3<f32>(x_3963.x, x_3963.y, x_3963.z));
    let x_3966 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    let x_3968 : f32 = u_xlat84;
    let x_3969 : f32 = u_xlat85;
    u_xlat31.x = (x_3968 * x_3969);
    let x_3972 : vec4<f32> = u_xlat2;
    let x_3974 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3972.x, x_3972.y, x_3972.z), vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
    let x_3977 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3977, 0.0f, 1.0f);
    let x_3980 : f32 = u_xlat31.x;
    let x_3981 : f32 = u_xlat84;
    u_xlat31.x = (x_3980 * x_3981);
    let x_3984 : vec3<f32> = u_xlat31;
    let x_3986 : vec4<f32> = u_xlat11;
    let x_3988 : vec3<f32> = (vec3<f32>(x_3984.x, x_3984.x, x_3984.x) * vec3<f32>(x_3986.x, x_3986.y, x_3986.z));
    let x_3989 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3988.x, x_3988.y, x_3988.z, x_3989.w);
    let x_3991 : vec4<f32> = u_xlat9;
    let x_3993 : f32 = u_xlat59;
    let x_3996 : vec3<f32> = u_xlat3;
    let x_3997 : vec3<f32> = ((vec3<f32>(x_3991.x, x_3991.y, x_3991.z) * vec3<f32>(x_3993, x_3993, x_3993)) + x_3996);
    let x_3998 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3997.x, x_3997.y, x_3997.z, x_3998.w);
    let x_4000 : vec4<f32> = u_xlat9;
    let x_4002 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_4000.x, x_4000.y, x_4000.z), vec3<f32>(x_4002.x, x_4002.y, x_4002.z));
    let x_4007 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_4007, 1.17549435e-38f);
    let x_4011 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_4011);
    let x_4014 : vec3<f32> = u_xlat31;
    let x_4016 : vec4<f32> = u_xlat9;
    let x_4018 : vec3<f32> = (vec3<f32>(x_4014.x, x_4014.x, x_4014.x) * vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
    let x_4021 : vec4<f32> = u_xlat2;
    let x_4023 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_4021.x, x_4021.y, x_4021.z), vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4028 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_4028, 0.0f, 1.0f);
    let x_4031 : vec4<f32> = u_xlat10;
    let x_4033 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4031.x, x_4031.y, x_4031.z), vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
    let x_4036 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4036, 0.0f, 1.0f);
    let x_4039 : f32 = u_xlat31.x;
    let x_4041 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4039 * x_4041);
    let x_4045 : f32 = u_xlat31.x;
    let x_4047 : f32 = u_xlat8.x;
    u_xlat31.x = ((x_4045 * x_4047) + 1.00001001358032226562f);
    let x_4051 : f32 = u_xlat84;
    let x_4052 : f32 = u_xlat84;
    u_xlat84 = (x_4051 * x_4052);
    let x_4055 : f32 = u_xlat31.x;
    let x_4057 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4055 * x_4057);
    let x_4060 : f32 = u_xlat84;
    u_xlat84 = max(x_4060, 0.10000000149011611938f);
    let x_4063 : f32 = u_xlat31.x;
    let x_4064 : f32 = u_xlat84;
    u_xlat31.x = (x_4063 * x_4064);
    let x_4067 : f32 = u_xlat81;
    let x_4069 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4067 * x_4069);
    let x_4072 : f32 = u_xlat82;
    let x_4074 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4072 / x_4074);
    let x_4077 : vec4<f32> = u_xlat0;
    let x_4079 : vec3<f32> = u_xlat31;
    let x_4082 : vec3<f32> = u_xlat4;
    let x_4083 : vec3<f32> = ((vec3<f32>(x_4077.x, x_4077.y, x_4077.z) * vec3<f32>(x_4079.x, x_4079.x, x_4079.x)) + x_4082);
    let x_4084 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4083.x, x_4083.y, x_4083.z, x_4084.w);
    let x_4086 : vec4<f32> = u_xlat9;
    let x_4088 : vec4<f32> = u_xlat11;
    let x_4091 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4086.x, x_4086.y, x_4086.z) * vec3<f32>(x_4088.x, x_4088.y, x_4088.z)) + x_4091);

    continuing {
      let x_4093 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4093 + bitcast<u32>(1i));
    }
  }
  let x_4095 : vec4<f32> = u_xlat6;
  let x_4097 : vec4<f32> = u_xlat5;
  let x_4100 : vec3<f32> = u_xlat1;
  let x_4101 : vec3<f32> = ((vec3<f32>(x_4095.x, x_4095.y, x_4095.z) * vec3<f32>(x_4097.x, x_4097.z, x_4097.w)) + x_4100);
  let x_4102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4101.x, x_4101.y, x_4101.z, x_4102.w);
  let x_4106 : vec3<f32> = u_xlat34;
  let x_4107 : vec4<f32> = u_xlat0;
  let x_4109 : vec3<f32> = (x_4106 + vec3<f32>(x_4107.x, x_4107.y, x_4107.z));
  let x_4110 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4109.x, x_4109.y, x_4109.z, x_4110.w);
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


