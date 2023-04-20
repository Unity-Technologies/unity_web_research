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

var<private> u_xlat1 : f32;

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

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlatb30 : bool;

@group(1) @binding(3) var<uniform> x_331 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb55 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1975 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

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

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_106 : vec3<f32>;
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
  var x_1635 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2125 : f32;
  var x_2136 : f32;
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
  var x_3468 : f32;
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
  u_xlatb26 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat51;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_92 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_92;
  let x_96 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_96;
  let x_101 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_101;
  let x_104 : bool = u_xlatb26;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec3<f32> = u_xlat3;
    x_106 = x_112;
  }
  let x_113 : vec3<f32> = x_106;
  u_xlat26 = x_113;
  let x_115 : vec3<f32> = vs_TEXCOORD3;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_115, x_116);
  let x_120 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_120);
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec3<f32> = vs_TEXCOORD3;
  let x_126 : vec3<f32> = (vec3<f32>(x_123.x, x_123.x, x_123.x) * x_125);
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : f32 = vs_TEXCOORD7.y;
  let x_133 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_131 * x_133);
  let x_137 : f32 = x_29.unity_MatrixV[0i].z;
  let x_139 : f32 = vs_TEXCOORD7.x;
  let x_142 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_137 * x_139) + x_142);
  let x_146 : f32 = x_29.unity_MatrixV[2i].z;
  let x_148 : f32 = vs_TEXCOORD7.z;
  let x_151 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_146 * x_148) + x_151);
  let x_155 : f32 = u_xlat3.x;
  let x_158 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_155 + x_158);
  let x_162 : f32 = u_xlat3.x;
  let x_166 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_162) + -(x_166));
  let x_171 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_171, 0.0f);
  let x_175 : f32 = u_xlat3.x;
  let x_178 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_175 * x_178);
  u_xlat2.w = 1.0f;
  let x_191 : vec4<f32> = x_187.unity_SHAr;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_187.unity_SHAg;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_187.unity_SHAb;
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_203, x_204);
  let x_208 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_208.y, x_208.z, x_208.z, x_208.x) * vec4<f32>(x_210.x, x_210.y, x_210.z, x_210.z));
  let x_216 : vec4<f32> = x_187.unity_SHBr;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_187.unity_SHBg;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_187.unity_SHBb;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_228, x_229);
  let x_234 : f32 = u_xlat2.y;
  let x_236 : f32 = u_xlat2.y;
  u_xlat77 = (x_234 * x_236);
  let x_239 : f32 = u_xlat2.x;
  let x_241 : f32 = u_xlat2.x;
  let x_243 : f32 = u_xlat77;
  u_xlat77 = ((x_239 * x_241) + -(x_243));
  let x_249 : vec4<f32> = x_187.unity_SHC;
  let x_251 : f32 = u_xlat77;
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat28 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251, x_251, x_251)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec3<f32> = u_xlat28;
  let x_258 : vec3<f32> = u_xlat4;
  u_xlat28 = (x_257 + x_258);
  let x_260 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_260, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : f32 = u_xlat1;
  u_xlat77 = ((-(x_263) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_268 : f32 = u_xlat77;
  u_xlat4.x = (-(x_268) + 1.0f);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : f32 = u_xlat77;
  u_xlat29 = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275));
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : f32 = u_xlat1;
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_296) + 1.0f);
  let x_299 : f32 = u_xlat1;
  let x_300 : f32 = u_xlat1;
  u_xlat77 = (x_299 * x_300);
  let x_302 : f32 = u_xlat77;
  u_xlat77 = max(x_302, 0.0078125f);
  let x_305 : f32 = u_xlat77;
  let x_306 : f32 = u_xlat77;
  u_xlat5.x = (x_305 * x_306);
  let x_311 : f32 = u_xlat0.w;
  let x_313 : f32 = u_xlat4.x;
  u_xlat75 = (x_311 + x_313);
  let x_315 : f32 = u_xlat75;
  u_xlat75 = clamp(x_315, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat77;
  u_xlat4.x = ((x_317 * 4.0f) + 2.0f);
  let x_334 : f32 = x_331.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_334);
  let x_336 : bool = u_xlatb30;
  if (x_336) {
    let x_340 : f32 = x_331.x_MainLightShadowParams.y;
    u_xlatb30 = (x_340 == 1.0f);
    let x_342 : bool = u_xlatb30;
    if (x_342) {
      let x_346 : vec4<f32> = vs_TEXCOORD8;
      let x_349 : vec4<f32> = x_331.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_346.x, x_346.y, x_346.x, x_346.y) + x_349);
      let x_352 : vec4<f32> = u_xlat6;
      let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
      let x_355 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
      let x_368 : vec3<f32> = txVec0;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_368.xy, x_368.z);
      u_xlat7.x = x_370;
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.z, x_373.w);
      let x_376 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec1;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_383.xy, x_383.z);
      u_xlat7.y = x_385;
      let x_387 : vec4<f32> = vs_TEXCOORD8;
      let x_390 : vec4<f32> = x_331.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_387.x, x_387.y, x_387.x, x_387.y) + x_390);
      let x_393 : vec4<f32> = u_xlat6;
      let x_394 : vec2<f32> = vec2<f32>(x_393.x, x_393.y);
      let x_396 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_394.x, x_394.y, x_396);
      let x_403 : vec3<f32> = txVec2;
      let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_403.xy, x_403.z);
      u_xlat7.z = x_405;
      let x_408 : vec4<f32> = u_xlat6;
      let x_409 : vec2<f32> = vec2<f32>(x_408.z, x_408.w);
      let x_411 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec3;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_418.xy, x_418.z);
      u_xlat7.w = x_420;
      let x_423 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_423, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_431 : f32 = x_331.x_MainLightShadowParams.y;
      u_xlatb55 = (x_431 == 2.0f);
      let x_433 : bool = u_xlatb55;
      if (x_433) {
        let x_438 : vec4<f32> = vs_TEXCOORD8;
        let x_441 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_441.z, x_441.w)) + vec2<f32>(0.5f, 0.5f));
        let x_447 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_447);
        let x_449 : vec4<f32> = vs_TEXCOORD8;
        let x_452 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_455 : vec2<f32> = u_xlat55;
        let x_457 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(x_455));
        let x_458 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_460.x, x_460.x, x_460.y, x_460.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_465 : vec4<f32> = u_xlat7;
        let x_467 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z) * vec4<f32>(x_467.x, x_467.x, x_467.z, x_467.z));
        let x_471 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_471.y, x_471.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
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
        u_xlat58 = min(vec2<f32>(x_493.x, x_493.y), vec2<f32>(0.0f, 0.0f));
        let x_497 : vec2<f32> = u_xlat58;
        let x_499 : vec2<f32> = u_xlat58;
        let x_501 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_497) * x_499) + vec2<f32>(x_501.x, x_501.y));
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
        let x_520 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_520 + vec2<f32>(1.0f, 1.0f));
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
        let x_541 : vec2<f32> = u_xlat58;
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
        let x_566 : f32 = u_xlat56.x;
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
        let x_583 : f32 = u_xlat56.y;
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
        let x_623 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.y, x_620.x, x_620.z) * vec3<f32>(x_623.x, x_623.x, x_623.x));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat9;
        let x_631 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_633 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_631.y, x_631.y, x_631.y));
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
        let x_637 : f32 = u_xlat9.x;
        u_xlat8.w = x_637;
        let x_639 : vec2<f32> = u_xlat55;
        let x_642 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.y, x_645.w, x_645.x, x_645.w));
        let x_648 : vec2<f32> = u_xlat55;
        let x_650 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_653 : vec4<f32> = u_xlat8;
        let x_655 : vec2<f32> = ((x_648 * vec2<f32>(x_650.x, x_650.y)) + vec2<f32>(x_653.z, x_653.w));
        let x_656 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_659 : f32 = u_xlat8.y;
        u_xlat9.w = x_659;
        let x_661 : vec4<f32> = u_xlat9;
        let x_662 : vec2<f32> = vec2<f32>(x_661.y, x_661.z);
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_663.x, x_662.x, x_663.z, x_662.y);
        let x_666 : vec2<f32> = u_xlat55;
        let x_669 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) * vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y)) + vec4<f32>(x_672.x, x_672.y, x_672.z, x_672.y));
        let x_675 : vec2<f32> = u_xlat55;
        let x_678 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_681 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) * vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y)) + vec4<f32>(x_681.w, x_681.y, x_681.w, x_681.z));
        let x_684 : vec2<f32> = u_xlat55;
        let x_687 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_690 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y) * vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y)) + vec4<f32>(x_690.x, x_690.w, x_690.z, x_690.w));
        let x_694 : vec4<f32> = u_xlat6;
        let x_696 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_694.x, x_694.x, x_694.x, x_694.y) * vec4<f32>(x_696.z, x_696.w, x_696.y, x_696.z));
        let x_700 : vec4<f32> = u_xlat6;
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_700.y, x_700.y, x_700.z, x_700.z) * x_702);
        let x_705 : f32 = u_xlat6.z;
        let x_707 : f32 = u_xlat7.y;
        u_xlat55.x = (x_705 * x_707);
        let x_711 : vec4<f32> = u_xlat10;
        let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
        let x_714 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_712.x, x_712.y, x_714);
        let x_722 : vec3<f32> = txVec4;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
        u_xlat80 = x_724;
        let x_726 : vec4<f32> = u_xlat10;
        let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
        let x_729 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec5;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_736.xy, x_736.z);
        u_xlat6.x = x_738;
        let x_741 : f32 = u_xlat6.x;
        let x_743 : f32 = u_xlat13.y;
        u_xlat6.x = (x_741 * x_743);
        let x_747 : f32 = u_xlat13.x;
        let x_748 : f32 = u_xlat80;
        let x_751 : f32 = u_xlat6.x;
        u_xlat80 = ((x_747 * x_748) + x_751);
        let x_754 : vec4<f32> = u_xlat11;
        let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
        let x_757 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec6;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_764.xy, x_764.z);
        u_xlat6.x = x_766;
        let x_769 : f32 = u_xlat13.z;
        let x_771 : f32 = u_xlat6.x;
        let x_773 : f32 = u_xlat80;
        u_xlat80 = ((x_769 * x_771) + x_773);
        let x_776 : vec4<f32> = u_xlat9;
        let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
        let x_779 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec7;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat6.x = x_788;
        let x_791 : f32 = u_xlat13.w;
        let x_793 : f32 = u_xlat6.x;
        let x_795 : f32 = u_xlat80;
        u_xlat80 = ((x_791 * x_793) + x_795);
        let x_798 : vec4<f32> = u_xlat12;
        let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
        let x_801 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec8;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_808.xy, x_808.z);
        u_xlat6.x = x_810;
        let x_813 : f32 = u_xlat14.x;
        let x_815 : f32 = u_xlat6.x;
        let x_817 : f32 = u_xlat80;
        u_xlat80 = ((x_813 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat12;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec9;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat6.x = x_832;
        let x_835 : f32 = u_xlat14.y;
        let x_837 : f32 = u_xlat6.x;
        let x_839 : f32 = u_xlat80;
        u_xlat80 = ((x_835 * x_837) + x_839);
        let x_842 : vec4<f32> = u_xlat9;
        let x_843 : vec2<f32> = vec2<f32>(x_842.z, x_842.w);
        let x_845 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec10;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_852.xy, x_852.z);
        u_xlat6.x = x_854;
        let x_857 : f32 = u_xlat14.z;
        let x_859 : f32 = u_xlat6.x;
        let x_861 : f32 = u_xlat80;
        u_xlat80 = ((x_857 * x_859) + x_861);
        let x_864 : vec4<f32> = u_xlat8;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat6.x = x_876;
        let x_879 : f32 = u_xlat14.w;
        let x_881 : f32 = u_xlat6.x;
        let x_883 : f32 = u_xlat80;
        u_xlat80 = ((x_879 * x_881) + x_883);
        let x_886 : vec4<f32> = u_xlat8;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec12;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
        u_xlat6.x = x_898;
        let x_901 : f32 = u_xlat55.x;
        let x_903 : f32 = u_xlat6.x;
        let x_905 : f32 = u_xlat80;
        u_xlat30.x = ((x_901 * x_903) + x_905);
      } else {
        let x_909 : vec4<f32> = vs_TEXCOORD8;
        let x_912 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + vec2<f32>(0.5f, 0.5f));
        let x_916 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_916);
        let x_918 : vec4<f32> = vs_TEXCOORD8;
        let x_921 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_924 : vec2<f32> = u_xlat55;
        let x_926 : vec2<f32> = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_921.z, x_921.w)) + -(x_924));
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_929.x, x_929.x, x_929.y, x_929.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_932 : vec4<f32> = u_xlat7;
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_932.x, x_932.x, x_932.z, x_932.z) * vec4<f32>(x_934.x, x_934.x, x_934.z, x_934.z));
        let x_937 : vec4<f32> = u_xlat8;
        let x_941 : vec2<f32> = (vec2<f32>(x_937.y, x_937.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_942.x, x_941.x, x_942.z, x_941.y);
        let x_944 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_944.x, x_944.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_947.x, x_947.y)));
        let x_951 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = (-(vec2<f32>(x_951.x, x_951.y)) + vec2<f32>(1.0f, 1.0f));
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_957 : vec4<f32> = u_xlat6;
        let x_959 : vec2<f32> = min(vec2<f32>(x_957.x, x_957.y), vec2<f32>(0.0f, 0.0f));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat8;
        let x_965 : vec4<f32> = u_xlat8;
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = ((-(vec2<f32>(x_962.x, x_962.y)) * vec2<f32>(x_965.x, x_965.y)) + vec2<f32>(x_968.x, x_968.z));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_971.y, x_970.y, x_971.w);
        let x_973 : vec4<f32> = u_xlat6;
        let x_975 : vec2<f32> = max(vec2<f32>(x_973.x, x_973.y), vec2<f32>(0.0f, 0.0f));
        let x_976 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat8;
        let x_981 : vec4<f32> = u_xlat8;
        let x_984 : vec4<f32> = u_xlat7;
        let x_986 : vec2<f32> = ((-(vec2<f32>(x_978.x, x_978.y)) * vec2<f32>(x_981.x, x_981.y)) + vec2<f32>(x_984.y, x_984.w));
        let x_987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_987.x, x_986.x, x_987.z, x_986.y);
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_989 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_993 : f32 = u_xlat7.y;
        u_xlat8.z = (x_993 * 0.08163200318813323975f);
        let x_997 : vec2<f32> = u_xlat56;
        let x_1000 : vec2<f32> = (vec2<f32>(x_997.y, x_997.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1003.x, x_1003.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1007 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1007 * 0.08163200318813323975f);
        let x_1011 : f32 = u_xlat10.y;
        u_xlat8.x = x_1011;
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1021 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1020.x, x_1021.z, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1028 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1027.x, x_1028.y, x_1027.y, x_1028.w);
        let x_1031 : f32 = u_xlat56.x;
        u_xlat7.y = x_1031;
        let x_1034 : f32 = u_xlat9.y;
        u_xlat7.w = x_1034;
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1036 + x_1037);
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1039.y, x_1039.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1045.y, x_1045.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1052 : f32 = u_xlat56.y;
        u_xlat9.y = x_1052;
        let x_1054 : vec4<f32> = u_xlat9;
        let x_1055 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1054 + x_1055);
        let x_1057 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1057 / x_1058);
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1060 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1067 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1066 / x_1067);
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1069 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1071 : vec4<f32> = u_xlat7;
        let x_1074 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1071.w, x_1071.x, x_1071.y, x_1071.z) * vec4<f32>(x_1074.x, x_1074.x, x_1074.x, x_1074.x));
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1077.x, x_1077.w, x_1077.y, x_1077.z) * vec4<f32>(x_1080.y, x_1080.y, x_1080.y, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1084 : vec3<f32> = vec3<f32>(x_1083.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1084.z);
        let x_1088 : f32 = u_xlat9.x;
        u_xlat10.y = x_1088;
        let x_1090 : vec2<f32> = u_xlat55;
        let x_1093 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.y));
        let x_1099 : vec2<f32> = u_xlat55;
        let x_1101 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = ((x_1099 * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1107 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1110 : f32 = u_xlat10.y;
        u_xlat7.y = x_1110;
        let x_1113 : f32 = u_xlat9.z;
        u_xlat10.y = x_1113;
        let x_1115 : vec2<f32> = u_xlat55;
        let x_1118 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1125 : vec2<f32> = u_xlat55;
        let x_1127 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1125 * vec2<f32>(x_1127.x, x_1127.y)) + vec2<f32>(x_1130.w, x_1130.y));
        let x_1134 : f32 = u_xlat10.y;
        u_xlat7.z = x_1134;
        let x_1136 : vec2<f32> = u_xlat55;
        let x_1139 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y) * vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y)) + vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.z));
        let x_1146 : f32 = u_xlat9.w;
        u_xlat10.y = x_1146;
        let x_1149 : vec2<f32> = u_xlat55;
        let x_1152 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y) * vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y)) + vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1155.y));
        let x_1159 : vec2<f32> = u_xlat55;
        let x_1161 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1164 : vec4<f32> = u_xlat10;
        let x_1166 : vec2<f32> = ((x_1159 * vec2<f32>(x_1161.x, x_1161.y)) + vec2<f32>(x_1164.w, x_1164.y));
        let x_1167 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1166.x, x_1166.y, x_1167.z);
        let x_1170 : f32 = u_xlat10.y;
        u_xlat7.w = x_1170;
        let x_1173 : vec2<f32> = u_xlat55;
        let x_1175 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1180 : vec2<f32> = ((x_1173 * vec2<f32>(x_1175.x, x_1175.y)) + vec2<f32>(x_1178.x, x_1178.w));
        let x_1181 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1180.x, x_1180.y, x_1181.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1184 : vec3<f32> = vec3<f32>(x_1183.x, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1184.z);
        let x_1187 : vec2<f32> = u_xlat55;
        let x_1190 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y) * vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y)) + vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1193.y));
        let x_1197 : vec2<f32> = u_xlat55;
        let x_1199 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1197 * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.w, x_1202.y));
        let x_1206 : f32 = u_xlat7.x;
        u_xlat9.x = x_1206;
        let x_1208 : vec2<f32> = u_xlat55;
        let x_1210 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1208 * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1213.x, x_1213.y));
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1219 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1217.x, x_1217.x, x_1217.x, x_1217.x) * x_1219);
        let x_1222 : vec4<f32> = u_xlat6;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1222.y, x_1222.y, x_1222.y, x_1222.y) * x_1224);
        let x_1227 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1227.z, x_1227.z, x_1227.z, x_1227.z) * x_1229);
        let x_1231 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1231.w, x_1231.w, x_1231.w, x_1231.w) * x_1233);
        let x_1236 : vec4<f32> = u_xlat11;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec13;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
        u_xlat7.x = x_1248;
        let x_1251 : vec4<f32> = u_xlat11;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.z, x_1251.w);
        let x_1254 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1262 : vec3<f32> = txVec14;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat82 = x_1264;
        let x_1265 : f32 = u_xlat82;
        let x_1267 : f32 = u_xlat17.y;
        u_xlat82 = (x_1265 * x_1267);
        let x_1270 : f32 = u_xlat17.x;
        let x_1272 : f32 = u_xlat7.x;
        let x_1274 : f32 = u_xlat82;
        u_xlat7.x = ((x_1270 * x_1272) + x_1274);
        let x_1278 : vec4<f32> = u_xlat12;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec15;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat82 = x_1290;
        let x_1292 : f32 = u_xlat17.z;
        let x_1293 : f32 = u_xlat82;
        let x_1296 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1292 * x_1293) + x_1296);
        let x_1300 : vec4<f32> = u_xlat14;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec16;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat82 = x_1312;
        let x_1314 : f32 = u_xlat17.w;
        let x_1315 : f32 = u_xlat82;
        let x_1318 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1314 * x_1315) + x_1318);
        let x_1322 : vec4<f32> = u_xlat13;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.x, x_1322.y);
        let x_1325 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec17;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1332.xy, x_1332.z);
        u_xlat82 = x_1334;
        let x_1336 : f32 = u_xlat18.x;
        let x_1337 : f32 = u_xlat82;
        let x_1340 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1336 * x_1337) + x_1340);
        let x_1344 : vec4<f32> = u_xlat13;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec18;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat82 = x_1356;
        let x_1358 : f32 = u_xlat18.y;
        let x_1359 : f32 = u_xlat82;
        let x_1362 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1358 * x_1359) + x_1362);
        let x_1366 : vec2<f32> = u_xlat62;
        let x_1368 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec19;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat82 = x_1377;
        let x_1379 : f32 = u_xlat18.z;
        let x_1380 : f32 = u_xlat82;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1379 * x_1380) + x_1383);
        let x_1387 : vec4<f32> = u_xlat14;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.z, x_1387.w);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec20;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat82 = x_1399;
        let x_1401 : f32 = u_xlat18.w;
        let x_1402 : f32 = u_xlat82;
        let x_1405 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1401 * x_1402) + x_1405);
        let x_1409 : vec4<f32> = u_xlat15;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec21;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat82 = x_1421;
        let x_1423 : f32 = u_xlat19.x;
        let x_1424 : f32 = u_xlat82;
        let x_1427 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat15;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec22;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat82 = x_1443;
        let x_1445 : f32 = u_xlat19.y;
        let x_1446 : f32 = u_xlat82;
        let x_1449 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec3<f32> = u_xlat32;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec23;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat32.x = x_1465;
        let x_1468 : f32 = u_xlat19.z;
        let x_1470 : f32 = u_xlat32.x;
        let x_1473 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1468 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat16;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec24;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat32.x = x_1489;
        let x_1492 : f32 = u_xlat19.w;
        let x_1494 : f32 = u_xlat32.x;
        let x_1497 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1492 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat10;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec25;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat32.x = x_1513;
        let x_1516 : f32 = u_xlat6.x;
        let x_1518 : f32 = u_xlat32.x;
        let x_1521 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1516 * x_1518) + x_1521);
        let x_1525 : vec4<f32> = u_xlat10;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.z, x_1525.w);
        let x_1528 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec26;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat7.x = x_1537;
        let x_1540 : f32 = u_xlat6.y;
        let x_1542 : f32 = u_xlat7.x;
        let x_1545 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1540 * x_1542) + x_1545);
        let x_1549 : vec2<f32> = u_xlat59;
        let x_1551 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1559 : vec3<f32> = txVec27;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat31 = x_1561;
        let x_1563 : f32 = u_xlat6.z;
        let x_1564 : f32 = u_xlat31;
        let x_1567 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1563 * x_1564) + x_1567);
        let x_1571 : vec2<f32> = u_xlat55;
        let x_1573 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec28;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat55.x = x_1582;
        let x_1585 : f32 = u_xlat6.w;
        let x_1587 : f32 = u_xlat55.x;
        let x_1590 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1585 * x_1587) + x_1590);
      }
    }
  } else {
    let x_1595 : vec4<f32> = vs_TEXCOORD8;
    let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
    let x_1598 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
    let x_1605 : vec3<f32> = txVec29;
    let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
    u_xlat30.x = x_1607;
  }
  let x_1610 : f32 = x_331.x_MainLightShadowParams.x;
  u_xlat55.x = (-(x_1610) + 1.0f);
  let x_1615 : f32 = u_xlat30.x;
  let x_1617 : f32 = x_331.x_MainLightShadowParams.x;
  let x_1620 : f32 = u_xlat55.x;
  u_xlat30.x = ((x_1615 * x_1617) + x_1620);
  let x_1624 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (0.0f >= x_1624);
  let x_1628 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (x_1628 >= 1.0f);
  let x_1630 : bool = u_xlatb80;
  let x_1631 : bool = u_xlatb55;
  u_xlatb55 = (x_1630 | x_1631);
  let x_1633 : bool = u_xlatb55;
  if (x_1633) {
    x_1635 = 1.0f;
  } else {
    let x_1640 : f32 = u_xlat30.x;
    x_1635 = x_1640;
  }
  let x_1641 : f32 = x_1635;
  u_xlat30.x = x_1641;
  let x_1643 : vec3<f32> = vs_TEXCOORD7;
  let x_1645 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1647 : vec3<f32> = (x_1643 + -(x_1645));
  let x_1648 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
  let x_1650 : vec4<f32> = u_xlat6;
  let x_1652 : vec4<f32> = u_xlat6;
  u_xlat55.x = dot(vec3<f32>(x_1650.x, x_1650.y, x_1650.z), vec3<f32>(x_1652.x, x_1652.y, x_1652.z));
  let x_1657 : f32 = u_xlat55.x;
  let x_1659 : f32 = x_331.x_MainLightShadowParams.z;
  let x_1662 : f32 = x_331.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1657 * x_1659) + x_1662);
  let x_1664 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1664, 0.0f, 1.0f);
  let x_1667 : f32 = u_xlat30.x;
  u_xlat6.x = (-(x_1667) + 1.0f);
  let x_1671 : f32 = u_xlat80;
  let x_1673 : f32 = u_xlat6.x;
  let x_1676 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1671 * x_1673) + x_1676);
  let x_1679 : vec3<f32> = u_xlat26;
  let x_1681 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(-(x_1679), vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
  let x_1684 : f32 = u_xlat80;
  let x_1685 : f32 = u_xlat80;
  u_xlat80 = (x_1684 + x_1685);
  let x_1687 : vec4<f32> = u_xlat2;
  let x_1689 : f32 = u_xlat80;
  let x_1693 : vec3<f32> = u_xlat26;
  let x_1695 : vec3<f32> = ((vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * -(vec3<f32>(x_1689, x_1689, x_1689))) + -(x_1693));
  let x_1696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat2;
  let x_1700 : vec3<f32> = u_xlat26;
  u_xlat80 = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), x_1700);
  let x_1702 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1702, 0.0f, 1.0f);
  let x_1704 : f32 = u_xlat80;
  u_xlat80 = (-(x_1704) + 1.0f);
  let x_1707 : f32 = u_xlat80;
  let x_1708 : f32 = u_xlat80;
  u_xlat80 = (x_1707 * x_1708);
  let x_1710 : f32 = u_xlat80;
  let x_1711 : f32 = u_xlat80;
  u_xlat80 = (x_1710 * x_1711);
  let x_1714 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1714) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1720 : f32 = u_xlat1;
  let x_1721 : f32 = u_xlat81;
  u_xlat1 = (x_1720 * x_1721);
  let x_1723 : f32 = u_xlat1;
  u_xlat1 = (x_1723 * 6.0f);
  let x_1734 : vec4<f32> = u_xlat6;
  let x_1736 : f32 = u_xlat1;
  let x_1737 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1734.x, x_1734.y, x_1734.z), x_1736);
  u_xlat6 = x_1737;
  let x_1739 : f32 = u_xlat6.w;
  u_xlat1 = (x_1739 + -1.0f);
  let x_1743 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_1744 : f32 = u_xlat1;
  u_xlat1 = ((x_1743 * x_1744) + 1.0f);
  let x_1747 : f32 = u_xlat1;
  u_xlat1 = max(x_1747, 0.0f);
  let x_1749 : f32 = u_xlat1;
  u_xlat1 = log2(x_1749);
  let x_1751 : f32 = u_xlat1;
  let x_1753 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1751 * x_1753);
  let x_1755 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1755);
  let x_1757 : f32 = u_xlat1;
  let x_1759 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1757 * x_1759);
  let x_1761 : vec4<f32> = u_xlat6;
  let x_1763 : f32 = u_xlat1;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) * vec3<f32>(x_1763, x_1763, x_1763));
  let x_1766 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : f32 = u_xlat77;
  let x_1770 : f32 = u_xlat77;
  let x_1774 : vec2<f32> = ((vec2<f32>(x_1768, x_1768) * vec2<f32>(x_1770, x_1770)) + vec2<f32>(-1.0f, 1.0f));
  let x_1775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
  let x_1778 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1778);
  let x_1780 : vec4<f32> = u_xlat0;
  let x_1783 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1780.x, x_1780.y, x_1780.z)) + vec3<f32>(x_1783, x_1783, x_1783));
  let x_1786 : f32 = u_xlat80;
  let x_1788 : vec3<f32> = u_xlat32;
  let x_1790 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1786, x_1786, x_1786) * x_1788) + vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : f32 = u_xlat1;
  let x_1795 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1793, x_1793, x_1793) * x_1795);
  let x_1797 : vec4<f32> = u_xlat6;
  let x_1799 : vec3<f32> = u_xlat32;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * x_1799);
  let x_1801 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1803 : vec3<f32> = u_xlat28;
  let x_1804 : vec3<f32> = u_xlat29;
  let x_1806 : vec4<f32> = u_xlat6;
  u_xlat28 = ((x_1803 * x_1804) + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1810 : f32 = u_xlat30.x;
  let x_1812 : f32 = x_187.unity_LightData.z;
  u_xlat75 = (x_1810 * x_1812);
  let x_1814 : vec4<f32> = u_xlat2;
  let x_1817 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1814.x, x_1814.y, x_1814.z), vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
  let x_1820 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1820, 0.0f, 1.0f);
  let x_1822 : f32 = u_xlat75;
  let x_1823 : f32 = u_xlat1;
  u_xlat75 = (x_1822 * x_1823);
  let x_1825 : f32 = u_xlat75;
  let x_1828 : vec4<f32> = x_29.x_MainLightColor;
  let x_1830 : vec3<f32> = (vec3<f32>(x_1825, x_1825, x_1825) * vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
  let x_1831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
  let x_1833 : vec3<f32> = u_xlat26;
  let x_1835 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_1833 + vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
  let x_1838 : vec3<f32> = u_xlat32;
  let x_1839 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1838, x_1839);
  let x_1841 : f32 = u_xlat75;
  u_xlat75 = max(x_1841, 1.17549435e-38f);
  let x_1844 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1844);
  let x_1846 : f32 = u_xlat75;
  let x_1848 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1846, x_1846, x_1846) * x_1848);
  let x_1850 : vec4<f32> = u_xlat2;
  let x_1852 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), x_1852);
  let x_1854 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1854, 0.0f, 1.0f);
  let x_1857 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1859 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1857.x, x_1857.y, x_1857.z), x_1859);
  let x_1861 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1861, 0.0f, 1.0f);
  let x_1863 : f32 = u_xlat75;
  let x_1864 : f32 = u_xlat75;
  u_xlat75 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat75;
  let x_1868 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1866 * x_1868) + 1.00001001358032226562f);
  let x_1872 : f32 = u_xlat1;
  let x_1873 : f32 = u_xlat1;
  u_xlat1 = (x_1872 * x_1873);
  let x_1875 : f32 = u_xlat75;
  let x_1876 : f32 = u_xlat75;
  u_xlat75 = (x_1875 * x_1876);
  let x_1878 : f32 = u_xlat1;
  u_xlat1 = max(x_1878, 0.10000000149011611938f);
  let x_1881 : f32 = u_xlat75;
  let x_1882 : f32 = u_xlat1;
  u_xlat75 = (x_1881 * x_1882);
  let x_1885 : f32 = u_xlat4.x;
  let x_1886 : f32 = u_xlat75;
  u_xlat75 = (x_1885 * x_1886);
  let x_1889 : f32 = u_xlat5.x;
  let x_1890 : f32 = u_xlat75;
  u_xlat75 = (x_1889 / x_1890);
  let x_1892 : vec4<f32> = u_xlat0;
  let x_1894 : f32 = u_xlat75;
  let x_1897 : vec3<f32> = u_xlat29;
  u_xlat32 = ((vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * vec3<f32>(x_1894, x_1894, x_1894)) + x_1897);
  let x_1900 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1902 : f32 = x_187.unity_LightData.y;
  u_xlat75 = min(x_1900, x_1902);
  let x_1906 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1906));
  let x_1910 : f32 = u_xlat55.x;
  let x_1913 : f32 = x_331.x_AdditionalShadowFadeParams.x;
  let x_1916 : f32 = x_331.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1910 * x_1913) + x_1916);
  let x_1918 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1918, 0.0f, 1.0f);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1930 : u32 = u_xlatu_loop_1;
    let x_1931 : u32 = u_xlatu75;
    if ((x_1930 < x_1931)) {
    } else {
      break;
    }
    let x_1934 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1934 >> 2u);
    let x_1938 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1938 & 3u));
    let x_1941 : u32 = u_xlatu81;
    let x_1944 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_1941)];
    let x_1954 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1959 : vec4<u32> = indexable[x_1954];
    u_xlat81 = dot(x_1944, bitcast<vec4<f32>>(x_1959));
    let x_1963 : f32 = u_xlat81;
    u_xlati81 = i32(x_1963);
    let x_1965 : vec3<f32> = vs_TEXCOORD7;
    let x_1976 : i32 = u_xlati81;
    let x_1978 : vec4<f32> = x_1975.x_AdditionalLightsPosition[x_1976];
    let x_1981 : i32 = u_xlati81;
    let x_1983 : vec4<f32> = x_1975.x_AdditionalLightsPosition[x_1981];
    let x_1985 : vec3<f32> = ((-(x_1965) * vec3<f32>(x_1978.w, x_1978.w, x_1978.w)) + vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
    let x_1986 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
    let x_1989 : vec4<f32> = u_xlat8;
    let x_1991 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
    let x_1994 : f32 = u_xlat83;
    u_xlat83 = max(x_1994, 0.00006103515625f);
    let x_1997 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1997);
    let x_2001 : vec4<f32> = u_xlat8;
    let x_2003 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(x_2003.x, x_2003.x, x_2003.x));
    let x_2006 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2006);
    let x_2009 : f32 = u_xlat83;
    let x_2010 : i32 = u_xlati81;
    let x_2012 : f32 = x_1975.x_AdditionalLightsAttenuation[x_2010].x;
    u_xlat83 = (x_2009 * x_2012);
    let x_2014 : f32 = u_xlat83;
    let x_2016 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2014) * x_2016) + 1.0f);
    let x_2019 : f32 = u_xlat83;
    u_xlat83 = max(x_2019, 0.0f);
    let x_2021 : f32 = u_xlat83;
    let x_2022 : f32 = u_xlat83;
    u_xlat83 = (x_2021 * x_2022);
    let x_2024 : f32 = u_xlat83;
    let x_2026 : f32 = u_xlat10.x;
    u_xlat83 = (x_2024 * x_2026);
    let x_2028 : i32 = u_xlati81;
    let x_2030 : vec4<f32> = x_1975.x_AdditionalLightsSpotDir[x_2028];
    let x_2032 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), x_2032);
    let x_2036 : f32 = u_xlat10.x;
    let x_2037 : i32 = u_xlati81;
    let x_2039 : f32 = x_1975.x_AdditionalLightsAttenuation[x_2037].z;
    let x_2041 : i32 = u_xlati81;
    let x_2043 : f32 = x_1975.x_AdditionalLightsAttenuation[x_2041].w;
    u_xlat10.x = ((x_2036 * x_2039) + x_2043);
    let x_2047 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2047, 0.0f, 1.0f);
    let x_2051 : f32 = u_xlat10.x;
    let x_2053 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2051 * x_2053);
    let x_2056 : f32 = u_xlat83;
    let x_2058 : f32 = u_xlat10.x;
    u_xlat83 = (x_2056 * x_2058);
    let x_2062 : i32 = u_xlati81;
    let x_2064 : f32 = x_331.x_AdditionalShadowParams[x_2062].w;
    u_xlati10 = i32(x_2064);
    let x_2069 : i32 = u_xlati10;
    u_xlatb35.x = (x_2069 >= 0i);
    let x_2073 : bool = u_xlatb35.x;
    if (x_2073) {
      let x_2077 : i32 = u_xlati81;
      let x_2079 : f32 = x_331.x_AdditionalShadowParams[x_2077].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2079, x_2079, x_2079, x_2079))));
      let x_2086 : bool = u_xlatb35.x;
      if (x_2086) {
        let x_2089 : vec3<f32> = u_xlat34;
        let x_2092 : vec3<f32> = u_xlat34;
        let x_2095 : vec4<bool> = (abs(vec4<f32>(x_2089.z, x_2089.z, x_2089.y, x_2089.y)) >= abs(vec4<f32>(x_2092.x, x_2092.y, x_2092.x, x_2092.x)));
        u_xlatb35 = vec3<bool>(x_2095.x, x_2095.y, x_2095.z);
        let x_2098 : bool = u_xlatb35.y;
        let x_2100 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2098 & x_2100);
        let x_2104 : vec3<f32> = u_xlat34;
        let x_2107 : vec4<bool> = (-(vec4<f32>(x_2104.z, x_2104.y, x_2104.x, x_2104.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2107.x, x_2107.y, x_2107.z);
        let x_2110 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2110);
        let x_2115 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2115);
        let x_2121 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2121);
        let x_2124 : bool = u_xlatb35.z;
        if (x_2124) {
          let x_2129 : f32 = u_xlat11.y;
          x_2125 = x_2129;
        } else {
          let x_2131 : f32 = u_xlat60;
          x_2125 = x_2131;
        }
        let x_2132 : f32 = x_2125;
        u_xlat60 = x_2132;
        let x_2135 : bool = u_xlatb35.x;
        if (x_2135) {
          let x_2140 : f32 = u_xlat11.x;
          x_2136 = x_2140;
        } else {
          let x_2142 : f32 = u_xlat60;
          x_2136 = x_2142;
        }
        let x_2143 : f32 = x_2136;
        u_xlat35 = x_2143;
        let x_2144 : i32 = u_xlati81;
        let x_2146 : f32 = x_331.x_AdditionalShadowParams[x_2144].w;
        u_xlat60 = trunc(x_2146);
        let x_2148 : f32 = u_xlat35;
        let x_2149 : f32 = u_xlat60;
        u_xlat35 = (x_2148 + x_2149);
        let x_2151 : f32 = u_xlat35;
        u_xlati10 = i32(x_2151);
      }
      let x_2153 : i32 = u_xlati10;
      u_xlati10 = (x_2153 << bitcast<u32>(2i));
      let x_2155 : vec3<f32> = vs_TEXCOORD7;
      let x_2158 : i32 = u_xlati10;
      let x_2161 : i32 = u_xlati10;
      let x_2165 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_2158 + 1i) / 4i)][((x_2161 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2155.y, x_2155.y, x_2155.y, x_2155.y) * x_2165);
      let x_2167 : i32 = u_xlati10;
      let x_2169 : i32 = u_xlati10;
      let x_2172 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[(x_2167 / 4i)][(x_2169 % 4i)];
      let x_2173 : vec3<f32> = vs_TEXCOORD7;
      let x_2176 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2172 * vec4<f32>(x_2173.x, x_2173.x, x_2173.x, x_2173.x)) + x_2176);
      let x_2178 : i32 = u_xlati10;
      let x_2181 : i32 = u_xlati10;
      let x_2185 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_2178 + 2i) / 4i)][((x_2181 + 2i) % 4i)];
      let x_2186 : vec3<f32> = vs_TEXCOORD7;
      let x_2189 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2185 * vec4<f32>(x_2186.z, x_2186.z, x_2186.z, x_2186.z)) + x_2189);
      let x_2191 : vec4<f32> = u_xlat11;
      let x_2192 : i32 = u_xlati10;
      let x_2195 : i32 = u_xlati10;
      let x_2199 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_2192 + 3i) / 4i)][((x_2195 + 3i) % 4i)];
      u_xlat10 = (x_2191 + x_2199);
      let x_2201 : vec4<f32> = u_xlat10;
      let x_2203 : vec4<f32> = u_xlat10;
      let x_2205 : vec3<f32> = (vec3<f32>(x_2201.x, x_2201.y, x_2201.z) / vec3<f32>(x_2203.w, x_2203.w, x_2203.w));
      let x_2206 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
      let x_2209 : i32 = u_xlati81;
      let x_2211 : f32 = x_331.x_AdditionalShadowParams[x_2209].y;
      u_xlatb85 = (0.0f < x_2211);
      let x_2213 : bool = u_xlatb85;
      if (x_2213) {
        let x_2216 : i32 = u_xlati81;
        let x_2218 : f32 = x_331.x_AdditionalShadowParams[x_2216].y;
        u_xlatb85 = (1.0f == x_2218);
        let x_2220 : bool = u_xlatb85;
        if (x_2220) {
          let x_2223 : vec4<f32> = u_xlat10;
          let x_2227 : vec4<f32> = x_331.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2223.x, x_2223.y, x_2223.x, x_2223.y) + x_2227);
          let x_2230 : vec4<f32> = u_xlat11;
          let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
          let x_2233 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
          let x_2241 : vec3<f32> = txVec30;
          let x_2243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
          u_xlat12.x = x_2243;
          let x_2246 : vec4<f32> = u_xlat11;
          let x_2247 : vec2<f32> = vec2<f32>(x_2246.z, x_2246.w);
          let x_2249 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
          let x_2256 : vec3<f32> = txVec31;
          let x_2258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
          u_xlat12.y = x_2258;
          let x_2260 : vec4<f32> = u_xlat10;
          let x_2264 : vec4<f32> = x_331.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2260.x, x_2260.y, x_2260.x, x_2260.y) + x_2264);
          let x_2267 : vec4<f32> = u_xlat11;
          let x_2268 : vec2<f32> = vec2<f32>(x_2267.x, x_2267.y);
          let x_2270 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2268.x, x_2268.y, x_2270);
          let x_2277 : vec3<f32> = txVec32;
          let x_2279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2277.xy, x_2277.z);
          u_xlat12.z = x_2279;
          let x_2282 : vec4<f32> = u_xlat11;
          let x_2283 : vec2<f32> = vec2<f32>(x_2282.z, x_2282.w);
          let x_2285 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2283.x, x_2283.y, x_2285);
          let x_2292 : vec3<f32> = txVec33;
          let x_2294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2292.xy, x_2292.z);
          u_xlat12.w = x_2294;
          let x_2297 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2297, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2300 : i32 = u_xlati81;
          let x_2302 : f32 = x_331.x_AdditionalShadowParams[x_2300].y;
          u_xlatb11.x = (2.0f == x_2302);
          let x_2306 : bool = u_xlatb11.x;
          if (x_2306) {
            let x_2309 : vec4<f32> = u_xlat10;
            let x_2313 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2316 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(x_2313.z, x_2313.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2317 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
            let x_2319 : vec4<f32> = u_xlat11;
            let x_2321 : vec2<f32> = floor(vec2<f32>(x_2319.x, x_2319.y));
            let x_2322 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
            let x_2325 : vec4<f32> = u_xlat10;
            let x_2328 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2331 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2325.x, x_2325.y) * vec2<f32>(x_2328.z, x_2328.w)) + -(vec2<f32>(x_2331.x, x_2331.y)));
            let x_2335 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2335.x, x_2335.x, x_2335.y, x_2335.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2338 : vec4<f32> = u_xlat12;
            let x_2340 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2338.x, x_2338.x, x_2338.z, x_2338.z) * vec4<f32>(x_2340.x, x_2340.x, x_2340.z, x_2340.z));
            let x_2343 : vec4<f32> = u_xlat13;
            let x_2345 : vec2<f32> = (vec2<f32>(x_2343.y, x_2343.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2346 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2345.x, x_2346.y, x_2345.y, x_2346.w);
            let x_2348 : vec4<f32> = u_xlat13;
            let x_2351 : vec2<f32> = u_xlat61;
            let x_2353 : vec2<f32> = ((vec2<f32>(x_2348.x, x_2348.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2351));
            let x_2354 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
            let x_2357 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2357) + vec2<f32>(1.0f, 1.0f));
            let x_2360 : vec2<f32> = u_xlat61;
            let x_2361 : vec2<f32> = min(x_2360, vec2<f32>(0.0f, 0.0f));
            let x_2362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2361.x, x_2361.y, x_2362.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat14;
            let x_2367 : vec4<f32> = u_xlat14;
            let x_2370 : vec2<f32> = u_xlat63;
            let x_2371 : vec2<f32> = ((-(vec2<f32>(x_2364.x, x_2364.y)) * vec2<f32>(x_2367.x, x_2367.y)) + x_2370);
            let x_2372 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2374 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2374, vec2<f32>(0.0f, 0.0f));
            let x_2376 : vec2<f32> = u_xlat61;
            let x_2378 : vec2<f32> = u_xlat61;
            let x_2380 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2376) * x_2378) + vec2<f32>(x_2380.y, x_2380.w));
            let x_2383 : vec4<f32> = u_xlat14;
            let x_2385 : vec2<f32> = (vec2<f32>(x_2383.x, x_2383.y) + vec2<f32>(1.0f, 1.0f));
            let x_2386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
            let x_2388 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2388 + vec2<f32>(1.0f, 1.0f));
            let x_2390 : vec4<f32> = u_xlat13;
            let x_2392 : vec2<f32> = (vec2<f32>(x_2390.x, x_2390.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2393 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
            let x_2395 : vec2<f32> = u_xlat63;
            let x_2396 : vec2<f32> = (x_2395 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2397 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
            let x_2399 : vec4<f32> = u_xlat14;
            let x_2401 : vec2<f32> = (vec2<f32>(x_2399.x, x_2399.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2402 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
            let x_2404 : vec2<f32> = u_xlat61;
            let x_2405 : vec2<f32> = (x_2404 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2406 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2405.x, x_2405.y, x_2406.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2408.y, x_2408.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2412 : f32 = u_xlat14.x;
            u_xlat15.z = x_2412;
            let x_2415 : f32 = u_xlat61.x;
            u_xlat15.w = x_2415;
            let x_2418 : f32 = u_xlat16.x;
            u_xlat13.z = x_2418;
            let x_2421 : f32 = u_xlat12.x;
            u_xlat13.w = x_2421;
            let x_2423 : vec4<f32> = u_xlat13;
            let x_2425 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2423.z, x_2423.w, x_2423.x, x_2423.z) + vec4<f32>(x_2425.z, x_2425.w, x_2425.x, x_2425.z));
            let x_2429 : f32 = u_xlat15.y;
            u_xlat14.z = x_2429;
            let x_2432 : f32 = u_xlat61.y;
            u_xlat14.w = x_2432;
            let x_2435 : f32 = u_xlat13.y;
            u_xlat16.z = x_2435;
            let x_2438 : f32 = u_xlat12.z;
            u_xlat16.w = x_2438;
            let x_2440 : vec4<f32> = u_xlat14;
            let x_2442 : vec4<f32> = u_xlat16;
            let x_2444 : vec3<f32> = (vec3<f32>(x_2440.z, x_2440.y, x_2440.w) + vec3<f32>(x_2442.z, x_2442.y, x_2442.w));
            let x_2445 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat13;
            let x_2449 : vec4<f32> = u_xlat17;
            let x_2451 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.z, x_2447.w) / vec3<f32>(x_2449.z, x_2449.w, x_2449.y));
            let x_2452 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
            let x_2454 : vec4<f32> = u_xlat13;
            let x_2456 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.y, x_2454.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2457 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat16;
            let x_2461 : vec4<f32> = u_xlat12;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2459.z, x_2459.y, x_2459.w) / vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
            let x_2464 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat14;
            let x_2468 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2469 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat13;
            let x_2474 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2476 : vec3<f32> = (vec3<f32>(x_2471.y, x_2471.x, x_2471.z) * vec3<f32>(x_2474.x, x_2474.x, x_2474.x));
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat14;
            let x_2482 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2484 : vec3<f32> = (vec3<f32>(x_2479.x, x_2479.y, x_2479.z) * vec3<f32>(x_2482.y, x_2482.y, x_2482.y));
            let x_2485 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
            let x_2488 : f32 = u_xlat14.x;
            u_xlat13.w = x_2488;
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2493 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2496 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2490.x, x_2490.y, x_2490.x, x_2490.y) * vec4<f32>(x_2493.x, x_2493.y, x_2493.x, x_2493.y)) + vec4<f32>(x_2496.y, x_2496.w, x_2496.x, x_2496.w));
            let x_2499 : vec4<f32> = u_xlat11;
            let x_2502 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2505 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2499.x, x_2499.y) * vec2<f32>(x_2502.x, x_2502.y)) + vec2<f32>(x_2505.z, x_2505.w));
            let x_2509 : f32 = u_xlat13.y;
            u_xlat14.w = x_2509;
            let x_2511 : vec4<f32> = u_xlat14;
            let x_2512 : vec2<f32> = vec2<f32>(x_2511.y, x_2511.z);
            let x_2513 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2513.x, x_2512.x, x_2513.z, x_2512.y);
            let x_2515 : vec4<f32> = u_xlat11;
            let x_2518 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2521 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y) * vec4<f32>(x_2518.x, x_2518.y, x_2518.x, x_2518.y)) + vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2521.y));
            let x_2524 : vec4<f32> = u_xlat11;
            let x_2527 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2530 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2524.x, x_2524.y, x_2524.x, x_2524.y) * vec4<f32>(x_2527.x, x_2527.y, x_2527.x, x_2527.y)) + vec4<f32>(x_2530.w, x_2530.y, x_2530.w, x_2530.z));
            let x_2533 : vec4<f32> = u_xlat11;
            let x_2536 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2539 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y) * vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.y)) + vec4<f32>(x_2539.x, x_2539.w, x_2539.z, x_2539.w));
            let x_2542 : vec4<f32> = u_xlat12;
            let x_2544 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2542.x, x_2542.x, x_2542.x, x_2542.y) * vec4<f32>(x_2544.z, x_2544.w, x_2544.y, x_2544.z));
            let x_2547 : vec4<f32> = u_xlat12;
            let x_2549 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2547.y, x_2547.y, x_2547.z, x_2547.z) * x_2549);
            let x_2552 : f32 = u_xlat12.z;
            let x_2554 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2552 * x_2554);
            let x_2558 : vec4<f32> = u_xlat15;
            let x_2559 : vec2<f32> = vec2<f32>(x_2558.x, x_2558.y);
            let x_2561 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2559.x, x_2559.y, x_2561);
            let x_2569 : vec3<f32> = txVec34;
            let x_2571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2569.xy, x_2569.z);
            u_xlat36 = x_2571;
            let x_2573 : vec4<f32> = u_xlat15;
            let x_2574 : vec2<f32> = vec2<f32>(x_2573.z, x_2573.w);
            let x_2576 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2574.x, x_2574.y, x_2576);
            let x_2583 : vec3<f32> = txVec35;
            let x_2585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2583.xy, x_2583.z);
            u_xlat12.x = x_2585;
            let x_2588 : f32 = u_xlat12.x;
            let x_2590 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2588 * x_2590);
            let x_2594 : f32 = u_xlat18.x;
            let x_2595 : f32 = u_xlat36;
            let x_2598 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2594 * x_2595) + x_2598);
            let x_2601 : vec2<f32> = u_xlat61;
            let x_2603 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2601.x, x_2601.y, x_2603);
            let x_2610 : vec3<f32> = txVec36;
            let x_2612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2610.xy, x_2610.z);
            u_xlat61.x = x_2612;
            let x_2615 : f32 = u_xlat18.z;
            let x_2617 : f32 = u_xlat61.x;
            let x_2619 : f32 = u_xlat36;
            u_xlat36 = ((x_2615 * x_2617) + x_2619);
            let x_2622 : vec4<f32> = u_xlat14;
            let x_2623 : vec2<f32> = vec2<f32>(x_2622.x, x_2622.y);
            let x_2625 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2623.x, x_2623.y, x_2625);
            let x_2632 : vec3<f32> = txVec37;
            let x_2634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2632.xy, x_2632.z);
            u_xlat61.x = x_2634;
            let x_2637 : f32 = u_xlat18.w;
            let x_2639 : f32 = u_xlat61.x;
            let x_2641 : f32 = u_xlat36;
            u_xlat36 = ((x_2637 * x_2639) + x_2641);
            let x_2644 : vec4<f32> = u_xlat16;
            let x_2645 : vec2<f32> = vec2<f32>(x_2644.x, x_2644.y);
            let x_2647 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2645.x, x_2645.y, x_2647);
            let x_2654 : vec3<f32> = txVec38;
            let x_2656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2654.xy, x_2654.z);
            u_xlat61.x = x_2656;
            let x_2659 : f32 = u_xlat19.x;
            let x_2661 : f32 = u_xlat61.x;
            let x_2663 : f32 = u_xlat36;
            u_xlat36 = ((x_2659 * x_2661) + x_2663);
            let x_2666 : vec4<f32> = u_xlat16;
            let x_2667 : vec2<f32> = vec2<f32>(x_2666.z, x_2666.w);
            let x_2669 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
            let x_2676 : vec3<f32> = txVec39;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat61.x = x_2678;
            let x_2681 : f32 = u_xlat19.y;
            let x_2683 : f32 = u_xlat61.x;
            let x_2685 : f32 = u_xlat36;
            u_xlat36 = ((x_2681 * x_2683) + x_2685);
            let x_2688 : vec4<f32> = u_xlat14;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.z, x_2688.w);
            let x_2691 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2698 : vec3<f32> = txVec40;
            let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
            u_xlat61.x = x_2700;
            let x_2703 : f32 = u_xlat19.z;
            let x_2705 : f32 = u_xlat61.x;
            let x_2707 : f32 = u_xlat36;
            u_xlat36 = ((x_2703 * x_2705) + x_2707);
            let x_2710 : vec4<f32> = u_xlat13;
            let x_2711 : vec2<f32> = vec2<f32>(x_2710.x, x_2710.y);
            let x_2713 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2711.x, x_2711.y, x_2713);
            let x_2720 : vec3<f32> = txVec41;
            let x_2722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2720.xy, x_2720.z);
            u_xlat61.x = x_2722;
            let x_2725 : f32 = u_xlat19.w;
            let x_2727 : f32 = u_xlat61.x;
            let x_2729 : f32 = u_xlat36;
            u_xlat36 = ((x_2725 * x_2727) + x_2729);
            let x_2732 : vec4<f32> = u_xlat13;
            let x_2733 : vec2<f32> = vec2<f32>(x_2732.z, x_2732.w);
            let x_2735 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2733.x, x_2733.y, x_2735);
            let x_2742 : vec3<f32> = txVec42;
            let x_2744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2742.xy, x_2742.z);
            u_xlat61.x = x_2744;
            let x_2747 : f32 = u_xlat11.x;
            let x_2749 : f32 = u_xlat61.x;
            let x_2751 : f32 = u_xlat36;
            u_xlat85 = ((x_2747 * x_2749) + x_2751);
          } else {
            let x_2754 : vec4<f32> = u_xlat10;
            let x_2757 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2760 : vec2<f32> = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.z, x_2757.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2761 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat11;
            let x_2765 : vec2<f32> = floor(vec2<f32>(x_2763.x, x_2763.y));
            let x_2766 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2765.x, x_2765.y, x_2766.z, x_2766.w);
            let x_2768 : vec4<f32> = u_xlat10;
            let x_2771 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2768.x, x_2768.y) * vec2<f32>(x_2771.z, x_2771.w)) + -(vec2<f32>(x_2774.x, x_2774.y)));
            let x_2778 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2778.x, x_2778.x, x_2778.y, x_2778.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2781 : vec4<f32> = u_xlat12;
            let x_2783 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2781.x, x_2781.x, x_2781.z, x_2781.z) * vec4<f32>(x_2783.x, x_2783.x, x_2783.z, x_2783.z));
            let x_2786 : vec4<f32> = u_xlat13;
            let x_2788 : vec2<f32> = (vec2<f32>(x_2786.y, x_2786.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2789 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2789.x, x_2788.x, x_2789.z, x_2788.y);
            let x_2791 : vec4<f32> = u_xlat13;
            let x_2794 : vec2<f32> = u_xlat61;
            let x_2796 : vec2<f32> = ((vec2<f32>(x_2791.x, x_2791.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2794));
            let x_2797 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2796.x, x_2797.y, x_2796.y, x_2797.w);
            let x_2799 : vec2<f32> = u_xlat61;
            let x_2801 : vec2<f32> = (-(x_2799) + vec2<f32>(1.0f, 1.0f));
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2804, vec2<f32>(0.0f, 0.0f));
            let x_2806 : vec2<f32> = u_xlat63;
            let x_2808 : vec2<f32> = u_xlat63;
            let x_2810 : vec4<f32> = u_xlat13;
            let x_2812 : vec2<f32> = ((-(x_2806) * x_2808) + vec2<f32>(x_2810.x, x_2810.y));
            let x_2813 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2815, vec2<f32>(0.0f, 0.0f));
            let x_2818 : vec2<f32> = u_xlat63;
            let x_2820 : vec2<f32> = u_xlat63;
            let x_2822 : vec4<f32> = u_xlat12;
            let x_2824 : vec2<f32> = ((-(x_2818) * x_2820) + vec2<f32>(x_2822.y, x_2822.w));
            let x_2825 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2824.x, x_2825.y, x_2824.y);
            let x_2827 : vec4<f32> = u_xlat13;
            let x_2830 : vec2<f32> = (vec2<f32>(x_2827.x, x_2827.y) + vec2<f32>(2.0f, 2.0f));
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec3<f32> = u_xlat37;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.z) + vec2<f32>(2.0f, 2.0f));
            let x_2836 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2836.x, x_2835.x, x_2836.z, x_2835.y);
            let x_2839 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2839 * 0.08163200318813323975f);
            let x_2842 : vec4<f32> = u_xlat12;
            let x_2845 : vec3<f32> = (vec3<f32>(x_2842.z, x_2842.x, x_2842.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2846 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2845.x, x_2845.y, x_2845.z, x_2846.w);
            let x_2848 : vec4<f32> = u_xlat13;
            let x_2850 : vec2<f32> = (vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2851 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2854 : f32 = u_xlat16.y;
            u_xlat15.x = x_2854;
            let x_2856 : vec2<f32> = u_xlat61;
            let x_2859 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2860.x, x_2859.x, x_2860.z, x_2859.y);
            let x_2862 : vec2<f32> = u_xlat61;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.x, x_2862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2865.x, x_2866.y, x_2865.y, x_2866.w);
            let x_2869 : f32 = u_xlat12.x;
            u_xlat13.y = x_2869;
            let x_2872 : f32 = u_xlat14.y;
            u_xlat13.w = x_2872;
            let x_2874 : vec4<f32> = u_xlat13;
            let x_2875 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2874 + x_2875);
            let x_2877 : vec2<f32> = u_xlat61;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2877.y, x_2877.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2881 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2881.x, x_2880.x, x_2881.z, x_2880.y);
            let x_2883 : vec2<f32> = u_xlat61;
            let x_2886 : vec2<f32> = ((vec2<f32>(x_2883.y, x_2883.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2887 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2886.x, x_2887.y, x_2886.y, x_2887.w);
            let x_2890 : f32 = u_xlat12.y;
            u_xlat14.y = x_2890;
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2893 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2892 + x_2893);
            let x_2895 : vec4<f32> = u_xlat13;
            let x_2896 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2895 / x_2896);
            let x_2898 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2900 : vec4<f32> = u_xlat14;
            let x_2901 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2900 / x_2901);
            let x_2903 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2903 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2905 : vec4<f32> = u_xlat13;
            let x_2908 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2905.w, x_2905.x, x_2905.y, x_2905.z) * vec4<f32>(x_2908.x, x_2908.x, x_2908.x, x_2908.x));
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2914 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2911.x, x_2911.w, x_2911.y, x_2911.z) * vec4<f32>(x_2914.y, x_2914.y, x_2914.y, x_2914.y));
            let x_2917 : vec4<f32> = u_xlat13;
            let x_2918 : vec3<f32> = vec3<f32>(x_2917.y, x_2917.z, x_2917.w);
            let x_2919 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2918.x, x_2919.y, x_2918.y, x_2918.z);
            let x_2922 : f32 = u_xlat14.x;
            u_xlat16.y = x_2922;
            let x_2924 : vec4<f32> = u_xlat11;
            let x_2927 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) * vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y)) + vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2930.y));
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2933.x, x_2933.y) * vec2<f32>(x_2936.x, x_2936.y)) + vec2<f32>(x_2939.w, x_2939.y));
            let x_2943 : f32 = u_xlat16.y;
            u_xlat13.y = x_2943;
            let x_2946 : f32 = u_xlat14.z;
            u_xlat16.y = x_2946;
            let x_2948 : vec4<f32> = u_xlat11;
            let x_2951 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y) * vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y)) + vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2954.y));
            let x_2957 : vec4<f32> = u_xlat11;
            let x_2960 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat16;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.x, x_2960.y)) + vec2<f32>(x_2963.w, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat16.y;
            u_xlat13.z = x_2969;
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2975 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.z));
            let x_2982 : f32 = u_xlat14.w;
            u_xlat16.y = x_2982;
            let x_2985 : vec4<f32> = u_xlat11;
            let x_2988 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) * vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y)) + vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2991.y));
            let x_2995 : vec4<f32> = u_xlat11;
            let x_2998 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2995.x, x_2995.y) * vec2<f32>(x_2998.x, x_2998.y)) + vec2<f32>(x_3001.w, x_3001.y));
            let x_3005 : f32 = u_xlat16.y;
            u_xlat13.w = x_3005;
            let x_3008 : vec4<f32> = u_xlat11;
            let x_3011 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3008.x, x_3008.y) * vec2<f32>(x_3011.x, x_3011.y)) + vec2<f32>(x_3014.x, x_3014.w));
            let x_3017 : vec4<f32> = u_xlat16;
            let x_3018 : vec3<f32> = vec3<f32>(x_3017.x, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3018.x, x_3019.y, x_3018.y, x_3018.z);
            let x_3021 : vec4<f32> = u_xlat11;
            let x_3024 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y) * vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y)) + vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3027.y));
            let x_3031 : vec4<f32> = u_xlat11;
            let x_3034 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_3037 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3031.x, x_3031.y) * vec2<f32>(x_3034.x, x_3034.y)) + vec2<f32>(x_3037.w, x_3037.y));
            let x_3041 : f32 = u_xlat13.x;
            u_xlat14.x = x_3041;
            let x_3043 : vec4<f32> = u_xlat11;
            let x_3046 : vec4<f32> = x_331.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.x, x_3049.y));
            let x_3052 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3051.x, x_3051.y, x_3052.z, x_3052.w);
            let x_3055 : vec4<f32> = u_xlat12;
            let x_3057 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3055.x, x_3055.x, x_3055.x, x_3055.x) * x_3057);
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3062 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3060.y, x_3060.y, x_3060.y, x_3060.y) * x_3062);
            let x_3065 : vec4<f32> = u_xlat12;
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3065.z, x_3065.z, x_3065.z, x_3065.z) * x_3067);
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3071 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3069.w, x_3069.w, x_3069.w, x_3069.w) * x_3071);
            let x_3074 : vec4<f32> = u_xlat17;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.x, x_3074.y);
            let x_3077 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec43;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat13.x = x_3086;
            let x_3089 : vec4<f32> = u_xlat17;
            let x_3090 : vec2<f32> = vec2<f32>(x_3089.z, x_3089.w);
            let x_3092 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3100 : vec3<f32> = txVec44;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat88 = x_3102;
            let x_3103 : f32 = u_xlat88;
            let x_3105 : f32 = u_xlat22.y;
            u_xlat88 = (x_3103 * x_3105);
            let x_3108 : f32 = u_xlat22.x;
            let x_3110 : f32 = u_xlat13.x;
            let x_3112 : f32 = u_xlat88;
            u_xlat13.x = ((x_3108 * x_3110) + x_3112);
            let x_3116 : vec2<f32> = u_xlat61;
            let x_3118 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec45;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat61.x = x_3127;
            let x_3130 : f32 = u_xlat22.z;
            let x_3132 : f32 = u_xlat61.x;
            let x_3135 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3130 * x_3132) + x_3135);
            let x_3139 : vec4<f32> = u_xlat20;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3150 : vec3<f32> = txVec46;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat86 = x_3152;
            let x_3154 : f32 = u_xlat22.w;
            let x_3155 : f32 = u_xlat86;
            let x_3158 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3154 * x_3155) + x_3158);
            let x_3162 : vec4<f32> = u_xlat18;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
            let x_3165 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec47;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat86 = x_3174;
            let x_3176 : f32 = u_xlat23.x;
            let x_3177 : f32 = u_xlat86;
            let x_3180 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3176 * x_3177) + x_3180);
            let x_3184 : vec4<f32> = u_xlat18;
            let x_3185 : vec2<f32> = vec2<f32>(x_3184.z, x_3184.w);
            let x_3187 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
            let x_3194 : vec3<f32> = txVec48;
            let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
            u_xlat86 = x_3196;
            let x_3198 : f32 = u_xlat23.y;
            let x_3199 : f32 = u_xlat86;
            let x_3202 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3198 * x_3199) + x_3202);
            let x_3206 : vec4<f32> = u_xlat19;
            let x_3207 : vec2<f32> = vec2<f32>(x_3206.x, x_3206.y);
            let x_3209 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec49;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat86 = x_3218;
            let x_3220 : f32 = u_xlat23.z;
            let x_3221 : f32 = u_xlat86;
            let x_3224 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3220 * x_3221) + x_3224);
            let x_3228 : vec4<f32> = u_xlat20;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.z, x_3228.w);
            let x_3231 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec50;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat86 = x_3240;
            let x_3242 : f32 = u_xlat23.w;
            let x_3243 : f32 = u_xlat86;
            let x_3246 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3242 * x_3243) + x_3246);
            let x_3250 : vec4<f32> = u_xlat21;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.x, x_3250.y);
            let x_3253 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec51;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat86 = x_3262;
            let x_3264 : f32 = u_xlat24.x;
            let x_3265 : f32 = u_xlat86;
            let x_3268 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3264 * x_3265) + x_3268);
            let x_3272 : vec4<f32> = u_xlat21;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.z, x_3272.w);
            let x_3275 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec52;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat86 = x_3284;
            let x_3286 : f32 = u_xlat24.y;
            let x_3287 : f32 = u_xlat86;
            let x_3290 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3286 * x_3287) + x_3290);
            let x_3294 : vec2<f32> = u_xlat38;
            let x_3296 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3294.x, x_3294.y, x_3296);
            let x_3303 : vec3<f32> = txVec53;
            let x_3305 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3303.xy, x_3303.z);
            u_xlat86 = x_3305;
            let x_3307 : f32 = u_xlat24.z;
            let x_3308 : f32 = u_xlat86;
            let x_3311 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3307 * x_3308) + x_3311);
            let x_3315 : vec2<f32> = u_xlat69;
            let x_3317 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec54;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat86 = x_3326;
            let x_3328 : f32 = u_xlat24.w;
            let x_3329 : f32 = u_xlat86;
            let x_3332 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3328 * x_3329) + x_3332);
            let x_3336 : vec4<f32> = u_xlat16;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec55;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat86 = x_3348;
            let x_3350 : f32 = u_xlat12.x;
            let x_3351 : f32 = u_xlat86;
            let x_3354 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3350 * x_3351) + x_3354);
            let x_3358 : vec4<f32> = u_xlat16;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.z, x_3358.w);
            let x_3361 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec56;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat86 = x_3370;
            let x_3372 : f32 = u_xlat12.y;
            let x_3373 : f32 = u_xlat86;
            let x_3376 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3372 * x_3373) + x_3376);
            let x_3380 : vec2<f32> = u_xlat64;
            let x_3382 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec57;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat86 = x_3391;
            let x_3393 : f32 = u_xlat12.z;
            let x_3394 : f32 = u_xlat86;
            let x_3397 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3393 * x_3394) + x_3397);
            let x_3401 : vec4<f32> = u_xlat11;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.x, x_3401.y);
            let x_3404 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec58;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat11.x = x_3413;
            let x_3416 : f32 = u_xlat12.w;
            let x_3418 : f32 = u_xlat11.x;
            let x_3421 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3416 * x_3418) + x_3421);
          }
        }
      } else {
        let x_3425 : vec4<f32> = u_xlat10;
        let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
        let x_3428 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
        let x_3435 : vec3<f32> = txVec59;
        let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
        u_xlat85 = x_3437;
      }
      let x_3438 : i32 = u_xlati81;
      let x_3440 : f32 = x_331.x_AdditionalShadowParams[x_3438].x;
      u_xlat10.x = (1.0f + -(x_3440));
      let x_3444 : f32 = u_xlat85;
      let x_3445 : i32 = u_xlati81;
      let x_3447 : f32 = x_331.x_AdditionalShadowParams[x_3445].x;
      let x_3450 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3444 * x_3447) + x_3450);
      let x_3454 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3454);
      let x_3459 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3459 >= 1.0f);
      let x_3461 : bool = u_xlatb60;
      let x_3463 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3461 | x_3463);
      let x_3467 : bool = u_xlatb35.x;
      if (x_3467) {
        x_3468 = 1.0f;
      } else {
        let x_3473 : f32 = u_xlat10.x;
        x_3468 = x_3473;
      }
      let x_3474 : f32 = x_3468;
      u_xlat10.x = x_3474;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3479 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3479) + 1.0f);
    let x_3482 : f32 = u_xlat1;
    let x_3483 : f32 = u_xlat35;
    let x_3486 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3482 * x_3483) + x_3486);
    let x_3489 : f32 = u_xlat83;
    let x_3491 : f32 = u_xlat10.x;
    u_xlat83 = (x_3489 * x_3491);
    let x_3493 : vec4<f32> = u_xlat2;
    let x_3495 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3493.x, x_3493.y, x_3493.z), x_3495);
    let x_3499 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3499, 0.0f, 1.0f);
    let x_3502 : f32 = u_xlat83;
    let x_3504 : f32 = u_xlat10.x;
    u_xlat83 = (x_3502 * x_3504);
    let x_3506 : f32 = u_xlat83;
    let x_3508 : i32 = u_xlati81;
    let x_3510 : vec4<f32> = x_1975.x_AdditionalLightsColor[x_3508];
    let x_3512 : vec3<f32> = (vec3<f32>(x_3506, x_3506, x_3506) * vec3<f32>(x_3510.x, x_3510.y, x_3510.z));
    let x_3513 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3513.w);
    let x_3515 : vec4<f32> = u_xlat8;
    let x_3517 : vec4<f32> = u_xlat9;
    let x_3520 : vec3<f32> = u_xlat26;
    let x_3521 : vec3<f32> = ((vec3<f32>(x_3515.x, x_3515.y, x_3515.z) * vec3<f32>(x_3517.x, x_3517.x, x_3517.x)) + x_3520);
    let x_3522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat8;
    let x_3526 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3524.x, x_3524.y, x_3524.z), vec3<f32>(x_3526.x, x_3526.y, x_3526.z));
    let x_3529 : f32 = u_xlat81;
    u_xlat81 = max(x_3529, 1.17549435e-38f);
    let x_3531 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3531);
    let x_3533 : f32 = u_xlat81;
    let x_3535 : vec4<f32> = u_xlat8;
    let x_3537 : vec3<f32> = (vec3<f32>(x_3533, x_3533, x_3533) * vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
    let x_3538 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3538.w);
    let x_3540 : vec4<f32> = u_xlat2;
    let x_3542 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3540.x, x_3540.y, x_3540.z), vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
    let x_3545 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3545, 0.0f, 1.0f);
    let x_3547 : vec3<f32> = u_xlat34;
    let x_3548 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3547, vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
    let x_3553 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3553, 0.0f, 1.0f);
    let x_3556 : f32 = u_xlat81;
    let x_3557 : f32 = u_xlat81;
    u_xlat81 = (x_3556 * x_3557);
    let x_3559 : f32 = u_xlat81;
    let x_3561 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3559 * x_3561) + 1.00001001358032226562f);
    let x_3565 : f32 = u_xlat8.x;
    let x_3567 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3565 * x_3567);
    let x_3570 : f32 = u_xlat81;
    let x_3571 : f32 = u_xlat81;
    u_xlat81 = (x_3570 * x_3571);
    let x_3574 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3574, 0.10000000149011611938f);
    let x_3577 : f32 = u_xlat81;
    let x_3579 : f32 = u_xlat8.x;
    u_xlat81 = (x_3577 * x_3579);
    let x_3582 : f32 = u_xlat4.x;
    let x_3583 : f32 = u_xlat81;
    u_xlat81 = (x_3582 * x_3583);
    let x_3586 : f32 = u_xlat5.x;
    let x_3587 : f32 = u_xlat81;
    u_xlat81 = (x_3586 / x_3587);
    let x_3589 : vec4<f32> = u_xlat0;
    let x_3591 : f32 = u_xlat81;
    let x_3594 : vec3<f32> = u_xlat29;
    let x_3595 : vec3<f32> = ((vec3<f32>(x_3589.x, x_3589.y, x_3589.z) * vec3<f32>(x_3591, x_3591, x_3591)) + x_3594);
    let x_3596 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3595.x, x_3595.y, x_3595.z, x_3596.w);
    let x_3598 : vec4<f32> = u_xlat8;
    let x_3600 : vec4<f32> = u_xlat10;
    let x_3603 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_3598.x, x_3598.y, x_3598.z) * vec3<f32>(x_3600.x, x_3600.y, x_3600.z)) + x_3603);

    continuing {
      let x_3605 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3605 + bitcast<u32>(1i));
    }
  }
  let x_3607 : vec3<f32> = u_xlat32;
  let x_3608 : vec4<f32> = u_xlat6;
  let x_3611 : vec3<f32> = u_xlat28;
  let x_3612 : vec3<f32> = ((x_3607 * vec3<f32>(x_3608.x, x_3608.y, x_3608.z)) + x_3611);
  let x_3613 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
  let x_3615 : vec3<f32> = u_xlat30;
  let x_3616 : vec4<f32> = u_xlat0;
  let x_3618 : vec3<f32> = (x_3615 + vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
  let x_3619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3618.x, x_3618.y, x_3618.z, x_3619.w);
  let x_3622 : f32 = u_xlat3.x;
  let x_3624 : f32 = u_xlat3.x;
  u_xlat75 = (x_3622 * -(x_3624));
  let x_3627 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3627);
  let x_3629 : vec4<f32> = u_xlat0;
  let x_3632 : vec4<f32> = x_29.unity_FogColor;
  let x_3635 : vec3<f32> = (vec3<f32>(x_3629.x, x_3629.y, x_3629.z) + -(vec3<f32>(x_3632.x, x_3632.y, x_3632.z)));
  let x_3636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3635.x, x_3635.y, x_3635.z, x_3636.w);
  let x_3640 : f32 = u_xlat75;
  let x_3642 : vec4<f32> = u_xlat0;
  let x_3646 : vec4<f32> = x_29.unity_FogColor;
  let x_3648 : vec3<f32> = ((vec3<f32>(x_3640, x_3640, x_3640) * vec3<f32>(x_3642.x, x_3642.y, x_3642.z)) + vec3<f32>(x_3646.x, x_3646.y, x_3646.z));
  let x_3649 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3649.w);
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


