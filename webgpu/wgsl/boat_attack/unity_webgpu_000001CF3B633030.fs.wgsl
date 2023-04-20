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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_175 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_322 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat76 : f32;

var<private> u_xlatu75 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1989 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1623 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2133 : f32;
  var x_2144 : f32;
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
  u_xlatb26 = (x_85 == 0.0f);
  let x_90 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_96 : vec3<f32> = (-(x_90) + x_95);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_105);
  let x_107 : f32 = u_xlat51;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : bool = u_xlatb26;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb26;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb26;
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
  u_xlat26.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat26;
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
  u_xlat26.x = (x_221 * x_223);
  let x_227 : f32 = u_xlat2.x;
  let x_229 : f32 = u_xlat2.x;
  let x_232 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_227 * x_229) + -(x_232));
  let x_238 : vec4<f32> = x_175.unity_SHC;
  let x_240 : vec3<f32> = u_xlat26;
  let x_243 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat26;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat26 = (x_246 + x_247);
  let x_249 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_254 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_254) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_260 : f32 = u_xlat77;
  u_xlat78 = (-(x_260) + 1.0f);
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : f32 = u_xlat77;
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
  u_xlat77 = (x_291 * x_293);
  let x_295 : f32 = u_xlat77;
  u_xlat77 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat77;
  let x_300 : f32 = u_xlat77;
  u_xlat79 = (x_299 * x_300);
  let x_304 : f32 = u_xlat0.w;
  let x_305 : f32 = u_xlat78;
  u_xlat75 = (x_304 + x_305);
  let x_307 : f32 = u_xlat75;
  u_xlat75 = clamp(x_307, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat77;
  u_xlat78 = ((x_309 * 4.0f) + 2.0f);
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
      u_xlatb30 = (x_423 == 2.0f);
      let x_425 : bool = u_xlatb30;
      if (x_425) {
        let x_429 : vec4<f32> = vs_TEXCOORD8;
        let x_433 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_438 : vec2<f32> = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_433.z, x_433.w)) + vec2<f32>(0.5f, 0.5f));
        let x_439 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_438.x, x_438.y, x_439.z);
        let x_441 : vec3<f32> = u_xlat30;
        let x_443 : vec2<f32> = floor(vec2<f32>(x_441.x, x_441.y));
        let x_444 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_443.x, x_443.y, x_444.z);
        let x_446 : vec4<f32> = vs_TEXCOORD8;
        let x_449 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_452 : vec3<f32> = u_xlat30;
        let x_455 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_449.z, x_449.w)) + -(vec2<f32>(x_452.x, x_452.y)));
        let x_456 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_464 : vec4<f32> = u_xlat7;
        let x_466 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_464.x, x_464.x, x_464.z, x_464.z) * vec4<f32>(x_466.x, x_466.x, x_466.z, x_466.z));
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
        let x_639 : vec3<f32> = u_xlat30;
        let x_642 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.y, x_645.w, x_645.x, x_645.w));
        let x_648 : vec3<f32> = u_xlat30;
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
        let x_667 : vec3<f32> = u_xlat30;
        let x_670 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y) * vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y)) + vec4<f32>(x_673.x, x_673.y, x_673.z, x_673.y));
        let x_676 : vec3<f32> = u_xlat30;
        let x_679 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_682 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y) * vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y)) + vec4<f32>(x_682.w, x_682.y, x_682.w, x_682.z));
        let x_685 : vec3<f32> = u_xlat30;
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
        u_xlat30.x = (x_706 * x_708);
        let x_712 : vec4<f32> = u_xlat10;
        let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
        let x_715 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_723 : vec3<f32> = txVec4;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat55 = x_725;
        let x_727 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = vec2<f32>(x_727.z, x_727.w);
        let x_730 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_728.x, x_728.y, x_730);
        let x_738 : vec3<f32> = txVec5;
        let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_738.xy, x_738.z);
        u_xlat80 = x_740;
        let x_741 : f32 = u_xlat80;
        let x_743 : f32 = u_xlat13.y;
        u_xlat80 = (x_741 * x_743);
        let x_746 : f32 = u_xlat13.x;
        let x_747 : f32 = u_xlat55;
        let x_749 : f32 = u_xlat80;
        u_xlat55 = ((x_746 * x_747) + x_749);
        let x_752 : vec4<f32> = u_xlat11;
        let x_753 : vec2<f32> = vec2<f32>(x_752.x, x_752.y);
        let x_755 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_753.x, x_753.y, x_755);
        let x_762 : vec3<f32> = txVec6;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat80 = x_764;
        let x_766 : f32 = u_xlat13.z;
        let x_767 : f32 = u_xlat80;
        let x_769 : f32 = u_xlat55;
        u_xlat55 = ((x_766 * x_767) + x_769);
        let x_772 : vec4<f32> = u_xlat9;
        let x_773 : vec2<f32> = vec2<f32>(x_772.x, x_772.y);
        let x_775 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_773.x, x_773.y, x_775);
        let x_782 : vec3<f32> = txVec7;
        let x_784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_782.xy, x_782.z);
        u_xlat80 = x_784;
        let x_786 : f32 = u_xlat13.w;
        let x_787 : f32 = u_xlat80;
        let x_789 : f32 = u_xlat55;
        u_xlat55 = ((x_786 * x_787) + x_789);
        let x_792 : vec4<f32> = u_xlat12;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat80 = x_804;
        let x_806 : f32 = u_xlat14.x;
        let x_807 : f32 = u_xlat80;
        let x_809 : f32 = u_xlat55;
        u_xlat55 = ((x_806 * x_807) + x_809);
        let x_812 : vec4<f32> = u_xlat12;
        let x_813 : vec2<f32> = vec2<f32>(x_812.z, x_812.w);
        let x_815 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec9;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat80 = x_824;
        let x_826 : f32 = u_xlat14.y;
        let x_827 : f32 = u_xlat80;
        let x_829 : f32 = u_xlat55;
        u_xlat55 = ((x_826 * x_827) + x_829);
        let x_832 : vec4<f32> = u_xlat9;
        let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
        let x_835 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec10;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat80 = x_844;
        let x_846 : f32 = u_xlat14.z;
        let x_847 : f32 = u_xlat80;
        let x_849 : f32 = u_xlat55;
        u_xlat55 = ((x_846 * x_847) + x_849);
        let x_852 : vec4<f32> = u_xlat8;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec11;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
        u_xlat80 = x_864;
        let x_866 : f32 = u_xlat14.w;
        let x_867 : f32 = u_xlat80;
        let x_869 : f32 = u_xlat55;
        u_xlat55 = ((x_866 * x_867) + x_869);
        let x_872 : vec4<f32> = u_xlat8;
        let x_873 : vec2<f32> = vec2<f32>(x_872.z, x_872.w);
        let x_875 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_882 : vec3<f32> = txVec12;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat80 = x_884;
        let x_886 : f32 = u_xlat30.x;
        let x_887 : f32 = u_xlat80;
        let x_889 : f32 = u_xlat55;
        u_xlat5.x = ((x_886 * x_887) + x_889);
      } else {
        let x_893 : vec4<f32> = vs_TEXCOORD8;
        let x_896 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_899 : vec2<f32> = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_896.z, x_896.w)) + vec2<f32>(0.5f, 0.5f));
        let x_900 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_899.x, x_899.y, x_900.z);
        let x_902 : vec3<f32> = u_xlat30;
        let x_904 : vec2<f32> = floor(vec2<f32>(x_902.x, x_902.y));
        let x_905 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_904.x, x_904.y, x_905.z);
        let x_907 : vec4<f32> = vs_TEXCOORD8;
        let x_910 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_913 : vec3<f32> = u_xlat30;
        let x_916 : vec2<f32> = ((vec2<f32>(x_907.x, x_907.y) * vec2<f32>(x_910.z, x_910.w)) + -(vec2<f32>(x_913.x, x_913.y)));
        let x_917 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_919.x, x_919.x, x_919.y, x_919.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_922 : vec4<f32> = u_xlat7;
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_922.x, x_922.x, x_922.z, x_922.z) * vec4<f32>(x_924.x, x_924.x, x_924.z, x_924.z));
        let x_927 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = (vec2<f32>(x_927.y, x_927.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_932.x, x_931.x, x_932.z, x_931.y);
        let x_934 : vec4<f32> = u_xlat8;
        let x_937 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_934.x, x_934.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_937.x, x_937.y)));
        let x_941 : vec4<f32> = u_xlat6;
        let x_944 : vec2<f32> = (-(vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_944.x, x_945.y, x_944.y, x_945.w);
        let x_947 : vec4<f32> = u_xlat6;
        let x_949 : vec2<f32> = min(vec2<f32>(x_947.x, x_947.y), vec2<f32>(0.0f, 0.0f));
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = u_xlat8;
        let x_958 : vec4<f32> = u_xlat7;
        let x_960 : vec2<f32> = ((-(vec2<f32>(x_952.x, x_952.y)) * vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(x_958.x, x_958.z));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_961.y, x_960.y, x_961.w);
        let x_963 : vec4<f32> = u_xlat6;
        let x_965 : vec2<f32> = max(vec2<f32>(x_963.x, x_963.y), vec2<f32>(0.0f, 0.0f));
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat8;
        let x_974 : vec4<f32> = u_xlat7;
        let x_976 : vec2<f32> = ((-(vec2<f32>(x_968.x, x_968.y)) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_974.y, x_974.w));
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_979 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_983 : f32 = u_xlat7.y;
        u_xlat8.z = (x_983 * 0.08163200318813323975f);
        let x_987 : vec2<f32> = u_xlat56;
        let x_990 : vec2<f32> = (vec2<f32>(x_987.y, x_987.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_993.x, x_993.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_997 : f32 = u_xlat7.w;
        u_xlat10.z = (x_997 * 0.08163200318813323975f);
        let x_1001 : f32 = u_xlat10.y;
        u_xlat8.x = x_1001;
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1011.x, x_1010.x, x_1011.z, x_1010.y);
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1018.w);
        let x_1021 : f32 = u_xlat56.x;
        u_xlat7.y = x_1021;
        let x_1024 : f32 = u_xlat9.y;
        u_xlat7.w = x_1024;
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1027 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1026 + x_1027);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1029.y, x_1029.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1032.x, x_1033.z, x_1032.y);
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1035.y, x_1035.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1039.w);
        let x_1042 : f32 = u_xlat56.y;
        u_xlat9.y = x_1042;
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1044 + x_1045);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1047 / x_1048);
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1050 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1056 / x_1057);
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1059 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1061.w, x_1061.x, x_1061.y, x_1061.z) * vec4<f32>(x_1064.x, x_1064.x, x_1064.x, x_1064.x));
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1070 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1067.x, x_1067.w, x_1067.y, x_1067.z) * vec4<f32>(x_1070.y, x_1070.y, x_1070.y, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1074 : vec3<f32> = vec3<f32>(x_1073.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1074.x, x_1075.y, x_1074.y, x_1074.z);
        let x_1078 : f32 = u_xlat9.x;
        u_xlat10.y = x_1078;
        let x_1080 : vec3<f32> = u_xlat30;
        let x_1083 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1089 : vec3<f32> = u_xlat30;
        let x_1092 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1092.x, x_1092.y)) + vec2<f32>(x_1095.w, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1101 : f32 = u_xlat10.y;
        u_xlat7.y = x_1101;
        let x_1104 : f32 = u_xlat9.z;
        u_xlat10.y = x_1104;
        let x_1106 : vec3<f32> = u_xlat30;
        let x_1109 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.y));
        let x_1116 : vec3<f32> = u_xlat30;
        let x_1119 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat10.y;
        u_xlat7.z = x_1126;
        let x_1128 : vec3<f32> = u_xlat30;
        let x_1131 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y) * vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y)) + vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.z));
        let x_1138 : f32 = u_xlat9.w;
        u_xlat10.y = x_1138;
        let x_1141 : vec3<f32> = u_xlat30;
        let x_1144 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1147.y));
        let x_1151 : vec3<f32> = u_xlat30;
        let x_1154 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1154.x, x_1154.y)) + vec2<f32>(x_1157.w, x_1157.y));
        let x_1160 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1159.x, x_1159.y, x_1160.z);
        let x_1163 : f32 = u_xlat10.y;
        u_xlat7.w = x_1163;
        let x_1166 : vec3<f32> = u_xlat30;
        let x_1169 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.x, x_1172.w));
        let x_1175 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat10;
        let x_1178 : vec3<f32> = vec3<f32>(x_1177.x, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
        let x_1181 : vec3<f32> = u_xlat30;
        let x_1184 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1191 : vec3<f32> = u_xlat30;
        let x_1194 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat7.x;
        u_xlat9.x = x_1201;
        let x_1203 : vec3<f32> = u_xlat30;
        let x_1206 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat9;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.x, x_1209.y));
        let x_1212 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1211.x, x_1211.y, x_1212.z);
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1215.x, x_1215.x, x_1215.x, x_1215.x) * x_1217);
        let x_1220 : vec4<f32> = u_xlat6;
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1220.y, x_1220.y, x_1220.y, x_1220.y) * x_1222);
        let x_1225 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1225.z, x_1225.z, x_1225.z, x_1225.z) * x_1227);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1229.w, x_1229.w, x_1229.w, x_1229.w) * x_1231);
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec13;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat80 = x_1246;
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.z, x_1248.w);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec14;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat7.x = x_1260;
        let x_1263 : f32 = u_xlat7.x;
        let x_1265 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1263 * x_1265);
        let x_1269 : f32 = u_xlat17.x;
        let x_1270 : f32 = u_xlat80;
        let x_1273 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1269 * x_1270) + x_1273);
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1277 : vec2<f32> = vec2<f32>(x_1276.x, x_1276.y);
        let x_1279 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec15;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat7.x = x_1288;
        let x_1291 : f32 = u_xlat17.z;
        let x_1293 : f32 = u_xlat7.x;
        let x_1295 : f32 = u_xlat80;
        u_xlat80 = ((x_1291 * x_1293) + x_1295);
        let x_1298 : vec4<f32> = u_xlat14;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec16;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1308.xy, x_1308.z);
        u_xlat7.x = x_1310;
        let x_1313 : f32 = u_xlat17.w;
        let x_1315 : f32 = u_xlat7.x;
        let x_1317 : f32 = u_xlat80;
        u_xlat80 = ((x_1313 * x_1315) + x_1317);
        let x_1320 : vec4<f32> = u_xlat13;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec17;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat7.x = x_1332;
        let x_1335 : f32 = u_xlat18.x;
        let x_1337 : f32 = u_xlat7.x;
        let x_1339 : f32 = u_xlat80;
        u_xlat80 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat13;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec18;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat7.x = x_1354;
        let x_1357 : f32 = u_xlat18.y;
        let x_1359 : f32 = u_xlat7.x;
        let x_1361 : f32 = u_xlat80;
        u_xlat80 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec2<f32> = u_xlat62;
        let x_1366 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec19;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat7.x = x_1375;
        let x_1378 : f32 = u_xlat18.z;
        let x_1380 : f32 = u_xlat7.x;
        let x_1382 : f32 = u_xlat80;
        u_xlat80 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat14;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec20;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat7.x = x_1397;
        let x_1400 : f32 = u_xlat18.w;
        let x_1402 : f32 = u_xlat7.x;
        let x_1404 : f32 = u_xlat80;
        u_xlat80 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat15;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec21;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat7.x = x_1419;
        let x_1422 : f32 = u_xlat19.x;
        let x_1424 : f32 = u_xlat7.x;
        let x_1426 : f32 = u_xlat80;
        u_xlat80 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat15;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec22;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat19.y;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat80;
        u_xlat80 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec3<f32> = u_xlat32;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec23;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat7.x = x_1463;
        let x_1466 : f32 = u_xlat19.z;
        let x_1468 : f32 = u_xlat7.x;
        let x_1470 : f32 = u_xlat80;
        u_xlat80 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat16;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec24;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat7.x = x_1485;
        let x_1488 : f32 = u_xlat19.w;
        let x_1490 : f32 = u_xlat7.x;
        let x_1492 : f32 = u_xlat80;
        u_xlat80 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat10;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
        let x_1498 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec25;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
        u_xlat7.x = x_1507;
        let x_1510 : f32 = u_xlat6.x;
        let x_1512 : f32 = u_xlat7.x;
        let x_1514 : f32 = u_xlat80;
        u_xlat80 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat10;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec26;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat6.x = x_1529;
        let x_1532 : f32 = u_xlat6.y;
        let x_1534 : f32 = u_xlat6.x;
        let x_1536 : f32 = u_xlat80;
        u_xlat80 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec2<f32> = u_xlat59;
        let x_1541 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec27;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat6.x = x_1550;
        let x_1553 : f32 = u_xlat6.z;
        let x_1555 : f32 = u_xlat6.x;
        let x_1557 : f32 = u_xlat80;
        u_xlat80 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec3<f32> = u_xlat30;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec28;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat30.x = x_1572;
        let x_1575 : f32 = u_xlat6.w;
        let x_1577 : f32 = u_xlat30.x;
        let x_1579 : f32 = u_xlat80;
        u_xlat5.x = ((x_1575 * x_1577) + x_1579);
      }
    }
  } else {
    let x_1584 : vec4<f32> = vs_TEXCOORD8;
    let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
    let x_1587 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
    let x_1594 : vec3<f32> = txVec29;
    let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
    u_xlat5.x = x_1596;
  }
  let x_1599 : f32 = x_322.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_1599) + 1.0f);
  let x_1604 : f32 = u_xlat5.x;
  let x_1606 : f32 = x_322.x_MainLightShadowParams.x;
  let x_1609 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_1604 * x_1606) + x_1609);
  let x_1613 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_1613);
  let x_1617 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_1617 >= 1.0f);
  let x_1619 : bool = u_xlatb55;
  let x_1620 : bool = u_xlatb30;
  u_xlatb30 = (x_1619 | x_1620);
  let x_1622 : bool = u_xlatb30;
  if (x_1622) {
    x_1623 = 1.0f;
  } else {
    let x_1628 : f32 = u_xlat5.x;
    x_1623 = x_1628;
  }
  let x_1629 : f32 = x_1623;
  u_xlat5.x = x_1629;
  let x_1631 : vec3<f32> = vs_TEXCOORD7;
  let x_1633 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1631 + -(x_1633));
  let x_1636 : vec3<f32> = u_xlat30;
  let x_1637 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_1636, x_1637);
  let x_1641 : f32 = u_xlat30.x;
  let x_1643 : f32 = x_322.x_MainLightShadowParams.z;
  let x_1646 : f32 = x_322.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1641 * x_1643) + x_1646);
  let x_1648 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1648, 0.0f, 1.0f);
  let x_1651 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_1651) + 1.0f);
  let x_1654 : f32 = u_xlat55;
  let x_1655 : f32 = u_xlat80;
  let x_1658 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1654 * x_1655) + x_1658);
  let x_1661 : vec3<f32> = u_xlat3;
  let x_1663 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1661), vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1666 : f32 = u_xlat55;
  let x_1667 : f32 = u_xlat55;
  u_xlat55 = (x_1666 + x_1667);
  let x_1669 : vec4<f32> = u_xlat2;
  let x_1671 : f32 = u_xlat55;
  let x_1675 : vec3<f32> = u_xlat3;
  let x_1677 : vec3<f32> = ((vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * -(vec3<f32>(x_1671, x_1671, x_1671))) + -(x_1675));
  let x_1678 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1680 : vec4<f32> = u_xlat2;
  let x_1682 : vec3<f32> = u_xlat3;
  u_xlat55 = dot(vec3<f32>(x_1680.x, x_1680.y, x_1680.z), x_1682);
  let x_1684 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1684, 0.0f, 1.0f);
  let x_1686 : f32 = u_xlat55;
  u_xlat55 = (-(x_1686) + 1.0f);
  let x_1689 : f32 = u_xlat55;
  let x_1690 : f32 = u_xlat55;
  u_xlat55 = (x_1689 * x_1690);
  let x_1692 : f32 = u_xlat55;
  let x_1693 : f32 = u_xlat55;
  u_xlat55 = (x_1692 * x_1693);
  let x_1696 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1696) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1703 : f32 = u_xlat1.x;
  let x_1704 : f32 = u_xlat80;
  u_xlat1.x = (x_1703 * x_1704);
  let x_1708 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1708 * 6.0f);
  let x_1720 : vec4<f32> = u_xlat6;
  let x_1723 : f32 = u_xlat1.x;
  let x_1724 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1720.x, x_1720.y, x_1720.z), x_1723);
  u_xlat6 = x_1724;
  let x_1726 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1726 + -1.0f);
  let x_1731 : f32 = x_175.unity_SpecCube0_HDR.w;
  let x_1733 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1731 * x_1733) + 1.0f);
  let x_1738 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1738, 0.0f);
  let x_1742 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1742);
  let x_1746 : f32 = u_xlat1.x;
  let x_1748 : f32 = x_175.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1746 * x_1748);
  let x_1752 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1752);
  let x_1756 : f32 = u_xlat1.x;
  let x_1758 : f32 = x_175.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1756 * x_1758);
  let x_1761 : vec4<f32> = u_xlat6;
  let x_1763 : vec3<f32> = u_xlat1;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) * vec3<f32>(x_1763.x, x_1763.x, x_1763.x));
  let x_1766 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : f32 = u_xlat77;
  let x_1770 : f32 = u_xlat77;
  let x_1774 : vec2<f32> = ((vec2<f32>(x_1768, x_1768) * vec2<f32>(x_1770, x_1770)) + vec2<f32>(-1.0f, 1.0f));
  let x_1775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
  let x_1778 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1778);
  let x_1781 : vec4<f32> = u_xlat0;
  let x_1784 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1781.x, x_1781.y, x_1781.z)) + vec3<f32>(x_1784, x_1784, x_1784));
  let x_1787 : f32 = u_xlat55;
  let x_1789 : vec3<f32> = u_xlat32;
  let x_1791 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1787, x_1787, x_1787) * x_1789) + vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1794 : vec3<f32> = u_xlat1;
  let x_1796 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1794.x, x_1794.x, x_1794.x) * x_1796);
  let x_1798 : vec4<f32> = u_xlat6;
  let x_1800 : vec3<f32> = u_xlat32;
  let x_1801 : vec3<f32> = (vec3<f32>(x_1798.x, x_1798.y, x_1798.z) * x_1800);
  let x_1802 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1804 : vec3<f32> = u_xlat26;
  let x_1805 : vec3<f32> = u_xlat4;
  let x_1807 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_1804 * x_1805) + vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
  let x_1811 : f32 = u_xlat5.x;
  let x_1813 : f32 = x_175.unity_LightData.z;
  u_xlat75 = (x_1811 * x_1813);
  let x_1816 : vec4<f32> = u_xlat2;
  let x_1819 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1822 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1822, 0.0f, 1.0f);
  let x_1824 : f32 = u_xlat75;
  let x_1825 : f32 = u_xlat76;
  u_xlat75 = (x_1824 * x_1825);
  let x_1827 : f32 = u_xlat75;
  let x_1830 : vec4<f32> = x_29.x_MainLightColor;
  let x_1832 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1832.x, x_1833.y, x_1832.y, x_1832.z);
  let x_1835 : vec3<f32> = u_xlat3;
  let x_1837 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1839 : vec3<f32> = (x_1835 + vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
  let x_1840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  let x_1842 : vec4<f32> = u_xlat6;
  let x_1844 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1842.x, x_1842.y, x_1842.z), vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : f32 = u_xlat75;
  u_xlat75 = max(x_1847, 1.17549435e-38f);
  let x_1850 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1850);
  let x_1852 : f32 = u_xlat75;
  let x_1854 : vec4<f32> = u_xlat6;
  let x_1856 : vec3<f32> = (vec3<f32>(x_1852, x_1852, x_1852) * vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
  let x_1857 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1859 : vec4<f32> = u_xlat2;
  let x_1861 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1859.x, x_1859.y, x_1859.z), vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1864, 0.0f, 1.0f);
  let x_1867 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1869 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_1867.x, x_1867.y, x_1867.z), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1872, 0.0f, 1.0f);
  let x_1874 : f32 = u_xlat75;
  let x_1875 : f32 = u_xlat75;
  u_xlat75 = (x_1874 * x_1875);
  let x_1877 : f32 = u_xlat75;
  let x_1879 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1877 * x_1879) + 1.00001001358032226562f);
  let x_1883 : f32 = u_xlat76;
  let x_1884 : f32 = u_xlat76;
  u_xlat76 = (x_1883 * x_1884);
  let x_1886 : f32 = u_xlat75;
  let x_1887 : f32 = u_xlat75;
  u_xlat75 = (x_1886 * x_1887);
  let x_1889 : f32 = u_xlat76;
  u_xlat76 = max(x_1889, 0.10000000149011611938f);
  let x_1892 : f32 = u_xlat75;
  let x_1893 : f32 = u_xlat76;
  u_xlat75 = (x_1892 * x_1893);
  let x_1895 : f32 = u_xlat78;
  let x_1896 : f32 = u_xlat75;
  u_xlat75 = (x_1895 * x_1896);
  let x_1898 : f32 = u_xlat79;
  let x_1899 : f32 = u_xlat75;
  u_xlat75 = (x_1898 / x_1899);
  let x_1901 : vec4<f32> = u_xlat0;
  let x_1903 : f32 = u_xlat75;
  let x_1906 : vec3<f32> = u_xlat4;
  let x_1907 : vec3<f32> = ((vec3<f32>(x_1901.x, x_1901.y, x_1901.z) * vec3<f32>(x_1903, x_1903, x_1903)) + x_1906);
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1912 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1914 : f32 = x_175.unity_LightData.y;
  u_xlat75 = min(x_1912, x_1914);
  let x_1918 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1918));
  let x_1922 : f32 = u_xlat30.x;
  let x_1925 : f32 = x_322.x_AdditionalShadowFadeParams.x;
  let x_1928 : f32 = x_322.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_1922 * x_1925) + x_1928);
  let x_1930 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1930, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1942 : u32 = u_xlatu_loop_1;
    let x_1943 : u32 = u_xlatu75;
    if ((x_1942 < x_1943)) {
    } else {
      break;
    }
    let x_1946 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1946 >> 2u);
    let x_1950 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1950 & 3u));
    let x_1953 : u32 = u_xlatu30;
    let x_1956 : vec4<f32> = x_175.unity_LightIndices[bitcast<i32>(x_1953)];
    let x_1966 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1971 : vec4<u32> = indexable[x_1966];
    u_xlat30.x = dot(x_1956, bitcast<vec4<f32>>(x_1971));
    let x_1977 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_1977);
    let x_1979 : vec3<f32> = vs_TEXCOORD7;
    let x_1990 : i32 = u_xlati30;
    let x_1992 : vec4<f32> = x_1989.x_AdditionalLightsPosition[x_1990];
    let x_1995 : i32 = u_xlati30;
    let x_1997 : vec4<f32> = x_1989.x_AdditionalLightsPosition[x_1995];
    let x_1999 : vec3<f32> = ((-(x_1979) * vec3<f32>(x_1992.w, x_1992.w, x_1992.w)) + vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2003 : vec4<f32> = u_xlat8;
    let x_2005 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : f32 = u_xlat81;
    u_xlat81 = max(x_2008, 0.00006103515625f);
    let x_2012 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2012);
    let x_2014 : f32 = u_xlat83;
    let x_2016 : vec4<f32> = u_xlat8;
    let x_2018 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
    let x_2022 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2022);
    let x_2024 : f32 = u_xlat81;
    let x_2025 : i32 = u_xlati30;
    let x_2027 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2025].x;
    u_xlat81 = (x_2024 * x_2027);
    let x_2029 : f32 = u_xlat81;
    let x_2031 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2029) * x_2031) + 1.0f);
    let x_2034 : f32 = u_xlat81;
    u_xlat81 = max(x_2034, 0.0f);
    let x_2036 : f32 = u_xlat81;
    let x_2037 : f32 = u_xlat81;
    u_xlat81 = (x_2036 * x_2037);
    let x_2039 : f32 = u_xlat81;
    let x_2040 : f32 = u_xlat84;
    u_xlat81 = (x_2039 * x_2040);
    let x_2042 : i32 = u_xlati30;
    let x_2044 : vec4<f32> = x_1989.x_AdditionalLightsSpotDir[x_2042];
    let x_2046 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2044.x, x_2044.y, x_2044.z), vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : f32 = u_xlat84;
    let x_2050 : i32 = u_xlati30;
    let x_2052 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2050].z;
    let x_2054 : i32 = u_xlati30;
    let x_2056 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2054].w;
    u_xlat84 = ((x_2049 * x_2052) + x_2056);
    let x_2058 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2058, 0.0f, 1.0f);
    let x_2060 : f32 = u_xlat84;
    let x_2061 : f32 = u_xlat84;
    u_xlat84 = (x_2060 * x_2061);
    let x_2063 : f32 = u_xlat81;
    let x_2064 : f32 = u_xlat84;
    u_xlat81 = (x_2063 * x_2064);
    let x_2068 : i32 = u_xlati30;
    let x_2070 : f32 = x_322.x_AdditionalShadowParams[x_2068].w;
    u_xlati84 = i32(x_2070);
    let x_2075 : i32 = u_xlati84;
    u_xlatb10.x = (x_2075 >= 0i);
    let x_2079 : bool = u_xlatb10.x;
    if (x_2079) {
      let x_2083 : i32 = u_xlati30;
      let x_2085 : f32 = x_322.x_AdditionalShadowParams[x_2083].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2085, x_2085, x_2085, x_2085))));
      let x_2092 : bool = u_xlatb10.x;
      if (x_2092) {
        let x_2095 : vec4<f32> = u_xlat9;
        let x_2098 : vec4<f32> = u_xlat9;
        let x_2101 : vec4<bool> = (abs(vec4<f32>(x_2095.z, x_2095.z, x_2095.y, x_2095.z)) >= abs(vec4<f32>(x_2098.x, x_2098.y, x_2098.x, x_2098.x)));
        u_xlatb10 = vec3<bool>(x_2101.x, x_2101.y, x_2101.z);
        let x_2104 : bool = u_xlatb10.y;
        let x_2106 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2104 & x_2106);
        let x_2110 : vec4<f32> = u_xlat9;
        let x_2113 : vec4<bool> = (-(vec4<f32>(x_2110.z, x_2110.y, x_2110.x, x_2110.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2113.x, x_2113.y, x_2113.z);
        let x_2117 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2117);
        let x_2122 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2122);
        let x_2127 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2127);
        let x_2132 : bool = u_xlatb10.z;
        if (x_2132) {
          let x_2137 : f32 = u_xlat35.z;
          x_2133 = x_2137;
        } else {
          let x_2140 : f32 = u_xlat11.x;
          x_2133 = x_2140;
        }
        let x_2141 : f32 = x_2133;
        u_xlat60 = x_2141;
        let x_2143 : bool = u_xlatb10.x;
        if (x_2143) {
          let x_2148 : f32 = u_xlat35.x;
          x_2144 = x_2148;
        } else {
          let x_2150 : f32 = u_xlat60;
          x_2144 = x_2150;
        }
        let x_2151 : f32 = x_2144;
        u_xlat10.x = x_2151;
        let x_2153 : i32 = u_xlati30;
        let x_2155 : f32 = x_322.x_AdditionalShadowParams[x_2153].w;
        u_xlat35.x = trunc(x_2155);
        let x_2159 : f32 = u_xlat10.x;
        let x_2161 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2159 + x_2161);
        let x_2165 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2165);
      }
      let x_2167 : i32 = u_xlati84;
      u_xlati84 = (x_2167 << bitcast<u32>(2i));
      let x_2169 : vec3<f32> = vs_TEXCOORD7;
      let x_2172 : i32 = u_xlati84;
      let x_2175 : i32 = u_xlati84;
      let x_2179 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2172 + 1i) / 4i)][((x_2175 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2169.y, x_2169.y, x_2169.y, x_2169.y) * x_2179);
      let x_2181 : i32 = u_xlati84;
      let x_2183 : i32 = u_xlati84;
      let x_2186 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[(x_2181 / 4i)][(x_2183 % 4i)];
      let x_2187 : vec3<f32> = vs_TEXCOORD7;
      let x_2190 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2186 * vec4<f32>(x_2187.x, x_2187.x, x_2187.x, x_2187.x)) + x_2190);
      let x_2192 : i32 = u_xlati84;
      let x_2195 : i32 = u_xlati84;
      let x_2199 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2192 + 2i) / 4i)][((x_2195 + 2i) % 4i)];
      let x_2200 : vec3<f32> = vs_TEXCOORD7;
      let x_2203 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2199 * vec4<f32>(x_2200.z, x_2200.z, x_2200.z, x_2200.z)) + x_2203);
      let x_2205 : vec4<f32> = u_xlat10;
      let x_2206 : i32 = u_xlati84;
      let x_2209 : i32 = u_xlati84;
      let x_2213 : vec4<f32> = x_322.x_AdditionalLightsWorldToShadow[((x_2206 + 3i) / 4i)][((x_2209 + 3i) % 4i)];
      u_xlat10 = (x_2205 + x_2213);
      let x_2215 : vec4<f32> = u_xlat10;
      let x_2217 : vec4<f32> = u_xlat10;
      let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.y, x_2215.z) / vec3<f32>(x_2217.w, x_2217.w, x_2217.w));
      let x_2220 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
      let x_2223 : i32 = u_xlati30;
      let x_2225 : f32 = x_322.x_AdditionalShadowParams[x_2223].y;
      u_xlatb84 = (0.0f < x_2225);
      let x_2227 : bool = u_xlatb84;
      if (x_2227) {
        let x_2230 : i32 = u_xlati30;
        let x_2232 : f32 = x_322.x_AdditionalShadowParams[x_2230].y;
        u_xlatb84 = (1.0f == x_2232);
        let x_2234 : bool = u_xlatb84;
        if (x_2234) {
          let x_2237 : vec4<f32> = u_xlat10;
          let x_2241 : vec4<f32> = x_322.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2237.x, x_2237.y, x_2237.x, x_2237.y) + x_2241);
          let x_2244 : vec4<f32> = u_xlat11;
          let x_2245 : vec2<f32> = vec2<f32>(x_2244.x, x_2244.y);
          let x_2247 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
          let x_2255 : vec3<f32> = txVec30;
          let x_2257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
          u_xlat12.x = x_2257;
          let x_2260 : vec4<f32> = u_xlat11;
          let x_2261 : vec2<f32> = vec2<f32>(x_2260.z, x_2260.w);
          let x_2263 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2261.x, x_2261.y, x_2263);
          let x_2270 : vec3<f32> = txVec31;
          let x_2272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2270.xy, x_2270.z);
          u_xlat12.y = x_2272;
          let x_2274 : vec4<f32> = u_xlat10;
          let x_2278 : vec4<f32> = x_322.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2274.x, x_2274.y, x_2274.x, x_2274.y) + x_2278);
          let x_2281 : vec4<f32> = u_xlat11;
          let x_2282 : vec2<f32> = vec2<f32>(x_2281.x, x_2281.y);
          let x_2284 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
          let x_2291 : vec3<f32> = txVec32;
          let x_2293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2291.xy, x_2291.z);
          u_xlat12.z = x_2293;
          let x_2296 : vec4<f32> = u_xlat11;
          let x_2297 : vec2<f32> = vec2<f32>(x_2296.z, x_2296.w);
          let x_2299 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2297.x, x_2297.y, x_2299);
          let x_2306 : vec3<f32> = txVec33;
          let x_2308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2306.xy, x_2306.z);
          u_xlat12.w = x_2308;
          let x_2310 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2310, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2314 : i32 = u_xlati30;
          let x_2316 : f32 = x_322.x_AdditionalShadowParams[x_2314].y;
          u_xlatb85 = (2.0f == x_2316);
          let x_2318 : bool = u_xlatb85;
          if (x_2318) {
            let x_2321 : vec4<f32> = u_xlat10;
            let x_2325 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2328 : vec2<f32> = ((vec2<f32>(x_2321.x, x_2321.y) * vec2<f32>(x_2325.z, x_2325.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2329 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
            let x_2331 : vec4<f32> = u_xlat11;
            let x_2333 : vec2<f32> = floor(vec2<f32>(x_2331.x, x_2331.y));
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2333.x, x_2333.y, x_2334.z, x_2334.w);
            let x_2337 : vec4<f32> = u_xlat10;
            let x_2340 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2343 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2337.x, x_2337.y) * vec2<f32>(x_2340.z, x_2340.w)) + -(vec2<f32>(x_2343.x, x_2343.y)));
            let x_2347 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2347.x, x_2347.x, x_2347.y, x_2347.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2350 : vec4<f32> = u_xlat12;
            let x_2352 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2350.x, x_2350.x, x_2350.z, x_2350.z) * vec4<f32>(x_2352.x, x_2352.x, x_2352.z, x_2352.z));
            let x_2355 : vec4<f32> = u_xlat13;
            let x_2357 : vec2<f32> = (vec2<f32>(x_2355.y, x_2355.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2358 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2357.x, x_2358.y, x_2357.y, x_2358.w);
            let x_2360 : vec4<f32> = u_xlat13;
            let x_2363 : vec2<f32> = u_xlat61;
            let x_2365 : vec2<f32> = ((vec2<f32>(x_2360.x, x_2360.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2363));
            let x_2366 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
            let x_2369 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2369) + vec2<f32>(1.0f, 1.0f));
            let x_2372 : vec2<f32> = u_xlat61;
            let x_2373 : vec2<f32> = min(x_2372, vec2<f32>(0.0f, 0.0f));
            let x_2374 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2373.x, x_2373.y, x_2374.z, x_2374.w);
            let x_2376 : vec4<f32> = u_xlat14;
            let x_2379 : vec4<f32> = u_xlat14;
            let x_2382 : vec2<f32> = u_xlat63;
            let x_2383 : vec2<f32> = ((-(vec2<f32>(x_2376.x, x_2376.y)) * vec2<f32>(x_2379.x, x_2379.y)) + x_2382);
            let x_2384 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2383.x, x_2383.y, x_2384.z, x_2384.w);
            let x_2386 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2386, vec2<f32>(0.0f, 0.0f));
            let x_2388 : vec2<f32> = u_xlat61;
            let x_2390 : vec2<f32> = u_xlat61;
            let x_2392 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2388) * x_2390) + vec2<f32>(x_2392.y, x_2392.w));
            let x_2395 : vec4<f32> = u_xlat14;
            let x_2397 : vec2<f32> = (vec2<f32>(x_2395.x, x_2395.y) + vec2<f32>(1.0f, 1.0f));
            let x_2398 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
            let x_2400 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2400 + vec2<f32>(1.0f, 1.0f));
            let x_2402 : vec4<f32> = u_xlat13;
            let x_2404 : vec2<f32> = (vec2<f32>(x_2402.x, x_2402.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2405 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2404.x, x_2404.y, x_2405.z, x_2405.w);
            let x_2407 : vec2<f32> = u_xlat63;
            let x_2408 : vec2<f32> = (x_2407 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2409 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
            let x_2411 : vec4<f32> = u_xlat14;
            let x_2413 : vec2<f32> = (vec2<f32>(x_2411.x, x_2411.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2414 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2416 : vec2<f32> = u_xlat61;
            let x_2417 : vec2<f32> = (x_2416 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2418 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2420.y, x_2420.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2424 : f32 = u_xlat14.x;
            u_xlat15.z = x_2424;
            let x_2427 : f32 = u_xlat61.x;
            u_xlat15.w = x_2427;
            let x_2430 : f32 = u_xlat16.x;
            u_xlat13.z = x_2430;
            let x_2433 : f32 = u_xlat12.x;
            u_xlat13.w = x_2433;
            let x_2435 : vec4<f32> = u_xlat13;
            let x_2437 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2435.z, x_2435.w, x_2435.x, x_2435.z) + vec4<f32>(x_2437.z, x_2437.w, x_2437.x, x_2437.z));
            let x_2441 : f32 = u_xlat15.y;
            u_xlat14.z = x_2441;
            let x_2444 : f32 = u_xlat61.y;
            u_xlat14.w = x_2444;
            let x_2447 : f32 = u_xlat13.y;
            u_xlat16.z = x_2447;
            let x_2450 : f32 = u_xlat12.z;
            u_xlat16.w = x_2450;
            let x_2452 : vec4<f32> = u_xlat14;
            let x_2454 : vec4<f32> = u_xlat16;
            let x_2456 : vec3<f32> = (vec3<f32>(x_2452.z, x_2452.y, x_2452.w) + vec3<f32>(x_2454.z, x_2454.y, x_2454.w));
            let x_2457 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat13;
            let x_2461 : vec4<f32> = u_xlat17;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.z, x_2459.w) / vec3<f32>(x_2461.z, x_2461.w, x_2461.y));
            let x_2464 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat13;
            let x_2468 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2469 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat16;
            let x_2473 : vec4<f32> = u_xlat12;
            let x_2475 : vec3<f32> = (vec3<f32>(x_2471.z, x_2471.y, x_2471.w) / vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
            let x_2476 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
            let x_2478 : vec4<f32> = u_xlat14;
            let x_2480 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat13;
            let x_2486 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2488 : vec3<f32> = (vec3<f32>(x_2483.y, x_2483.x, x_2483.z) * vec3<f32>(x_2486.x, x_2486.x, x_2486.x));
            let x_2489 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
            let x_2491 : vec4<f32> = u_xlat14;
            let x_2494 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2496 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.y, x_2491.z) * vec3<f32>(x_2494.y, x_2494.y, x_2494.y));
            let x_2497 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
            let x_2500 : f32 = u_xlat14.x;
            u_xlat13.w = x_2500;
            let x_2502 : vec4<f32> = u_xlat11;
            let x_2505 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2508 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2502.x, x_2502.y, x_2502.x, x_2502.y) * vec4<f32>(x_2505.x, x_2505.y, x_2505.x, x_2505.y)) + vec4<f32>(x_2508.y, x_2508.w, x_2508.x, x_2508.w));
            let x_2511 : vec4<f32> = u_xlat11;
            let x_2514 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2517 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2514.x, x_2514.y)) + vec2<f32>(x_2517.z, x_2517.w));
            let x_2521 : f32 = u_xlat13.y;
            u_xlat14.w = x_2521;
            let x_2523 : vec4<f32> = u_xlat14;
            let x_2524 : vec2<f32> = vec2<f32>(x_2523.y, x_2523.z);
            let x_2525 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2525.x, x_2524.x, x_2525.z, x_2524.y);
            let x_2527 : vec4<f32> = u_xlat11;
            let x_2530 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2533 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2527.x, x_2527.y, x_2527.x, x_2527.y) * vec4<f32>(x_2530.x, x_2530.y, x_2530.x, x_2530.y)) + vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2533.y));
            let x_2536 : vec4<f32> = u_xlat11;
            let x_2539 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2542 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.y) * vec4<f32>(x_2539.x, x_2539.y, x_2539.x, x_2539.y)) + vec4<f32>(x_2542.w, x_2542.y, x_2542.w, x_2542.z));
            let x_2545 : vec4<f32> = u_xlat11;
            let x_2548 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2551 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y) * vec4<f32>(x_2548.x, x_2548.y, x_2548.x, x_2548.y)) + vec4<f32>(x_2551.x, x_2551.w, x_2551.z, x_2551.w));
            let x_2554 : vec4<f32> = u_xlat12;
            let x_2556 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2554.x, x_2554.x, x_2554.x, x_2554.y) * vec4<f32>(x_2556.z, x_2556.w, x_2556.y, x_2556.z));
            let x_2559 : vec4<f32> = u_xlat12;
            let x_2561 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2559.y, x_2559.y, x_2559.z, x_2559.z) * x_2561);
            let x_2565 : f32 = u_xlat12.z;
            let x_2567 : f32 = u_xlat17.y;
            u_xlat85 = (x_2565 * x_2567);
            let x_2570 : vec4<f32> = u_xlat15;
            let x_2571 : vec2<f32> = vec2<f32>(x_2570.x, x_2570.y);
            let x_2573 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2571.x, x_2571.y, x_2573);
            let x_2580 : vec3<f32> = txVec34;
            let x_2582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2580.xy, x_2580.z);
            u_xlat11.x = x_2582;
            let x_2585 : vec4<f32> = u_xlat15;
            let x_2586 : vec2<f32> = vec2<f32>(x_2585.z, x_2585.w);
            let x_2588 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2586.x, x_2586.y, x_2588);
            let x_2596 : vec3<f32> = txVec35;
            let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
            u_xlat36 = x_2598;
            let x_2599 : f32 = u_xlat36;
            let x_2601 : f32 = u_xlat18.y;
            u_xlat36 = (x_2599 * x_2601);
            let x_2604 : f32 = u_xlat18.x;
            let x_2606 : f32 = u_xlat11.x;
            let x_2608 : f32 = u_xlat36;
            u_xlat11.x = ((x_2604 * x_2606) + x_2608);
            let x_2612 : vec2<f32> = u_xlat61;
            let x_2614 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2612.x, x_2612.y, x_2614);
            let x_2621 : vec3<f32> = txVec36;
            let x_2623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2621.xy, x_2621.z);
            u_xlat36 = x_2623;
            let x_2625 : f32 = u_xlat18.z;
            let x_2626 : f32 = u_xlat36;
            let x_2629 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2625 * x_2626) + x_2629);
            let x_2633 : vec4<f32> = u_xlat14;
            let x_2634 : vec2<f32> = vec2<f32>(x_2633.x, x_2633.y);
            let x_2636 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2634.x, x_2634.y, x_2636);
            let x_2643 : vec3<f32> = txVec37;
            let x_2645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2643.xy, x_2643.z);
            u_xlat36 = x_2645;
            let x_2647 : f32 = u_xlat18.w;
            let x_2648 : f32 = u_xlat36;
            let x_2651 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2647 * x_2648) + x_2651);
            let x_2655 : vec4<f32> = u_xlat16;
            let x_2656 : vec2<f32> = vec2<f32>(x_2655.x, x_2655.y);
            let x_2658 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2656.x, x_2656.y, x_2658);
            let x_2665 : vec3<f32> = txVec38;
            let x_2667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2665.xy, x_2665.z);
            u_xlat36 = x_2667;
            let x_2669 : f32 = u_xlat19.x;
            let x_2670 : f32 = u_xlat36;
            let x_2673 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2669 * x_2670) + x_2673);
            let x_2677 : vec4<f32> = u_xlat16;
            let x_2678 : vec2<f32> = vec2<f32>(x_2677.z, x_2677.w);
            let x_2680 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec39;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat36 = x_2689;
            let x_2691 : f32 = u_xlat19.y;
            let x_2692 : f32 = u_xlat36;
            let x_2695 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2691 * x_2692) + x_2695);
            let x_2699 : vec4<f32> = u_xlat14;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.z, x_2699.w);
            let x_2702 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec40;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat36 = x_2711;
            let x_2713 : f32 = u_xlat19.z;
            let x_2714 : f32 = u_xlat36;
            let x_2717 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2713 * x_2714) + x_2717);
            let x_2721 : vec4<f32> = u_xlat13;
            let x_2722 : vec2<f32> = vec2<f32>(x_2721.x, x_2721.y);
            let x_2724 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2722.x, x_2722.y, x_2724);
            let x_2731 : vec3<f32> = txVec41;
            let x_2733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
            u_xlat36 = x_2733;
            let x_2735 : f32 = u_xlat19.w;
            let x_2736 : f32 = u_xlat36;
            let x_2739 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2735 * x_2736) + x_2739);
            let x_2743 : vec4<f32> = u_xlat13;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.z, x_2743.w);
            let x_2746 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec42;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat36 = x_2755;
            let x_2756 : f32 = u_xlat85;
            let x_2757 : f32 = u_xlat36;
            let x_2760 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2756 * x_2757) + x_2760);
          } else {
            let x_2763 : vec4<f32> = u_xlat10;
            let x_2766 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2769 : vec2<f32> = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(x_2766.z, x_2766.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2770 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2769.x, x_2769.y, x_2770.z, x_2770.w);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2774 : vec2<f32> = floor(vec2<f32>(x_2772.x, x_2772.y));
            let x_2775 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2774.x, x_2774.y, x_2775.z, x_2775.w);
            let x_2777 : vec4<f32> = u_xlat10;
            let x_2780 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(x_2780.z, x_2780.w)) + -(vec2<f32>(x_2783.x, x_2783.y)));
            let x_2787 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2787.x, x_2787.x, x_2787.y, x_2787.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2790 : vec4<f32> = u_xlat12;
            let x_2792 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2790.x, x_2790.x, x_2790.z, x_2790.z) * vec4<f32>(x_2792.x, x_2792.x, x_2792.z, x_2792.z));
            let x_2795 : vec4<f32> = u_xlat13;
            let x_2797 : vec2<f32> = (vec2<f32>(x_2795.y, x_2795.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2798 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2798.x, x_2797.x, x_2798.z, x_2797.y);
            let x_2800 : vec4<f32> = u_xlat13;
            let x_2803 : vec2<f32> = u_xlat61;
            let x_2805 : vec2<f32> = ((vec2<f32>(x_2800.x, x_2800.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2803));
            let x_2806 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2805.x, x_2806.y, x_2805.y, x_2806.w);
            let x_2808 : vec2<f32> = u_xlat61;
            let x_2810 : vec2<f32> = (-(x_2808) + vec2<f32>(1.0f, 1.0f));
            let x_2811 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2813, vec2<f32>(0.0f, 0.0f));
            let x_2815 : vec2<f32> = u_xlat63;
            let x_2817 : vec2<f32> = u_xlat63;
            let x_2819 : vec4<f32> = u_xlat13;
            let x_2821 : vec2<f32> = ((-(x_2815) * x_2817) + vec2<f32>(x_2819.x, x_2819.y));
            let x_2822 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2821.x, x_2821.y, x_2822.z, x_2822.w);
            let x_2824 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2824, vec2<f32>(0.0f, 0.0f));
            let x_2827 : vec2<f32> = u_xlat63;
            let x_2829 : vec2<f32> = u_xlat63;
            let x_2831 : vec4<f32> = u_xlat12;
            let x_2833 : vec2<f32> = ((-(x_2827) * x_2829) + vec2<f32>(x_2831.y, x_2831.w));
            let x_2834 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2833.x, x_2834.y, x_2833.y);
            let x_2836 : vec4<f32> = u_xlat13;
            let x_2839 : vec2<f32> = (vec2<f32>(x_2836.x, x_2836.y) + vec2<f32>(2.0f, 2.0f));
            let x_2840 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec3<f32> = u_xlat37;
            let x_2844 : vec2<f32> = (vec2<f32>(x_2842.x, x_2842.z) + vec2<f32>(2.0f, 2.0f));
            let x_2845 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2845.x, x_2844.x, x_2845.z, x_2844.y);
            let x_2848 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2848 * 0.08163200318813323975f);
            let x_2851 : vec4<f32> = u_xlat12;
            let x_2854 : vec3<f32> = (vec3<f32>(x_2851.z, x_2851.x, x_2851.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2855 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat13;
            let x_2859 : vec2<f32> = (vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2859.x, x_2859.y, x_2860.z, x_2860.w);
            let x_2863 : f32 = u_xlat16.y;
            u_xlat15.x = x_2863;
            let x_2865 : vec2<f32> = u_xlat61;
            let x_2868 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2869 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2869.x, x_2868.x, x_2869.z, x_2868.y);
            let x_2871 : vec2<f32> = u_xlat61;
            let x_2874 : vec2<f32> = ((vec2<f32>(x_2871.x, x_2871.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2874.x, x_2875.y, x_2874.y, x_2875.w);
            let x_2878 : f32 = u_xlat12.x;
            u_xlat13.y = x_2878;
            let x_2881 : f32 = u_xlat14.y;
            u_xlat13.w = x_2881;
            let x_2883 : vec4<f32> = u_xlat13;
            let x_2884 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2883 + x_2884);
            let x_2886 : vec2<f32> = u_xlat61;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2886.y, x_2886.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2890 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2890.x, x_2889.x, x_2890.z, x_2889.y);
            let x_2892 : vec2<f32> = u_xlat61;
            let x_2895 : vec2<f32> = ((vec2<f32>(x_2892.y, x_2892.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2896 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2896.w);
            let x_2899 : f32 = u_xlat12.y;
            u_xlat14.y = x_2899;
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2902 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2901 + x_2902);
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2905 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2904 / x_2905);
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2907 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2909 : vec4<f32> = u_xlat14;
            let x_2910 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2909 / x_2910);
            let x_2912 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2912 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2914 : vec4<f32> = u_xlat13;
            let x_2917 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2914.w, x_2914.x, x_2914.y, x_2914.z) * vec4<f32>(x_2917.x, x_2917.x, x_2917.x, x_2917.x));
            let x_2920 : vec4<f32> = u_xlat14;
            let x_2923 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2920.x, x_2920.w, x_2920.y, x_2920.z) * vec4<f32>(x_2923.y, x_2923.y, x_2923.y, x_2923.y));
            let x_2926 : vec4<f32> = u_xlat13;
            let x_2927 : vec3<f32> = vec3<f32>(x_2926.y, x_2926.z, x_2926.w);
            let x_2928 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2927.x, x_2928.y, x_2927.y, x_2927.z);
            let x_2931 : f32 = u_xlat14.x;
            u_xlat16.y = x_2931;
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat11;
            let x_2945 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2948.w, x_2948.y));
            let x_2952 : f32 = u_xlat16.y;
            u_xlat13.y = x_2952;
            let x_2955 : f32 = u_xlat14.z;
            u_xlat16.y = x_2955;
            let x_2957 : vec4<f32> = u_xlat11;
            let x_2960 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) * vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y)) + vec4<f32>(x_2963.x, x_2963.y, x_2963.z, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat11;
            let x_2969 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat16;
            let x_2974 : vec2<f32> = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.w, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2978 : f32 = u_xlat16.y;
            u_xlat13.z = x_2978;
            let x_2981 : vec4<f32> = u_xlat11;
            let x_2984 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.y) * vec4<f32>(x_2984.x, x_2984.y, x_2984.x, x_2984.y)) + vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.z));
            let x_2991 : f32 = u_xlat14.w;
            u_xlat16.y = x_2991;
            let x_2994 : vec4<f32> = u_xlat11;
            let x_2997 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3000 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2994.x, x_2994.y, x_2994.x, x_2994.y) * vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y)) + vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3000.y));
            let x_3004 : vec4<f32> = u_xlat11;
            let x_3007 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3010 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3004.x, x_3004.y) * vec2<f32>(x_3007.x, x_3007.y)) + vec2<f32>(x_3010.w, x_3010.y));
            let x_3014 : f32 = u_xlat16.y;
            u_xlat13.w = x_3014;
            let x_3017 : vec4<f32> = u_xlat11;
            let x_3020 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3023 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3017.x, x_3017.y) * vec2<f32>(x_3020.x, x_3020.y)) + vec2<f32>(x_3023.x, x_3023.w));
            let x_3026 : vec4<f32> = u_xlat16;
            let x_3027 : vec3<f32> = vec3<f32>(x_3026.x, x_3026.z, x_3026.w);
            let x_3028 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3027.x, x_3028.y, x_3027.y, x_3027.z);
            let x_3030 : vec4<f32> = u_xlat11;
            let x_3033 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y) * vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y)) + vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3036.y));
            let x_3040 : vec4<f32> = u_xlat11;
            let x_3043 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3046 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3040.x, x_3040.y) * vec2<f32>(x_3043.x, x_3043.y)) + vec2<f32>(x_3046.w, x_3046.y));
            let x_3050 : f32 = u_xlat13.x;
            u_xlat14.x = x_3050;
            let x_3052 : vec4<f32> = u_xlat11;
            let x_3055 : vec4<f32> = x_322.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat14;
            let x_3060 : vec2<f32> = ((vec2<f32>(x_3052.x, x_3052.y) * vec2<f32>(x_3055.x, x_3055.y)) + vec2<f32>(x_3058.x, x_3058.y));
            let x_3061 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
            let x_3064 : vec4<f32> = u_xlat12;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3064.x, x_3064.x, x_3064.x, x_3064.x) * x_3066);
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3071 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3069.y, x_3069.y, x_3069.y, x_3069.y) * x_3071);
            let x_3074 : vec4<f32> = u_xlat12;
            let x_3076 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3074.z, x_3074.z, x_3074.z, x_3074.z) * x_3076);
            let x_3078 : vec4<f32> = u_xlat12;
            let x_3080 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3078.w, x_3078.w, x_3078.w, x_3078.w) * x_3080);
            let x_3083 : vec4<f32> = u_xlat17;
            let x_3084 : vec2<f32> = vec2<f32>(x_3083.x, x_3083.y);
            let x_3086 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec43;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat85 = x_3095;
            let x_3097 : vec4<f32> = u_xlat17;
            let x_3098 : vec2<f32> = vec2<f32>(x_3097.z, x_3097.w);
            let x_3100 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3098.x, x_3098.y, x_3100);
            let x_3107 : vec3<f32> = txVec44;
            let x_3109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
            u_xlat13.x = x_3109;
            let x_3112 : f32 = u_xlat13.x;
            let x_3114 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3112 * x_3114);
            let x_3118 : f32 = u_xlat22.x;
            let x_3119 : f32 = u_xlat85;
            let x_3122 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3118 * x_3119) + x_3122);
            let x_3125 : vec2<f32> = u_xlat61;
            let x_3127 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3125.x, x_3125.y, x_3127);
            let x_3134 : vec3<f32> = txVec45;
            let x_3136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3134.xy, x_3134.z);
            u_xlat61.x = x_3136;
            let x_3139 : f32 = u_xlat22.z;
            let x_3141 : f32 = u_xlat61.x;
            let x_3143 : f32 = u_xlat85;
            u_xlat85 = ((x_3139 * x_3141) + x_3143);
            let x_3146 : vec4<f32> = u_xlat20;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
            let x_3149 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec46;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat61.x = x_3158;
            let x_3161 : f32 = u_xlat22.w;
            let x_3163 : f32 = u_xlat61.x;
            let x_3165 : f32 = u_xlat85;
            u_xlat85 = ((x_3161 * x_3163) + x_3165);
            let x_3168 : vec4<f32> = u_xlat18;
            let x_3169 : vec2<f32> = vec2<f32>(x_3168.x, x_3168.y);
            let x_3171 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec47;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat61.x = x_3180;
            let x_3183 : f32 = u_xlat23.x;
            let x_3185 : f32 = u_xlat61.x;
            let x_3187 : f32 = u_xlat85;
            u_xlat85 = ((x_3183 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat18;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.z, x_3190.w);
            let x_3193 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec48;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat61.x = x_3202;
            let x_3205 : f32 = u_xlat23.y;
            let x_3207 : f32 = u_xlat61.x;
            let x_3209 : f32 = u_xlat85;
            u_xlat85 = ((x_3205 * x_3207) + x_3209);
            let x_3212 : vec4<f32> = u_xlat19;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.x, x_3212.y);
            let x_3215 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec49;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat61.x = x_3224;
            let x_3227 : f32 = u_xlat23.z;
            let x_3229 : f32 = u_xlat61.x;
            let x_3231 : f32 = u_xlat85;
            u_xlat85 = ((x_3227 * x_3229) + x_3231);
            let x_3234 : vec4<f32> = u_xlat20;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec50;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat61.x = x_3246;
            let x_3249 : f32 = u_xlat23.w;
            let x_3251 : f32 = u_xlat61.x;
            let x_3253 : f32 = u_xlat85;
            u_xlat85 = ((x_3249 * x_3251) + x_3253);
            let x_3256 : vec4<f32> = u_xlat21;
            let x_3257 : vec2<f32> = vec2<f32>(x_3256.x, x_3256.y);
            let x_3259 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec51;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat61.x = x_3268;
            let x_3271 : f32 = u_xlat24.x;
            let x_3273 : f32 = u_xlat61.x;
            let x_3275 : f32 = u_xlat85;
            u_xlat85 = ((x_3271 * x_3273) + x_3275);
            let x_3278 : vec4<f32> = u_xlat21;
            let x_3279 : vec2<f32> = vec2<f32>(x_3278.z, x_3278.w);
            let x_3281 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
            let x_3288 : vec3<f32> = txVec52;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat61.x = x_3290;
            let x_3293 : f32 = u_xlat24.y;
            let x_3295 : f32 = u_xlat61.x;
            let x_3297 : f32 = u_xlat85;
            u_xlat85 = ((x_3293 * x_3295) + x_3297);
            let x_3300 : vec2<f32> = u_xlat38;
            let x_3302 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3300.x, x_3300.y, x_3302);
            let x_3309 : vec3<f32> = txVec53;
            let x_3311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3309.xy, x_3309.z);
            u_xlat61.x = x_3311;
            let x_3314 : f32 = u_xlat24.z;
            let x_3316 : f32 = u_xlat61.x;
            let x_3318 : f32 = u_xlat85;
            u_xlat85 = ((x_3314 * x_3316) + x_3318);
            let x_3321 : vec2<f32> = u_xlat69;
            let x_3323 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
            let x_3330 : vec3<f32> = txVec54;
            let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
            u_xlat61.x = x_3332;
            let x_3335 : f32 = u_xlat24.w;
            let x_3337 : f32 = u_xlat61.x;
            let x_3339 : f32 = u_xlat85;
            u_xlat85 = ((x_3335 * x_3337) + x_3339);
            let x_3342 : vec4<f32> = u_xlat16;
            let x_3343 : vec2<f32> = vec2<f32>(x_3342.x, x_3342.y);
            let x_3345 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3343.x, x_3343.y, x_3345);
            let x_3352 : vec3<f32> = txVec55;
            let x_3354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3352.xy, x_3352.z);
            u_xlat61.x = x_3354;
            let x_3357 : f32 = u_xlat12.x;
            let x_3359 : f32 = u_xlat61.x;
            let x_3361 : f32 = u_xlat85;
            u_xlat85 = ((x_3357 * x_3359) + x_3361);
            let x_3364 : vec4<f32> = u_xlat16;
            let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
            let x_3374 : vec3<f32> = txVec56;
            let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
            u_xlat61.x = x_3376;
            let x_3379 : f32 = u_xlat12.y;
            let x_3381 : f32 = u_xlat61.x;
            let x_3383 : f32 = u_xlat85;
            u_xlat85 = ((x_3379 * x_3381) + x_3383);
            let x_3386 : vec2<f32> = u_xlat64;
            let x_3388 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec57;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat61.x = x_3397;
            let x_3400 : f32 = u_xlat12.z;
            let x_3402 : f32 = u_xlat61.x;
            let x_3404 : f32 = u_xlat85;
            u_xlat85 = ((x_3400 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat11;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec58;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat11.x = x_3419;
            let x_3422 : f32 = u_xlat12.w;
            let x_3424 : f32 = u_xlat11.x;
            let x_3426 : f32 = u_xlat85;
            u_xlat84 = ((x_3422 * x_3424) + x_3426);
          }
        }
      } else {
        let x_3430 : vec4<f32> = u_xlat10;
        let x_3431 : vec2<f32> = vec2<f32>(x_3430.x, x_3430.y);
        let x_3433 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3431.x, x_3431.y, x_3433);
        let x_3440 : vec3<f32> = txVec59;
        let x_3442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3440.xy, x_3440.z);
        u_xlat84 = x_3442;
      }
      let x_3443 : i32 = u_xlati30;
      let x_3445 : f32 = x_322.x_AdditionalShadowParams[x_3443].x;
      u_xlat10.x = (1.0f + -(x_3445));
      let x_3449 : f32 = u_xlat84;
      let x_3450 : i32 = u_xlati30;
      let x_3452 : f32 = x_322.x_AdditionalShadowParams[x_3450].x;
      let x_3455 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3449 * x_3452) + x_3455);
      let x_3458 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3458);
      let x_3463 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3463 >= 1.0f);
      let x_3465 : bool = u_xlatb35;
      let x_3467 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3465 | x_3467);
      let x_3471 : bool = u_xlatb10.x;
      let x_3472 : f32 = u_xlat84;
      u_xlat84 = select(x_3472, 1.0f, x_3471);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3475 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3475) + 1.0f);
    let x_3479 : f32 = u_xlat76;
    let x_3481 : f32 = u_xlat10.x;
    let x_3483 : f32 = u_xlat84;
    u_xlat84 = ((x_3479 * x_3481) + x_3483);
    let x_3485 : f32 = u_xlat81;
    let x_3486 : f32 = u_xlat84;
    u_xlat81 = (x_3485 * x_3486);
    let x_3488 : vec4<f32> = u_xlat2;
    let x_3490 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3488.x, x_3488.y, x_3488.z), vec3<f32>(x_3490.x, x_3490.y, x_3490.z));
    let x_3493 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3493, 0.0f, 1.0f);
    let x_3495 : f32 = u_xlat81;
    let x_3496 : f32 = u_xlat84;
    u_xlat81 = (x_3495 * x_3496);
    let x_3498 : f32 = u_xlat81;
    let x_3500 : i32 = u_xlati30;
    let x_3502 : vec4<f32> = x_1989.x_AdditionalLightsColor[x_3500];
    let x_3504 : vec3<f32> = (vec3<f32>(x_3498, x_3498, x_3498) * vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
    let x_3505 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
    let x_3507 : vec4<f32> = u_xlat8;
    let x_3509 : f32 = u_xlat83;
    let x_3512 : vec3<f32> = u_xlat3;
    let x_3513 : vec3<f32> = ((vec3<f32>(x_3507.x, x_3507.y, x_3507.z) * vec3<f32>(x_3509, x_3509, x_3509)) + x_3512);
    let x_3514 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3513.x, x_3513.y, x_3513.z, x_3514.w);
    let x_3516 : vec4<f32> = u_xlat8;
    let x_3518 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_3516.x, x_3516.y, x_3516.z), vec3<f32>(x_3518.x, x_3518.y, x_3518.z));
    let x_3523 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_3523, 1.17549435e-38f);
    let x_3527 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_3527);
    let x_3530 : vec3<f32> = u_xlat30;
    let x_3532 : vec4<f32> = u_xlat8;
    let x_3534 : vec3<f32> = (vec3<f32>(x_3530.x, x_3530.x, x_3530.x) * vec3<f32>(x_3532.x, x_3532.y, x_3532.z));
    let x_3535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3534.x, x_3534.y, x_3534.z, x_3535.w);
    let x_3537 : vec4<f32> = u_xlat2;
    let x_3539 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_3537.x, x_3537.y, x_3537.z), vec3<f32>(x_3539.x, x_3539.y, x_3539.z));
    let x_3544 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_3544, 0.0f, 1.0f);
    let x_3547 : vec4<f32> = u_xlat9;
    let x_3549 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3547.x, x_3547.y, x_3547.z), vec3<f32>(x_3549.x, x_3549.y, x_3549.z));
    let x_3552 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3552, 0.0f, 1.0f);
    let x_3555 : f32 = u_xlat30.x;
    let x_3557 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3555 * x_3557);
    let x_3561 : f32 = u_xlat30.x;
    let x_3563 : f32 = u_xlat7.x;
    u_xlat30.x = ((x_3561 * x_3563) + 1.00001001358032226562f);
    let x_3567 : f32 = u_xlat81;
    let x_3568 : f32 = u_xlat81;
    u_xlat81 = (x_3567 * x_3568);
    let x_3571 : f32 = u_xlat30.x;
    let x_3573 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3571 * x_3573);
    let x_3576 : f32 = u_xlat81;
    u_xlat81 = max(x_3576, 0.10000000149011611938f);
    let x_3579 : f32 = u_xlat30.x;
    let x_3580 : f32 = u_xlat81;
    u_xlat30.x = (x_3579 * x_3580);
    let x_3583 : f32 = u_xlat78;
    let x_3585 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3583 * x_3585);
    let x_3588 : f32 = u_xlat79;
    let x_3590 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3588 / x_3590);
    let x_3593 : vec4<f32> = u_xlat0;
    let x_3595 : vec3<f32> = u_xlat30;
    let x_3598 : vec3<f32> = u_xlat4;
    let x_3599 : vec3<f32> = ((vec3<f32>(x_3593.x, x_3593.y, x_3593.z) * vec3<f32>(x_3595.x, x_3595.x, x_3595.x)) + x_3598);
    let x_3600 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3599.x, x_3599.y, x_3599.z, x_3600.w);
    let x_3602 : vec4<f32> = u_xlat8;
    let x_3604 : vec4<f32> = u_xlat10;
    let x_3607 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3602.x, x_3602.y, x_3602.z) * vec3<f32>(x_3604.x, x_3604.y, x_3604.z)) + x_3607);

    continuing {
      let x_3609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3609 + bitcast<u32>(1i));
    }
  }
  let x_3611 : vec4<f32> = u_xlat6;
  let x_3613 : vec4<f32> = u_xlat5;
  let x_3616 : vec3<f32> = u_xlat1;
  let x_3617 : vec3<f32> = ((vec3<f32>(x_3611.x, x_3611.y, x_3611.z) * vec3<f32>(x_3613.x, x_3613.z, x_3613.w)) + x_3616);
  let x_3618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3617.x, x_3617.y, x_3617.z, x_3618.w);
  let x_3622 : vec3<f32> = u_xlat32;
  let x_3623 : vec4<f32> = u_xlat0;
  let x_3625 : vec3<f32> = (x_3622 + vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
  let x_3626 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
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


