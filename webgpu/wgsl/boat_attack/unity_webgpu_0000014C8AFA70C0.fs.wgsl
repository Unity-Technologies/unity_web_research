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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb55 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat76 : f32;

var<private> u_xlatu75 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1965 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

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
  var x_1599 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2109 : f32;
  var x_2120 : f32;
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
  u_xlatb26 = (x_59 == 0.0f);
  let x_65 : vec3<f32> = vs_TEXCOORD7;
  let x_70 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_71 : vec3<f32> = (-(x_65) + x_70);
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_75.x, x_75.y, x_75.z), vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_80);
  let x_82 : f32 = u_xlat51;
  let x_84 : vec4<f32> = u_xlat2;
  let x_86 : vec3<f32> = (vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : bool = u_xlatb26;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb26;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb26;
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
  u_xlat26.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat26;
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
  u_xlat26.x = (x_197 * x_199);
  let x_203 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_203 * x_205) + -(x_208));
  let x_214 : vec4<f32> = x_151.unity_SHC;
  let x_216 : vec3<f32> = u_xlat26;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec3<f32> = u_xlat26;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat26 = (x_222 + x_223);
  let x_225 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_230) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_236 : f32 = u_xlat77;
  u_xlat78 = (-(x_236) + 1.0f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : f32 = u_xlat77;
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
  u_xlat77 = (x_267 * x_269);
  let x_271 : f32 = u_xlat77;
  u_xlat77 = max(x_271, 0.0078125f);
  let x_275 : f32 = u_xlat77;
  let x_276 : f32 = u_xlat77;
  u_xlat79 = (x_275 * x_276);
  let x_280 : f32 = u_xlat0.w;
  let x_281 : f32 = u_xlat78;
  u_xlat75 = (x_280 + x_281);
  let x_283 : f32 = u_xlat75;
  u_xlat75 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat77;
  u_xlat78 = ((x_285 * 4.0f) + 2.0f);
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
      u_xlatb30 = (x_399 == 2.0f);
      let x_401 : bool = u_xlatb30;
      if (x_401) {
        let x_405 : vec4<f32> = vs_TEXCOORD8;
        let x_409 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_414 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_409.z, x_409.w)) + vec2<f32>(0.5f, 0.5f));
        let x_415 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_414.x, x_414.y, x_415.z);
        let x_417 : vec3<f32> = u_xlat30;
        let x_419 : vec2<f32> = floor(vec2<f32>(x_417.x, x_417.y));
        let x_420 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_419.x, x_419.y, x_420.z);
        let x_422 : vec4<f32> = vs_TEXCOORD8;
        let x_425 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_428 : vec3<f32> = u_xlat30;
        let x_431 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + -(vec2<f32>(x_428.x, x_428.y)));
        let x_432 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_435.x, x_435.x, x_435.y, x_435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_440 : vec4<f32> = u_xlat7;
        let x_442 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z) * vec4<f32>(x_442.x, x_442.x, x_442.z, x_442.z));
        let x_447 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_447.y, x_447.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
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
        u_xlat58 = min(vec2<f32>(x_469.x, x_469.y), vec2<f32>(0.0f, 0.0f));
        let x_473 : vec2<f32> = u_xlat58;
        let x_475 : vec2<f32> = u_xlat58;
        let x_477 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_473) * x_475) + vec2<f32>(x_477.x, x_477.y));
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
        let x_496 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_496 + vec2<f32>(1.0f, 1.0f));
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
        let x_517 : vec2<f32> = u_xlat58;
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
        let x_542 : f32 = u_xlat56.x;
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
        let x_559 : f32 = u_xlat56.y;
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
        let x_615 : vec3<f32> = u_xlat30;
        let x_618 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y) * vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y)) + vec4<f32>(x_621.y, x_621.w, x_621.x, x_621.w));
        let x_624 : vec3<f32> = u_xlat30;
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
        let x_643 : vec3<f32> = u_xlat30;
        let x_646 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.y, x_649.z, x_649.y));
        let x_652 : vec3<f32> = u_xlat30;
        let x_655 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.w, x_658.y, x_658.w, x_658.z));
        let x_661 : vec3<f32> = u_xlat30;
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
        u_xlat30.x = (x_682 * x_684);
        let x_688 : vec4<f32> = u_xlat10;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_699 : vec3<f32> = txVec4;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_699.xy, x_699.z);
        u_xlat55 = x_701;
        let x_703 : vec4<f32> = u_xlat10;
        let x_704 : vec2<f32> = vec2<f32>(x_703.z, x_703.w);
        let x_706 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_704.x, x_704.y, x_706);
        let x_714 : vec3<f32> = txVec5;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat80 = x_716;
        let x_717 : f32 = u_xlat80;
        let x_719 : f32 = u_xlat13.y;
        u_xlat80 = (x_717 * x_719);
        let x_722 : f32 = u_xlat13.x;
        let x_723 : f32 = u_xlat55;
        let x_725 : f32 = u_xlat80;
        u_xlat55 = ((x_722 * x_723) + x_725);
        let x_728 : vec4<f32> = u_xlat11;
        let x_729 : vec2<f32> = vec2<f32>(x_728.x, x_728.y);
        let x_731 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_738 : vec3<f32> = txVec6;
        let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_738.xy, x_738.z);
        u_xlat80 = x_740;
        let x_742 : f32 = u_xlat13.z;
        let x_743 : f32 = u_xlat80;
        let x_745 : f32 = u_xlat55;
        u_xlat55 = ((x_742 * x_743) + x_745);
        let x_748 : vec4<f32> = u_xlat9;
        let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
        let x_751 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_749.x, x_749.y, x_751);
        let x_758 : vec3<f32> = txVec7;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_758.xy, x_758.z);
        u_xlat80 = x_760;
        let x_762 : f32 = u_xlat13.w;
        let x_763 : f32 = u_xlat80;
        let x_765 : f32 = u_xlat55;
        u_xlat55 = ((x_762 * x_763) + x_765);
        let x_768 : vec4<f32> = u_xlat12;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec8;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat80 = x_780;
        let x_782 : f32 = u_xlat14.x;
        let x_783 : f32 = u_xlat80;
        let x_785 : f32 = u_xlat55;
        u_xlat55 = ((x_782 * x_783) + x_785);
        let x_788 : vec4<f32> = u_xlat12;
        let x_789 : vec2<f32> = vec2<f32>(x_788.z, x_788.w);
        let x_791 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec9;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat80 = x_800;
        let x_802 : f32 = u_xlat14.y;
        let x_803 : f32 = u_xlat80;
        let x_805 : f32 = u_xlat55;
        u_xlat55 = ((x_802 * x_803) + x_805);
        let x_808 : vec4<f32> = u_xlat9;
        let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
        let x_811 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec10;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_818.xy, x_818.z);
        u_xlat80 = x_820;
        let x_822 : f32 = u_xlat14.z;
        let x_823 : f32 = u_xlat80;
        let x_825 : f32 = u_xlat55;
        u_xlat55 = ((x_822 * x_823) + x_825);
        let x_828 : vec4<f32> = u_xlat8;
        let x_829 : vec2<f32> = vec2<f32>(x_828.x, x_828.y);
        let x_831 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec11;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
        u_xlat80 = x_840;
        let x_842 : f32 = u_xlat14.w;
        let x_843 : f32 = u_xlat80;
        let x_845 : f32 = u_xlat55;
        u_xlat55 = ((x_842 * x_843) + x_845);
        let x_848 : vec4<f32> = u_xlat8;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec12;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat80 = x_860;
        let x_862 : f32 = u_xlat30.x;
        let x_863 : f32 = u_xlat80;
        let x_865 : f32 = u_xlat55;
        u_xlat5.x = ((x_862 * x_863) + x_865);
      } else {
        let x_869 : vec4<f32> = vs_TEXCOORD8;
        let x_872 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_875 : vec2<f32> = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_872.z, x_872.w)) + vec2<f32>(0.5f, 0.5f));
        let x_876 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_875.x, x_875.y, x_876.z);
        let x_878 : vec3<f32> = u_xlat30;
        let x_880 : vec2<f32> = floor(vec2<f32>(x_878.x, x_878.y));
        let x_881 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_880.x, x_880.y, x_881.z);
        let x_883 : vec4<f32> = vs_TEXCOORD8;
        let x_886 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_889 : vec3<f32> = u_xlat30;
        let x_892 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.y) * vec2<f32>(x_886.z, x_886.w)) + -(vec2<f32>(x_889.x, x_889.y)));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_895.x, x_895.x, x_895.y, x_895.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_898 : vec4<f32> = u_xlat7;
        let x_900 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_898.x, x_898.x, x_898.z, x_898.z) * vec4<f32>(x_900.x, x_900.x, x_900.z, x_900.z));
        let x_903 : vec4<f32> = u_xlat8;
        let x_907 : vec2<f32> = (vec2<f32>(x_903.y, x_903.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_907.x, x_908.z, x_907.y);
        let x_910 : vec4<f32> = u_xlat8;
        let x_913 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_910.x, x_910.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_913.x, x_913.y)));
        let x_917 : vec4<f32> = u_xlat6;
        let x_920 : vec2<f32> = (-(vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(1.0f, 1.0f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_921.y, x_920.y, x_921.w);
        let x_923 : vec4<f32> = u_xlat6;
        let x_925 : vec2<f32> = min(vec2<f32>(x_923.x, x_923.y), vec2<f32>(0.0f, 0.0f));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat8;
        let x_931 : vec4<f32> = u_xlat8;
        let x_934 : vec4<f32> = u_xlat7;
        let x_936 : vec2<f32> = ((-(vec2<f32>(x_928.x, x_928.y)) * vec2<f32>(x_931.x, x_931.y)) + vec2<f32>(x_934.x, x_934.z));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = max(vec2<f32>(x_939.x, x_939.y), vec2<f32>(0.0f, 0.0f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat8;
        let x_950 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = ((-(vec2<f32>(x_944.x, x_944.y)) * vec2<f32>(x_947.x, x_947.y)) + vec2<f32>(x_950.y, x_950.w));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_955 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_959 : f32 = u_xlat7.y;
        u_xlat8.z = (x_959 * 0.08163200318813323975f);
        let x_963 : vec2<f32> = u_xlat56;
        let x_966 : vec2<f32> = (vec2<f32>(x_963.y, x_963.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_967 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_969.x, x_969.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_973 : f32 = u_xlat7.w;
        u_xlat10.z = (x_973 * 0.08163200318813323975f);
        let x_977 : f32 = u_xlat10.y;
        u_xlat8.x = x_977;
        let x_979 : vec4<f32> = u_xlat6;
        let x_986 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_987.x, x_986.x, x_987.z, x_986.y);
        let x_989 : vec4<f32> = u_xlat6;
        let x_993 : vec2<f32> = ((vec2<f32>(x_989.x, x_989.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_994 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_993.x, x_994.y, x_993.y, x_994.w);
        let x_997 : f32 = u_xlat56.x;
        u_xlat7.y = x_997;
        let x_1000 : f32 = u_xlat9.y;
        u_xlat7.w = x_1000;
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1002 + x_1003);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1005.y, x_1005.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1009 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1009.x, x_1008.x, x_1009.z, x_1008.y);
        let x_1011 : vec4<f32> = u_xlat6;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1011.y, x_1011.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat56.y;
        u_xlat9.y = x_1018;
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1020 + x_1021);
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1023 / x_1024);
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1026 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1032 / x_1033);
        let x_1035 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1035 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1040 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1037.w, x_1037.x, x_1037.y, x_1037.z) * vec4<f32>(x_1040.x, x_1040.x, x_1040.x, x_1040.x));
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1046 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1043.x, x_1043.w, x_1043.y, x_1043.z) * vec4<f32>(x_1046.y, x_1046.y, x_1046.y, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1050 : vec3<f32> = vec3<f32>(x_1049.y, x_1049.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1051.y, x_1050.y, x_1050.z);
        let x_1054 : f32 = u_xlat9.x;
        u_xlat10.y = x_1054;
        let x_1056 : vec3<f32> = u_xlat30;
        let x_1059 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y) * vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y)) + vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1062.y));
        let x_1065 : vec3<f32> = u_xlat30;
        let x_1068 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1073 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1071.w, x_1071.y));
        let x_1074 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1077 : f32 = u_xlat10.y;
        u_xlat7.y = x_1077;
        let x_1080 : f32 = u_xlat9.z;
        u_xlat10.y = x_1080;
        let x_1082 : vec3<f32> = u_xlat30;
        let x_1085 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.y));
        let x_1092 : vec3<f32> = u_xlat30;
        let x_1095 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.w, x_1098.y));
        let x_1102 : f32 = u_xlat10.y;
        u_xlat7.z = x_1102;
        let x_1104 : vec3<f32> = u_xlat30;
        let x_1107 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) * vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y)) + vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.z));
        let x_1114 : f32 = u_xlat9.w;
        u_xlat10.y = x_1114;
        let x_1117 : vec3<f32> = u_xlat30;
        let x_1120 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1127 : vec3<f32> = u_xlat30;
        let x_1130 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1136 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1135.x, x_1135.y, x_1136.z);
        let x_1139 : f32 = u_xlat10.y;
        u_xlat7.w = x_1139;
        let x_1142 : vec3<f32> = u_xlat30;
        let x_1145 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1150 : vec2<f32> = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(x_1148.x, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1154 : vec3<f32> = vec3<f32>(x_1153.x, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1155.y, x_1154.y, x_1154.z);
        let x_1157 : vec3<f32> = u_xlat30;
        let x_1160 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y) * vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y)) + vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.y));
        let x_1167 : vec3<f32> = u_xlat30;
        let x_1170 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.w, x_1173.y));
        let x_1177 : f32 = u_xlat7.x;
        u_xlat9.x = x_1177;
        let x_1179 : vec3<f32> = u_xlat30;
        let x_1182 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.x, x_1185.y));
        let x_1188 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1187.x, x_1187.y, x_1188.z);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1191.x, x_1191.x, x_1191.x, x_1191.x) * x_1193);
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1196.y, x_1196.y, x_1196.y, x_1196.y) * x_1198);
        let x_1201 : vec4<f32> = u_xlat6;
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1201.z, x_1201.z, x_1201.z, x_1201.z) * x_1203);
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1205.w, x_1205.w, x_1205.w, x_1205.w) * x_1207);
        let x_1210 : vec4<f32> = u_xlat11;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.x, x_1210.y);
        let x_1213 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec13;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1220.xy, x_1220.z);
        u_xlat80 = x_1222;
        let x_1224 : vec4<f32> = u_xlat11;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.z, x_1224.w);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec14;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat7.x = x_1236;
        let x_1239 : f32 = u_xlat7.x;
        let x_1241 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1239 * x_1241);
        let x_1245 : f32 = u_xlat17.x;
        let x_1246 : f32 = u_xlat80;
        let x_1249 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1245 * x_1246) + x_1249);
        let x_1252 : vec4<f32> = u_xlat12;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec15;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat7.x = x_1264;
        let x_1267 : f32 = u_xlat17.z;
        let x_1269 : f32 = u_xlat7.x;
        let x_1271 : f32 = u_xlat80;
        u_xlat80 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat14;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.x, x_1274.y);
        let x_1277 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec16;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat7.x = x_1286;
        let x_1289 : f32 = u_xlat17.w;
        let x_1291 : f32 = u_xlat7.x;
        let x_1293 : f32 = u_xlat80;
        u_xlat80 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec4<f32> = u_xlat13;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec17;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat7.x = x_1308;
        let x_1311 : f32 = u_xlat18.x;
        let x_1313 : f32 = u_xlat7.x;
        let x_1315 : f32 = u_xlat80;
        u_xlat80 = ((x_1311 * x_1313) + x_1315);
        let x_1318 : vec4<f32> = u_xlat13;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.z, x_1318.w);
        let x_1321 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec18;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1328.xy, x_1328.z);
        u_xlat7.x = x_1330;
        let x_1333 : f32 = u_xlat18.y;
        let x_1335 : f32 = u_xlat7.x;
        let x_1337 : f32 = u_xlat80;
        u_xlat80 = ((x_1333 * x_1335) + x_1337);
        let x_1340 : vec2<f32> = u_xlat62;
        let x_1342 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec19;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat7.x = x_1351;
        let x_1354 : f32 = u_xlat18.z;
        let x_1356 : f32 = u_xlat7.x;
        let x_1358 : f32 = u_xlat80;
        u_xlat80 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat14;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.z, x_1361.w);
        let x_1364 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec20;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat7.x = x_1373;
        let x_1376 : f32 = u_xlat18.w;
        let x_1378 : f32 = u_xlat7.x;
        let x_1380 : f32 = u_xlat80;
        u_xlat80 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat15;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec21;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat7.x = x_1395;
        let x_1398 : f32 = u_xlat19.x;
        let x_1400 : f32 = u_xlat7.x;
        let x_1402 : f32 = u_xlat80;
        u_xlat80 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat15;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec22;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat7.x = x_1417;
        let x_1420 : f32 = u_xlat19.y;
        let x_1422 : f32 = u_xlat7.x;
        let x_1424 : f32 = u_xlat80;
        u_xlat80 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec3<f32> = u_xlat32;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec23;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat7.x = x_1439;
        let x_1442 : f32 = u_xlat19.z;
        let x_1444 : f32 = u_xlat7.x;
        let x_1446 : f32 = u_xlat80;
        u_xlat80 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat16;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec24;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat7.x = x_1461;
        let x_1464 : f32 = u_xlat19.w;
        let x_1466 : f32 = u_xlat7.x;
        let x_1468 : f32 = u_xlat80;
        u_xlat80 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat10;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.x, x_1471.y);
        let x_1474 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec25;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat7.x = x_1483;
        let x_1486 : f32 = u_xlat6.x;
        let x_1488 : f32 = u_xlat7.x;
        let x_1490 : f32 = u_xlat80;
        u_xlat80 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat10;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.z, x_1493.w);
        let x_1496 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec26;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat6.x = x_1505;
        let x_1508 : f32 = u_xlat6.y;
        let x_1510 : f32 = u_xlat6.x;
        let x_1512 : f32 = u_xlat80;
        u_xlat80 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec2<f32> = u_xlat59;
        let x_1517 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec27;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
        u_xlat6.x = x_1526;
        let x_1529 : f32 = u_xlat6.z;
        let x_1531 : f32 = u_xlat6.x;
        let x_1533 : f32 = u_xlat80;
        u_xlat80 = ((x_1529 * x_1531) + x_1533);
        let x_1536 : vec3<f32> = u_xlat30;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec28;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat30.x = x_1548;
        let x_1551 : f32 = u_xlat6.w;
        let x_1553 : f32 = u_xlat30.x;
        let x_1555 : f32 = u_xlat80;
        u_xlat5.x = ((x_1551 * x_1553) + x_1555);
      }
    }
  } else {
    let x_1560 : vec4<f32> = vs_TEXCOORD8;
    let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
    let x_1563 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
    let x_1570 : vec3<f32> = txVec29;
    let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
    u_xlat5.x = x_1572;
  }
  let x_1575 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_1575) + 1.0f);
  let x_1580 : f32 = u_xlat5.x;
  let x_1582 : f32 = x_298.x_MainLightShadowParams.x;
  let x_1585 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_1580 * x_1582) + x_1585);
  let x_1589 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_1589);
  let x_1593 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_1593 >= 1.0f);
  let x_1595 : bool = u_xlatb55;
  let x_1596 : bool = u_xlatb30;
  u_xlatb30 = (x_1595 | x_1596);
  let x_1598 : bool = u_xlatb30;
  if (x_1598) {
    x_1599 = 1.0f;
  } else {
    let x_1604 : f32 = u_xlat5.x;
    x_1599 = x_1604;
  }
  let x_1605 : f32 = x_1599;
  u_xlat5.x = x_1605;
  let x_1607 : vec3<f32> = vs_TEXCOORD7;
  let x_1609 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1607 + -(x_1609));
  let x_1612 : vec3<f32> = u_xlat30;
  let x_1613 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_1612, x_1613);
  let x_1617 : f32 = u_xlat30.x;
  let x_1619 : f32 = x_298.x_MainLightShadowParams.z;
  let x_1622 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1617 * x_1619) + x_1622);
  let x_1624 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1624, 0.0f, 1.0f);
  let x_1627 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_1627) + 1.0f);
  let x_1630 : f32 = u_xlat55;
  let x_1631 : f32 = u_xlat80;
  let x_1634 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1630 * x_1631) + x_1634);
  let x_1637 : vec3<f32> = u_xlat3;
  let x_1639 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1637), vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1642 : f32 = u_xlat55;
  let x_1643 : f32 = u_xlat55;
  u_xlat55 = (x_1642 + x_1643);
  let x_1645 : vec4<f32> = u_xlat2;
  let x_1647 : f32 = u_xlat55;
  let x_1651 : vec3<f32> = u_xlat3;
  let x_1653 : vec3<f32> = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.z) * -(vec3<f32>(x_1647, x_1647, x_1647))) + -(x_1651));
  let x_1654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1656 : vec4<f32> = u_xlat2;
  let x_1658 : vec3<f32> = u_xlat3;
  u_xlat55 = dot(vec3<f32>(x_1656.x, x_1656.y, x_1656.z), x_1658);
  let x_1660 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1660, 0.0f, 1.0f);
  let x_1662 : f32 = u_xlat55;
  u_xlat55 = (-(x_1662) + 1.0f);
  let x_1665 : f32 = u_xlat55;
  let x_1666 : f32 = u_xlat55;
  u_xlat55 = (x_1665 * x_1666);
  let x_1668 : f32 = u_xlat55;
  let x_1669 : f32 = u_xlat55;
  u_xlat55 = (x_1668 * x_1669);
  let x_1672 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1672) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1679 : f32 = u_xlat1.x;
  let x_1680 : f32 = u_xlat80;
  u_xlat1.x = (x_1679 * x_1680);
  let x_1684 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1684 * 6.0f);
  let x_1696 : vec4<f32> = u_xlat6;
  let x_1699 : f32 = u_xlat1.x;
  let x_1700 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1696.x, x_1696.y, x_1696.z), x_1699);
  u_xlat6 = x_1700;
  let x_1702 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1702 + -1.0f);
  let x_1707 : f32 = x_151.unity_SpecCube0_HDR.w;
  let x_1709 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1707 * x_1709) + 1.0f);
  let x_1714 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1714, 0.0f);
  let x_1718 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1718);
  let x_1722 : f32 = u_xlat1.x;
  let x_1724 : f32 = x_151.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1722 * x_1724);
  let x_1728 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1728);
  let x_1732 : f32 = u_xlat1.x;
  let x_1734 : f32 = x_151.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1732 * x_1734);
  let x_1737 : vec4<f32> = u_xlat6;
  let x_1739 : vec3<f32> = u_xlat1;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737.x, x_1737.y, x_1737.z) * vec3<f32>(x_1739.x, x_1739.x, x_1739.x));
  let x_1742 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : f32 = u_xlat77;
  let x_1746 : f32 = u_xlat77;
  let x_1750 : vec2<f32> = ((vec2<f32>(x_1744, x_1744) * vec2<f32>(x_1746, x_1746)) + vec2<f32>(-1.0f, 1.0f));
  let x_1751 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
  let x_1754 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1754);
  let x_1757 : vec4<f32> = u_xlat0;
  let x_1760 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1757.x, x_1757.y, x_1757.z)) + vec3<f32>(x_1760, x_1760, x_1760));
  let x_1763 : f32 = u_xlat55;
  let x_1765 : vec3<f32> = u_xlat32;
  let x_1767 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1763, x_1763, x_1763) * x_1765) + vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec3<f32> = u_xlat1;
  let x_1772 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1770.x, x_1770.x, x_1770.x) * x_1772);
  let x_1774 : vec4<f32> = u_xlat6;
  let x_1776 : vec3<f32> = u_xlat32;
  let x_1777 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) * x_1776);
  let x_1778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : vec3<f32> = u_xlat26;
  let x_1781 : vec3<f32> = u_xlat4;
  let x_1783 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_1780 * x_1781) + vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1787 : f32 = u_xlat5.x;
  let x_1789 : f32 = x_151.unity_LightData.z;
  u_xlat75 = (x_1787 * x_1789);
  let x_1792 : vec4<f32> = u_xlat2;
  let x_1795 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_1792.x, x_1792.y, x_1792.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1798, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat75;
  let x_1801 : f32 = u_xlat76;
  u_xlat75 = (x_1800 * x_1801);
  let x_1803 : f32 = u_xlat75;
  let x_1806 : vec4<f32> = x_29.x_MainLightColor;
  let x_1808 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1808.x, x_1809.y, x_1808.y, x_1808.z);
  let x_1811 : vec3<f32> = u_xlat3;
  let x_1813 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1815 : vec3<f32> = (x_1811 + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec4<f32> = u_xlat6;
  let x_1820 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1818.x, x_1818.y, x_1818.z), vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1823 : f32 = u_xlat75;
  u_xlat75 = max(x_1823, 1.17549435e-38f);
  let x_1826 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1826);
  let x_1828 : f32 = u_xlat75;
  let x_1830 : vec4<f32> = u_xlat6;
  let x_1832 : vec3<f32> = (vec3<f32>(x_1828, x_1828, x_1828) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1835 : vec4<f32> = u_xlat2;
  let x_1837 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1835.x, x_1835.y, x_1835.z), vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
  let x_1840 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1840, 0.0f, 1.0f);
  let x_1843 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1845 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_1843.x, x_1843.y, x_1843.z), vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
  let x_1848 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1848, 0.0f, 1.0f);
  let x_1850 : f32 = u_xlat75;
  let x_1851 : f32 = u_xlat75;
  u_xlat75 = (x_1850 * x_1851);
  let x_1853 : f32 = u_xlat75;
  let x_1855 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1853 * x_1855) + 1.00001001358032226562f);
  let x_1859 : f32 = u_xlat76;
  let x_1860 : f32 = u_xlat76;
  u_xlat76 = (x_1859 * x_1860);
  let x_1862 : f32 = u_xlat75;
  let x_1863 : f32 = u_xlat75;
  u_xlat75 = (x_1862 * x_1863);
  let x_1865 : f32 = u_xlat76;
  u_xlat76 = max(x_1865, 0.10000000149011611938f);
  let x_1868 : f32 = u_xlat75;
  let x_1869 : f32 = u_xlat76;
  u_xlat75 = (x_1868 * x_1869);
  let x_1871 : f32 = u_xlat78;
  let x_1872 : f32 = u_xlat75;
  u_xlat75 = (x_1871 * x_1872);
  let x_1874 : f32 = u_xlat79;
  let x_1875 : f32 = u_xlat75;
  u_xlat75 = (x_1874 / x_1875);
  let x_1877 : vec4<f32> = u_xlat0;
  let x_1879 : f32 = u_xlat75;
  let x_1882 : vec3<f32> = u_xlat4;
  let x_1883 : vec3<f32> = ((vec3<f32>(x_1877.x, x_1877.y, x_1877.z) * vec3<f32>(x_1879, x_1879, x_1879)) + x_1882);
  let x_1884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1888 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1890 : f32 = x_151.unity_LightData.y;
  u_xlat75 = min(x_1888, x_1890);
  let x_1894 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1894));
  let x_1898 : f32 = u_xlat30.x;
  let x_1901 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_1904 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_1898 * x_1901) + x_1904);
  let x_1906 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1906, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1918 : u32 = u_xlatu_loop_1;
    let x_1919 : u32 = u_xlatu75;
    if ((x_1918 < x_1919)) {
    } else {
      break;
    }
    let x_1922 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1922 >> 2u);
    let x_1926 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1926 & 3u));
    let x_1929 : u32 = u_xlatu30;
    let x_1932 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_1929)];
    let x_1942 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1947 : vec4<u32> = indexable[x_1942];
    u_xlat30.x = dot(x_1932, bitcast<vec4<f32>>(x_1947));
    let x_1953 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_1953);
    let x_1955 : vec3<f32> = vs_TEXCOORD7;
    let x_1966 : i32 = u_xlati30;
    let x_1968 : vec4<f32> = x_1965.x_AdditionalLightsPosition[x_1966];
    let x_1971 : i32 = u_xlati30;
    let x_1973 : vec4<f32> = x_1965.x_AdditionalLightsPosition[x_1971];
    let x_1975 : vec3<f32> = ((-(x_1955) * vec3<f32>(x_1968.w, x_1968.w, x_1968.w)) + vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
    let x_1976 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
    let x_1979 : vec4<f32> = u_xlat8;
    let x_1981 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1984 : f32 = u_xlat81;
    u_xlat81 = max(x_1984, 0.00006103515625f);
    let x_1988 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_1988);
    let x_1990 : f32 = u_xlat83;
    let x_1992 : vec4<f32> = u_xlat8;
    let x_1994 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1995 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
    let x_1998 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_1998);
    let x_2000 : f32 = u_xlat81;
    let x_2001 : i32 = u_xlati30;
    let x_2003 : f32 = x_1965.x_AdditionalLightsAttenuation[x_2001].x;
    u_xlat81 = (x_2000 * x_2003);
    let x_2005 : f32 = u_xlat81;
    let x_2007 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2005) * x_2007) + 1.0f);
    let x_2010 : f32 = u_xlat81;
    u_xlat81 = max(x_2010, 0.0f);
    let x_2012 : f32 = u_xlat81;
    let x_2013 : f32 = u_xlat81;
    u_xlat81 = (x_2012 * x_2013);
    let x_2015 : f32 = u_xlat81;
    let x_2016 : f32 = u_xlat84;
    u_xlat81 = (x_2015 * x_2016);
    let x_2018 : i32 = u_xlati30;
    let x_2020 : vec4<f32> = x_1965.x_AdditionalLightsSpotDir[x_2018];
    let x_2022 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2020.x, x_2020.y, x_2020.z), vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
    let x_2025 : f32 = u_xlat84;
    let x_2026 : i32 = u_xlati30;
    let x_2028 : f32 = x_1965.x_AdditionalLightsAttenuation[x_2026].z;
    let x_2030 : i32 = u_xlati30;
    let x_2032 : f32 = x_1965.x_AdditionalLightsAttenuation[x_2030].w;
    u_xlat84 = ((x_2025 * x_2028) + x_2032);
    let x_2034 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2034, 0.0f, 1.0f);
    let x_2036 : f32 = u_xlat84;
    let x_2037 : f32 = u_xlat84;
    u_xlat84 = (x_2036 * x_2037);
    let x_2039 : f32 = u_xlat81;
    let x_2040 : f32 = u_xlat84;
    u_xlat81 = (x_2039 * x_2040);
    let x_2044 : i32 = u_xlati30;
    let x_2046 : f32 = x_298.x_AdditionalShadowParams[x_2044].w;
    u_xlati84 = i32(x_2046);
    let x_2051 : i32 = u_xlati84;
    u_xlatb10.x = (x_2051 >= 0i);
    let x_2055 : bool = u_xlatb10.x;
    if (x_2055) {
      let x_2059 : i32 = u_xlati30;
      let x_2061 : f32 = x_298.x_AdditionalShadowParams[x_2059].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2061, x_2061, x_2061, x_2061))));
      let x_2068 : bool = u_xlatb10.x;
      if (x_2068) {
        let x_2071 : vec4<f32> = u_xlat9;
        let x_2074 : vec4<f32> = u_xlat9;
        let x_2077 : vec4<bool> = (abs(vec4<f32>(x_2071.z, x_2071.z, x_2071.y, x_2071.z)) >= abs(vec4<f32>(x_2074.x, x_2074.y, x_2074.x, x_2074.x)));
        u_xlatb10 = vec3<bool>(x_2077.x, x_2077.y, x_2077.z);
        let x_2080 : bool = u_xlatb10.y;
        let x_2082 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2080 & x_2082);
        let x_2086 : vec4<f32> = u_xlat9;
        let x_2089 : vec4<bool> = (-(vec4<f32>(x_2086.z, x_2086.y, x_2086.x, x_2086.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2089.x, x_2089.y, x_2089.z);
        let x_2093 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2093);
        let x_2098 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2098);
        let x_2103 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2103);
        let x_2108 : bool = u_xlatb10.z;
        if (x_2108) {
          let x_2113 : f32 = u_xlat35.z;
          x_2109 = x_2113;
        } else {
          let x_2116 : f32 = u_xlat11.x;
          x_2109 = x_2116;
        }
        let x_2117 : f32 = x_2109;
        u_xlat60 = x_2117;
        let x_2119 : bool = u_xlatb10.x;
        if (x_2119) {
          let x_2124 : f32 = u_xlat35.x;
          x_2120 = x_2124;
        } else {
          let x_2126 : f32 = u_xlat60;
          x_2120 = x_2126;
        }
        let x_2127 : f32 = x_2120;
        u_xlat10.x = x_2127;
        let x_2129 : i32 = u_xlati30;
        let x_2131 : f32 = x_298.x_AdditionalShadowParams[x_2129].w;
        u_xlat35.x = trunc(x_2131);
        let x_2135 : f32 = u_xlat10.x;
        let x_2137 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2135 + x_2137);
        let x_2141 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2141);
      }
      let x_2143 : i32 = u_xlati84;
      u_xlati84 = (x_2143 << bitcast<u32>(2i));
      let x_2145 : vec3<f32> = vs_TEXCOORD7;
      let x_2148 : i32 = u_xlati84;
      let x_2151 : i32 = u_xlati84;
      let x_2155 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2148 + 1i) / 4i)][((x_2151 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2145.y, x_2145.y, x_2145.y, x_2145.y) * x_2155);
      let x_2157 : i32 = u_xlati84;
      let x_2159 : i32 = u_xlati84;
      let x_2162 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_2157 / 4i)][(x_2159 % 4i)];
      let x_2163 : vec3<f32> = vs_TEXCOORD7;
      let x_2166 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2162 * vec4<f32>(x_2163.x, x_2163.x, x_2163.x, x_2163.x)) + x_2166);
      let x_2168 : i32 = u_xlati84;
      let x_2171 : i32 = u_xlati84;
      let x_2175 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2168 + 2i) / 4i)][((x_2171 + 2i) % 4i)];
      let x_2176 : vec3<f32> = vs_TEXCOORD7;
      let x_2179 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2175 * vec4<f32>(x_2176.z, x_2176.z, x_2176.z, x_2176.z)) + x_2179);
      let x_2181 : vec4<f32> = u_xlat10;
      let x_2182 : i32 = u_xlati84;
      let x_2185 : i32 = u_xlati84;
      let x_2189 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2182 + 3i) / 4i)][((x_2185 + 3i) % 4i)];
      u_xlat10 = (x_2181 + x_2189);
      let x_2191 : vec4<f32> = u_xlat10;
      let x_2193 : vec4<f32> = u_xlat10;
      let x_2195 : vec3<f32> = (vec3<f32>(x_2191.x, x_2191.y, x_2191.z) / vec3<f32>(x_2193.w, x_2193.w, x_2193.w));
      let x_2196 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
      let x_2199 : i32 = u_xlati30;
      let x_2201 : f32 = x_298.x_AdditionalShadowParams[x_2199].y;
      u_xlatb84 = (0.0f < x_2201);
      let x_2203 : bool = u_xlatb84;
      if (x_2203) {
        let x_2206 : i32 = u_xlati30;
        let x_2208 : f32 = x_298.x_AdditionalShadowParams[x_2206].y;
        u_xlatb84 = (1.0f == x_2208);
        let x_2210 : bool = u_xlatb84;
        if (x_2210) {
          let x_2213 : vec4<f32> = u_xlat10;
          let x_2217 : vec4<f32> = x_298.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2213.x, x_2213.y, x_2213.x, x_2213.y) + x_2217);
          let x_2220 : vec4<f32> = u_xlat11;
          let x_2221 : vec2<f32> = vec2<f32>(x_2220.x, x_2220.y);
          let x_2223 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
          let x_2231 : vec3<f32> = txVec30;
          let x_2233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
          u_xlat12.x = x_2233;
          let x_2236 : vec4<f32> = u_xlat11;
          let x_2237 : vec2<f32> = vec2<f32>(x_2236.z, x_2236.w);
          let x_2239 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2237.x, x_2237.y, x_2239);
          let x_2246 : vec3<f32> = txVec31;
          let x_2248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2246.xy, x_2246.z);
          u_xlat12.y = x_2248;
          let x_2250 : vec4<f32> = u_xlat10;
          let x_2254 : vec4<f32> = x_298.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2250.x, x_2250.y, x_2250.x, x_2250.y) + x_2254);
          let x_2257 : vec4<f32> = u_xlat11;
          let x_2258 : vec2<f32> = vec2<f32>(x_2257.x, x_2257.y);
          let x_2260 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
          let x_2267 : vec3<f32> = txVec32;
          let x_2269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2267.xy, x_2267.z);
          u_xlat12.z = x_2269;
          let x_2272 : vec4<f32> = u_xlat11;
          let x_2273 : vec2<f32> = vec2<f32>(x_2272.z, x_2272.w);
          let x_2275 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2273.x, x_2273.y, x_2275);
          let x_2282 : vec3<f32> = txVec33;
          let x_2284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
          u_xlat12.w = x_2284;
          let x_2286 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2286, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2290 : i32 = u_xlati30;
          let x_2292 : f32 = x_298.x_AdditionalShadowParams[x_2290].y;
          u_xlatb85 = (2.0f == x_2292);
          let x_2294 : bool = u_xlatb85;
          if (x_2294) {
            let x_2297 : vec4<f32> = u_xlat10;
            let x_2301 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2304 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.y) * vec2<f32>(x_2301.z, x_2301.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2305 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2304.x, x_2304.y, x_2305.z, x_2305.w);
            let x_2307 : vec4<f32> = u_xlat11;
            let x_2309 : vec2<f32> = floor(vec2<f32>(x_2307.x, x_2307.y));
            let x_2310 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2309.x, x_2309.y, x_2310.z, x_2310.w);
            let x_2313 : vec4<f32> = u_xlat10;
            let x_2316 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2319 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(x_2316.z, x_2316.w)) + -(vec2<f32>(x_2319.x, x_2319.y)));
            let x_2323 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2323.x, x_2323.x, x_2323.y, x_2323.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2326 : vec4<f32> = u_xlat12;
            let x_2328 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2326.x, x_2326.x, x_2326.z, x_2326.z) * vec4<f32>(x_2328.x, x_2328.x, x_2328.z, x_2328.z));
            let x_2331 : vec4<f32> = u_xlat13;
            let x_2333 : vec2<f32> = (vec2<f32>(x_2331.y, x_2331.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2334 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2333.x, x_2334.y, x_2333.y, x_2334.w);
            let x_2336 : vec4<f32> = u_xlat13;
            let x_2339 : vec2<f32> = u_xlat61;
            let x_2341 : vec2<f32> = ((vec2<f32>(x_2336.x, x_2336.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2339));
            let x_2342 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
            let x_2345 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2345) + vec2<f32>(1.0f, 1.0f));
            let x_2348 : vec2<f32> = u_xlat61;
            let x_2349 : vec2<f32> = min(x_2348, vec2<f32>(0.0f, 0.0f));
            let x_2350 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
            let x_2352 : vec4<f32> = u_xlat14;
            let x_2355 : vec4<f32> = u_xlat14;
            let x_2358 : vec2<f32> = u_xlat63;
            let x_2359 : vec2<f32> = ((-(vec2<f32>(x_2352.x, x_2352.y)) * vec2<f32>(x_2355.x, x_2355.y)) + x_2358);
            let x_2360 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
            let x_2362 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2362, vec2<f32>(0.0f, 0.0f));
            let x_2364 : vec2<f32> = u_xlat61;
            let x_2366 : vec2<f32> = u_xlat61;
            let x_2368 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2364) * x_2366) + vec2<f32>(x_2368.y, x_2368.w));
            let x_2371 : vec4<f32> = u_xlat14;
            let x_2373 : vec2<f32> = (vec2<f32>(x_2371.x, x_2371.y) + vec2<f32>(1.0f, 1.0f));
            let x_2374 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2373.x, x_2373.y, x_2374.z, x_2374.w);
            let x_2376 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2376 + vec2<f32>(1.0f, 1.0f));
            let x_2378 : vec4<f32> = u_xlat13;
            let x_2380 : vec2<f32> = (vec2<f32>(x_2378.x, x_2378.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2381 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2380.x, x_2380.y, x_2381.z, x_2381.w);
            let x_2383 : vec2<f32> = u_xlat63;
            let x_2384 : vec2<f32> = (x_2383 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2385 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat14;
            let x_2389 : vec2<f32> = (vec2<f32>(x_2387.x, x_2387.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2390 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2392 : vec2<f32> = u_xlat61;
            let x_2393 : vec2<f32> = (x_2392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2394 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2396.y, x_2396.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2400 : f32 = u_xlat14.x;
            u_xlat15.z = x_2400;
            let x_2403 : f32 = u_xlat61.x;
            u_xlat15.w = x_2403;
            let x_2406 : f32 = u_xlat16.x;
            u_xlat13.z = x_2406;
            let x_2409 : f32 = u_xlat12.x;
            u_xlat13.w = x_2409;
            let x_2411 : vec4<f32> = u_xlat13;
            let x_2413 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2411.z, x_2411.w, x_2411.x, x_2411.z) + vec4<f32>(x_2413.z, x_2413.w, x_2413.x, x_2413.z));
            let x_2417 : f32 = u_xlat15.y;
            u_xlat14.z = x_2417;
            let x_2420 : f32 = u_xlat61.y;
            u_xlat14.w = x_2420;
            let x_2423 : f32 = u_xlat13.y;
            u_xlat16.z = x_2423;
            let x_2426 : f32 = u_xlat12.z;
            u_xlat16.w = x_2426;
            let x_2428 : vec4<f32> = u_xlat14;
            let x_2430 : vec4<f32> = u_xlat16;
            let x_2432 : vec3<f32> = (vec3<f32>(x_2428.z, x_2428.y, x_2428.w) + vec3<f32>(x_2430.z, x_2430.y, x_2430.w));
            let x_2433 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
            let x_2435 : vec4<f32> = u_xlat13;
            let x_2437 : vec4<f32> = u_xlat17;
            let x_2439 : vec3<f32> = (vec3<f32>(x_2435.x, x_2435.z, x_2435.w) / vec3<f32>(x_2437.z, x_2437.w, x_2437.y));
            let x_2440 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
            let x_2442 : vec4<f32> = u_xlat13;
            let x_2444 : vec3<f32> = (vec3<f32>(x_2442.x, x_2442.y, x_2442.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2445 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat16;
            let x_2449 : vec4<f32> = u_xlat12;
            let x_2451 : vec3<f32> = (vec3<f32>(x_2447.z, x_2447.y, x_2447.w) / vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
            let x_2452 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
            let x_2454 : vec4<f32> = u_xlat14;
            let x_2456 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.y, x_2454.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat13;
            let x_2462 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2464 : vec3<f32> = (vec3<f32>(x_2459.y, x_2459.x, x_2459.z) * vec3<f32>(x_2462.x, x_2462.x, x_2462.x));
            let x_2465 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat14;
            let x_2470 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2472 : vec3<f32> = (vec3<f32>(x_2467.x, x_2467.y, x_2467.z) * vec3<f32>(x_2470.y, x_2470.y, x_2470.y));
            let x_2473 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
            let x_2476 : f32 = u_xlat14.x;
            u_xlat13.w = x_2476;
            let x_2478 : vec4<f32> = u_xlat11;
            let x_2481 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2484 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2478.x, x_2478.y, x_2478.x, x_2478.y) * vec4<f32>(x_2481.x, x_2481.y, x_2481.x, x_2481.y)) + vec4<f32>(x_2484.y, x_2484.w, x_2484.x, x_2484.w));
            let x_2487 : vec4<f32> = u_xlat11;
            let x_2490 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2493 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(x_2490.x, x_2490.y)) + vec2<f32>(x_2493.z, x_2493.w));
            let x_2497 : f32 = u_xlat13.y;
            u_xlat14.w = x_2497;
            let x_2499 : vec4<f32> = u_xlat14;
            let x_2500 : vec2<f32> = vec2<f32>(x_2499.y, x_2499.z);
            let x_2501 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2501.x, x_2500.x, x_2501.z, x_2500.y);
            let x_2503 : vec4<f32> = u_xlat11;
            let x_2506 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2509 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y) * vec4<f32>(x_2506.x, x_2506.y, x_2506.x, x_2506.y)) + vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2509.y));
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2515 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2518 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2512.x, x_2512.y, x_2512.x, x_2512.y) * vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y)) + vec4<f32>(x_2518.w, x_2518.y, x_2518.w, x_2518.z));
            let x_2521 : vec4<f32> = u_xlat11;
            let x_2524 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2527 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2521.x, x_2521.y, x_2521.x, x_2521.y) * vec4<f32>(x_2524.x, x_2524.y, x_2524.x, x_2524.y)) + vec4<f32>(x_2527.x, x_2527.w, x_2527.z, x_2527.w));
            let x_2530 : vec4<f32> = u_xlat12;
            let x_2532 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2530.x, x_2530.x, x_2530.x, x_2530.y) * vec4<f32>(x_2532.z, x_2532.w, x_2532.y, x_2532.z));
            let x_2535 : vec4<f32> = u_xlat12;
            let x_2537 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2535.y, x_2535.y, x_2535.z, x_2535.z) * x_2537);
            let x_2541 : f32 = u_xlat12.z;
            let x_2543 : f32 = u_xlat17.y;
            u_xlat85 = (x_2541 * x_2543);
            let x_2546 : vec4<f32> = u_xlat15;
            let x_2547 : vec2<f32> = vec2<f32>(x_2546.x, x_2546.y);
            let x_2549 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2547.x, x_2547.y, x_2549);
            let x_2556 : vec3<f32> = txVec34;
            let x_2558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2556.xy, x_2556.z);
            u_xlat11.x = x_2558;
            let x_2561 : vec4<f32> = u_xlat15;
            let x_2562 : vec2<f32> = vec2<f32>(x_2561.z, x_2561.w);
            let x_2564 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
            let x_2572 : vec3<f32> = txVec35;
            let x_2574 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2572.xy, x_2572.z);
            u_xlat36 = x_2574;
            let x_2575 : f32 = u_xlat36;
            let x_2577 : f32 = u_xlat18.y;
            u_xlat36 = (x_2575 * x_2577);
            let x_2580 : f32 = u_xlat18.x;
            let x_2582 : f32 = u_xlat11.x;
            let x_2584 : f32 = u_xlat36;
            u_xlat11.x = ((x_2580 * x_2582) + x_2584);
            let x_2588 : vec2<f32> = u_xlat61;
            let x_2590 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2588.x, x_2588.y, x_2590);
            let x_2597 : vec3<f32> = txVec36;
            let x_2599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2597.xy, x_2597.z);
            u_xlat36 = x_2599;
            let x_2601 : f32 = u_xlat18.z;
            let x_2602 : f32 = u_xlat36;
            let x_2605 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2601 * x_2602) + x_2605);
            let x_2609 : vec4<f32> = u_xlat14;
            let x_2610 : vec2<f32> = vec2<f32>(x_2609.x, x_2609.y);
            let x_2612 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2610.x, x_2610.y, x_2612);
            let x_2619 : vec3<f32> = txVec37;
            let x_2621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2619.xy, x_2619.z);
            u_xlat36 = x_2621;
            let x_2623 : f32 = u_xlat18.w;
            let x_2624 : f32 = u_xlat36;
            let x_2627 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2623 * x_2624) + x_2627);
            let x_2631 : vec4<f32> = u_xlat16;
            let x_2632 : vec2<f32> = vec2<f32>(x_2631.x, x_2631.y);
            let x_2634 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2632.x, x_2632.y, x_2634);
            let x_2641 : vec3<f32> = txVec38;
            let x_2643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2641.xy, x_2641.z);
            u_xlat36 = x_2643;
            let x_2645 : f32 = u_xlat19.x;
            let x_2646 : f32 = u_xlat36;
            let x_2649 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2645 * x_2646) + x_2649);
            let x_2653 : vec4<f32> = u_xlat16;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.z, x_2653.w);
            let x_2656 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec39;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat36 = x_2665;
            let x_2667 : f32 = u_xlat19.y;
            let x_2668 : f32 = u_xlat36;
            let x_2671 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2667 * x_2668) + x_2671);
            let x_2675 : vec4<f32> = u_xlat14;
            let x_2676 : vec2<f32> = vec2<f32>(x_2675.z, x_2675.w);
            let x_2678 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
            let x_2685 : vec3<f32> = txVec40;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat36 = x_2687;
            let x_2689 : f32 = u_xlat19.z;
            let x_2690 : f32 = u_xlat36;
            let x_2693 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2689 * x_2690) + x_2693);
            let x_2697 : vec4<f32> = u_xlat13;
            let x_2698 : vec2<f32> = vec2<f32>(x_2697.x, x_2697.y);
            let x_2700 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
            let x_2707 : vec3<f32> = txVec41;
            let x_2709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
            u_xlat36 = x_2709;
            let x_2711 : f32 = u_xlat19.w;
            let x_2712 : f32 = u_xlat36;
            let x_2715 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2711 * x_2712) + x_2715);
            let x_2719 : vec4<f32> = u_xlat13;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec42;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat36 = x_2731;
            let x_2732 : f32 = u_xlat85;
            let x_2733 : f32 = u_xlat36;
            let x_2736 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2732 * x_2733) + x_2736);
          } else {
            let x_2739 : vec4<f32> = u_xlat10;
            let x_2742 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2745 : vec2<f32> = ((vec2<f32>(x_2739.x, x_2739.y) * vec2<f32>(x_2742.z, x_2742.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2746 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat11;
            let x_2750 : vec2<f32> = floor(vec2<f32>(x_2748.x, x_2748.y));
            let x_2751 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat10;
            let x_2756 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2759 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2753.x, x_2753.y) * vec2<f32>(x_2756.z, x_2756.w)) + -(vec2<f32>(x_2759.x, x_2759.y)));
            let x_2763 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2763.x, x_2763.x, x_2763.y, x_2763.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2766 : vec4<f32> = u_xlat12;
            let x_2768 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2766.x, x_2766.x, x_2766.z, x_2766.z) * vec4<f32>(x_2768.x, x_2768.x, x_2768.z, x_2768.z));
            let x_2771 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = (vec2<f32>(x_2771.y, x_2771.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2774 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2774.x, x_2773.x, x_2774.z, x_2773.y);
            let x_2776 : vec4<f32> = u_xlat13;
            let x_2779 : vec2<f32> = u_xlat61;
            let x_2781 : vec2<f32> = ((vec2<f32>(x_2776.x, x_2776.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2779));
            let x_2782 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2781.x, x_2782.y, x_2781.y, x_2782.w);
            let x_2784 : vec2<f32> = u_xlat61;
            let x_2786 : vec2<f32> = (-(x_2784) + vec2<f32>(1.0f, 1.0f));
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
            let x_2789 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2789, vec2<f32>(0.0f, 0.0f));
            let x_2791 : vec2<f32> = u_xlat63;
            let x_2793 : vec2<f32> = u_xlat63;
            let x_2795 : vec4<f32> = u_xlat13;
            let x_2797 : vec2<f32> = ((-(x_2791) * x_2793) + vec2<f32>(x_2795.x, x_2795.y));
            let x_2798 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
            let x_2800 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2800, vec2<f32>(0.0f, 0.0f));
            let x_2803 : vec2<f32> = u_xlat63;
            let x_2805 : vec2<f32> = u_xlat63;
            let x_2807 : vec4<f32> = u_xlat12;
            let x_2809 : vec2<f32> = ((-(x_2803) * x_2805) + vec2<f32>(x_2807.y, x_2807.w));
            let x_2810 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2809.x, x_2810.y, x_2809.y);
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2815 : vec2<f32> = (vec2<f32>(x_2812.x, x_2812.y) + vec2<f32>(2.0f, 2.0f));
            let x_2816 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2815.x, x_2815.y, x_2816.z, x_2816.w);
            let x_2818 : vec3<f32> = u_xlat37;
            let x_2820 : vec2<f32> = (vec2<f32>(x_2818.x, x_2818.z) + vec2<f32>(2.0f, 2.0f));
            let x_2821 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2821.x, x_2820.x, x_2821.z, x_2820.y);
            let x_2824 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2824 * 0.08163200318813323975f);
            let x_2827 : vec4<f32> = u_xlat12;
            let x_2830 : vec3<f32> = (vec3<f32>(x_2827.z, x_2827.x, x_2827.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2831 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat13;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2836 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2839 : f32 = u_xlat16.y;
            u_xlat15.x = x_2839;
            let x_2841 : vec2<f32> = u_xlat61;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2845 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2845.x, x_2844.x, x_2845.z, x_2844.y);
            let x_2847 : vec2<f32> = u_xlat61;
            let x_2850 : vec2<f32> = ((vec2<f32>(x_2847.x, x_2847.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2850.x, x_2851.y, x_2850.y, x_2851.w);
            let x_2854 : f32 = u_xlat12.x;
            u_xlat13.y = x_2854;
            let x_2857 : f32 = u_xlat14.y;
            u_xlat13.w = x_2857;
            let x_2859 : vec4<f32> = u_xlat13;
            let x_2860 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2859 + x_2860);
            let x_2862 : vec2<f32> = u_xlat61;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.y, x_2862.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2866 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2866.x, x_2865.x, x_2866.z, x_2865.y);
            let x_2868 : vec2<f32> = u_xlat61;
            let x_2871 : vec2<f32> = ((vec2<f32>(x_2868.y, x_2868.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2872 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2871.x, x_2872.y, x_2871.y, x_2872.w);
            let x_2875 : f32 = u_xlat12.y;
            u_xlat14.y = x_2875;
            let x_2877 : vec4<f32> = u_xlat14;
            let x_2878 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2877 + x_2878);
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2881 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2880 / x_2881);
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2883 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2886 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2885 / x_2886);
            let x_2888 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2888 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2890 : vec4<f32> = u_xlat13;
            let x_2893 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2890.w, x_2890.x, x_2890.y, x_2890.z) * vec4<f32>(x_2893.x, x_2893.x, x_2893.x, x_2893.x));
            let x_2896 : vec4<f32> = u_xlat14;
            let x_2899 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2896.x, x_2896.w, x_2896.y, x_2896.z) * vec4<f32>(x_2899.y, x_2899.y, x_2899.y, x_2899.y));
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2903 : vec3<f32> = vec3<f32>(x_2902.y, x_2902.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2903.x, x_2904.y, x_2903.y, x_2903.z);
            let x_2907 : f32 = u_xlat14.x;
            u_xlat16.y = x_2907;
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.y) * vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y)) + vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2915.y));
            let x_2918 : vec4<f32> = u_xlat11;
            let x_2921 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2924 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2918.x, x_2918.y) * vec2<f32>(x_2921.x, x_2921.y)) + vec2<f32>(x_2924.w, x_2924.y));
            let x_2928 : f32 = u_xlat16.y;
            u_xlat13.y = x_2928;
            let x_2931 : f32 = u_xlat14.z;
            u_xlat16.y = x_2931;
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat11;
            let x_2945 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat16;
            let x_2950 : vec2<f32> = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2948.w, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2954 : f32 = u_xlat16.y;
            u_xlat13.z = x_2954;
            let x_2957 : vec4<f32> = u_xlat11;
            let x_2960 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) * vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y)) + vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.z));
            let x_2967 : f32 = u_xlat14.w;
            u_xlat16.y = x_2967;
            let x_2970 : vec4<f32> = u_xlat11;
            let x_2973 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y) * vec4<f32>(x_2973.x, x_2973.y, x_2973.x, x_2973.y)) + vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2976.y));
            let x_2980 : vec4<f32> = u_xlat11;
            let x_2983 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2980.x, x_2980.y) * vec2<f32>(x_2983.x, x_2983.y)) + vec2<f32>(x_2986.w, x_2986.y));
            let x_2990 : f32 = u_xlat16.y;
            u_xlat13.w = x_2990;
            let x_2993 : vec4<f32> = u_xlat11;
            let x_2996 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2993.x, x_2993.y) * vec2<f32>(x_2996.x, x_2996.y)) + vec2<f32>(x_2999.x, x_2999.w));
            let x_3002 : vec4<f32> = u_xlat16;
            let x_3003 : vec3<f32> = vec3<f32>(x_3002.x, x_3002.z, x_3002.w);
            let x_3004 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3003.x, x_3004.y, x_3003.y, x_3003.z);
            let x_3006 : vec4<f32> = u_xlat11;
            let x_3009 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) * vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y)) + vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3012.y));
            let x_3016 : vec4<f32> = u_xlat11;
            let x_3019 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(x_3019.x, x_3019.y)) + vec2<f32>(x_3022.w, x_3022.y));
            let x_3026 : f32 = u_xlat13.x;
            u_xlat14.x = x_3026;
            let x_3028 : vec4<f32> = u_xlat11;
            let x_3031 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3034 : vec4<f32> = u_xlat14;
            let x_3036 : vec2<f32> = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3031.x, x_3031.y)) + vec2<f32>(x_3034.x, x_3034.y));
            let x_3037 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3036.x, x_3036.y, x_3037.z, x_3037.w);
            let x_3040 : vec4<f32> = u_xlat12;
            let x_3042 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3040.x, x_3040.x, x_3040.x, x_3040.x) * x_3042);
            let x_3045 : vec4<f32> = u_xlat12;
            let x_3047 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3045.y, x_3045.y, x_3045.y, x_3045.y) * x_3047);
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3052 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3050.z, x_3050.z, x_3050.z, x_3050.z) * x_3052);
            let x_3054 : vec4<f32> = u_xlat12;
            let x_3056 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3054.w, x_3054.w, x_3054.w, x_3054.w) * x_3056);
            let x_3059 : vec4<f32> = u_xlat17;
            let x_3060 : vec2<f32> = vec2<f32>(x_3059.x, x_3059.y);
            let x_3062 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
            let x_3069 : vec3<f32> = txVec43;
            let x_3071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
            u_xlat85 = x_3071;
            let x_3073 : vec4<f32> = u_xlat17;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
            let x_3076 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3083 : vec3<f32> = txVec44;
            let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
            u_xlat13.x = x_3085;
            let x_3088 : f32 = u_xlat13.x;
            let x_3090 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3088 * x_3090);
            let x_3094 : f32 = u_xlat22.x;
            let x_3095 : f32 = u_xlat85;
            let x_3098 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3094 * x_3095) + x_3098);
            let x_3101 : vec2<f32> = u_xlat61;
            let x_3103 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec45;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat61.x = x_3112;
            let x_3115 : f32 = u_xlat22.z;
            let x_3117 : f32 = u_xlat61.x;
            let x_3119 : f32 = u_xlat85;
            u_xlat85 = ((x_3115 * x_3117) + x_3119);
            let x_3122 : vec4<f32> = u_xlat20;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.x, x_3122.y);
            let x_3125 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec46;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat61.x = x_3134;
            let x_3137 : f32 = u_xlat22.w;
            let x_3139 : f32 = u_xlat61.x;
            let x_3141 : f32 = u_xlat85;
            u_xlat85 = ((x_3137 * x_3139) + x_3141);
            let x_3144 : vec4<f32> = u_xlat18;
            let x_3145 : vec2<f32> = vec2<f32>(x_3144.x, x_3144.y);
            let x_3147 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
            let x_3154 : vec3<f32> = txVec47;
            let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
            u_xlat61.x = x_3156;
            let x_3159 : f32 = u_xlat23.x;
            let x_3161 : f32 = u_xlat61.x;
            let x_3163 : f32 = u_xlat85;
            u_xlat85 = ((x_3159 * x_3161) + x_3163);
            let x_3166 : vec4<f32> = u_xlat18;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.z, x_3166.w);
            let x_3169 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec48;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat61.x = x_3178;
            let x_3181 : f32 = u_xlat23.y;
            let x_3183 : f32 = u_xlat61.x;
            let x_3185 : f32 = u_xlat85;
            u_xlat85 = ((x_3181 * x_3183) + x_3185);
            let x_3188 : vec4<f32> = u_xlat19;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.x, x_3188.y);
            let x_3191 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec49;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat61.x = x_3200;
            let x_3203 : f32 = u_xlat23.z;
            let x_3205 : f32 = u_xlat61.x;
            let x_3207 : f32 = u_xlat85;
            u_xlat85 = ((x_3203 * x_3205) + x_3207);
            let x_3210 : vec4<f32> = u_xlat20;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.z, x_3210.w);
            let x_3213 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec50;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat61.x = x_3222;
            let x_3225 : f32 = u_xlat23.w;
            let x_3227 : f32 = u_xlat61.x;
            let x_3229 : f32 = u_xlat85;
            u_xlat85 = ((x_3225 * x_3227) + x_3229);
            let x_3232 : vec4<f32> = u_xlat21;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.x, x_3232.y);
            let x_3235 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec51;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat61.x = x_3244;
            let x_3247 : f32 = u_xlat24.x;
            let x_3249 : f32 = u_xlat61.x;
            let x_3251 : f32 = u_xlat85;
            u_xlat85 = ((x_3247 * x_3249) + x_3251);
            let x_3254 : vec4<f32> = u_xlat21;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.z, x_3254.w);
            let x_3257 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec52;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat61.x = x_3266;
            let x_3269 : f32 = u_xlat24.y;
            let x_3271 : f32 = u_xlat61.x;
            let x_3273 : f32 = u_xlat85;
            u_xlat85 = ((x_3269 * x_3271) + x_3273);
            let x_3276 : vec2<f32> = u_xlat38;
            let x_3278 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec53;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat61.x = x_3287;
            let x_3290 : f32 = u_xlat24.z;
            let x_3292 : f32 = u_xlat61.x;
            let x_3294 : f32 = u_xlat85;
            u_xlat85 = ((x_3290 * x_3292) + x_3294);
            let x_3297 : vec2<f32> = u_xlat69;
            let x_3299 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
            let x_3306 : vec3<f32> = txVec54;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat61.x = x_3308;
            let x_3311 : f32 = u_xlat24.w;
            let x_3313 : f32 = u_xlat61.x;
            let x_3315 : f32 = u_xlat85;
            u_xlat85 = ((x_3311 * x_3313) + x_3315);
            let x_3318 : vec4<f32> = u_xlat16;
            let x_3319 : vec2<f32> = vec2<f32>(x_3318.x, x_3318.y);
            let x_3321 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec55;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat61.x = x_3330;
            let x_3333 : f32 = u_xlat12.x;
            let x_3335 : f32 = u_xlat61.x;
            let x_3337 : f32 = u_xlat85;
            u_xlat85 = ((x_3333 * x_3335) + x_3337);
            let x_3340 : vec4<f32> = u_xlat16;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.z, x_3340.w);
            let x_3343 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec56;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat61.x = x_3352;
            let x_3355 : f32 = u_xlat12.y;
            let x_3357 : f32 = u_xlat61.x;
            let x_3359 : f32 = u_xlat85;
            u_xlat85 = ((x_3355 * x_3357) + x_3359);
            let x_3362 : vec2<f32> = u_xlat64;
            let x_3364 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec57;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat61.x = x_3373;
            let x_3376 : f32 = u_xlat12.z;
            let x_3378 : f32 = u_xlat61.x;
            let x_3380 : f32 = u_xlat85;
            u_xlat85 = ((x_3376 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat11;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.x, x_3383.y);
            let x_3386 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec58;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat11.x = x_3395;
            let x_3398 : f32 = u_xlat12.w;
            let x_3400 : f32 = u_xlat11.x;
            let x_3402 : f32 = u_xlat85;
            u_xlat84 = ((x_3398 * x_3400) + x_3402);
          }
        }
      } else {
        let x_3406 : vec4<f32> = u_xlat10;
        let x_3407 : vec2<f32> = vec2<f32>(x_3406.x, x_3406.y);
        let x_3409 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
        let x_3416 : vec3<f32> = txVec59;
        let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
        u_xlat84 = x_3418;
      }
      let x_3419 : i32 = u_xlati30;
      let x_3421 : f32 = x_298.x_AdditionalShadowParams[x_3419].x;
      u_xlat10.x = (1.0f + -(x_3421));
      let x_3425 : f32 = u_xlat84;
      let x_3426 : i32 = u_xlati30;
      let x_3428 : f32 = x_298.x_AdditionalShadowParams[x_3426].x;
      let x_3431 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3425 * x_3428) + x_3431);
      let x_3434 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3434);
      let x_3439 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3439 >= 1.0f);
      let x_3441 : bool = u_xlatb35;
      let x_3443 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3441 | x_3443);
      let x_3447 : bool = u_xlatb10.x;
      let x_3448 : f32 = u_xlat84;
      u_xlat84 = select(x_3448, 1.0f, x_3447);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3451 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3451) + 1.0f);
    let x_3455 : f32 = u_xlat76;
    let x_3457 : f32 = u_xlat10.x;
    let x_3459 : f32 = u_xlat84;
    u_xlat84 = ((x_3455 * x_3457) + x_3459);
    let x_3461 : f32 = u_xlat81;
    let x_3462 : f32 = u_xlat84;
    u_xlat81 = (x_3461 * x_3462);
    let x_3464 : vec4<f32> = u_xlat2;
    let x_3466 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3464.x, x_3464.y, x_3464.z), vec3<f32>(x_3466.x, x_3466.y, x_3466.z));
    let x_3469 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3469, 0.0f, 1.0f);
    let x_3471 : f32 = u_xlat81;
    let x_3472 : f32 = u_xlat84;
    u_xlat81 = (x_3471 * x_3472);
    let x_3474 : f32 = u_xlat81;
    let x_3476 : i32 = u_xlati30;
    let x_3478 : vec4<f32> = x_1965.x_AdditionalLightsColor[x_3476];
    let x_3480 : vec3<f32> = (vec3<f32>(x_3474, x_3474, x_3474) * vec3<f32>(x_3478.x, x_3478.y, x_3478.z));
    let x_3481 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3480.x, x_3480.y, x_3480.z, x_3481.w);
    let x_3483 : vec4<f32> = u_xlat8;
    let x_3485 : f32 = u_xlat83;
    let x_3488 : vec3<f32> = u_xlat3;
    let x_3489 : vec3<f32> = ((vec3<f32>(x_3483.x, x_3483.y, x_3483.z) * vec3<f32>(x_3485, x_3485, x_3485)) + x_3488);
    let x_3490 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3489.x, x_3489.y, x_3489.z, x_3490.w);
    let x_3492 : vec4<f32> = u_xlat8;
    let x_3494 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_3492.x, x_3492.y, x_3492.z), vec3<f32>(x_3494.x, x_3494.y, x_3494.z));
    let x_3499 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_3499, 1.17549435e-38f);
    let x_3503 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_3503);
    let x_3506 : vec3<f32> = u_xlat30;
    let x_3508 : vec4<f32> = u_xlat8;
    let x_3510 : vec3<f32> = (vec3<f32>(x_3506.x, x_3506.x, x_3506.x) * vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
    let x_3511 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
    let x_3513 : vec4<f32> = u_xlat2;
    let x_3515 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_3513.x, x_3513.y, x_3513.z), vec3<f32>(x_3515.x, x_3515.y, x_3515.z));
    let x_3520 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_3520, 0.0f, 1.0f);
    let x_3523 : vec4<f32> = u_xlat9;
    let x_3525 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3523.x, x_3523.y, x_3523.z), vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
    let x_3528 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3528, 0.0f, 1.0f);
    let x_3531 : f32 = u_xlat30.x;
    let x_3533 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3531 * x_3533);
    let x_3537 : f32 = u_xlat30.x;
    let x_3539 : f32 = u_xlat7.x;
    u_xlat30.x = ((x_3537 * x_3539) + 1.00001001358032226562f);
    let x_3543 : f32 = u_xlat81;
    let x_3544 : f32 = u_xlat81;
    u_xlat81 = (x_3543 * x_3544);
    let x_3547 : f32 = u_xlat30.x;
    let x_3549 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3547 * x_3549);
    let x_3552 : f32 = u_xlat81;
    u_xlat81 = max(x_3552, 0.10000000149011611938f);
    let x_3555 : f32 = u_xlat30.x;
    let x_3556 : f32 = u_xlat81;
    u_xlat30.x = (x_3555 * x_3556);
    let x_3559 : f32 = u_xlat78;
    let x_3561 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3559 * x_3561);
    let x_3564 : f32 = u_xlat79;
    let x_3566 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3564 / x_3566);
    let x_3569 : vec4<f32> = u_xlat0;
    let x_3571 : vec3<f32> = u_xlat30;
    let x_3574 : vec3<f32> = u_xlat4;
    let x_3575 : vec3<f32> = ((vec3<f32>(x_3569.x, x_3569.y, x_3569.z) * vec3<f32>(x_3571.x, x_3571.x, x_3571.x)) + x_3574);
    let x_3576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
    let x_3578 : vec4<f32> = u_xlat8;
    let x_3580 : vec4<f32> = u_xlat10;
    let x_3583 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3578.x, x_3578.y, x_3578.z) * vec3<f32>(x_3580.x, x_3580.y, x_3580.z)) + x_3583);

    continuing {
      let x_3585 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3585 + bitcast<u32>(1i));
    }
  }
  let x_3587 : vec4<f32> = u_xlat6;
  let x_3589 : vec4<f32> = u_xlat5;
  let x_3592 : vec3<f32> = u_xlat1;
  let x_3593 : vec3<f32> = ((vec3<f32>(x_3587.x, x_3587.y, x_3587.z) * vec3<f32>(x_3589.x, x_3589.z, x_3589.w)) + x_3592);
  let x_3594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3594.w);
  let x_3598 : vec3<f32> = u_xlat32;
  let x_3599 : vec4<f32> = u_xlat0;
  let x_3601 : vec3<f32> = (x_3598 + vec3<f32>(x_3599.x, x_3599.y, x_3599.z));
  let x_3602 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3601.x, x_3601.y, x_3601.z, x_3602.w);
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


