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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

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

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb71 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : f32;

@group(1) @binding(2) var<uniform> x_1695 : UnityPerDraw;

var<private> u_xlatu73 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1863 : AdditionalLights;

var<private> u_xlati30 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat76 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb76 : bool;

var<private> u_xlat75 : f32;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatu74 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2020 : f32;
  var x_2029 : f32;
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
  var x_3354 : f32;
  var x_3510 : f32;
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
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1223.x, x_1223.y, x_1224.z);
        let x_1227 : f32 = u_xlat10.y;
        u_xlat7.w = x_1227;
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.w));
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec3<f32> = vec3<f32>(x_1239.x, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1240.z);
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1246 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat7.x;
        u_xlat8.x = x_1263;
        let x_1265 : vec4<f32> = u_xlat5;
        let x_1268 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1271.x, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        let x_1277 : vec4<f32> = u_xlat6;
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1277.x, x_1277.x, x_1277.x, x_1277.x) * x_1279);
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1282.y, x_1282.y, x_1282.y, x_1282.y) * x_1284);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1287.z, x_1287.z, x_1287.z, x_1287.z) * x_1289);
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1291.w, x_1291.w, x_1291.w, x_1291.w) * x_1293);
        let x_1296 : vec4<f32> = u_xlat11;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec13;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat72 = x_1308;
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.z, x_1310.w);
        let x_1313 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec14;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat73 = x_1322;
        let x_1323 : f32 = u_xlat73;
        let x_1325 : f32 = u_xlat16.y;
        u_xlat73 = (x_1323 * x_1325);
        let x_1328 : f32 = u_xlat16.x;
        let x_1329 : f32 = u_xlat72;
        let x_1331 : f32 = u_xlat73;
        u_xlat72 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec2<f32> = u_xlat51;
        let x_1336 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec15;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat73 = x_1345;
        let x_1347 : f32 = u_xlat16.z;
        let x_1348 : f32 = u_xlat73;
        let x_1350 : f32 = u_xlat72;
        u_xlat72 = ((x_1347 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat14;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec16;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat73 = x_1365;
        let x_1367 : f32 = u_xlat16.w;
        let x_1368 : f32 = u_xlat73;
        let x_1370 : f32 = u_xlat72;
        u_xlat72 = ((x_1367 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec17;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat73 = x_1385;
        let x_1387 : f32 = u_xlat17.x;
        let x_1388 : f32 = u_xlat73;
        let x_1390 : f32 = u_xlat72;
        u_xlat72 = ((x_1387 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat12;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec18;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat73 = x_1405;
        let x_1407 : f32 = u_xlat17.y;
        let x_1408 : f32 = u_xlat73;
        let x_1410 : f32 = u_xlat72;
        u_xlat72 = ((x_1407 * x_1408) + x_1410);
        let x_1413 : vec4<f32> = u_xlat13;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec19;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat73 = x_1425;
        let x_1427 : f32 = u_xlat17.z;
        let x_1428 : f32 = u_xlat73;
        let x_1430 : f32 = u_xlat72;
        u_xlat72 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat14;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec20;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat73 = x_1445;
        let x_1447 : f32 = u_xlat17.w;
        let x_1448 : f32 = u_xlat73;
        let x_1450 : f32 = u_xlat72;
        u_xlat72 = ((x_1447 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat15;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec21;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat73 = x_1465;
        let x_1467 : f32 = u_xlat18.x;
        let x_1468 : f32 = u_xlat73;
        let x_1470 : f32 = u_xlat72;
        u_xlat72 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat15;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec22;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat73 = x_1485;
        let x_1487 : f32 = u_xlat18.y;
        let x_1488 : f32 = u_xlat73;
        let x_1490 : f32 = u_xlat72;
        u_xlat72 = ((x_1487 * x_1488) + x_1490);
        let x_1493 : vec3<f32> = u_xlat30;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec23;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat73 = x_1505;
        let x_1507 : f32 = u_xlat18.z;
        let x_1508 : f32 = u_xlat73;
        let x_1510 : f32 = u_xlat72;
        u_xlat72 = ((x_1507 * x_1508) + x_1510);
        let x_1513 : vec2<f32> = u_xlat59;
        let x_1515 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec24;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat73 = x_1524;
        let x_1526 : f32 = u_xlat18.w;
        let x_1527 : f32 = u_xlat73;
        let x_1529 : f32 = u_xlat72;
        u_xlat72 = ((x_1526 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat10;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec25;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat73 = x_1544;
        let x_1546 : f32 = u_xlat6.x;
        let x_1547 : f32 = u_xlat73;
        let x_1549 : f32 = u_xlat72;
        u_xlat72 = ((x_1546 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat10;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.z, x_1552.w);
        let x_1555 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec26;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat73 = x_1564;
        let x_1566 : f32 = u_xlat6.y;
        let x_1567 : f32 = u_xlat73;
        let x_1569 : f32 = u_xlat72;
        u_xlat72 = ((x_1566 * x_1567) + x_1569);
        let x_1572 : vec2<f32> = u_xlat54;
        let x_1574 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec27;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat73 = x_1583;
        let x_1585 : f32 = u_xlat6.z;
        let x_1586 : f32 = u_xlat73;
        let x_1588 : f32 = u_xlat72;
        u_xlat72 = ((x_1585 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat5;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec28;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat73 = x_1603;
        let x_1605 : f32 = u_xlat6.w;
        let x_1606 : f32 = u_xlat73;
        let x_1608 : f32 = u_xlat72;
        u_xlat71 = ((x_1605 * x_1606) + x_1608);
      }
    }
  } else {
    let x_1612 : vec4<f32> = u_xlat3;
    let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
    let x_1615 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
    let x_1622 : vec3<f32> = txVec29;
    let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1622.xy, x_1622.z);
    u_xlat71 = x_1624;
  }
  let x_1626 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1626) + 1.0f);
  let x_1630 : f32 = u_xlat71;
  let x_1632 : f32 = x_152.x_MainLightShadowParams.x;
  let x_1635 : f32 = u_xlat3.x;
  u_xlat71 = ((x_1630 * x_1632) + x_1635);
  let x_1638 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1638);
  let x_1643 : f32 = u_xlat3.z;
  u_xlatb26 = (x_1643 >= 1.0f);
  let x_1645 : bool = u_xlatb26;
  let x_1647 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1645 | x_1647);
  let x_1651 : bool = u_xlatb3.x;
  let x_1652 : f32 = u_xlat71;
  u_xlat71 = select(x_1652, 1.0f, x_1651);
  let x_1654 : vec3<f32> = vs_TEXCOORD1;
  let x_1656 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1658 : vec3<f32> = (x_1654 + -(x_1656));
  let x_1659 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
  let x_1661 : vec4<f32> = u_xlat3;
  let x_1663 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1661.x, x_1661.y, x_1661.z), vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1669 : f32 = u_xlat3.x;
  let x_1671 : f32 = x_152.x_MainLightShadowParams.z;
  let x_1674 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1669 * x_1671) + x_1674);
  let x_1678 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1678, 0.0f, 1.0f);
  let x_1682 : f32 = u_xlat71;
  u_xlat49 = (-(x_1682) + 1.0f);
  let x_1686 : f32 = u_xlat26.x;
  let x_1687 : f32 = u_xlat49;
  let x_1689 : f32 = u_xlat71;
  u_xlat71 = ((x_1686 * x_1687) + x_1689);
  let x_1691 : f32 = u_xlat71;
  let x_1697 : f32 = x_1695.unity_LightData.z;
  u_xlat71 = (x_1691 * x_1697);
  let x_1699 : f32 = u_xlat71;
  let x_1702 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat26 = (vec3<f32>(x_1699, x_1699, x_1699) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec3<f32> = u_xlat1;
  let x_1707 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat71 = dot(x_1705, vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1710, 0.0f, 1.0f);
  let x_1712 : f32 = u_xlat71;
  let x_1714 : vec3<f32> = u_xlat26;
  let x_1715 : vec3<f32> = (vec3<f32>(x_1712, x_1712, x_1712) * x_1714);
  let x_1716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1719 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1719 * 10.0f) + 1.0f);
  let x_1723 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1723);
  let x_1725 : vec3<f32> = u_xlat2;
  let x_1726 : f32 = u_xlat70;
  let x_1730 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1732 : vec3<f32> = ((x_1725 * vec3<f32>(x_1726, x_1726, x_1726)) + vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec4<f32> = u_xlat6;
  let x_1737 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1735.x, x_1735.y, x_1735.z), vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : f32 = u_xlat73;
  u_xlat73 = max(x_1740, 1.17549435e-38f);
  let x_1743 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1743);
  let x_1745 : f32 = u_xlat73;
  let x_1747 : vec4<f32> = u_xlat6;
  let x_1749 : vec3<f32> = (vec3<f32>(x_1745, x_1745, x_1745) * vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
  let x_1750 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1752 : vec3<f32> = u_xlat1;
  let x_1753 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(x_1752, vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1756, 0.0f, 1.0f);
  let x_1758 : f32 = u_xlat73;
  u_xlat73 = log2(x_1758);
  let x_1760 : f32 = u_xlat71;
  let x_1761 : f32 = u_xlat73;
  u_xlat73 = (x_1760 * x_1761);
  let x_1763 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1763);
  let x_1765 : f32 = u_xlat73;
  let x_1768 : vec4<f32> = x_41.x_SpecColor;
  let x_1770 : vec3<f32> = (vec3<f32>(x_1765, x_1765, x_1765) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1771 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  let x_1773 : vec3<f32> = u_xlat26;
  let x_1774 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_1773 * vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
  let x_1777 : vec4<f32> = u_xlat5;
  let x_1779 : vec4<f32> = u_xlat0;
  let x_1782 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(x_1779.y, x_1779.z, x_1779.w)) + x_1782);
  let x_1785 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1787 : f32 = x_1695.unity_LightData.y;
  u_xlat73 = min(x_1785, x_1787);
  let x_1790 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1790));
  let x_1794 : f32 = u_xlat3.x;
  let x_1797 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_1800 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1794 * x_1797) + x_1800);
  let x_1804 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1804, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1817 : u32 = u_xlatu_loop_1;
    let x_1818 : u32 = u_xlatu73;
    if ((x_1817 < x_1818)) {
    } else {
      break;
    }
    let x_1821 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1821 >> 2u);
    let x_1824 : u32 = u_xlatu_loop_1;
    u_xlati29 = bitcast<i32>((x_1824 & 3u));
    let x_1827 : u32 = u_xlatu6;
    let x_1830 : vec4<f32> = x_1695.unity_LightIndices[bitcast<i32>(x_1827)];
    let x_1840 : i32 = u_xlati29;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1845 : vec4<u32> = indexable[x_1840];
    u_xlat6.x = dot(x_1830, bitcast<vec4<f32>>(x_1845));
    let x_1851 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1851);
    let x_1853 : vec3<f32> = vs_TEXCOORD1;
    let x_1864 : i32 = u_xlati6;
    let x_1866 : vec4<f32> = x_1863.x_AdditionalLightsPosition[x_1864];
    let x_1869 : i32 = u_xlati6;
    let x_1871 : vec4<f32> = x_1863.x_AdditionalLightsPosition[x_1869];
    u_xlat29 = ((-(x_1853) * vec3<f32>(x_1866.w, x_1866.w, x_1866.w)) + vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : vec3<f32> = u_xlat29;
    let x_1875 : vec3<f32> = u_xlat29;
    u_xlat7.x = dot(x_1874, x_1875);
    let x_1879 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1879, 0.00006103515625f);
    let x_1883 : f32 = u_xlat7.x;
    u_xlat30.x = inverseSqrt(x_1883);
    let x_1886 : vec3<f32> = u_xlat29;
    let x_1887 : vec3<f32> = u_xlat30;
    u_xlat29 = (x_1886 * vec3<f32>(x_1887.x, x_1887.x, x_1887.x));
    let x_1891 : f32 = u_xlat7.x;
    u_xlat30.x = (1.0f / x_1891);
    let x_1895 : f32 = u_xlat7.x;
    let x_1896 : i32 = u_xlati6;
    let x_1898 : f32 = x_1863.x_AdditionalLightsAttenuation[x_1896].x;
    u_xlat7.x = (x_1895 * x_1898);
    let x_1902 : f32 = u_xlat7.x;
    let x_1905 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1902) * x_1905) + 1.0f);
    let x_1910 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1910, 0.0f);
    let x_1914 : f32 = u_xlat7.x;
    let x_1916 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1914 * x_1916);
    let x_1920 : f32 = u_xlat7.x;
    let x_1922 : f32 = u_xlat30.x;
    u_xlat7.x = (x_1920 * x_1922);
    let x_1925 : i32 = u_xlati6;
    let x_1927 : vec4<f32> = x_1863.x_AdditionalLightsSpotDir[x_1925];
    let x_1929 : vec3<f32> = u_xlat29;
    u_xlat30.x = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), x_1929);
    let x_1933 : f32 = u_xlat30.x;
    let x_1934 : i32 = u_xlati6;
    let x_1936 : f32 = x_1863.x_AdditionalLightsAttenuation[x_1934].z;
    let x_1938 : i32 = u_xlati6;
    let x_1940 : f32 = x_1863.x_AdditionalLightsAttenuation[x_1938].w;
    u_xlat30.x = ((x_1933 * x_1936) + x_1940);
    let x_1944 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_1944, 0.0f, 1.0f);
    let x_1948 : f32 = u_xlat30.x;
    let x_1950 : f32 = u_xlat30.x;
    u_xlat30.x = (x_1948 * x_1950);
    let x_1954 : f32 = u_xlat30.x;
    let x_1956 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1954 * x_1956);
    let x_1961 : i32 = u_xlati6;
    let x_1963 : f32 = x_152.x_AdditionalShadowParams[x_1961].w;
    u_xlati30 = i32(x_1963);
    let x_1966 : i32 = u_xlati30;
    u_xlatb53 = (x_1966 >= 0i);
    let x_1968 : bool = u_xlatb53;
    if (x_1968) {
      let x_1972 : i32 = u_xlati6;
      let x_1974 : f32 = x_152.x_AdditionalShadowParams[x_1972].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1974, x_1974, x_1974, x_1974))));
      let x_1978 : bool = u_xlatb53;
      if (x_1978) {
        let x_1982 : vec3<f32> = u_xlat29;
        let x_1985 : vec3<f32> = u_xlat29;
        let x_1988 : vec4<bool> = (abs(vec4<f32>(x_1982.z, x_1982.z, x_1982.y, x_1982.z)) >= abs(vec4<f32>(x_1985.x, x_1985.y, x_1985.x, x_1985.x)));
        let x_1990 : vec3<bool> = vec3<bool>(x_1988.x, x_1988.y, x_1988.z);
        let x_1991 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
        let x_1994 : bool = u_xlatb8.y;
        let x_1996 : bool = u_xlatb8.x;
        u_xlatb53 = (x_1994 & x_1996);
        let x_1998 : vec3<f32> = u_xlat29;
        let x_2001 : vec4<bool> = (-(vec4<f32>(x_1998.z, x_1998.y, x_1998.z, x_1998.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2002 : vec3<bool> = vec3<bool>(x_2001.x, x_2001.y, x_2001.w);
        let x_2003 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2002.x, x_2002.y, x_2003.z, x_2002.z);
        let x_2006 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2006);
        let x_2011 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2011);
        let x_2016 : bool = u_xlatb8.w;
        u_xlat76 = select(0.0f, 1.0f, x_2016);
        let x_2019 : bool = u_xlatb8.z;
        if (x_2019) {
          let x_2024 : f32 = u_xlat8.y;
          x_2020 = x_2024;
        } else {
          let x_2026 : f32 = u_xlat76;
          x_2020 = x_2026;
        }
        let x_2027 : f32 = x_2020;
        u_xlat76 = x_2027;
        let x_2028 : bool = u_xlatb53;
        if (x_2028) {
          let x_2033 : f32 = u_xlat8.x;
          x_2029 = x_2033;
        } else {
          let x_2035 : f32 = u_xlat76;
          x_2029 = x_2035;
        }
        let x_2036 : f32 = x_2029;
        u_xlat53.x = x_2036;
        let x_2038 : i32 = u_xlati6;
        let x_2040 : f32 = x_152.x_AdditionalShadowParams[x_2038].w;
        u_xlat76 = trunc(x_2040);
        let x_2043 : f32 = u_xlat53.x;
        let x_2044 : f32 = u_xlat76;
        u_xlat53.x = (x_2043 + x_2044);
        let x_2048 : f32 = u_xlat53.x;
        u_xlati30 = i32(x_2048);
      }
      let x_2050 : i32 = u_xlati30;
      u_xlati30 = (x_2050 << bitcast<u32>(2i));
      let x_2052 : vec3<f32> = vs_TEXCOORD1;
      let x_2055 : i32 = u_xlati30;
      let x_2058 : i32 = u_xlati30;
      let x_2062 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2055 + 1i) / 4i)][((x_2058 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2052.y, x_2052.y, x_2052.y, x_2052.y) * x_2062);
      let x_2064 : i32 = u_xlati30;
      let x_2066 : i32 = u_xlati30;
      let x_2069 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_2064 / 4i)][(x_2066 % 4i)];
      let x_2070 : vec3<f32> = vs_TEXCOORD1;
      let x_2073 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2069 * vec4<f32>(x_2070.x, x_2070.x, x_2070.x, x_2070.x)) + x_2073);
      let x_2075 : i32 = u_xlati30;
      let x_2078 : i32 = u_xlati30;
      let x_2082 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2075 + 2i) / 4i)][((x_2078 + 2i) % 4i)];
      let x_2083 : vec3<f32> = vs_TEXCOORD1;
      let x_2086 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2082 * vec4<f32>(x_2083.z, x_2083.z, x_2083.z, x_2083.z)) + x_2086);
      let x_2088 : vec4<f32> = u_xlat8;
      let x_2089 : i32 = u_xlati30;
      let x_2092 : i32 = u_xlati30;
      let x_2096 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2089 + 3i) / 4i)][((x_2092 + 3i) % 4i)];
      u_xlat8 = (x_2088 + x_2096);
      let x_2098 : vec4<f32> = u_xlat8;
      let x_2100 : vec4<f32> = u_xlat8;
      u_xlat30 = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) / vec3<f32>(x_2100.w, x_2100.w, x_2100.w));
      let x_2103 : i32 = u_xlati6;
      let x_2105 : f32 = x_152.x_AdditionalShadowParams[x_2103].y;
      u_xlatb8.x = (0.0f < x_2105);
      let x_2109 : bool = u_xlatb8.x;
      if (x_2109) {
        let x_2112 : i32 = u_xlati6;
        let x_2114 : f32 = x_152.x_AdditionalShadowParams[x_2112].y;
        u_xlatb8.x = (1.0f == x_2114);
        let x_2118 : bool = u_xlatb8.x;
        if (x_2118) {
          let x_2121 : vec3<f32> = u_xlat30;
          let x_2125 : vec4<f32> = x_152.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2121.x, x_2121.y, x_2121.x, x_2121.y) + x_2125);
          let x_2128 : vec4<f32> = u_xlat8;
          let x_2129 : vec2<f32> = vec2<f32>(x_2128.x, x_2128.y);
          let x_2131 : f32 = u_xlat30.z;
          txVec30 = vec3<f32>(x_2129.x, x_2129.y, x_2131);
          let x_2139 : vec3<f32> = txVec30;
          let x_2141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2139.xy, x_2139.z);
          u_xlat9.x = x_2141;
          let x_2144 : vec4<f32> = u_xlat8;
          let x_2145 : vec2<f32> = vec2<f32>(x_2144.z, x_2144.w);
          let x_2147 : f32 = u_xlat30.z;
          txVec31 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
          let x_2154 : vec3<f32> = txVec31;
          let x_2156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2154.xy, x_2154.z);
          u_xlat9.y = x_2156;
          let x_2158 : vec3<f32> = u_xlat30;
          let x_2162 : vec4<f32> = x_152.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2158.x, x_2158.y, x_2158.x, x_2158.y) + x_2162);
          let x_2165 : vec4<f32> = u_xlat8;
          let x_2166 : vec2<f32> = vec2<f32>(x_2165.x, x_2165.y);
          let x_2168 : f32 = u_xlat30.z;
          txVec32 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
          let x_2175 : vec3<f32> = txVec32;
          let x_2177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
          u_xlat9.z = x_2177;
          let x_2180 : vec4<f32> = u_xlat8;
          let x_2181 : vec2<f32> = vec2<f32>(x_2180.z, x_2180.w);
          let x_2183 : f32 = u_xlat30.z;
          txVec33 = vec3<f32>(x_2181.x, x_2181.y, x_2183);
          let x_2190 : vec3<f32> = txVec33;
          let x_2192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2190.xy, x_2190.z);
          u_xlat9.w = x_2192;
          let x_2194 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(x_2194, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2199 : i32 = u_xlati6;
          let x_2201 : f32 = x_152.x_AdditionalShadowParams[x_2199].y;
          u_xlatb31 = (2.0f == x_2201);
          let x_2203 : bool = u_xlatb31;
          if (x_2203) {
            let x_2207 : vec3<f32> = u_xlat30;
            let x_2211 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2207.x, x_2207.y) * vec2<f32>(x_2211.z, x_2211.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2215 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2215);
            let x_2217 : vec3<f32> = u_xlat30;
            let x_2220 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2223 : vec2<f32> = u_xlat31;
            let x_2225 : vec2<f32> = ((vec2<f32>(x_2217.x, x_2217.y) * vec2<f32>(x_2220.z, x_2220.w)) + -(x_2223));
            let x_2226 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
            let x_2228 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2228.x, x_2228.x, x_2228.y, x_2228.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2231 : vec4<f32> = u_xlat10;
            let x_2233 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2231.x, x_2231.x, x_2231.z, x_2231.z) * vec4<f32>(x_2233.x, x_2233.x, x_2233.z, x_2233.z));
            let x_2237 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2237.y, x_2237.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2240 : vec4<f32> = u_xlat11;
            let x_2243 : vec4<f32> = u_xlat9;
            let x_2246 : vec2<f32> = ((vec2<f32>(x_2240.x, x_2240.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2243.x, x_2243.y)));
            let x_2247 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2246.x, x_2247.y, x_2246.y, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat9;
            let x_2252 : vec2<f32> = (-(vec2<f32>(x_2249.x, x_2249.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2253 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
            let x_2256 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2256.x, x_2256.y), vec2<f32>(0.0f, 0.0f));
            let x_2259 : vec2<f32> = u_xlat57;
            let x_2261 : vec2<f32> = u_xlat57;
            let x_2263 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2259) * x_2261) + vec2<f32>(x_2263.x, x_2263.y));
            let x_2266 : vec4<f32> = u_xlat9;
            let x_2268 : vec2<f32> = max(vec2<f32>(x_2266.x, x_2266.y), vec2<f32>(0.0f, 0.0f));
            let x_2269 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2268.x, x_2268.y, x_2269.z, x_2269.w);
            let x_2271 : vec4<f32> = u_xlat9;
            let x_2274 : vec4<f32> = u_xlat9;
            let x_2277 : vec4<f32> = u_xlat10;
            let x_2279 : vec2<f32> = ((-(vec2<f32>(x_2271.x, x_2271.y)) * vec2<f32>(x_2274.x, x_2274.y)) + vec2<f32>(x_2277.y, x_2277.w));
            let x_2280 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2279.x, x_2279.y, x_2280.z, x_2280.w);
            let x_2282 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2282 + vec2<f32>(1.0f, 1.0f));
            let x_2284 : vec4<f32> = u_xlat9;
            let x_2286 : vec2<f32> = (vec2<f32>(x_2284.x, x_2284.y) + vec2<f32>(1.0f, 1.0f));
            let x_2287 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2286.x, x_2286.y, x_2287.z, x_2287.w);
            let x_2289 : vec4<f32> = u_xlat10;
            let x_2291 : vec2<f32> = (vec2<f32>(x_2289.x, x_2289.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2292 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2291.x, x_2291.y, x_2292.z, x_2292.w);
            let x_2294 : vec4<f32> = u_xlat11;
            let x_2296 : vec2<f32> = (vec2<f32>(x_2294.x, x_2294.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2297 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2296.x, x_2296.y, x_2297.z, x_2297.w);
            let x_2299 : vec2<f32> = u_xlat57;
            let x_2300 : vec2<f32> = (x_2299 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2301 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
            let x_2303 : vec4<f32> = u_xlat9;
            let x_2305 : vec2<f32> = (vec2<f32>(x_2303.x, x_2303.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2306 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
            let x_2308 : vec4<f32> = u_xlat10;
            let x_2310 : vec2<f32> = (vec2<f32>(x_2308.y, x_2308.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2311 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2314 : f32 = u_xlat11.x;
            u_xlat12.z = x_2314;
            let x_2317 : f32 = u_xlat9.x;
            u_xlat12.w = x_2317;
            let x_2320 : f32 = u_xlat14.x;
            u_xlat13.z = x_2320;
            let x_2323 : f32 = u_xlat55.x;
            u_xlat13.w = x_2323;
            let x_2325 : vec4<f32> = u_xlat12;
            let x_2327 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2325.z, x_2325.w, x_2325.x, x_2325.z) + vec4<f32>(x_2327.z, x_2327.w, x_2327.x, x_2327.z));
            let x_2331 : f32 = u_xlat12.y;
            u_xlat11.z = x_2331;
            let x_2334 : f32 = u_xlat9.y;
            u_xlat11.w = x_2334;
            let x_2337 : f32 = u_xlat13.y;
            u_xlat14.z = x_2337;
            let x_2340 : f32 = u_xlat55.y;
            u_xlat14.w = x_2340;
            let x_2342 : vec4<f32> = u_xlat11;
            let x_2344 : vec4<f32> = u_xlat14;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2342.z, x_2342.y, x_2342.w) + vec3<f32>(x_2344.z, x_2344.y, x_2344.w));
            let x_2347 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2349 : vec4<f32> = u_xlat13;
            let x_2351 : vec4<f32> = u_xlat10;
            let x_2353 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.z, x_2349.w) / vec3<f32>(x_2351.z, x_2351.w, x_2351.y));
            let x_2354 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
            let x_2356 : vec4<f32> = u_xlat11;
            let x_2358 : vec3<f32> = (vec3<f32>(x_2356.x, x_2356.y, x_2356.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2359 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
            let x_2361 : vec4<f32> = u_xlat14;
            let x_2363 : vec4<f32> = u_xlat9;
            let x_2365 : vec3<f32> = (vec3<f32>(x_2361.z, x_2361.y, x_2361.w) / vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
            let x_2366 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
            let x_2368 : vec4<f32> = u_xlat12;
            let x_2370 : vec3<f32> = (vec3<f32>(x_2368.x, x_2368.y, x_2368.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2371 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
            let x_2373 : vec4<f32> = u_xlat11;
            let x_2376 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2378 : vec3<f32> = (vec3<f32>(x_2373.y, x_2373.x, x_2373.z) * vec3<f32>(x_2376.x, x_2376.x, x_2376.x));
            let x_2379 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
            let x_2381 : vec4<f32> = u_xlat12;
            let x_2384 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2386 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.y, x_2381.z) * vec3<f32>(x_2384.y, x_2384.y, x_2384.y));
            let x_2387 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
            let x_2390 : f32 = u_xlat12.x;
            u_xlat11.w = x_2390;
            let x_2392 : vec2<f32> = u_xlat31;
            let x_2395 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2398 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2392.x, x_2392.y, x_2392.x, x_2392.y) * vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y)) + vec4<f32>(x_2398.y, x_2398.w, x_2398.x, x_2398.w));
            let x_2401 : vec2<f32> = u_xlat31;
            let x_2403 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2406 : vec4<f32> = u_xlat11;
            let x_2408 : vec2<f32> = ((x_2401 * vec2<f32>(x_2403.x, x_2403.y)) + vec2<f32>(x_2406.z, x_2406.w));
            let x_2409 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
            let x_2412 : f32 = u_xlat11.y;
            u_xlat12.w = x_2412;
            let x_2414 : vec4<f32> = u_xlat12;
            let x_2415 : vec2<f32> = vec2<f32>(x_2414.y, x_2414.z);
            let x_2416 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2416.x, x_2415.x, x_2416.z, x_2415.y);
            let x_2418 : vec2<f32> = u_xlat31;
            let x_2421 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2424 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2418.x, x_2418.y, x_2418.x, x_2418.y) * vec4<f32>(x_2421.x, x_2421.y, x_2421.x, x_2421.y)) + vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2424.y));
            let x_2427 : vec2<f32> = u_xlat31;
            let x_2430 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2433 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2427.x, x_2427.y, x_2427.x, x_2427.y) * vec4<f32>(x_2430.x, x_2430.y, x_2430.x, x_2430.y)) + vec4<f32>(x_2433.w, x_2433.y, x_2433.w, x_2433.z));
            let x_2436 : vec2<f32> = u_xlat31;
            let x_2439 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2442 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2436.x, x_2436.y, x_2436.x, x_2436.y) * vec4<f32>(x_2439.x, x_2439.y, x_2439.x, x_2439.y)) + vec4<f32>(x_2442.x, x_2442.w, x_2442.z, x_2442.w));
            let x_2445 : vec4<f32> = u_xlat9;
            let x_2447 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2445.x, x_2445.x, x_2445.x, x_2445.y) * vec4<f32>(x_2447.z, x_2447.w, x_2447.y, x_2447.z));
            let x_2450 : vec4<f32> = u_xlat9;
            let x_2452 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2450.y, x_2450.y, x_2450.z, x_2450.z) * x_2452);
            let x_2455 : f32 = u_xlat9.z;
            let x_2457 : f32 = u_xlat10.y;
            u_xlat31.x = (x_2455 * x_2457);
            let x_2461 : vec4<f32> = u_xlat13;
            let x_2462 : vec2<f32> = vec2<f32>(x_2461.x, x_2461.y);
            let x_2464 : f32 = u_xlat30.z;
            txVec34 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
            let x_2471 : vec3<f32> = txVec34;
            let x_2473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2471.xy, x_2471.z);
            u_xlat54.x = x_2473;
            let x_2476 : vec4<f32> = u_xlat13;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.z, x_2476.w);
            let x_2479 : f32 = u_xlat30.z;
            txVec35 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2487 : vec3<f32> = txVec35;
            let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
            u_xlat77 = x_2489;
            let x_2490 : f32 = u_xlat77;
            let x_2492 : f32 = u_xlat16.y;
            u_xlat77 = (x_2490 * x_2492);
            let x_2495 : f32 = u_xlat16.x;
            let x_2497 : f32 = u_xlat54.x;
            let x_2499 : f32 = u_xlat77;
            u_xlat54.x = ((x_2495 * x_2497) + x_2499);
            let x_2503 : vec4<f32> = u_xlat14;
            let x_2504 : vec2<f32> = vec2<f32>(x_2503.x, x_2503.y);
            let x_2506 : f32 = u_xlat30.z;
            txVec36 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec36;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat77 = x_2515;
            let x_2517 : f32 = u_xlat16.z;
            let x_2518 : f32 = u_xlat77;
            let x_2521 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2517 * x_2518) + x_2521);
            let x_2525 : vec4<f32> = u_xlat12;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.x, x_2525.y);
            let x_2528 : f32 = u_xlat30.z;
            txVec37 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec37;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat77 = x_2537;
            let x_2539 : f32 = u_xlat16.w;
            let x_2540 : f32 = u_xlat77;
            let x_2543 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2539 * x_2540) + x_2543);
            let x_2547 : vec4<f32> = u_xlat15;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.x, x_2547.y);
            let x_2550 : f32 = u_xlat30.z;
            txVec38 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec38;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat77 = x_2559;
            let x_2561 : f32 = u_xlat17.x;
            let x_2562 : f32 = u_xlat77;
            let x_2565 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2561 * x_2562) + x_2565);
            let x_2569 : vec4<f32> = u_xlat15;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.z, x_2569.w);
            let x_2572 : f32 = u_xlat30.z;
            txVec39 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec39;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat77 = x_2581;
            let x_2583 : f32 = u_xlat17.y;
            let x_2584 : f32 = u_xlat77;
            let x_2587 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2583 * x_2584) + x_2587);
            let x_2591 : vec4<f32> = u_xlat12;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.z, x_2591.w);
            let x_2594 : f32 = u_xlat30.z;
            txVec40 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2601 : vec3<f32> = txVec40;
            let x_2603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2601.xy, x_2601.z);
            u_xlat77 = x_2603;
            let x_2605 : f32 = u_xlat17.z;
            let x_2606 : f32 = u_xlat77;
            let x_2609 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2605 * x_2606) + x_2609);
            let x_2613 : vec4<f32> = u_xlat11;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.x, x_2613.y);
            let x_2616 : f32 = u_xlat30.z;
            txVec41 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec41;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat77 = x_2625;
            let x_2627 : f32 = u_xlat17.w;
            let x_2628 : f32 = u_xlat77;
            let x_2631 : f32 = u_xlat54.x;
            u_xlat54.x = ((x_2627 * x_2628) + x_2631);
            let x_2635 : vec4<f32> = u_xlat11;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat30.z;
            txVec42 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec42;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat77 = x_2647;
            let x_2649 : f32 = u_xlat31.x;
            let x_2650 : f32 = u_xlat77;
            let x_2653 : f32 = u_xlat54.x;
            u_xlat8.x = ((x_2649 * x_2650) + x_2653);
          } else {
            let x_2657 : vec3<f32> = u_xlat30;
            let x_2660 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2657.x, x_2657.y) * vec2<f32>(x_2660.z, x_2660.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2664 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2664);
            let x_2666 : vec3<f32> = u_xlat30;
            let x_2669 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2672 : vec2<f32> = u_xlat31;
            let x_2674 : vec2<f32> = ((vec2<f32>(x_2666.x, x_2666.y) * vec2<f32>(x_2669.z, x_2669.w)) + -(x_2672));
            let x_2675 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2674.x, x_2674.y, x_2675.z, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2677.x, x_2677.x, x_2677.y, x_2677.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2680 : vec4<f32> = u_xlat10;
            let x_2682 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2680.x, x_2680.x, x_2680.z, x_2680.z) * vec4<f32>(x_2682.x, x_2682.x, x_2682.z, x_2682.z));
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2687 : vec2<f32> = (vec2<f32>(x_2685.y, x_2685.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2688 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2688.x, x_2687.x, x_2688.z, x_2687.y);
            let x_2690 : vec4<f32> = u_xlat11;
            let x_2693 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2690.x, x_2690.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2693.x, x_2693.y)));
            let x_2697 : vec4<f32> = u_xlat9;
            let x_2700 : vec2<f32> = (-(vec2<f32>(x_2697.x, x_2697.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2701 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2700.x, x_2701.y, x_2700.y, x_2701.w);
            let x_2703 : vec4<f32> = u_xlat9;
            let x_2705 : vec2<f32> = min(vec2<f32>(x_2703.x, x_2703.y), vec2<f32>(0.0f, 0.0f));
            let x_2706 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2711 : vec4<f32> = u_xlat11;
            let x_2714 : vec4<f32> = u_xlat10;
            let x_2716 : vec2<f32> = ((-(vec2<f32>(x_2708.x, x_2708.y)) * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.x, x_2714.z));
            let x_2717 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2716.x, x_2717.y, x_2716.y, x_2717.w);
            let x_2719 : vec4<f32> = u_xlat9;
            let x_2721 : vec2<f32> = max(vec2<f32>(x_2719.x, x_2719.y), vec2<f32>(0.0f, 0.0f));
            let x_2722 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
            let x_2724 : vec4<f32> = u_xlat11;
            let x_2727 : vec4<f32> = u_xlat11;
            let x_2730 : vec4<f32> = u_xlat10;
            let x_2732 : vec2<f32> = ((-(vec2<f32>(x_2724.x, x_2724.y)) * vec2<f32>(x_2727.x, x_2727.y)) + vec2<f32>(x_2730.y, x_2730.w));
            let x_2733 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2733.x, x_2732.x, x_2733.z, x_2732.y);
            let x_2735 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2735 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2739 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2739 * 0.08163200318813323975f);
            let x_2742 : vec2<f32> = u_xlat55;
            let x_2744 : vec2<f32> = (vec2<f32>(x_2742.y, x_2742.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2745 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2747.x, x_2747.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2751 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2751 * 0.08163200318813323975f);
            let x_2755 : f32 = u_xlat13.y;
            u_xlat11.x = x_2755;
            let x_2757 : vec4<f32> = u_xlat9;
            let x_2760 : vec2<f32> = ((vec2<f32>(x_2757.x, x_2757.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2761 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2761.x, x_2760.x, x_2761.z, x_2760.y);
            let x_2763 : vec4<f32> = u_xlat9;
            let x_2766 : vec2<f32> = ((vec2<f32>(x_2763.x, x_2763.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2767 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2766.x, x_2767.y, x_2766.y, x_2767.w);
            let x_2770 : f32 = u_xlat55.x;
            u_xlat10.y = x_2770;
            let x_2773 : f32 = u_xlat12.y;
            u_xlat10.w = x_2773;
            let x_2775 : vec4<f32> = u_xlat10;
            let x_2776 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2775 + x_2776);
            let x_2778 : vec4<f32> = u_xlat9;
            let x_2781 : vec2<f32> = ((vec2<f32>(x_2778.y, x_2778.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2782 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2782.x, x_2781.x, x_2782.z, x_2781.y);
            let x_2784 : vec4<f32> = u_xlat9;
            let x_2787 : vec2<f32> = ((vec2<f32>(x_2784.y, x_2784.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2787.x, x_2788.y, x_2787.y, x_2788.w);
            let x_2791 : f32 = u_xlat55.y;
            u_xlat12.y = x_2791;
            let x_2793 : vec4<f32> = u_xlat12;
            let x_2794 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2793 + x_2794);
            let x_2796 : vec4<f32> = u_xlat10;
            let x_2797 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2796 / x_2797);
            let x_2799 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2799 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2801 : vec4<f32> = u_xlat12;
            let x_2802 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2801 / x_2802);
            let x_2804 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2804 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2806 : vec4<f32> = u_xlat10;
            let x_2809 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2806.w, x_2806.x, x_2806.y, x_2806.z) * vec4<f32>(x_2809.x, x_2809.x, x_2809.x, x_2809.x));
            let x_2812 : vec4<f32> = u_xlat12;
            let x_2815 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2812.x, x_2812.w, x_2812.y, x_2812.z) * vec4<f32>(x_2815.y, x_2815.y, x_2815.y, x_2815.y));
            let x_2818 : vec4<f32> = u_xlat10;
            let x_2819 : vec3<f32> = vec3<f32>(x_2818.y, x_2818.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2819.x, x_2820.y, x_2819.y, x_2819.z);
            let x_2823 : f32 = u_xlat12.x;
            u_xlat13.y = x_2823;
            let x_2825 : vec2<f32> = u_xlat31;
            let x_2828 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2825.x, x_2825.y, x_2825.x, x_2825.y) * vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.y)) + vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2831.y));
            let x_2834 : vec2<f32> = u_xlat31;
            let x_2836 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat13;
            let x_2841 : vec2<f32> = ((x_2834 * vec2<f32>(x_2836.x, x_2836.y)) + vec2<f32>(x_2839.w, x_2839.y));
            let x_2842 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
            let x_2845 : f32 = u_xlat13.y;
            u_xlat10.y = x_2845;
            let x_2848 : f32 = u_xlat12.z;
            u_xlat13.y = x_2848;
            let x_2850 : vec2<f32> = u_xlat31;
            let x_2853 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2850.x, x_2850.y, x_2850.x, x_2850.y) * vec4<f32>(x_2853.x, x_2853.y, x_2853.x, x_2853.y)) + vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2856.y));
            let x_2860 : vec2<f32> = u_xlat31;
            let x_2862 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2865 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2860 * vec2<f32>(x_2862.x, x_2862.y)) + vec2<f32>(x_2865.w, x_2865.y));
            let x_2869 : f32 = u_xlat13.y;
            u_xlat10.z = x_2869;
            let x_2871 : vec2<f32> = u_xlat31;
            let x_2874 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2877 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2871.x, x_2871.y, x_2871.x, x_2871.y) * vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.y)) + vec4<f32>(x_2877.x, x_2877.y, x_2877.x, x_2877.z));
            let x_2881 : f32 = u_xlat12.w;
            u_xlat13.y = x_2881;
            let x_2883 : vec2<f32> = u_xlat31;
            let x_2886 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2889 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y) * vec4<f32>(x_2886.x, x_2886.y, x_2886.x, x_2886.y)) + vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2889.y));
            let x_2893 : vec2<f32> = u_xlat31;
            let x_2895 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2898 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2893 * vec2<f32>(x_2895.x, x_2895.y)) + vec2<f32>(x_2898.w, x_2898.y));
            let x_2902 : f32 = u_xlat13.y;
            u_xlat10.w = x_2902;
            let x_2905 : vec2<f32> = u_xlat31;
            let x_2907 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2905 * vec2<f32>(x_2907.x, x_2907.y)) + vec2<f32>(x_2910.x, x_2910.w));
            let x_2913 : vec4<f32> = u_xlat13;
            let x_2914 : vec3<f32> = vec3<f32>(x_2913.x, x_2913.z, x_2913.w);
            let x_2915 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2914.x, x_2915.y, x_2914.y, x_2914.z);
            let x_2917 : vec2<f32> = u_xlat31;
            let x_2920 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2923 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2917.x, x_2917.y, x_2917.x, x_2917.y) * vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y)) + vec4<f32>(x_2923.x, x_2923.y, x_2923.z, x_2923.y));
            let x_2927 : vec2<f32> = u_xlat31;
            let x_2929 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2932 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2927 * vec2<f32>(x_2929.x, x_2929.y)) + vec2<f32>(x_2932.w, x_2932.y));
            let x_2936 : f32 = u_xlat10.x;
            u_xlat12.x = x_2936;
            let x_2938 : vec2<f32> = u_xlat31;
            let x_2940 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2938 * vec2<f32>(x_2940.x, x_2940.y)) + vec2<f32>(x_2943.x, x_2943.y));
            let x_2947 : vec4<f32> = u_xlat9;
            let x_2949 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2947.x, x_2947.x, x_2947.x, x_2947.x) * x_2949);
            let x_2952 : vec4<f32> = u_xlat9;
            let x_2954 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2952.y, x_2952.y, x_2952.y, x_2952.y) * x_2954);
            let x_2957 : vec4<f32> = u_xlat9;
            let x_2959 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2957.z, x_2957.z, x_2957.z, x_2957.z) * x_2959);
            let x_2961 : vec4<f32> = u_xlat9;
            let x_2963 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2961.w, x_2961.w, x_2961.w, x_2961.w) * x_2963);
            let x_2966 : vec4<f32> = u_xlat14;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.x, x_2966.y);
            let x_2969 : f32 = u_xlat30.z;
            txVec43 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec43;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat77 = x_2978;
            let x_2980 : vec4<f32> = u_xlat14;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
            let x_2983 : f32 = u_xlat30.z;
            txVec44 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec44;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat10.x = x_2992;
            let x_2995 : f32 = u_xlat10.x;
            let x_2997 : f32 = u_xlat20.y;
            u_xlat10.x = (x_2995 * x_2997);
            let x_3001 : f32 = u_xlat20.x;
            let x_3002 : f32 = u_xlat77;
            let x_3005 : f32 = u_xlat10.x;
            u_xlat77 = ((x_3001 * x_3002) + x_3005);
            let x_3008 : vec4<f32> = u_xlat15;
            let x_3009 : vec2<f32> = vec2<f32>(x_3008.x, x_3008.y);
            let x_3011 : f32 = u_xlat30.z;
            txVec45 = vec3<f32>(x_3009.x, x_3009.y, x_3011);
            let x_3018 : vec3<f32> = txVec45;
            let x_3020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3018.xy, x_3018.z);
            u_xlat10.x = x_3020;
            let x_3023 : f32 = u_xlat20.z;
            let x_3025 : f32 = u_xlat10.x;
            let x_3027 : f32 = u_xlat77;
            u_xlat77 = ((x_3023 * x_3025) + x_3027);
            let x_3030 : vec4<f32> = u_xlat17;
            let x_3031 : vec2<f32> = vec2<f32>(x_3030.x, x_3030.y);
            let x_3033 : f32 = u_xlat30.z;
            txVec46 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3040 : vec3<f32> = txVec46;
            let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
            u_xlat10.x = x_3042;
            let x_3045 : f32 = u_xlat20.w;
            let x_3047 : f32 = u_xlat10.x;
            let x_3049 : f32 = u_xlat77;
            u_xlat77 = ((x_3045 * x_3047) + x_3049);
            let x_3052 : vec4<f32> = u_xlat16;
            let x_3053 : vec2<f32> = vec2<f32>(x_3052.x, x_3052.y);
            let x_3055 : f32 = u_xlat30.z;
            txVec47 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3062 : vec3<f32> = txVec47;
            let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
            u_xlat10.x = x_3064;
            let x_3067 : f32 = u_xlat21.x;
            let x_3069 : f32 = u_xlat10.x;
            let x_3071 : f32 = u_xlat77;
            u_xlat77 = ((x_3067 * x_3069) + x_3071);
            let x_3074 : vec4<f32> = u_xlat16;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.z, x_3074.w);
            let x_3077 : f32 = u_xlat30.z;
            txVec48 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec48;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat10.x = x_3086;
            let x_3089 : f32 = u_xlat21.y;
            let x_3091 : f32 = u_xlat10.x;
            let x_3093 : f32 = u_xlat77;
            u_xlat77 = ((x_3089 * x_3091) + x_3093);
            let x_3096 : vec2<f32> = u_xlat61;
            let x_3098 : f32 = u_xlat30.z;
            txVec49 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
            let x_3105 : vec3<f32> = txVec49;
            let x_3107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
            u_xlat10.x = x_3107;
            let x_3110 : f32 = u_xlat21.z;
            let x_3112 : f32 = u_xlat10.x;
            let x_3114 : f32 = u_xlat77;
            u_xlat77 = ((x_3110 * x_3112) + x_3114);
            let x_3117 : vec4<f32> = u_xlat17;
            let x_3118 : vec2<f32> = vec2<f32>(x_3117.z, x_3117.w);
            let x_3120 : f32 = u_xlat30.z;
            txVec50 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
            let x_3127 : vec3<f32> = txVec50;
            let x_3129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
            u_xlat10.x = x_3129;
            let x_3132 : f32 = u_xlat21.w;
            let x_3134 : f32 = u_xlat10.x;
            let x_3136 : f32 = u_xlat77;
            u_xlat77 = ((x_3132 * x_3134) + x_3136);
            let x_3139 : vec4<f32> = u_xlat18;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat30.z;
            txVec51 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec51;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat10.x = x_3151;
            let x_3154 : f32 = u_xlat22.x;
            let x_3156 : f32 = u_xlat10.x;
            let x_3158 : f32 = u_xlat77;
            u_xlat77 = ((x_3154 * x_3156) + x_3158);
            let x_3161 : vec4<f32> = u_xlat18;
            let x_3162 : vec2<f32> = vec2<f32>(x_3161.z, x_3161.w);
            let x_3164 : f32 = u_xlat30.z;
            txVec52 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec52;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat10.x = x_3173;
            let x_3176 : f32 = u_xlat22.y;
            let x_3178 : f32 = u_xlat10.x;
            let x_3180 : f32 = u_xlat77;
            u_xlat77 = ((x_3176 * x_3178) + x_3180);
            let x_3183 : vec2<f32> = u_xlat33;
            let x_3185 : f32 = u_xlat30.z;
            txVec53 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
            let x_3192 : vec3<f32> = txVec53;
            let x_3194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
            u_xlat10.x = x_3194;
            let x_3197 : f32 = u_xlat22.z;
            let x_3199 : f32 = u_xlat10.x;
            let x_3201 : f32 = u_xlat77;
            u_xlat77 = ((x_3197 * x_3199) + x_3201);
            let x_3204 : vec2<f32> = u_xlat19;
            let x_3206 : f32 = u_xlat30.z;
            txVec54 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec54;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat10.x = x_3215;
            let x_3218 : f32 = u_xlat22.w;
            let x_3220 : f32 = u_xlat10.x;
            let x_3222 : f32 = u_xlat77;
            u_xlat77 = ((x_3218 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat13;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.x, x_3225.y);
            let x_3228 : f32 = u_xlat30.z;
            txVec55 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec55;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat10.x = x_3237;
            let x_3240 : f32 = u_xlat9.x;
            let x_3242 : f32 = u_xlat10.x;
            let x_3244 : f32 = u_xlat77;
            u_xlat77 = ((x_3240 * x_3242) + x_3244);
            let x_3247 : vec4<f32> = u_xlat13;
            let x_3248 : vec2<f32> = vec2<f32>(x_3247.z, x_3247.w);
            let x_3250 : f32 = u_xlat30.z;
            txVec56 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec56;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat9.x = x_3259;
            let x_3262 : f32 = u_xlat9.y;
            let x_3264 : f32 = u_xlat9.x;
            let x_3266 : f32 = u_xlat77;
            u_xlat77 = ((x_3262 * x_3264) + x_3266);
            let x_3269 : vec2<f32> = u_xlat58;
            let x_3271 : f32 = u_xlat30.z;
            txVec57 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3278 : vec3<f32> = txVec57;
            let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
            u_xlat9.x = x_3280;
            let x_3283 : f32 = u_xlat9.z;
            let x_3285 : f32 = u_xlat9.x;
            let x_3287 : f32 = u_xlat77;
            u_xlat77 = ((x_3283 * x_3285) + x_3287);
            let x_3290 : vec2<f32> = u_xlat31;
            let x_3292 : f32 = u_xlat30.z;
            txVec58 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec58;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat31.x = x_3301;
            let x_3304 : f32 = u_xlat9.w;
            let x_3306 : f32 = u_xlat31.x;
            let x_3308 : f32 = u_xlat77;
            u_xlat8.x = ((x_3304 * x_3306) + x_3308);
          }
        }
      } else {
        let x_3313 : vec3<f32> = u_xlat30;
        let x_3314 : vec2<f32> = vec2<f32>(x_3313.x, x_3313.y);
        let x_3316 : f32 = u_xlat30.z;
        txVec59 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
        let x_3323 : vec3<f32> = txVec59;
        let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
        u_xlat8.x = x_3325;
      }
      let x_3327 : i32 = u_xlati6;
      let x_3329 : f32 = x_152.x_AdditionalShadowParams[x_3327].x;
      u_xlat30.x = (1.0f + -(x_3329));
      let x_3334 : f32 = u_xlat8.x;
      let x_3335 : i32 = u_xlati6;
      let x_3337 : f32 = x_152.x_AdditionalShadowParams[x_3335].x;
      let x_3340 : f32 = u_xlat30.x;
      u_xlat30.x = ((x_3334 * x_3337) + x_3340);
      let x_3344 : f32 = u_xlat30.z;
      u_xlatb53 = (0.0f >= x_3344);
      let x_3348 : f32 = u_xlat30.z;
      u_xlatb76 = (x_3348 >= 1.0f);
      let x_3350 : bool = u_xlatb76;
      let x_3351 : bool = u_xlatb53;
      u_xlatb53 = (x_3350 | x_3351);
      let x_3353 : bool = u_xlatb53;
      if (x_3353) {
        x_3354 = 1.0f;
      } else {
        let x_3359 : f32 = u_xlat30.x;
        x_3354 = x_3359;
      }
      let x_3360 : f32 = x_3354;
      u_xlat30.x = x_3360;
    } else {
      u_xlat30.x = 1.0f;
    }
    let x_3365 : f32 = u_xlat30.x;
    u_xlat53.x = (-(x_3365) + 1.0f);
    let x_3370 : f32 = u_xlat3.x;
    let x_3372 : f32 = u_xlat53.x;
    let x_3375 : f32 = u_xlat30.x;
    u_xlat30.x = ((x_3370 * x_3372) + x_3375);
    let x_3379 : f32 = u_xlat30.x;
    let x_3381 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3379 * x_3381);
    let x_3384 : vec4<f32> = u_xlat7;
    let x_3386 : i32 = u_xlati6;
    let x_3388 : vec4<f32> = x_1863.x_AdditionalLightsColor[x_3386];
    let x_3390 : vec3<f32> = (vec3<f32>(x_3384.x, x_3384.x, x_3384.x) * vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
    let x_3391 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3390.x, x_3390.y, x_3390.z, x_3391.w);
    let x_3393 : vec3<f32> = u_xlat1;
    let x_3394 : vec3<f32> = u_xlat29;
    u_xlat6.x = dot(x_3393, x_3394);
    let x_3398 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3398, 0.0f, 1.0f);
    let x_3401 : vec4<f32> = u_xlat6;
    let x_3403 : vec4<f32> = u_xlat7;
    let x_3405 : vec3<f32> = (vec3<f32>(x_3401.x, x_3401.x, x_3401.x) * vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
    let x_3406 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3405.x, x_3405.y, x_3405.z, x_3406.w);
    let x_3408 : vec3<f32> = u_xlat2;
    let x_3409 : f32 = u_xlat70;
    let x_3412 : vec3<f32> = u_xlat29;
    let x_3413 : vec3<f32> = ((x_3408 * vec3<f32>(x_3409, x_3409, x_3409)) + x_3412);
    let x_3414 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
    let x_3417 : vec4<f32> = u_xlat6;
    let x_3419 : vec4<f32> = u_xlat6;
    u_xlat75 = dot(vec3<f32>(x_3417.x, x_3417.y, x_3417.z), vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
    let x_3422 : f32 = u_xlat75;
    u_xlat75 = max(x_3422, 1.17549435e-38f);
    let x_3424 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3424);
    let x_3426 : f32 = u_xlat75;
    let x_3428 : vec4<f32> = u_xlat6;
    let x_3430 : vec3<f32> = (vec3<f32>(x_3426, x_3426, x_3426) * vec3<f32>(x_3428.x, x_3428.y, x_3428.z));
    let x_3431 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
    let x_3433 : vec3<f32> = u_xlat1;
    let x_3434 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(x_3433, vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
    let x_3439 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3439, 0.0f, 1.0f);
    let x_3443 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_3443);
    let x_3446 : f32 = u_xlat71;
    let x_3448 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3446 * x_3448);
    let x_3452 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_3452);
    let x_3455 : vec4<f32> = u_xlat6;
    let x_3458 : vec4<f32> = x_41.x_SpecColor;
    let x_3460 : vec3<f32> = (vec3<f32>(x_3455.x, x_3455.x, x_3455.x) * vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
    let x_3461 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
    let x_3463 : vec4<f32> = u_xlat6;
    let x_3465 : vec4<f32> = u_xlat7;
    let x_3467 : vec3<f32> = (vec3<f32>(x_3463.x, x_3463.y, x_3463.z) * vec3<f32>(x_3465.x, x_3465.y, x_3465.z));
    let x_3468 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
    let x_3470 : vec4<f32> = u_xlat8;
    let x_3472 : vec4<f32> = u_xlat0;
    let x_3475 : vec4<f32> = u_xlat6;
    let x_3477 : vec3<f32> = ((vec3<f32>(x_3470.x, x_3470.y, x_3470.z) * vec3<f32>(x_3472.y, x_3472.z, x_3472.w)) + vec3<f32>(x_3475.x, x_3475.y, x_3475.z));
    let x_3478 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3477.x, x_3477.y, x_3477.z, x_3478.w);
    let x_3480 : vec4<f32> = u_xlat5;
    let x_3482 : vec4<f32> = u_xlat6;
    let x_3484 : vec3<f32> = (vec3<f32>(x_3480.x, x_3480.y, x_3480.z) + vec3<f32>(x_3482.x, x_3482.y, x_3482.z));
    let x_3485 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);

    continuing {
      let x_3487 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3487 + bitcast<u32>(1i));
    }
  }
  let x_3490 : vec4<f32> = u_xlat4;
  let x_3492 : vec4<f32> = u_xlat0;
  let x_3495 : vec3<f32> = u_xlat26;
  u_xlat23 = ((vec3<f32>(x_3490.x, x_3490.y, x_3490.z) * vec3<f32>(x_3492.y, x_3492.z, x_3492.w)) + x_3495);
  let x_3499 : vec4<f32> = u_xlat5;
  let x_3501 : vec3<f32> = u_xlat23;
  let x_3502 : vec3<f32> = (vec3<f32>(x_3499.x, x_3499.y, x_3499.z) + x_3501);
  let x_3503 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3502.x, x_3502.y, x_3502.z, x_3503.w);
  let x_3507 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3507 == 1.0f);
  let x_3509 : bool = u_xlatb23;
  if (x_3509) {
    let x_3514 : f32 = u_xlat0.x;
    x_3510 = x_3514;
  } else {
    x_3510 = 1.0f;
  }
  let x_3516 : f32 = x_3510;
  SV_Target0.w = x_3516;
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


