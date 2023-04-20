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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_153 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu26 : u32;

var<private> u_xlati26 : i32;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat76 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2123 : AdditionalLights;

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
  var x_1756 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2263 : f32;
  var x_2274 : f32;
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
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_29.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_58 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_58 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_70 : vec3<f32> = (-(x_64) + x_69);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_79);
  let x_81 : f32 = u_xlat51;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81, x_81, x_81) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
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
  let x_145 : vec3<f32> = vs_TEXCOORD7;
  let x_156 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_145 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
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
  let x_187 : vec3<f32> = u_xlat26;
  let x_188 : vec3<f32> = u_xlat26;
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
  u_xlat26.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb4.y;
  u_xlat26.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb4.z;
  u_xlat26.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec3<f32> = u_xlat26;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat26 = (x_245 + vec3<f32>(x_246.y, x_246.z, x_246.w));
  let x_249 : vec3<f32> = u_xlat26;
  let x_251 : vec3<f32> = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat26.x = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_262 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_262) + 4.0f);
  let x_269 : f32 = u_xlat26.x;
  u_xlatu26 = u32(x_269);
  let x_273 : u32 = u_xlatu26;
  u_xlati26 = (bitcast<i32>(x_273) << bitcast<u32>(2i));
  let x_276 : vec3<f32> = vs_TEXCOORD7;
  let x_278 : i32 = u_xlati26;
  let x_281 : i32 = u_xlati26;
  let x_285 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_278 + 1i) / 4i)][((x_281 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : i32 = u_xlati26;
  let x_290 : i32 = u_xlati26;
  let x_293 : vec4<f32> = x_153.x_MainLightWorldToShadow[(x_288 / 4i)][(x_290 % 4i)];
  let x_295 : vec3<f32> = vs_TEXCOORD7;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.x, x_295.x, x_295.x)) + x_298);
  let x_300 : i32 = u_xlati26;
  let x_303 : i32 = u_xlati26;
  let x_307 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_300 + 2i) / 4i)][((x_303 + 2i) % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD7;
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + x_312);
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : i32 = u_xlati26;
  let x_318 : i32 = u_xlati26;
  let x_322 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_315 + 3i) / 4i)][((x_318 + 3i) % 4i)];
  u_xlat26 = (x_314 + vec3<f32>(x_322.x, x_322.y, x_322.z));
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
  u_xlat77 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat77;
  u_xlat77 = ((x_378 * x_380) + -(x_382));
  let x_387 : vec4<f32> = x_329.unity_SHC;
  let x_389 : f32 = u_xlat77;
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
  u_xlat77 = ((-(x_404) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_410 : f32 = u_xlat77;
  u_xlat78 = (-(x_410) + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : f32 = u_xlat77;
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
  u_xlat77 = (x_443 * x_445);
  let x_447 : f32 = u_xlat77;
  u_xlat77 = max(x_447, 0.0078125f);
  let x_451 : f32 = u_xlat77;
  let x_452 : f32 = u_xlat77;
  u_xlat79 = (x_451 * x_452);
  let x_456 : f32 = u_xlat0.w;
  let x_457 : f32 = u_xlat78;
  u_xlat75 = (x_456 + x_457);
  let x_459 : f32 = u_xlat75;
  u_xlat75 = clamp(x_459, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat77;
  u_xlat78 = ((x_461 * 4.0f) + 2.0f);
  let x_467 : f32 = x_153.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_467);
  let x_469 : bool = u_xlatb80;
  if (x_469) {
    let x_473 : f32 = x_153.x_MainLightShadowParams.y;
    u_xlatb80 = (x_473 == 1.0f);
    let x_475 : bool = u_xlatb80;
    if (x_475) {
      let x_478 : vec3<f32> = u_xlat26;
      let x_481 : vec4<f32> = x_153.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_478.x, x_478.y, x_478.x, x_478.y) + x_481);
      let x_485 : vec4<f32> = u_xlat6;
      let x_486 : vec2<f32> = vec2<f32>(x_485.x, x_485.y);
      let x_488 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_486.x, x_486.y, x_488);
      let x_500 : vec3<f32> = txVec0;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat7.x = x_502;
      let x_505 : vec4<f32> = u_xlat6;
      let x_506 : vec2<f32> = vec2<f32>(x_505.z, x_505.w);
      let x_508 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec1;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat7.y = x_517;
      let x_519 : vec3<f32> = u_xlat26;
      let x_523 : vec4<f32> = x_153.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) + x_523);
      let x_526 : vec4<f32> = u_xlat6;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec2;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat7.z = x_538;
      let x_541 : vec4<f32> = u_xlat6;
      let x_542 : vec2<f32> = vec2<f32>(x_541.z, x_541.w);
      let x_544 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec3;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat7.w = x_553;
      let x_556 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_153.x_MainLightShadowParams.y;
      u_xlatb6 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb6;
      if (x_565) {
        let x_568 : vec3<f32> = u_xlat26;
        let x_572 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_577 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat6;
        let x_582 : vec2<f32> = floor(vec2<f32>(x_580.x, x_580.y));
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_587 : vec3<f32> = u_xlat26;
        let x_590 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + -(vec2<f32>(x_593.x, x_593.y)));
        let x_597 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_597.x, x_597.x, x_597.y, x_597.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_602 : vec4<f32> = u_xlat7;
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_602.x, x_602.x, x_602.z, x_602.z) * vec4<f32>(x_604.x, x_604.x, x_604.z, x_604.z));
        let x_607 : vec4<f32> = u_xlat8;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.y, x_607.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_612 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_611.x, x_612.y, x_611.y, x_612.w);
        let x_614 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = u_xlat56;
        let x_619 : vec2<f32> = ((vec2<f32>(x_614.x, x_614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_617));
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_623) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec2<f32> = u_xlat56;
        let x_630 : vec2<f32> = min(x_628, vec2<f32>(0.0f, 0.0f));
        let x_631 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat9;
        let x_636 : vec4<f32> = u_xlat9;
        let x_639 : vec2<f32> = u_xlat58;
        let x_640 : vec2<f32> = ((-(vec2<f32>(x_633.x, x_633.y)) * vec2<f32>(x_636.x, x_636.y)) + x_639);
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_643, vec2<f32>(0.0f, 0.0f));
        let x_645 : vec2<f32> = u_xlat56;
        let x_647 : vec2<f32> = u_xlat56;
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_645) * x_647) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat9;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_657 + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_665 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat58;
        let x_668 : vec2<f32> = (x_667 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat9;
        let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec2<f32> = u_xlat56;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_681.y, x_681.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : f32 = u_xlat9.x;
        u_xlat10.z = x_685;
        let x_688 : f32 = u_xlat56.x;
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
        let x_706 : f32 = u_xlat56.y;
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
        u_xlat56 = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.x, x_780.y)) + vec2<f32>(x_783.z, x_783.w));
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
        let x_841 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_849 : vec3<f32> = txVec4;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat31 = x_851;
        let x_853 : vec4<f32> = u_xlat10;
        let x_854 : vec2<f32> = vec2<f32>(x_853.z, x_853.w);
        let x_856 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_854.x, x_854.y, x_856);
        let x_863 : vec3<f32> = txVec5;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_863.xy, x_863.z);
        u_xlat7.x = x_865;
        let x_868 : f32 = u_xlat7.x;
        let x_870 : f32 = u_xlat13.y;
        u_xlat7.x = (x_868 * x_870);
        let x_874 : f32 = u_xlat13.x;
        let x_875 : f32 = u_xlat31;
        let x_878 : f32 = u_xlat7.x;
        u_xlat31 = ((x_874 * x_875) + x_878);
        let x_881 : vec2<f32> = u_xlat56;
        let x_883 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec6;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat56.x = x_892;
        let x_895 : f32 = u_xlat13.z;
        let x_897 : f32 = u_xlat56.x;
        let x_899 : f32 = u_xlat31;
        u_xlat31 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat9;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat56.x = x_914;
        let x_917 : f32 = u_xlat13.w;
        let x_919 : f32 = u_xlat56.x;
        let x_921 : f32 = u_xlat31;
        u_xlat31 = ((x_917 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat11;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec8;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat56.x = x_936;
        let x_939 : f32 = u_xlat14.x;
        let x_941 : f32 = u_xlat56.x;
        let x_943 : f32 = u_xlat31;
        u_xlat31 = ((x_939 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat11;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec9;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat56.x = x_958;
        let x_961 : f32 = u_xlat14.y;
        let x_963 : f32 = u_xlat56.x;
        let x_965 : f32 = u_xlat31;
        u_xlat31 = ((x_961 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat9;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec10;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat56.x = x_980;
        let x_983 : f32 = u_xlat14.z;
        let x_985 : f32 = u_xlat56.x;
        let x_987 : f32 = u_xlat31;
        u_xlat31 = ((x_983 * x_985) + x_987);
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec11;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
        u_xlat56.x = x_1002;
        let x_1005 : f32 = u_xlat14.w;
        let x_1007 : f32 = u_xlat56.x;
        let x_1009 : f32 = u_xlat31;
        u_xlat31 = ((x_1005 * x_1007) + x_1009);
        let x_1012 : vec4<f32> = u_xlat8;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.z, x_1012.w);
        let x_1015 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec12;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat56.x = x_1024;
        let x_1027 : f32 = u_xlat6.x;
        let x_1029 : f32 = u_xlat56.x;
        let x_1031 : f32 = u_xlat31;
        u_xlat80 = ((x_1027 * x_1029) + x_1031);
      } else {
        let x_1034 : vec3<f32> = u_xlat26;
        let x_1037 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.z, x_1037.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat6;
        let x_1045 : vec2<f32> = floor(vec2<f32>(x_1043.x, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec3<f32> = u_xlat26;
        let x_1051 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.z, x_1051.w)) + -(vec2<f32>(x_1054.x, x_1054.y)));
        let x_1058 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1058.x, x_1058.x, x_1058.y, x_1058.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1063 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1061.x, x_1061.x, x_1061.z, x_1061.z) * vec4<f32>(x_1063.x, x_1063.x, x_1063.z, x_1063.z));
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1070 : vec2<f32> = (vec2<f32>(x_1066.y, x_1066.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1070.x, x_1071.z, x_1070.y);
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1076 : vec2<f32> = u_xlat56;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1076));
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1079.w);
        let x_1081 : vec2<f32> = u_xlat56;
        let x_1083 : vec2<f32> = (-(x_1081) + vec2<f32>(1.0f, 1.0f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
        let x_1086 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1086, vec2<f32>(0.0f, 0.0f));
        let x_1088 : vec2<f32> = u_xlat58;
        let x_1090 : vec2<f32> = u_xlat58;
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1094 : vec2<f32> = ((-(x_1088) * x_1090) + vec2<f32>(x_1092.x, x_1092.y));
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1097, vec2<f32>(0.0f, 0.0f));
        let x_1100 : vec2<f32> = u_xlat58;
        let x_1102 : vec2<f32> = u_xlat58;
        let x_1104 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = ((-(x_1100) * x_1102) + vec2<f32>(x_1104.y, x_1104.w));
        let x_1107 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1106.x, x_1107.y, x_1106.y);
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1112 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) + vec2<f32>(2.0f, 2.0f));
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1115 : vec3<f32> = u_xlat32;
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
        let x_1140 : vec2<f32> = u_xlat56;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1148 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec2<f32> = u_xlat56;
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
        let x_1166 : vec2<f32> = u_xlat56;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1170.x, x_1169.x, x_1170.z, x_1169.y);
        let x_1172 : vec2<f32> = u_xlat56;
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
        u_xlat56 = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
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
        u_xlat33 = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1294.w, x_1294.y));
        let x_1298 : f32 = u_xlat11.y;
        u_xlat8.w = x_1298;
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.x, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1334 : f32 = u_xlat8.x;
        u_xlat9.x = x_1334;
        let x_1336 : vec4<f32> = u_xlat6;
        let x_1339 : vec4<f32> = x_153.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.y));
        let x_1345 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x) * x_1350);
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y) * x_1355);
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1358.z, x_1358.z, x_1358.z, x_1358.z) * x_1360);
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1362.w, x_1362.w, x_1362.w, x_1362.w) * x_1364);
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec13;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat8.x = x_1379;
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec14;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat83 = x_1395;
        let x_1396 : f32 = u_xlat83;
        let x_1398 : f32 = u_xlat17.y;
        u_xlat83 = (x_1396 * x_1398);
        let x_1401 : f32 = u_xlat17.x;
        let x_1403 : f32 = u_xlat8.x;
        let x_1405 : f32 = u_xlat83;
        u_xlat8.x = ((x_1401 * x_1403) + x_1405);
        let x_1409 : vec2<f32> = u_xlat56;
        let x_1411 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec15;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat56.x = x_1420;
        let x_1423 : f32 = u_xlat17.z;
        let x_1425 : f32 = u_xlat56.x;
        let x_1428 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1423 * x_1425) + x_1428);
        let x_1432 : vec4<f32> = u_xlat15;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1443 : vec3<f32> = txVec16;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat81 = x_1445;
        let x_1447 : f32 = u_xlat17.w;
        let x_1448 : f32 = u_xlat81;
        let x_1451 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat13;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec17;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat81 = x_1467;
        let x_1469 : f32 = u_xlat18.x;
        let x_1470 : f32 = u_xlat81;
        let x_1473 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat13;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec18;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat81 = x_1489;
        let x_1491 : f32 = u_xlat18.y;
        let x_1492 : f32 = u_xlat81;
        let x_1495 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1491 * x_1492) + x_1495);
        let x_1499 : vec4<f32> = u_xlat14;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.x, x_1499.y);
        let x_1502 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec19;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat81 = x_1511;
        let x_1513 : f32 = u_xlat18.z;
        let x_1514 : f32 = u_xlat81;
        let x_1517 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1513 * x_1514) + x_1517);
        let x_1521 : vec4<f32> = u_xlat15;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.z, x_1521.w);
        let x_1524 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec20;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat81 = x_1533;
        let x_1535 : f32 = u_xlat18.w;
        let x_1536 : f32 = u_xlat81;
        let x_1539 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1535 * x_1536) + x_1539);
        let x_1543 : vec4<f32> = u_xlat16;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec21;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat81 = x_1555;
        let x_1557 : f32 = u_xlat19.x;
        let x_1558 : f32 = u_xlat81;
        let x_1561 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1557 * x_1558) + x_1561);
        let x_1565 : vec4<f32> = u_xlat16;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.z, x_1565.w);
        let x_1568 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec22;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat81 = x_1577;
        let x_1579 : f32 = u_xlat19.y;
        let x_1580 : f32 = u_xlat81;
        let x_1583 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1579 * x_1580) + x_1583);
        let x_1587 : vec2<f32> = u_xlat33;
        let x_1589 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec23;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat81 = x_1598;
        let x_1600 : f32 = u_xlat19.z;
        let x_1601 : f32 = u_xlat81;
        let x_1604 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1600 * x_1601) + x_1604);
        let x_1608 : vec2<f32> = u_xlat64;
        let x_1610 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec24;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat81 = x_1619;
        let x_1621 : f32 = u_xlat19.w;
        let x_1622 : f32 = u_xlat81;
        let x_1625 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec25;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat81 = x_1641;
        let x_1643 : f32 = u_xlat7.x;
        let x_1644 : f32 = u_xlat81;
        let x_1647 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat11;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec26;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat81 = x_1663;
        let x_1665 : f32 = u_xlat7.y;
        let x_1666 : f32 = u_xlat81;
        let x_1669 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec2<f32> = u_xlat59;
        let x_1675 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec27;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1682.xy, x_1682.z);
        u_xlat81 = x_1684;
        let x_1686 : f32 = u_xlat7.z;
        let x_1687 : f32 = u_xlat81;
        let x_1690 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1686 * x_1687) + x_1690);
        let x_1694 : vec4<f32> = u_xlat6;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
        let x_1697 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec28;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat6.x = x_1706;
        let x_1709 : f32 = u_xlat7.w;
        let x_1711 : f32 = u_xlat6.x;
        let x_1714 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1709 * x_1711) + x_1714);
      }
    }
  } else {
    let x_1718 : vec3<f32> = u_xlat26;
    let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
    let x_1721 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
    let x_1728 : vec3<f32> = txVec29;
    let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
    u_xlat80 = x_1730;
  }
  let x_1732 : f32 = x_153.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1732) + 1.0f);
  let x_1736 : f32 = u_xlat80;
  let x_1738 : f32 = x_153.x_MainLightShadowParams.x;
  let x_1741 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1736 * x_1738) + x_1741);
  let x_1746 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1746);
  let x_1750 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1750 >= 1.0f);
  let x_1752 : bool = u_xlatb76;
  let x_1753 : bool = u_xlatb51;
  u_xlatb51 = (x_1752 | x_1753);
  let x_1755 : bool = u_xlatb51;
  if (x_1755) {
    x_1756 = 1.0f;
  } else {
    let x_1761 : f32 = u_xlat26.x;
    x_1756 = x_1761;
  }
  let x_1762 : f32 = x_1756;
  u_xlat26.x = x_1762;
  let x_1764 : vec3<f32> = vs_TEXCOORD7;
  let x_1766 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1768 : vec3<f32> = (x_1764 + -(x_1766));
  let x_1769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : vec4<f32> = u_xlat6;
  let x_1773 : vec4<f32> = u_xlat6;
  u_xlat51 = dot(vec3<f32>(x_1771.x, x_1771.y, x_1771.z), vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1777 : f32 = u_xlat51;
  let x_1779 : f32 = x_153.x_MainLightShadowParams.z;
  let x_1782 : f32 = x_153.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1777 * x_1779) + x_1782);
  let x_1784 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1784, 0.0f, 1.0f);
  let x_1787 : f32 = u_xlat26.x;
  u_xlat80 = (-(x_1787) + 1.0f);
  let x_1790 : f32 = u_xlat76;
  let x_1791 : f32 = u_xlat80;
  let x_1794 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1790 * x_1791) + x_1794);
  let x_1797 : vec3<f32> = u_xlat3;
  let x_1799 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(-(x_1797), vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : f32 = u_xlat76;
  let x_1803 : f32 = u_xlat76;
  u_xlat76 = (x_1802 + x_1803);
  let x_1805 : vec4<f32> = u_xlat2;
  let x_1807 : f32 = u_xlat76;
  let x_1811 : vec3<f32> = u_xlat3;
  let x_1813 : vec3<f32> = ((vec3<f32>(x_1805.x, x_1805.y, x_1805.z) * -(vec3<f32>(x_1807, x_1807, x_1807))) + -(x_1811));
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat2;
  let x_1818 : vec3<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), x_1818);
  let x_1820 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1820, 0.0f, 1.0f);
  let x_1822 : f32 = u_xlat76;
  u_xlat76 = (-(x_1822) + 1.0f);
  let x_1825 : f32 = u_xlat76;
  let x_1826 : f32 = u_xlat76;
  u_xlat76 = (x_1825 * x_1826);
  let x_1828 : f32 = u_xlat76;
  let x_1829 : f32 = u_xlat76;
  u_xlat76 = (x_1828 * x_1829);
  let x_1832 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1832) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1839 : f32 = u_xlat1.x;
  let x_1840 : f32 = u_xlat80;
  u_xlat1.x = (x_1839 * x_1840);
  let x_1844 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1844 * 6.0f);
  let x_1856 : vec4<f32> = u_xlat6;
  let x_1859 : f32 = u_xlat1.x;
  let x_1860 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1856.x, x_1856.y, x_1856.z), x_1859);
  u_xlat6 = x_1860;
  let x_1862 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1862 + -1.0f);
  let x_1866 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_1868 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1866 * x_1868) + 1.0f);
  let x_1873 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1873, 0.0f);
  let x_1877 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1877);
  let x_1881 : f32 = u_xlat1.x;
  let x_1883 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1881 * x_1883);
  let x_1887 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1887);
  let x_1891 : f32 = u_xlat1.x;
  let x_1893 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1891 * x_1893);
  let x_1896 : vec4<f32> = u_xlat6;
  let x_1898 : vec4<f32> = u_xlat1;
  let x_1900 : vec3<f32> = (vec3<f32>(x_1896.x, x_1896.y, x_1896.z) * vec3<f32>(x_1898.x, x_1898.x, x_1898.x));
  let x_1901 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
  let x_1903 : f32 = u_xlat77;
  let x_1905 : f32 = u_xlat77;
  let x_1909 : vec2<f32> = ((vec2<f32>(x_1903, x_1903) * vec2<f32>(x_1905, x_1905)) + vec2<f32>(-1.0f, 1.0f));
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1909.x, x_1909.y, x_1910.z, x_1910.w);
  let x_1913 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1913);
  let x_1916 : vec4<f32> = u_xlat0;
  let x_1919 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1916.x, x_1916.y, x_1916.z)) + vec3<f32>(x_1919, x_1919, x_1919));
  let x_1922 : f32 = u_xlat76;
  let x_1924 : vec3<f32> = u_xlat32;
  let x_1926 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1922, x_1922, x_1922) * x_1924) + vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1929 : vec4<f32> = u_xlat1;
  let x_1931 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1929.x, x_1929.x, x_1929.x) * x_1931);
  let x_1933 : vec4<f32> = u_xlat6;
  let x_1935 : vec3<f32> = u_xlat32;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1933.x, x_1933.y, x_1933.z) * x_1935);
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : vec3<f32> = u_xlat4;
  let x_1940 : vec4<f32> = u_xlat5;
  let x_1943 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_1939 * vec3<f32>(x_1940.x, x_1940.y, x_1940.z)) + vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1947 : f32 = u_xlat26.x;
  let x_1949 : f32 = x_329.unity_LightData.z;
  u_xlat75 = (x_1947 * x_1949);
  let x_1951 : vec4<f32> = u_xlat2;
  let x_1954 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1951.x, x_1951.y, x_1951.z), vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1959 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1959, 0.0f, 1.0f);
  let x_1962 : f32 = u_xlat75;
  let x_1964 : f32 = u_xlat1.x;
  u_xlat75 = (x_1962 * x_1964);
  let x_1966 : f32 = u_xlat75;
  let x_1969 : vec4<f32> = x_29.x_MainLightColor;
  let x_1971 : vec3<f32> = (vec3<f32>(x_1966, x_1966, x_1966) * vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1971.z);
  let x_1974 : vec3<f32> = u_xlat3;
  let x_1976 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1978 : vec3<f32> = (x_1974 + vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
  let x_1979 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec4<f32> = u_xlat6;
  let x_1983 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : f32 = u_xlat75;
  u_xlat75 = max(x_1986, 1.17549435e-38f);
  let x_1989 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1989);
  let x_1991 : f32 = u_xlat75;
  let x_1993 : vec4<f32> = u_xlat6;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1991, x_1991, x_1991) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1998 : vec4<f32> = u_xlat2;
  let x_2000 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1998.x, x_1998.y, x_1998.z), vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2008 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2006.x, x_2006.y, x_2006.z), vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2011, 0.0f, 1.0f);
  let x_2013 : f32 = u_xlat75;
  let x_2014 : f32 = u_xlat75;
  u_xlat75 = (x_2013 * x_2014);
  let x_2016 : f32 = u_xlat75;
  let x_2018 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2016 * x_2018) + 1.00001001358032226562f);
  let x_2022 : f32 = u_xlat77;
  let x_2023 : f32 = u_xlat77;
  u_xlat77 = (x_2022 * x_2023);
  let x_2025 : f32 = u_xlat75;
  let x_2026 : f32 = u_xlat75;
  u_xlat75 = (x_2025 * x_2026);
  let x_2028 : f32 = u_xlat77;
  u_xlat77 = max(x_2028, 0.10000000149011611938f);
  let x_2031 : f32 = u_xlat75;
  let x_2032 : f32 = u_xlat77;
  u_xlat75 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat78;
  let x_2035 : f32 = u_xlat75;
  u_xlat75 = (x_2034 * x_2035);
  let x_2037 : f32 = u_xlat79;
  let x_2038 : f32 = u_xlat75;
  u_xlat75 = (x_2037 / x_2038);
  let x_2040 : vec4<f32> = u_xlat0;
  let x_2042 : f32 = u_xlat75;
  let x_2045 : vec4<f32> = u_xlat5;
  let x_2047 : vec3<f32> = ((vec3<f32>(x_2040.x, x_2040.y, x_2040.z) * vec3<f32>(x_2042, x_2042, x_2042)) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2048 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
  let x_2051 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2053 : f32 = x_329.unity_LightData.y;
  u_xlat75 = min(x_2051, x_2053);
  let x_2056 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2056));
  let x_2059 : f32 = u_xlat51;
  let x_2062 : f32 = x_153.x_AdditionalShadowFadeParams.x;
  let x_2065 : f32 = x_153.x_AdditionalShadowFadeParams.y;
  u_xlat51 = ((x_2059 * x_2062) + x_2065);
  let x_2067 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2067, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2079 : u32 = u_xlatu_loop_1;
    let x_2080 : u32 = u_xlatu75;
    if ((x_2079 < x_2080)) {
    } else {
      break;
    }
    let x_2083 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2083 >> 2u);
    let x_2086 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2086 & 3u));
    let x_2089 : u32 = u_xlatu80;
    let x_2092 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_2089)];
    let x_2102 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2107 : vec4<u32> = indexable[x_2102];
    u_xlat80 = dot(x_2092, bitcast<vec4<f32>>(x_2107));
    let x_2111 : f32 = u_xlat80;
    u_xlati80 = i32(x_2111);
    let x_2113 : vec3<f32> = vs_TEXCOORD7;
    let x_2124 : i32 = u_xlati80;
    let x_2126 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2124];
    let x_2129 : i32 = u_xlati80;
    let x_2131 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2129];
    let x_2133 : vec3<f32> = ((-(x_2113) * vec3<f32>(x_2126.w, x_2126.w, x_2126.w)) + vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
    let x_2134 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
    let x_2136 : vec4<f32> = u_xlat8;
    let x_2138 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : f32 = u_xlat81;
    u_xlat81 = max(x_2141, 0.00006103515625f);
    let x_2144 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2144);
    let x_2146 : f32 = u_xlat83;
    let x_2148 : vec4<f32> = u_xlat8;
    let x_2150 : vec3<f32> = (vec3<f32>(x_2146, x_2146, x_2146) * vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
    let x_2151 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
    let x_2154 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2154);
    let x_2156 : f32 = u_xlat81;
    let x_2157 : i32 = u_xlati80;
    let x_2159 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2157].x;
    u_xlat81 = (x_2156 * x_2159);
    let x_2161 : f32 = u_xlat81;
    let x_2163 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2161) * x_2163) + 1.0f);
    let x_2166 : f32 = u_xlat81;
    u_xlat81 = max(x_2166, 0.0f);
    let x_2168 : f32 = u_xlat81;
    let x_2169 : f32 = u_xlat81;
    u_xlat81 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat81;
    let x_2172 : f32 = u_xlat84;
    u_xlat81 = (x_2171 * x_2172);
    let x_2174 : i32 = u_xlati80;
    let x_2176 : vec4<f32> = x_2123.x_AdditionalLightsSpotDir[x_2174];
    let x_2178 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2176.x, x_2176.y, x_2176.z), vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : f32 = u_xlat84;
    let x_2182 : i32 = u_xlati80;
    let x_2184 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2182].z;
    let x_2186 : i32 = u_xlati80;
    let x_2188 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2186].w;
    u_xlat84 = ((x_2181 * x_2184) + x_2188);
    let x_2190 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2190, 0.0f, 1.0f);
    let x_2192 : f32 = u_xlat84;
    let x_2193 : f32 = u_xlat84;
    u_xlat84 = (x_2192 * x_2193);
    let x_2195 : f32 = u_xlat81;
    let x_2196 : f32 = u_xlat84;
    u_xlat81 = (x_2195 * x_2196);
    let x_2200 : i32 = u_xlati80;
    let x_2202 : f32 = x_153.x_AdditionalShadowParams[x_2200].w;
    u_xlati84 = i32(x_2202);
    let x_2207 : i32 = u_xlati84;
    u_xlatb10.x = (x_2207 >= 0i);
    let x_2211 : bool = u_xlatb10.x;
    if (x_2211) {
      let x_2215 : i32 = u_xlati80;
      let x_2217 : f32 = x_153.x_AdditionalShadowParams[x_2215].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2217, x_2217, x_2217, x_2217))));
      let x_2223 : bool = u_xlatb10.x;
      if (x_2223) {
        let x_2226 : vec4<f32> = u_xlat9;
        let x_2229 : vec4<f32> = u_xlat9;
        let x_2232 : vec4<bool> = (abs(vec4<f32>(x_2226.z, x_2226.z, x_2226.y, x_2226.z)) >= abs(vec4<f32>(x_2229.x, x_2229.y, x_2229.x, x_2229.x)));
        u_xlatb10 = vec3<bool>(x_2232.x, x_2232.y, x_2232.z);
        let x_2235 : bool = u_xlatb10.y;
        let x_2237 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2235 & x_2237);
        let x_2241 : vec4<f32> = u_xlat9;
        let x_2244 : vec4<bool> = (-(vec4<f32>(x_2241.z, x_2241.y, x_2241.x, x_2241.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2244.x, x_2244.y, x_2244.z);
        let x_2248 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2248);
        let x_2253 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2253);
        let x_2257 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2257);
        let x_2262 : bool = u_xlatb10.z;
        if (x_2262) {
          let x_2267 : f32 = u_xlat35.z;
          x_2263 = x_2267;
        } else {
          let x_2270 : f32 = u_xlat11.x;
          x_2263 = x_2270;
        }
        let x_2271 : f32 = x_2263;
        u_xlat60 = x_2271;
        let x_2273 : bool = u_xlatb10.x;
        if (x_2273) {
          let x_2278 : f32 = u_xlat35.x;
          x_2274 = x_2278;
        } else {
          let x_2280 : f32 = u_xlat60;
          x_2274 = x_2280;
        }
        let x_2281 : f32 = x_2274;
        u_xlat10.x = x_2281;
        let x_2283 : i32 = u_xlati80;
        let x_2285 : f32 = x_153.x_AdditionalShadowParams[x_2283].w;
        u_xlat35.x = trunc(x_2285);
        let x_2289 : f32 = u_xlat10.x;
        let x_2291 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2289 + x_2291);
        let x_2295 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2295);
      }
      let x_2297 : i32 = u_xlati84;
      u_xlati84 = (x_2297 << bitcast<u32>(2i));
      let x_2299 : vec3<f32> = vs_TEXCOORD7;
      let x_2302 : i32 = u_xlati84;
      let x_2305 : i32 = u_xlati84;
      let x_2309 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2302 + 1i) / 4i)][((x_2305 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2299.y, x_2299.y, x_2299.y, x_2299.y) * x_2309);
      let x_2311 : i32 = u_xlati84;
      let x_2313 : i32 = u_xlati84;
      let x_2316 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[(x_2311 / 4i)][(x_2313 % 4i)];
      let x_2317 : vec3<f32> = vs_TEXCOORD7;
      let x_2320 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2316 * vec4<f32>(x_2317.x, x_2317.x, x_2317.x, x_2317.x)) + x_2320);
      let x_2322 : i32 = u_xlati84;
      let x_2325 : i32 = u_xlati84;
      let x_2329 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2322 + 2i) / 4i)][((x_2325 + 2i) % 4i)];
      let x_2330 : vec3<f32> = vs_TEXCOORD7;
      let x_2333 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2329 * vec4<f32>(x_2330.z, x_2330.z, x_2330.z, x_2330.z)) + x_2333);
      let x_2335 : vec4<f32> = u_xlat10;
      let x_2336 : i32 = u_xlati84;
      let x_2339 : i32 = u_xlati84;
      let x_2343 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_2336 + 3i) / 4i)][((x_2339 + 3i) % 4i)];
      u_xlat10 = (x_2335 + x_2343);
      let x_2345 : vec4<f32> = u_xlat10;
      let x_2347 : vec4<f32> = u_xlat10;
      let x_2349 : vec3<f32> = (vec3<f32>(x_2345.x, x_2345.y, x_2345.z) / vec3<f32>(x_2347.w, x_2347.w, x_2347.w));
      let x_2350 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
      let x_2353 : i32 = u_xlati80;
      let x_2355 : f32 = x_153.x_AdditionalShadowParams[x_2353].y;
      u_xlatb84 = (0.0f < x_2355);
      let x_2357 : bool = u_xlatb84;
      if (x_2357) {
        let x_2360 : i32 = u_xlati80;
        let x_2362 : f32 = x_153.x_AdditionalShadowParams[x_2360].y;
        u_xlatb84 = (1.0f == x_2362);
        let x_2364 : bool = u_xlatb84;
        if (x_2364) {
          let x_2367 : vec4<f32> = u_xlat10;
          let x_2371 : vec4<f32> = x_153.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2367.x, x_2367.y, x_2367.x, x_2367.y) + x_2371);
          let x_2374 : vec4<f32> = u_xlat11;
          let x_2375 : vec2<f32> = vec2<f32>(x_2374.x, x_2374.y);
          let x_2377 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
          let x_2385 : vec3<f32> = txVec30;
          let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
          u_xlat12.x = x_2387;
          let x_2390 : vec4<f32> = u_xlat11;
          let x_2391 : vec2<f32> = vec2<f32>(x_2390.z, x_2390.w);
          let x_2393 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
          let x_2400 : vec3<f32> = txVec31;
          let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
          u_xlat12.y = x_2402;
          let x_2404 : vec4<f32> = u_xlat10;
          let x_2408 : vec4<f32> = x_153.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2404.x, x_2404.y, x_2404.x, x_2404.y) + x_2408);
          let x_2411 : vec4<f32> = u_xlat11;
          let x_2412 : vec2<f32> = vec2<f32>(x_2411.x, x_2411.y);
          let x_2414 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
          let x_2421 : vec3<f32> = txVec32;
          let x_2423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2421.xy, x_2421.z);
          u_xlat12.z = x_2423;
          let x_2426 : vec4<f32> = u_xlat11;
          let x_2427 : vec2<f32> = vec2<f32>(x_2426.z, x_2426.w);
          let x_2429 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2427.x, x_2427.y, x_2429);
          let x_2436 : vec3<f32> = txVec33;
          let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
          u_xlat12.w = x_2438;
          let x_2440 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2440, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2444 : i32 = u_xlati80;
          let x_2446 : f32 = x_153.x_AdditionalShadowParams[x_2444].y;
          u_xlatb85 = (2.0f == x_2446);
          let x_2448 : bool = u_xlatb85;
          if (x_2448) {
            let x_2451 : vec4<f32> = u_xlat10;
            let x_2455 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2458 : vec2<f32> = ((vec2<f32>(x_2451.x, x_2451.y) * vec2<f32>(x_2455.z, x_2455.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2459 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat11;
            let x_2463 : vec2<f32> = floor(vec2<f32>(x_2461.x, x_2461.y));
            let x_2464 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2467 : vec4<f32> = u_xlat10;
            let x_2470 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2473 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2467.x, x_2467.y) * vec2<f32>(x_2470.z, x_2470.w)) + -(vec2<f32>(x_2473.x, x_2473.y)));
            let x_2477 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2477.x, x_2477.x, x_2477.y, x_2477.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2480 : vec4<f32> = u_xlat12;
            let x_2482 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2480.x, x_2480.x, x_2480.z, x_2480.z) * vec4<f32>(x_2482.x, x_2482.x, x_2482.z, x_2482.z));
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.y, x_2485.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2488 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2487.x, x_2488.y, x_2487.y, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat13;
            let x_2493 : vec2<f32> = u_xlat61;
            let x_2495 : vec2<f32> = ((vec2<f32>(x_2490.x, x_2490.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2493));
            let x_2496 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
            let x_2499 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2499) + vec2<f32>(1.0f, 1.0f));
            let x_2502 : vec2<f32> = u_xlat61;
            let x_2503 : vec2<f32> = min(x_2502, vec2<f32>(0.0f, 0.0f));
            let x_2504 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
            let x_2506 : vec4<f32> = u_xlat14;
            let x_2509 : vec4<f32> = u_xlat14;
            let x_2512 : vec2<f32> = u_xlat63;
            let x_2513 : vec2<f32> = ((-(vec2<f32>(x_2506.x, x_2506.y)) * vec2<f32>(x_2509.x, x_2509.y)) + x_2512);
            let x_2514 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2516, vec2<f32>(0.0f, 0.0f));
            let x_2518 : vec2<f32> = u_xlat61;
            let x_2520 : vec2<f32> = u_xlat61;
            let x_2522 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2518) * x_2520) + vec2<f32>(x_2522.y, x_2522.w));
            let x_2525 : vec4<f32> = u_xlat14;
            let x_2527 : vec2<f32> = (vec2<f32>(x_2525.x, x_2525.y) + vec2<f32>(1.0f, 1.0f));
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
            let x_2530 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2530 + vec2<f32>(1.0f, 1.0f));
            let x_2532 : vec4<f32> = u_xlat13;
            let x_2534 : vec2<f32> = (vec2<f32>(x_2532.x, x_2532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2535 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2534.x, x_2534.y, x_2535.z, x_2535.w);
            let x_2537 : vec2<f32> = u_xlat63;
            let x_2538 : vec2<f32> = (x_2537 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2539 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
            let x_2541 : vec4<f32> = u_xlat14;
            let x_2543 : vec2<f32> = (vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2544 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
            let x_2546 : vec2<f32> = u_xlat61;
            let x_2547 : vec2<f32> = (x_2546 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2548 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2550.y, x_2550.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2554 : f32 = u_xlat14.x;
            u_xlat15.z = x_2554;
            let x_2557 : f32 = u_xlat61.x;
            u_xlat15.w = x_2557;
            let x_2560 : f32 = u_xlat16.x;
            u_xlat13.z = x_2560;
            let x_2563 : f32 = u_xlat12.x;
            u_xlat13.w = x_2563;
            let x_2565 : vec4<f32> = u_xlat13;
            let x_2567 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2565.z, x_2565.w, x_2565.x, x_2565.z) + vec4<f32>(x_2567.z, x_2567.w, x_2567.x, x_2567.z));
            let x_2571 : f32 = u_xlat15.y;
            u_xlat14.z = x_2571;
            let x_2574 : f32 = u_xlat61.y;
            u_xlat14.w = x_2574;
            let x_2577 : f32 = u_xlat13.y;
            u_xlat16.z = x_2577;
            let x_2580 : f32 = u_xlat12.z;
            u_xlat16.w = x_2580;
            let x_2582 : vec4<f32> = u_xlat14;
            let x_2584 : vec4<f32> = u_xlat16;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2582.z, x_2582.y, x_2582.w) + vec3<f32>(x_2584.z, x_2584.y, x_2584.w));
            let x_2587 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat13;
            let x_2591 : vec4<f32> = u_xlat17;
            let x_2593 : vec3<f32> = (vec3<f32>(x_2589.x, x_2589.z, x_2589.w) / vec3<f32>(x_2591.z, x_2591.w, x_2591.y));
            let x_2594 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat13;
            let x_2598 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2599 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat16;
            let x_2603 : vec4<f32> = u_xlat12;
            let x_2605 : vec3<f32> = (vec3<f32>(x_2601.z, x_2601.y, x_2601.w) / vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
            let x_2606 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat14;
            let x_2610 : vec3<f32> = (vec3<f32>(x_2608.x, x_2608.y, x_2608.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2611 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat13;
            let x_2616 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2613.y, x_2613.x, x_2613.z) * vec3<f32>(x_2616.x, x_2616.x, x_2616.x));
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat14;
            let x_2624 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2626 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) * vec3<f32>(x_2624.y, x_2624.y, x_2624.y));
            let x_2627 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
            let x_2630 : f32 = u_xlat14.x;
            u_xlat13.w = x_2630;
            let x_2632 : vec4<f32> = u_xlat11;
            let x_2635 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2638 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.y) * vec4<f32>(x_2635.x, x_2635.y, x_2635.x, x_2635.y)) + vec4<f32>(x_2638.y, x_2638.w, x_2638.x, x_2638.w));
            let x_2641 : vec4<f32> = u_xlat11;
            let x_2644 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2647 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(x_2644.x, x_2644.y)) + vec2<f32>(x_2647.z, x_2647.w));
            let x_2651 : f32 = u_xlat13.y;
            u_xlat14.w = x_2651;
            let x_2653 : vec4<f32> = u_xlat14;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.y, x_2653.z);
            let x_2655 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2655.x, x_2654.x, x_2655.z, x_2654.y);
            let x_2657 : vec4<f32> = u_xlat11;
            let x_2660 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2663 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2657.x, x_2657.y, x_2657.x, x_2657.y) * vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y)) + vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2663.y));
            let x_2666 : vec4<f32> = u_xlat11;
            let x_2669 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2672 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2666.x, x_2666.y, x_2666.x, x_2666.y) * vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.y)) + vec4<f32>(x_2672.w, x_2672.y, x_2672.w, x_2672.z));
            let x_2675 : vec4<f32> = u_xlat11;
            let x_2678 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2681 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.y) * vec4<f32>(x_2678.x, x_2678.y, x_2678.x, x_2678.y)) + vec4<f32>(x_2681.x, x_2681.w, x_2681.z, x_2681.w));
            let x_2684 : vec4<f32> = u_xlat12;
            let x_2686 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.y) * vec4<f32>(x_2686.z, x_2686.w, x_2686.y, x_2686.z));
            let x_2689 : vec4<f32> = u_xlat12;
            let x_2691 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2689.y, x_2689.y, x_2689.z, x_2689.z) * x_2691);
            let x_2695 : f32 = u_xlat12.z;
            let x_2697 : f32 = u_xlat17.y;
            u_xlat85 = (x_2695 * x_2697);
            let x_2700 : vec4<f32> = u_xlat15;
            let x_2701 : vec2<f32> = vec2<f32>(x_2700.x, x_2700.y);
            let x_2703 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
            let x_2710 : vec3<f32> = txVec34;
            let x_2712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
            u_xlat11.x = x_2712;
            let x_2715 : vec4<f32> = u_xlat15;
            let x_2716 : vec2<f32> = vec2<f32>(x_2715.z, x_2715.w);
            let x_2718 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2716.x, x_2716.y, x_2718);
            let x_2726 : vec3<f32> = txVec35;
            let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
            u_xlat36 = x_2728;
            let x_2729 : f32 = u_xlat36;
            let x_2731 : f32 = u_xlat18.y;
            u_xlat36 = (x_2729 * x_2731);
            let x_2734 : f32 = u_xlat18.x;
            let x_2736 : f32 = u_xlat11.x;
            let x_2738 : f32 = u_xlat36;
            u_xlat11.x = ((x_2734 * x_2736) + x_2738);
            let x_2742 : vec2<f32> = u_xlat61;
            let x_2744 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2742.x, x_2742.y, x_2744);
            let x_2751 : vec3<f32> = txVec36;
            let x_2753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2751.xy, x_2751.z);
            u_xlat36 = x_2753;
            let x_2755 : f32 = u_xlat18.z;
            let x_2756 : f32 = u_xlat36;
            let x_2759 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2755 * x_2756) + x_2759);
            let x_2763 : vec4<f32> = u_xlat14;
            let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
            let x_2766 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2773 : vec3<f32> = txVec37;
            let x_2775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
            u_xlat36 = x_2775;
            let x_2777 : f32 = u_xlat18.w;
            let x_2778 : f32 = u_xlat36;
            let x_2781 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2777 * x_2778) + x_2781);
            let x_2785 : vec4<f32> = u_xlat16;
            let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
            let x_2788 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
            let x_2795 : vec3<f32> = txVec38;
            let x_2797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
            u_xlat36 = x_2797;
            let x_2799 : f32 = u_xlat19.x;
            let x_2800 : f32 = u_xlat36;
            let x_2803 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2799 * x_2800) + x_2803);
            let x_2807 : vec4<f32> = u_xlat16;
            let x_2808 : vec2<f32> = vec2<f32>(x_2807.z, x_2807.w);
            let x_2810 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
            let x_2817 : vec3<f32> = txVec39;
            let x_2819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
            u_xlat36 = x_2819;
            let x_2821 : f32 = u_xlat19.y;
            let x_2822 : f32 = u_xlat36;
            let x_2825 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2821 * x_2822) + x_2825);
            let x_2829 : vec4<f32> = u_xlat14;
            let x_2830 : vec2<f32> = vec2<f32>(x_2829.z, x_2829.w);
            let x_2832 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
            let x_2839 : vec3<f32> = txVec40;
            let x_2841 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
            u_xlat36 = x_2841;
            let x_2843 : f32 = u_xlat19.z;
            let x_2844 : f32 = u_xlat36;
            let x_2847 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2843 * x_2844) + x_2847);
            let x_2851 : vec4<f32> = u_xlat13;
            let x_2852 : vec2<f32> = vec2<f32>(x_2851.x, x_2851.y);
            let x_2854 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
            let x_2861 : vec3<f32> = txVec41;
            let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
            u_xlat36 = x_2863;
            let x_2865 : f32 = u_xlat19.w;
            let x_2866 : f32 = u_xlat36;
            let x_2869 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2865 * x_2866) + x_2869);
            let x_2873 : vec4<f32> = u_xlat13;
            let x_2874 : vec2<f32> = vec2<f32>(x_2873.z, x_2873.w);
            let x_2876 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
            let x_2883 : vec3<f32> = txVec42;
            let x_2885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
            u_xlat36 = x_2885;
            let x_2886 : f32 = u_xlat85;
            let x_2887 : f32 = u_xlat36;
            let x_2890 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2886 * x_2887) + x_2890);
          } else {
            let x_2893 : vec4<f32> = u_xlat10;
            let x_2896 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2899 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.y) * vec2<f32>(x_2896.z, x_2896.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2900 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2899.x, x_2899.y, x_2900.z, x_2900.w);
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2904 : vec2<f32> = floor(vec2<f32>(x_2902.x, x_2902.y));
            let x_2905 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec4<f32> = u_xlat10;
            let x_2910 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(x_2910.z, x_2910.w)) + -(vec2<f32>(x_2913.x, x_2913.y)));
            let x_2917 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2917.x, x_2917.x, x_2917.y, x_2917.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2920 : vec4<f32> = u_xlat12;
            let x_2922 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2920.x, x_2920.x, x_2920.z, x_2920.z) * vec4<f32>(x_2922.x, x_2922.x, x_2922.z, x_2922.z));
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2927 : vec2<f32> = (vec2<f32>(x_2925.y, x_2925.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2928.x, x_2927.x, x_2928.z, x_2927.y);
            let x_2930 : vec4<f32> = u_xlat13;
            let x_2933 : vec2<f32> = u_xlat61;
            let x_2935 : vec2<f32> = ((vec2<f32>(x_2930.x, x_2930.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2933));
            let x_2936 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2935.x, x_2936.y, x_2935.y, x_2936.w);
            let x_2938 : vec2<f32> = u_xlat61;
            let x_2940 : vec2<f32> = (-(x_2938) + vec2<f32>(1.0f, 1.0f));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2943 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2943, vec2<f32>(0.0f, 0.0f));
            let x_2945 : vec2<f32> = u_xlat63;
            let x_2947 : vec2<f32> = u_xlat63;
            let x_2949 : vec4<f32> = u_xlat13;
            let x_2951 : vec2<f32> = ((-(x_2945) * x_2947) + vec2<f32>(x_2949.x, x_2949.y));
            let x_2952 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
            let x_2954 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2954, vec2<f32>(0.0f, 0.0f));
            let x_2957 : vec2<f32> = u_xlat63;
            let x_2959 : vec2<f32> = u_xlat63;
            let x_2961 : vec4<f32> = u_xlat12;
            let x_2963 : vec2<f32> = ((-(x_2957) * x_2959) + vec2<f32>(x_2961.y, x_2961.w));
            let x_2964 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2963.x, x_2964.y, x_2963.y);
            let x_2966 : vec4<f32> = u_xlat13;
            let x_2968 : vec2<f32> = (vec2<f32>(x_2966.x, x_2966.y) + vec2<f32>(2.0f, 2.0f));
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
            let x_2971 : vec3<f32> = u_xlat37;
            let x_2973 : vec2<f32> = (vec2<f32>(x_2971.x, x_2971.z) + vec2<f32>(2.0f, 2.0f));
            let x_2974 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2974.x, x_2973.x, x_2974.z, x_2973.y);
            let x_2977 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2977 * 0.08163200318813323975f);
            let x_2980 : vec4<f32> = u_xlat12;
            let x_2982 : vec3<f32> = (vec3<f32>(x_2980.z, x_2980.x, x_2980.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2983 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2982.x, x_2982.y, x_2982.z, x_2983.w);
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2987 : vec2<f32> = (vec2<f32>(x_2985.x, x_2985.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2988 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2991 : f32 = u_xlat16.y;
            u_xlat15.x = x_2991;
            let x_2993 : vec2<f32> = u_xlat61;
            let x_2996 : vec2<f32> = ((vec2<f32>(x_2993.x, x_2993.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2997 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2997.x, x_2996.x, x_2997.z, x_2996.y);
            let x_2999 : vec2<f32> = u_xlat61;
            let x_3002 : vec2<f32> = ((vec2<f32>(x_2999.x, x_2999.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3003 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3002.x, x_3003.y, x_3002.y, x_3003.w);
            let x_3006 : f32 = u_xlat12.x;
            u_xlat13.y = x_3006;
            let x_3009 : f32 = u_xlat14.y;
            u_xlat13.w = x_3009;
            let x_3011 : vec4<f32> = u_xlat13;
            let x_3012 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3011 + x_3012);
            let x_3014 : vec2<f32> = u_xlat61;
            let x_3017 : vec2<f32> = ((vec2<f32>(x_3014.y, x_3014.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3018 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3018.x, x_3017.x, x_3018.z, x_3017.y);
            let x_3020 : vec2<f32> = u_xlat61;
            let x_3023 : vec2<f32> = ((vec2<f32>(x_3020.y, x_3020.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3024 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3023.x, x_3024.y, x_3023.y, x_3024.w);
            let x_3027 : f32 = u_xlat12.y;
            u_xlat14.y = x_3027;
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3029 + x_3030);
            let x_3032 : vec4<f32> = u_xlat13;
            let x_3033 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3032 / x_3033);
            let x_3035 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3035 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3038 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3037 / x_3038);
            let x_3040 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3040 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3042 : vec4<f32> = u_xlat13;
            let x_3045 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3042.w, x_3042.x, x_3042.y, x_3042.z) * vec4<f32>(x_3045.x, x_3045.x, x_3045.x, x_3045.x));
            let x_3048 : vec4<f32> = u_xlat14;
            let x_3051 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3048.x, x_3048.w, x_3048.y, x_3048.z) * vec4<f32>(x_3051.y, x_3051.y, x_3051.y, x_3051.y));
            let x_3054 : vec4<f32> = u_xlat13;
            let x_3055 : vec3<f32> = vec3<f32>(x_3054.y, x_3054.z, x_3054.w);
            let x_3056 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3055.x, x_3056.y, x_3055.y, x_3055.z);
            let x_3059 : f32 = u_xlat14.x;
            u_xlat16.y = x_3059;
            let x_3061 : vec4<f32> = u_xlat11;
            let x_3064 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y) * vec4<f32>(x_3064.x, x_3064.y, x_3064.x, x_3064.y)) + vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3067.y));
            let x_3070 : vec4<f32> = u_xlat11;
            let x_3073 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3073.x, x_3073.y)) + vec2<f32>(x_3076.w, x_3076.y));
            let x_3080 : f32 = u_xlat16.y;
            u_xlat13.y = x_3080;
            let x_3083 : f32 = u_xlat14.z;
            u_xlat16.y = x_3083;
            let x_3085 : vec4<f32> = u_xlat11;
            let x_3088 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) * vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y)) + vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3091.y));
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat16;
            let x_3102 : vec2<f32> = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.x, x_3097.y)) + vec2<f32>(x_3100.w, x_3100.y));
            let x_3103 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3102.x, x_3102.y, x_3103.z, x_3103.w);
            let x_3106 : f32 = u_xlat16.y;
            u_xlat13.z = x_3106;
            let x_3109 : vec4<f32> = u_xlat11;
            let x_3112 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y) * vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y)) + vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.z));
            let x_3119 : f32 = u_xlat14.w;
            u_xlat16.y = x_3119;
            let x_3122 : vec4<f32> = u_xlat11;
            let x_3125 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3128 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3122.x, x_3122.y, x_3122.x, x_3122.y) * vec4<f32>(x_3125.x, x_3125.y, x_3125.x, x_3125.y)) + vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3128.y));
            let x_3132 : vec4<f32> = u_xlat11;
            let x_3135 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3135.x, x_3135.y)) + vec2<f32>(x_3138.w, x_3138.y));
            let x_3142 : f32 = u_xlat16.y;
            u_xlat13.w = x_3142;
            let x_3145 : vec4<f32> = u_xlat11;
            let x_3148 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3151 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3145.x, x_3145.y) * vec2<f32>(x_3148.x, x_3148.y)) + vec2<f32>(x_3151.x, x_3151.w));
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3155 : vec3<f32> = vec3<f32>(x_3154.x, x_3154.z, x_3154.w);
            let x_3156 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3155.x, x_3156.y, x_3155.y, x_3155.z);
            let x_3158 : vec4<f32> = u_xlat11;
            let x_3161 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3158.x, x_3158.y, x_3158.x, x_3158.y) * vec4<f32>(x_3161.x, x_3161.y, x_3161.x, x_3161.y)) + vec4<f32>(x_3164.x, x_3164.y, x_3164.z, x_3164.y));
            let x_3167 : vec4<f32> = u_xlat11;
            let x_3170 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3173 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3167.x, x_3167.y) * vec2<f32>(x_3170.x, x_3170.y)) + vec2<f32>(x_3173.w, x_3173.y));
            let x_3177 : f32 = u_xlat13.x;
            u_xlat14.x = x_3177;
            let x_3179 : vec4<f32> = u_xlat11;
            let x_3182 : vec4<f32> = x_153.x_AdditionalShadowmapSize;
            let x_3185 : vec4<f32> = u_xlat14;
            let x_3187 : vec2<f32> = ((vec2<f32>(x_3179.x, x_3179.y) * vec2<f32>(x_3182.x, x_3182.y)) + vec2<f32>(x_3185.x, x_3185.y));
            let x_3188 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3187.x, x_3187.y, x_3188.z, x_3188.w);
            let x_3191 : vec4<f32> = u_xlat12;
            let x_3193 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3191.x, x_3191.x, x_3191.x, x_3191.x) * x_3193);
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3196.y, x_3196.y, x_3196.y, x_3196.y) * x_3198);
            let x_3201 : vec4<f32> = u_xlat12;
            let x_3203 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3201.z, x_3201.z, x_3201.z, x_3201.z) * x_3203);
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3205.w, x_3205.w, x_3205.w, x_3205.w) * x_3207);
            let x_3210 : vec4<f32> = u_xlat17;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.x, x_3210.y);
            let x_3213 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec43;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat85 = x_3222;
            let x_3224 : vec4<f32> = u_xlat17;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.z, x_3224.w);
            let x_3227 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec44;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat13.x = x_3236;
            let x_3239 : f32 = u_xlat13.x;
            let x_3241 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3239 * x_3241);
            let x_3245 : f32 = u_xlat22.x;
            let x_3246 : f32 = u_xlat85;
            let x_3249 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3245 * x_3246) + x_3249);
            let x_3252 : vec2<f32> = u_xlat61;
            let x_3254 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec45;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat61.x = x_3263;
            let x_3266 : f32 = u_xlat22.z;
            let x_3268 : f32 = u_xlat61.x;
            let x_3270 : f32 = u_xlat85;
            u_xlat85 = ((x_3266 * x_3268) + x_3270);
            let x_3273 : vec4<f32> = u_xlat20;
            let x_3274 : vec2<f32> = vec2<f32>(x_3273.x, x_3273.y);
            let x_3276 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
            let x_3283 : vec3<f32> = txVec46;
            let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
            u_xlat61.x = x_3285;
            let x_3288 : f32 = u_xlat22.w;
            let x_3290 : f32 = u_xlat61.x;
            let x_3292 : f32 = u_xlat85;
            u_xlat85 = ((x_3288 * x_3290) + x_3292);
            let x_3295 : vec4<f32> = u_xlat18;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.x, x_3295.y);
            let x_3298 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec47;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat61.x = x_3307;
            let x_3310 : f32 = u_xlat23.x;
            let x_3312 : f32 = u_xlat61.x;
            let x_3314 : f32 = u_xlat85;
            u_xlat85 = ((x_3310 * x_3312) + x_3314);
            let x_3317 : vec4<f32> = u_xlat18;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.z, x_3317.w);
            let x_3320 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec48;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat61.x = x_3329;
            let x_3332 : f32 = u_xlat23.y;
            let x_3334 : f32 = u_xlat61.x;
            let x_3336 : f32 = u_xlat85;
            u_xlat85 = ((x_3332 * x_3334) + x_3336);
            let x_3339 : vec4<f32> = u_xlat19;
            let x_3340 : vec2<f32> = vec2<f32>(x_3339.x, x_3339.y);
            let x_3342 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3340.x, x_3340.y, x_3342);
            let x_3349 : vec3<f32> = txVec49;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat61.x = x_3351;
            let x_3354 : f32 = u_xlat23.z;
            let x_3356 : f32 = u_xlat61.x;
            let x_3358 : f32 = u_xlat85;
            u_xlat85 = ((x_3354 * x_3356) + x_3358);
            let x_3361 : vec4<f32> = u_xlat20;
            let x_3362 : vec2<f32> = vec2<f32>(x_3361.z, x_3361.w);
            let x_3364 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec50;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat61.x = x_3373;
            let x_3376 : f32 = u_xlat23.w;
            let x_3378 : f32 = u_xlat61.x;
            let x_3380 : f32 = u_xlat85;
            u_xlat85 = ((x_3376 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat21;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.x, x_3383.y);
            let x_3386 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec51;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat61.x = x_3395;
            let x_3398 : f32 = u_xlat24.x;
            let x_3400 : f32 = u_xlat61.x;
            let x_3402 : f32 = u_xlat85;
            u_xlat85 = ((x_3398 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat21;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.z, x_3405.w);
            let x_3408 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec52;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat61.x = x_3417;
            let x_3420 : f32 = u_xlat24.y;
            let x_3422 : f32 = u_xlat61.x;
            let x_3424 : f32 = u_xlat85;
            u_xlat85 = ((x_3420 * x_3422) + x_3424);
            let x_3427 : vec2<f32> = u_xlat38;
            let x_3429 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec53;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat61.x = x_3438;
            let x_3441 : f32 = u_xlat24.z;
            let x_3443 : f32 = u_xlat61.x;
            let x_3445 : f32 = u_xlat85;
            u_xlat85 = ((x_3441 * x_3443) + x_3445);
            let x_3448 : vec2<f32> = u_xlat69;
            let x_3450 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec54;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat61.x = x_3459;
            let x_3462 : f32 = u_xlat24.w;
            let x_3464 : f32 = u_xlat61.x;
            let x_3466 : f32 = u_xlat85;
            u_xlat85 = ((x_3462 * x_3464) + x_3466);
            let x_3469 : vec4<f32> = u_xlat16;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.x, x_3469.y);
            let x_3472 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec55;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat61.x = x_3481;
            let x_3484 : f32 = u_xlat12.x;
            let x_3486 : f32 = u_xlat61.x;
            let x_3488 : f32 = u_xlat85;
            u_xlat85 = ((x_3484 * x_3486) + x_3488);
            let x_3491 : vec4<f32> = u_xlat16;
            let x_3492 : vec2<f32> = vec2<f32>(x_3491.z, x_3491.w);
            let x_3494 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec56;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat61.x = x_3503;
            let x_3506 : f32 = u_xlat12.y;
            let x_3508 : f32 = u_xlat61.x;
            let x_3510 : f32 = u_xlat85;
            u_xlat85 = ((x_3506 * x_3508) + x_3510);
            let x_3513 : vec2<f32> = u_xlat64;
            let x_3515 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3513.x, x_3513.y, x_3515);
            let x_3522 : vec3<f32> = txVec57;
            let x_3524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3522.xy, x_3522.z);
            u_xlat61.x = x_3524;
            let x_3527 : f32 = u_xlat12.z;
            let x_3529 : f32 = u_xlat61.x;
            let x_3531 : f32 = u_xlat85;
            u_xlat85 = ((x_3527 * x_3529) + x_3531);
            let x_3534 : vec4<f32> = u_xlat11;
            let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
            let x_3537 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec58;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat11.x = x_3546;
            let x_3549 : f32 = u_xlat12.w;
            let x_3551 : f32 = u_xlat11.x;
            let x_3553 : f32 = u_xlat85;
            u_xlat84 = ((x_3549 * x_3551) + x_3553);
          }
        }
      } else {
        let x_3557 : vec4<f32> = u_xlat10;
        let x_3558 : vec2<f32> = vec2<f32>(x_3557.x, x_3557.y);
        let x_3560 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3558.x, x_3558.y, x_3560);
        let x_3567 : vec3<f32> = txVec59;
        let x_3569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3567.xy, x_3567.z);
        u_xlat84 = x_3569;
      }
      let x_3570 : i32 = u_xlati80;
      let x_3572 : f32 = x_153.x_AdditionalShadowParams[x_3570].x;
      u_xlat10.x = (1.0f + -(x_3572));
      let x_3576 : f32 = u_xlat84;
      let x_3577 : i32 = u_xlati80;
      let x_3579 : f32 = x_153.x_AdditionalShadowParams[x_3577].x;
      let x_3582 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3576 * x_3579) + x_3582);
      let x_3585 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3585);
      let x_3590 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3590 >= 1.0f);
      let x_3592 : bool = u_xlatb35;
      let x_3594 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3592 | x_3594);
      let x_3598 : bool = u_xlatb10.x;
      let x_3599 : f32 = u_xlat84;
      u_xlat84 = select(x_3599, 1.0f, x_3598);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3602 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3602) + 1.0f);
    let x_3606 : f32 = u_xlat51;
    let x_3608 : f32 = u_xlat10.x;
    let x_3610 : f32 = u_xlat84;
    u_xlat84 = ((x_3606 * x_3608) + x_3610);
    let x_3612 : f32 = u_xlat81;
    let x_3613 : f32 = u_xlat84;
    u_xlat81 = (x_3612 * x_3613);
    let x_3615 : vec4<f32> = u_xlat2;
    let x_3617 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3615.x, x_3615.y, x_3615.z), vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
    let x_3620 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3620, 0.0f, 1.0f);
    let x_3622 : f32 = u_xlat81;
    let x_3623 : f32 = u_xlat84;
    u_xlat81 = (x_3622 * x_3623);
    let x_3625 : f32 = u_xlat81;
    let x_3627 : i32 = u_xlati80;
    let x_3629 : vec4<f32> = x_2123.x_AdditionalLightsColor[x_3627];
    let x_3631 : vec3<f32> = (vec3<f32>(x_3625, x_3625, x_3625) * vec3<f32>(x_3629.x, x_3629.y, x_3629.z));
    let x_3632 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3631.x, x_3631.y, x_3631.z, x_3632.w);
    let x_3634 : vec4<f32> = u_xlat8;
    let x_3636 : f32 = u_xlat83;
    let x_3639 : vec3<f32> = u_xlat3;
    let x_3640 : vec3<f32> = ((vec3<f32>(x_3634.x, x_3634.y, x_3634.z) * vec3<f32>(x_3636, x_3636, x_3636)) + x_3639);
    let x_3641 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3640.x, x_3640.y, x_3640.z, x_3641.w);
    let x_3643 : vec4<f32> = u_xlat8;
    let x_3645 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3643.x, x_3643.y, x_3643.z), vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
    let x_3648 : f32 = u_xlat80;
    u_xlat80 = max(x_3648, 1.17549435e-38f);
    let x_3650 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3650);
    let x_3652 : f32 = u_xlat80;
    let x_3654 : vec4<f32> = u_xlat8;
    let x_3656 : vec3<f32> = (vec3<f32>(x_3652, x_3652, x_3652) * vec3<f32>(x_3654.x, x_3654.y, x_3654.z));
    let x_3657 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3656.x, x_3656.y, x_3656.z, x_3657.w);
    let x_3659 : vec4<f32> = u_xlat2;
    let x_3661 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3659.x, x_3659.y, x_3659.z), vec3<f32>(x_3661.x, x_3661.y, x_3661.z));
    let x_3664 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3664, 0.0f, 1.0f);
    let x_3666 : vec4<f32> = u_xlat9;
    let x_3668 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3666.x, x_3666.y, x_3666.z), vec3<f32>(x_3668.x, x_3668.y, x_3668.z));
    let x_3671 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3671, 0.0f, 1.0f);
    let x_3673 : f32 = u_xlat80;
    let x_3674 : f32 = u_xlat80;
    u_xlat80 = (x_3673 * x_3674);
    let x_3676 : f32 = u_xlat80;
    let x_3678 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3676 * x_3678) + 1.00001001358032226562f);
    let x_3681 : f32 = u_xlat81;
    let x_3682 : f32 = u_xlat81;
    u_xlat81 = (x_3681 * x_3682);
    let x_3684 : f32 = u_xlat80;
    let x_3685 : f32 = u_xlat80;
    u_xlat80 = (x_3684 * x_3685);
    let x_3687 : f32 = u_xlat81;
    u_xlat81 = max(x_3687, 0.10000000149011611938f);
    let x_3689 : f32 = u_xlat80;
    let x_3690 : f32 = u_xlat81;
    u_xlat80 = (x_3689 * x_3690);
    let x_3692 : f32 = u_xlat78;
    let x_3693 : f32 = u_xlat80;
    u_xlat80 = (x_3692 * x_3693);
    let x_3695 : f32 = u_xlat79;
    let x_3696 : f32 = u_xlat80;
    u_xlat80 = (x_3695 / x_3696);
    let x_3698 : vec4<f32> = u_xlat0;
    let x_3700 : f32 = u_xlat80;
    let x_3703 : vec4<f32> = u_xlat5;
    let x_3705 : vec3<f32> = ((vec3<f32>(x_3698.x, x_3698.y, x_3698.z) * vec3<f32>(x_3700, x_3700, x_3700)) + vec3<f32>(x_3703.x, x_3703.y, x_3703.z));
    let x_3706 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
    let x_3708 : vec4<f32> = u_xlat8;
    let x_3710 : vec4<f32> = u_xlat10;
    let x_3713 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3708.x, x_3708.y, x_3708.z) * vec3<f32>(x_3710.x, x_3710.y, x_3710.z)) + x_3713);

    continuing {
      let x_3715 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3715 + bitcast<u32>(1i));
    }
  }
  let x_3717 : vec4<f32> = u_xlat6;
  let x_3719 : vec4<f32> = u_xlat1;
  let x_3722 : vec3<f32> = u_xlat4;
  let x_3723 : vec3<f32> = ((vec3<f32>(x_3717.x, x_3717.y, x_3717.z) * vec3<f32>(x_3719.x, x_3719.y, x_3719.w)) + x_3722);
  let x_3724 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3723.x, x_3723.y, x_3723.z, x_3724.w);
  let x_3728 : vec3<f32> = u_xlat32;
  let x_3729 : vec4<f32> = u_xlat0;
  let x_3731 : vec3<f32> = (x_3728 + vec3<f32>(x_3729.x, x_3729.y, x_3729.z));
  let x_3732 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3731.x, x_3731.y, x_3731.z, x_3732.w);
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


