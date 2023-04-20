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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlatb70 : bool;

@group(1) @binding(4) var<uniform> x_236 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb72 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlat73 : f32;

var<private> u_xlatu73 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1737 : AdditionalLights;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat76 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlat77 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

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
  var x_1899 : f32;
  var x_1908 : f32;
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
  var x_3218 : f32;
  var x_3375 : f32;
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
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_133 : vec3<f32> = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = u_xlat2;
  let x_138 : vec3<f32> = u_xlat2;
  u_xlat71 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat71;
  u_xlat71 = max(x_140, 0.00006103515625f);
  let x_143 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_143);
  u_xlat1.w = 1.0f;
  let x_154 : vec4<f32> = x_151.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_151.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_151.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_151.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_151.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_151.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat70 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat70;
  u_xlat70 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_151.unity_SHC;
  let x_213 : f32 = u_xlat70;
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_239 : f32 = x_236.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_239);
  let x_241 : bool = u_xlatb70;
  if (x_241) {
    let x_245 : f32 = x_236.x_MainLightShadowParams.y;
    u_xlatb70 = (x_245 == 1.0f);
    let x_247 : bool = u_xlatb70;
    if (x_247) {
      let x_252 : vec4<f32> = vs_TEXCOORD6;
      let x_255 : vec4<f32> = x_236.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_252.x, x_252.y, x_252.x, x_252.y) + x_255);
      let x_259 : vec4<f32> = u_xlat4;
      let x_260 : vec2<f32> = vec2<f32>(x_259.x, x_259.y);
      let x_263 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_260.x, x_260.y, x_263);
      let x_275 : vec3<f32> = txVec0;
      let x_277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_275.xy, x_275.z);
      u_xlat5.x = x_277;
      let x_280 : vec4<f32> = u_xlat4;
      let x_281 : vec2<f32> = vec2<f32>(x_280.z, x_280.w);
      let x_283 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_281.x, x_281.y, x_283);
      let x_290 : vec3<f32> = txVec1;
      let x_292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_290.xy, x_290.z);
      u_xlat5.y = x_292;
      let x_294 : vec4<f32> = vs_TEXCOORD6;
      let x_298 : vec4<f32> = x_236.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_294.x, x_294.y, x_294.x, x_294.y) + x_298);
      let x_301 : vec4<f32> = u_xlat4;
      let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
      let x_304 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_302.x, x_302.y, x_304);
      let x_311 : vec3<f32> = txVec2;
      let x_313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_311.xy, x_311.z);
      u_xlat5.z = x_313;
      let x_316 : vec4<f32> = u_xlat4;
      let x_317 : vec2<f32> = vec2<f32>(x_316.z, x_316.w);
      let x_319 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_317.x, x_317.y, x_319);
      let x_326 : vec3<f32> = txVec3;
      let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_326.xy, x_326.z);
      u_xlat5.w = x_328;
      let x_330 : vec4<f32> = u_xlat5;
      u_xlat70 = dot(x_330, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_337 : f32 = x_236.x_MainLightShadowParams.y;
      u_xlatb72 = (x_337 == 2.0f);
      let x_340 : bool = u_xlatb72;
      if (x_340) {
        let x_343 : vec4<f32> = vs_TEXCOORD6;
        let x_347 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_352 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_347.z, x_347.w)) + vec2<f32>(0.5f, 0.5f));
        let x_353 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
        let x_355 : vec4<f32> = u_xlat4;
        let x_357 : vec2<f32> = floor(vec2<f32>(x_355.x, x_355.y));
        let x_358 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
        let x_362 : vec4<f32> = vs_TEXCOORD6;
        let x_365 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_362.x, x_362.y) * vec2<f32>(x_365.z, x_365.w)) + -(vec2<f32>(x_368.x, x_368.y)));
        let x_372 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_372.x, x_372.x, x_372.y, x_372.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_377 : vec4<f32> = u_xlat5;
        let x_379 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_377.x, x_377.x, x_377.z, x_377.z) * vec4<f32>(x_379.x, x_379.x, x_379.z, x_379.z));
        let x_382 : vec4<f32> = u_xlat6;
        let x_386 : vec2<f32> = (vec2<f32>(x_382.y, x_382.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_387 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_387.w);
        let x_389 : vec4<f32> = u_xlat6;
        let x_392 : vec2<f32> = u_xlat50;
        let x_394 : vec2<f32> = ((vec2<f32>(x_389.x, x_389.z) * vec2<f32>(0.5f, 0.5f)) + -(x_392));
        let x_395 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
        let x_398 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_398) + vec2<f32>(1.0f, 1.0f));
        let x_403 : vec2<f32> = u_xlat50;
        let x_405 : vec2<f32> = min(x_403, vec2<f32>(0.0f, 0.0f));
        let x_406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
        let x_408 : vec4<f32> = u_xlat7;
        let x_411 : vec4<f32> = u_xlat7;
        let x_414 : vec2<f32> = u_xlat52;
        let x_415 : vec2<f32> = ((-(vec2<f32>(x_408.x, x_408.y)) * vec2<f32>(x_411.x, x_411.y)) + x_414);
        let x_416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_418 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_418, vec2<f32>(0.0f, 0.0f));
        let x_420 : vec2<f32> = u_xlat50;
        let x_422 : vec2<f32> = u_xlat50;
        let x_424 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_420) * x_422) + vec2<f32>(x_424.y, x_424.w));
        let x_427 : vec4<f32> = u_xlat7;
        let x_429 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) + vec2<f32>(1.0f, 1.0f));
        let x_430 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_432 + vec2<f32>(1.0f, 1.0f));
        let x_435 : vec4<f32> = u_xlat6;
        let x_439 : vec2<f32> = (vec2<f32>(x_435.x, x_435.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec2<f32> = u_xlat52;
        let x_443 : vec2<f32> = (x_442 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec4<f32> = u_xlat7;
        let x_448 : vec2<f32> = (vec2<f32>(x_446.x, x_446.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_449 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_452 : vec2<f32> = u_xlat50;
        let x_453 : vec2<f32> = (x_452 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_454 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_456.y, x_456.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_460 : f32 = u_xlat7.x;
        u_xlat8.z = x_460;
        let x_463 : f32 = u_xlat50.x;
        u_xlat8.w = x_463;
        let x_466 : f32 = u_xlat9.x;
        u_xlat6.z = x_466;
        let x_469 : f32 = u_xlat5.x;
        u_xlat6.w = x_469;
        let x_472 : vec4<f32> = u_xlat6;
        let x_474 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_472.z, x_472.w, x_472.x, x_472.z) + vec4<f32>(x_474.z, x_474.w, x_474.x, x_474.z));
        let x_478 : f32 = u_xlat8.y;
        u_xlat7.z = x_478;
        let x_481 : f32 = u_xlat50.y;
        u_xlat7.w = x_481;
        let x_484 : f32 = u_xlat6.y;
        u_xlat9.z = x_484;
        let x_487 : f32 = u_xlat5.z;
        u_xlat9.w = x_487;
        let x_489 : vec4<f32> = u_xlat7;
        let x_491 : vec4<f32> = u_xlat9;
        let x_493 : vec3<f32> = (vec3<f32>(x_489.z, x_489.y, x_489.w) + vec3<f32>(x_491.z, x_491.y, x_491.w));
        let x_494 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
        let x_496 : vec4<f32> = u_xlat6;
        let x_498 : vec4<f32> = u_xlat10;
        let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.z, x_496.w) / vec3<f32>(x_498.z, x_498.w, x_498.y));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat6;
        let x_509 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat9;
        let x_514 : vec4<f32> = u_xlat5;
        let x_516 : vec3<f32> = (vec3<f32>(x_512.z, x_512.y, x_512.w) / vec3<f32>(x_514.x, x_514.y, x_514.z));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat7;
        let x_521 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat6;
        let x_527 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_529 : vec3<f32> = (vec3<f32>(x_524.y, x_524.x, x_524.z) * vec3<f32>(x_527.x, x_527.x, x_527.x));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_537 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_535.y, x_535.y, x_535.y));
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_541 : f32 = u_xlat7.x;
        u_xlat6.w = x_541;
        let x_543 : vec4<f32> = u_xlat4;
        let x_546 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_549 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_543.x, x_543.y, x_543.x, x_543.y) * vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y)) + vec4<f32>(x_549.y, x_549.w, x_549.x, x_549.w));
        let x_552 : vec4<f32> = u_xlat4;
        let x_555 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_558.z, x_558.w));
        let x_562 : f32 = u_xlat6.y;
        u_xlat7.w = x_562;
        let x_564 : vec4<f32> = u_xlat7;
        let x_565 : vec2<f32> = vec2<f32>(x_564.y, x_564.z);
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_566.x, x_565.x, x_566.z, x_565.y);
        let x_568 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) * vec4<f32>(x_571.x, x_571.y, x_571.x, x_571.y)) + vec4<f32>(x_574.x, x_574.y, x_574.z, x_574.y));
        let x_577 : vec4<f32> = u_xlat4;
        let x_580 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y) * vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y)) + vec4<f32>(x_583.w, x_583.y, x_583.w, x_583.z));
        let x_586 : vec4<f32> = u_xlat4;
        let x_589 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y) * vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y)) + vec4<f32>(x_592.x, x_592.w, x_592.z, x_592.w));
        let x_596 : vec4<f32> = u_xlat5;
        let x_598 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_596.x, x_596.x, x_596.x, x_596.y) * vec4<f32>(x_598.z, x_598.w, x_598.y, x_598.z));
        let x_602 : vec4<f32> = u_xlat5;
        let x_604 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_602.y, x_602.y, x_602.z, x_602.z) * x_604);
        let x_608 : f32 = u_xlat5.z;
        let x_610 : f32 = u_xlat10.y;
        u_xlat72 = (x_608 * x_610);
        let x_613 : vec4<f32> = u_xlat8;
        let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
        let x_616 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_614.x, x_614.y, x_616);
        let x_623 : vec3<f32> = txVec4;
        let x_625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_623.xy, x_623.z);
        u_xlat4.x = x_625;
        let x_628 : vec4<f32> = u_xlat8;
        let x_629 : vec2<f32> = vec2<f32>(x_628.z, x_628.w);
        let x_631 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_629.x, x_629.y, x_631);
        let x_639 : vec3<f32> = txVec5;
        let x_641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_639.xy, x_639.z);
        u_xlat27 = x_641;
        let x_642 : f32 = u_xlat27;
        let x_644 : f32 = u_xlat11.y;
        u_xlat27 = (x_642 * x_644);
        let x_647 : f32 = u_xlat11.x;
        let x_649 : f32 = u_xlat4.x;
        let x_651 : f32 = u_xlat27;
        u_xlat4.x = ((x_647 * x_649) + x_651);
        let x_655 : vec2<f32> = u_xlat50;
        let x_657 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_655.x, x_655.y, x_657);
        let x_664 : vec3<f32> = txVec6;
        let x_666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_664.xy, x_664.z);
        u_xlat27 = x_666;
        let x_668 : f32 = u_xlat11.z;
        let x_669 : f32 = u_xlat27;
        let x_672 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_668 * x_669) + x_672);
        let x_676 : vec4<f32> = u_xlat7;
        let x_677 : vec2<f32> = vec2<f32>(x_676.x, x_676.y);
        let x_679 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_677.x, x_677.y, x_679);
        let x_686 : vec3<f32> = txVec7;
        let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_686.xy, x_686.z);
        u_xlat27 = x_688;
        let x_690 : f32 = u_xlat11.w;
        let x_691 : f32 = u_xlat27;
        let x_694 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_690 * x_691) + x_694);
        let x_698 : vec4<f32> = u_xlat9;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec8;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
        u_xlat27 = x_710;
        let x_712 : f32 = u_xlat12.x;
        let x_713 : f32 = u_xlat27;
        let x_716 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_712 * x_713) + x_716);
        let x_720 : vec4<f32> = u_xlat9;
        let x_721 : vec2<f32> = vec2<f32>(x_720.z, x_720.w);
        let x_723 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec9;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_730.xy, x_730.z);
        u_xlat27 = x_732;
        let x_734 : f32 = u_xlat12.y;
        let x_735 : f32 = u_xlat27;
        let x_738 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_734 * x_735) + x_738);
        let x_742 : vec4<f32> = u_xlat7;
        let x_743 : vec2<f32> = vec2<f32>(x_742.z, x_742.w);
        let x_745 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec10;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_752.xy, x_752.z);
        u_xlat27 = x_754;
        let x_756 : f32 = u_xlat12.z;
        let x_757 : f32 = u_xlat27;
        let x_760 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_756 * x_757) + x_760);
        let x_764 : vec4<f32> = u_xlat6;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec11;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
        u_xlat27 = x_776;
        let x_778 : f32 = u_xlat12.w;
        let x_779 : f32 = u_xlat27;
        let x_782 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_778 * x_779) + x_782);
        let x_786 : vec4<f32> = u_xlat6;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec12;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
        u_xlat27 = x_798;
        let x_799 : f32 = u_xlat72;
        let x_800 : f32 = u_xlat27;
        let x_803 : f32 = u_xlat4.x;
        u_xlat70 = ((x_799 * x_800) + x_803);
      } else {
        let x_806 : vec4<f32> = vs_TEXCOORD6;
        let x_809 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_812 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_809.z, x_809.w)) + vec2<f32>(0.5f, 0.5f));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat4;
        let x_817 : vec2<f32> = floor(vec2<f32>(x_815.x, x_815.y));
        let x_818 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec4<f32> = vs_TEXCOORD6;
        let x_823 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_820.x, x_820.y) * vec2<f32>(x_823.z, x_823.w)) + -(vec2<f32>(x_826.x, x_826.y)));
        let x_830 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_830.x, x_830.x, x_830.y, x_830.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_833 : vec4<f32> = u_xlat5;
        let x_835 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_833.x, x_833.x, x_833.z, x_833.z) * vec4<f32>(x_835.x, x_835.x, x_835.z, x_835.z));
        let x_838 : vec4<f32> = u_xlat6;
        let x_842 : vec2<f32> = (vec2<f32>(x_838.y, x_838.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_843 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_843.x, x_842.x, x_843.z, x_842.y);
        let x_845 : vec4<f32> = u_xlat6;
        let x_848 : vec2<f32> = u_xlat50;
        let x_850 : vec2<f32> = ((vec2<f32>(x_845.x, x_845.z) * vec2<f32>(0.5f, 0.5f)) + -(x_848));
        let x_851 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_850.x, x_851.y, x_850.y, x_851.w);
        let x_853 : vec2<f32> = u_xlat50;
        let x_855 : vec2<f32> = (-(x_853) + vec2<f32>(1.0f, 1.0f));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_858, vec2<f32>(0.0f, 0.0f));
        let x_860 : vec2<f32> = u_xlat52;
        let x_862 : vec2<f32> = u_xlat52;
        let x_864 : vec4<f32> = u_xlat6;
        let x_866 : vec2<f32> = ((-(x_860) * x_862) + vec2<f32>(x_864.x, x_864.y));
        let x_867 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_869, vec2<f32>(0.0f, 0.0f));
        let x_872 : vec2<f32> = u_xlat52;
        let x_874 : vec2<f32> = u_xlat52;
        let x_876 : vec4<f32> = u_xlat5;
        let x_878 : vec2<f32> = ((-(x_872) * x_874) + vec2<f32>(x_876.y, x_876.w));
        let x_879 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_878.x, x_879.y, x_878.y);
        let x_881 : vec4<f32> = u_xlat6;
        let x_884 : vec2<f32> = (vec2<f32>(x_881.x, x_881.y) + vec2<f32>(2.0f, 2.0f));
        let x_885 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_887 : vec3<f32> = u_xlat28;
        let x_889 : vec2<f32> = (vec2<f32>(x_887.x, x_887.z) + vec2<f32>(2.0f, 2.0f));
        let x_890 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_890.x, x_889.x, x_890.z, x_889.y);
        let x_893 : f32 = u_xlat5.y;
        u_xlat8.z = (x_893 * 0.08163200318813323975f);
        let x_897 : vec4<f32> = u_xlat5;
        let x_900 : vec3<f32> = (vec3<f32>(x_897.z, x_897.x, x_897.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_901 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_906 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_907 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_910 : f32 = u_xlat9.y;
        u_xlat8.x = x_910;
        let x_912 : vec2<f32> = u_xlat50;
        let x_919 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_920.x, x_919.x, x_920.z, x_919.y);
        let x_922 : vec2<f32> = u_xlat50;
        let x_926 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_926.x, x_927.y, x_926.y, x_927.w);
        let x_930 : f32 = u_xlat5.x;
        u_xlat6.y = x_930;
        let x_933 : f32 = u_xlat7.y;
        u_xlat6.w = x_933;
        let x_935 : vec4<f32> = u_xlat6;
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_935 + x_936);
        let x_938 : vec2<f32> = u_xlat50;
        let x_941 : vec2<f32> = ((vec2<f32>(x_938.y, x_938.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_942.x, x_941.x, x_942.z, x_941.y);
        let x_944 : vec2<f32> = u_xlat50;
        let x_947 : vec2<f32> = ((vec2<f32>(x_944.y, x_944.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_947.x, x_948.y, x_947.y, x_948.w);
        let x_951 : f32 = u_xlat5.y;
        u_xlat7.y = x_951;
        let x_953 : vec4<f32> = u_xlat7;
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_953 + x_954);
        let x_956 : vec4<f32> = u_xlat6;
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_956 / x_957);
        let x_959 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_959 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_965 : vec4<f32> = u_xlat7;
        let x_966 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_965 / x_966);
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_968 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_970 : vec4<f32> = u_xlat6;
        let x_973 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_970.w, x_970.x, x_970.y, x_970.z) * vec4<f32>(x_973.x, x_973.x, x_973.x, x_973.x));
        let x_976 : vec4<f32> = u_xlat7;
        let x_979 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_976.x, x_976.w, x_976.y, x_976.z) * vec4<f32>(x_979.y, x_979.y, x_979.y, x_979.y));
        let x_982 : vec4<f32> = u_xlat6;
        let x_983 : vec3<f32> = vec3<f32>(x_982.y, x_982.z, x_982.w);
        let x_984 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_983.x, x_984.y, x_983.y, x_983.z);
        let x_987 : f32 = u_xlat7.x;
        u_xlat9.y = x_987;
        let x_989 : vec4<f32> = u_xlat4;
        let x_992 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) * vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y)) + vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.y));
        let x_998 : vec4<f32> = u_xlat4;
        let x_1001 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.w, x_1004.y));
        let x_1008 : f32 = u_xlat9.y;
        u_xlat6.y = x_1008;
        let x_1011 : f32 = u_xlat7.z;
        u_xlat9.y = x_1011;
        let x_1013 : vec4<f32> = u_xlat4;
        let x_1016 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) * vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y)) + vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat4;
        let x_1025 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat9;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.x, x_1025.y)) + vec2<f32>(x_1028.w, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1034 : f32 = u_xlat9.y;
        u_xlat6.z = x_1034;
        let x_1037 : vec4<f32> = u_xlat4;
        let x_1040 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.y) * vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y)) + vec4<f32>(x_1043.x, x_1043.y, x_1043.x, x_1043.z));
        let x_1047 : f32 = u_xlat7.w;
        u_xlat9.y = x_1047;
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1053 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1060 : vec4<f32> = u_xlat4;
        let x_1063 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1068 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.w, x_1066.y));
        let x_1069 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1068.x, x_1068.y, x_1069.z);
        let x_1072 : f32 = u_xlat9.y;
        u_xlat6.w = x_1072;
        let x_1075 : vec4<f32> = u_xlat4;
        let x_1078 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.x, x_1078.y)) + vec2<f32>(x_1081.x, x_1081.w));
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1085 : vec3<f32> = vec3<f32>(x_1084.x, x_1084.z, x_1084.w);
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1085.z);
        let x_1088 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y) * vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y)) + vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.y));
        let x_1098 : vec4<f32> = u_xlat4;
        let x_1101 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1108 : f32 = u_xlat6.x;
        u_xlat7.x = x_1108;
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : vec4<f32> = u_xlat5;
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1122.x, x_1122.x, x_1122.x, x_1122.x) * x_1124);
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1127.y, x_1127.y, x_1127.y, x_1127.y) * x_1129);
        let x_1132 : vec4<f32> = u_xlat5;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1132.z, x_1132.z, x_1132.z, x_1132.z) * x_1134);
        let x_1136 : vec4<f32> = u_xlat5;
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1136.w, x_1136.w, x_1136.w, x_1136.w) * x_1138);
        let x_1141 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = vec2<f32>(x_1141.x, x_1141.y);
        let x_1144 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1142.x, x_1142.y, x_1144);
        let x_1151 : vec3<f32> = txVec13;
        let x_1153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1151.xy, x_1151.z);
        u_xlat72 = x_1153;
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.z, x_1155.w);
        let x_1158 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1165 : vec3<f32> = txVec14;
        let x_1167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1165.xy, x_1165.z);
        u_xlat6.x = x_1167;
        let x_1170 : f32 = u_xlat6.x;
        let x_1172 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1170 * x_1172);
        let x_1176 : f32 = u_xlat15.x;
        let x_1177 : f32 = u_xlat72;
        let x_1180 : f32 = u_xlat6.x;
        u_xlat72 = ((x_1176 * x_1177) + x_1180);
        let x_1183 : vec2<f32> = u_xlat50;
        let x_1185 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec15;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat50.x = x_1194;
        let x_1197 : f32 = u_xlat15.z;
        let x_1199 : f32 = u_xlat50.x;
        let x_1201 : f32 = u_xlat72;
        u_xlat72 = ((x_1197 * x_1199) + x_1201);
        let x_1204 : vec4<f32> = u_xlat13;
        let x_1205 : vec2<f32> = vec2<f32>(x_1204.x, x_1204.y);
        let x_1207 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
        let x_1214 : vec3<f32> = txVec16;
        let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1214.xy, x_1214.z);
        u_xlat50.x = x_1216;
        let x_1219 : f32 = u_xlat15.w;
        let x_1221 : f32 = u_xlat50.x;
        let x_1223 : f32 = u_xlat72;
        u_xlat72 = ((x_1219 * x_1221) + x_1223);
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1227 : vec2<f32> = vec2<f32>(x_1226.x, x_1226.y);
        let x_1229 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1227.x, x_1227.y, x_1229);
        let x_1236 : vec3<f32> = txVec17;
        let x_1238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1236.xy, x_1236.z);
        u_xlat50.x = x_1238;
        let x_1241 : f32 = u_xlat16.x;
        let x_1243 : f32 = u_xlat50.x;
        let x_1245 : f32 = u_xlat72;
        u_xlat72 = ((x_1241 * x_1243) + x_1245);
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.z, x_1248.w);
        let x_1251 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec18;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat50.x = x_1260;
        let x_1263 : f32 = u_xlat16.y;
        let x_1265 : f32 = u_xlat50.x;
        let x_1267 : f32 = u_xlat72;
        u_xlat72 = ((x_1263 * x_1265) + x_1267);
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
        let x_1273 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec19;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1280.xy, x_1280.z);
        u_xlat50.x = x_1282;
        let x_1285 : f32 = u_xlat16.z;
        let x_1287 : f32 = u_xlat50.x;
        let x_1289 : f32 = u_xlat72;
        u_xlat72 = ((x_1285 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat13;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec20;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat50.x = x_1304;
        let x_1307 : f32 = u_xlat16.w;
        let x_1309 : f32 = u_xlat50.x;
        let x_1311 : f32 = u_xlat72;
        u_xlat72 = ((x_1307 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat14;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec21;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat50.x = x_1326;
        let x_1329 : f32 = u_xlat17.x;
        let x_1331 : f32 = u_xlat50.x;
        let x_1333 : f32 = u_xlat72;
        u_xlat72 = ((x_1329 * x_1331) + x_1333);
        let x_1336 : vec4<f32> = u_xlat14;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec22;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat50.x = x_1348;
        let x_1351 : f32 = u_xlat17.y;
        let x_1353 : f32 = u_xlat50.x;
        let x_1355 : f32 = u_xlat72;
        u_xlat72 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec3<f32> = u_xlat29;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec23;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat50.x = x_1370;
        let x_1373 : f32 = u_xlat17.z;
        let x_1375 : f32 = u_xlat50.x;
        let x_1377 : f32 = u_xlat72;
        u_xlat72 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat58;
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec24;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat50.x = x_1391;
        let x_1394 : f32 = u_xlat17.w;
        let x_1396 : f32 = u_xlat50.x;
        let x_1398 : f32 = u_xlat72;
        u_xlat72 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec25;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat50.x = x_1413;
        let x_1416 : f32 = u_xlat5.x;
        let x_1418 : f32 = u_xlat50.x;
        let x_1420 : f32 = u_xlat72;
        u_xlat72 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec26;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat50.x = x_1435;
        let x_1438 : f32 = u_xlat5.y;
        let x_1440 : f32 = u_xlat50.x;
        let x_1442 : f32 = u_xlat72;
        u_xlat72 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec2<f32> = u_xlat53;
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec27;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat50.x = x_1456;
        let x_1459 : f32 = u_xlat5.z;
        let x_1461 : f32 = u_xlat50.x;
        let x_1463 : f32 = u_xlat72;
        u_xlat72 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat4;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec28;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat4.x = x_1478;
        let x_1481 : f32 = u_xlat5.w;
        let x_1483 : f32 = u_xlat4.x;
        let x_1485 : f32 = u_xlat72;
        u_xlat70 = ((x_1481 * x_1483) + x_1485);
      }
    }
  } else {
    let x_1489 : vec4<f32> = vs_TEXCOORD6;
    let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
    let x_1492 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
    let x_1499 : vec3<f32> = txVec29;
    let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
    u_xlat70 = x_1501;
  }
  let x_1503 : f32 = x_236.x_MainLightShadowParams.x;
  u_xlat72 = (-(x_1503) + 1.0f);
  let x_1506 : f32 = u_xlat70;
  let x_1508 : f32 = x_236.x_MainLightShadowParams.x;
  let x_1510 : f32 = u_xlat72;
  u_xlat70 = ((x_1506 * x_1508) + x_1510);
  let x_1513 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (0.0f >= x_1513);
  let x_1517 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1517 >= 1.0f);
  let x_1519 : bool = u_xlatb72;
  let x_1520 : bool = u_xlatb4;
  u_xlatb72 = (x_1519 | x_1520);
  let x_1522 : bool = u_xlatb72;
  let x_1523 : f32 = u_xlat70;
  u_xlat70 = select(x_1523, 1.0f, x_1522);
  let x_1525 : vec3<f32> = vs_TEXCOORD1;
  let x_1527 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1529 : vec3<f32> = (x_1525 + -(x_1527));
  let x_1530 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
  let x_1532 : vec4<f32> = u_xlat4;
  let x_1534 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(vec3<f32>(x_1532.x, x_1532.y, x_1532.z), vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
  let x_1537 : f32 = u_xlat72;
  let x_1539 : f32 = x_236.x_MainLightShadowParams.z;
  let x_1542 : f32 = x_236.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1537 * x_1539) + x_1542);
  let x_1546 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1546, 0.0f, 1.0f);
  let x_1549 : f32 = u_xlat70;
  u_xlat27 = (-(x_1549) + 1.0f);
  let x_1553 : f32 = u_xlat4.x;
  let x_1554 : f32 = u_xlat27;
  let x_1556 : f32 = u_xlat70;
  u_xlat70 = ((x_1553 * x_1554) + x_1556);
  let x_1558 : f32 = u_xlat70;
  let x_1560 : f32 = x_151.unity_LightData.z;
  u_xlat70 = (x_1558 * x_1560);
  let x_1562 : f32 = u_xlat70;
  let x_1565 : vec4<f32> = x_28.x_MainLightColor;
  let x_1567 : vec3<f32> = (vec3<f32>(x_1562, x_1562, x_1562) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
  let x_1570 : vec4<f32> = u_xlat1;
  let x_1573 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat70 = dot(vec3<f32>(x_1570.x, x_1570.y, x_1570.z), vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
  let x_1576 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1576, 0.0f, 1.0f);
  let x_1578 : f32 = u_xlat70;
  let x_1580 : vec4<f32> = u_xlat4;
  let x_1582 : vec3<f32> = (vec3<f32>(x_1578, x_1578, x_1578) * vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
  let x_1583 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1586 : f32 = u_xlat0.x;
  u_xlat70 = ((x_1586 * 10.0f) + 1.0f);
  let x_1590 : f32 = u_xlat70;
  u_xlat70 = exp2(x_1590);
  let x_1592 : vec3<f32> = u_xlat2;
  let x_1593 : f32 = u_xlat71;
  let x_1597 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1599 : vec3<f32> = ((x_1592 * vec3<f32>(x_1593, x_1593, x_1593)) + vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
  let x_1600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1603 : vec4<f32> = u_xlat6;
  let x_1605 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1603.x, x_1603.y, x_1603.z), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : f32 = u_xlat73;
  u_xlat73 = max(x_1608, 1.17549435e-38f);
  let x_1611 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1611);
  let x_1613 : f32 = u_xlat73;
  let x_1615 : vec4<f32> = u_xlat6;
  let x_1617 : vec3<f32> = (vec3<f32>(x_1613, x_1613, x_1613) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
  let x_1618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat1;
  let x_1622 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1625, 0.0f, 1.0f);
  let x_1627 : f32 = u_xlat73;
  u_xlat73 = log2(x_1627);
  let x_1629 : f32 = u_xlat70;
  let x_1630 : f32 = u_xlat73;
  u_xlat73 = (x_1629 * x_1630);
  let x_1632 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1632);
  let x_1634 : f32 = u_xlat73;
  let x_1637 : vec4<f32> = x_41.x_SpecColor;
  let x_1639 : vec3<f32> = (vec3<f32>(x_1634, x_1634, x_1634) * vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : vec4<f32> = u_xlat4;
  let x_1644 : vec4<f32> = u_xlat6;
  let x_1646 : vec3<f32> = (vec3<f32>(x_1642.x, x_1642.y, x_1642.z) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
  let x_1649 : vec4<f32> = u_xlat5;
  let x_1651 : vec4<f32> = u_xlat0;
  let x_1654 : vec4<f32> = u_xlat4;
  let x_1656 : vec3<f32> = ((vec3<f32>(x_1649.x, x_1649.y, x_1649.z) * vec3<f32>(x_1651.y, x_1651.z, x_1651.w)) + vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1661 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1663 : f32 = x_151.unity_LightData.y;
  u_xlat73 = min(x_1661, x_1663);
  let x_1667 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1667));
  let x_1670 : f32 = u_xlat72;
  let x_1673 : f32 = x_236.x_AdditionalShadowFadeParams.x;
  let x_1676 : f32 = x_236.x_AdditionalShadowFadeParams.y;
  u_xlat72 = ((x_1670 * x_1673) + x_1676);
  let x_1678 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1678, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1690 : u32 = u_xlatu_loop_1;
    let x_1691 : u32 = u_xlatu73;
    if ((x_1690 < x_1691)) {
    } else {
      break;
    }
    let x_1694 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1694 >> 2u);
    let x_1698 : u32 = u_xlatu_loop_1;
    u_xlati29 = bitcast<i32>((x_1698 & 3u));
    let x_1701 : u32 = u_xlatu6;
    let x_1704 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_1701)];
    let x_1714 : i32 = u_xlati29;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1719 : vec4<u32> = indexable[x_1714];
    u_xlat6.x = dot(x_1704, bitcast<vec4<f32>>(x_1719));
    let x_1725 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1725);
    let x_1727 : vec3<f32> = vs_TEXCOORD1;
    let x_1738 : i32 = u_xlati6;
    let x_1740 : vec4<f32> = x_1737.x_AdditionalLightsPosition[x_1738];
    let x_1743 : i32 = u_xlati6;
    let x_1745 : vec4<f32> = x_1737.x_AdditionalLightsPosition[x_1743];
    u_xlat29 = ((-(x_1727) * vec3<f32>(x_1740.w, x_1740.w, x_1740.w)) + vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
    let x_1748 : vec3<f32> = u_xlat29;
    let x_1749 : vec3<f32> = u_xlat29;
    u_xlat7.x = dot(x_1748, x_1749);
    let x_1753 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1753, 0.00006103515625f);
    let x_1758 : f32 = u_xlat7.x;
    u_xlat30.x = inverseSqrt(x_1758);
    let x_1761 : vec3<f32> = u_xlat29;
    let x_1762 : vec3<f32> = u_xlat30;
    u_xlat29 = (x_1761 * vec3<f32>(x_1762.x, x_1762.x, x_1762.x));
    let x_1766 : f32 = u_xlat7.x;
    u_xlat30.x = (1.0f / x_1766);
    let x_1770 : f32 = u_xlat7.x;
    let x_1771 : i32 = u_xlati6;
    let x_1773 : f32 = x_1737.x_AdditionalLightsAttenuation[x_1771].x;
    u_xlat7.x = (x_1770 * x_1773);
    let x_1777 : f32 = u_xlat7.x;
    let x_1780 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1777) * x_1780) + 1.0f);
    let x_1785 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1785, 0.0f);
    let x_1789 : f32 = u_xlat7.x;
    let x_1791 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1789 * x_1791);
    let x_1795 : f32 = u_xlat7.x;
    let x_1797 : f32 = u_xlat30.x;
    u_xlat7.x = (x_1795 * x_1797);
    let x_1800 : i32 = u_xlati6;
    let x_1802 : vec4<f32> = x_1737.x_AdditionalLightsSpotDir[x_1800];
    let x_1804 : vec3<f32> = u_xlat29;
    u_xlat30.x = dot(vec3<f32>(x_1802.x, x_1802.y, x_1802.z), x_1804);
    let x_1808 : f32 = u_xlat30.x;
    let x_1809 : i32 = u_xlati6;
    let x_1811 : f32 = x_1737.x_AdditionalLightsAttenuation[x_1809].z;
    let x_1813 : i32 = u_xlati6;
    let x_1815 : f32 = x_1737.x_AdditionalLightsAttenuation[x_1813].w;
    u_xlat30.x = ((x_1808 * x_1811) + x_1815);
    let x_1819 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_1819, 0.0f, 1.0f);
    let x_1823 : f32 = u_xlat30.x;
    let x_1825 : f32 = u_xlat30.x;
    u_xlat30.x = (x_1823 * x_1825);
    let x_1829 : f32 = u_xlat30.x;
    let x_1831 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1829 * x_1831);
    let x_1836 : i32 = u_xlati6;
    let x_1838 : f32 = x_236.x_AdditionalShadowParams[x_1836].w;
    u_xlati30 = i32(x_1838);
    let x_1841 : i32 = u_xlati30;
    u_xlatb53 = (x_1841 >= 0i);
    let x_1843 : bool = u_xlatb53;
    if (x_1843) {
      let x_1847 : i32 = u_xlati6;
      let x_1849 : f32 = x_236.x_AdditionalShadowParams[x_1847].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1849, x_1849, x_1849, x_1849))));
      let x_1854 : bool = u_xlatb53;
      if (x_1854) {
        let x_1859 : vec3<f32> = u_xlat29;
        let x_1862 : vec3<f32> = u_xlat29;
        let x_1865 : vec4<bool> = (abs(vec4<f32>(x_1859.z, x_1859.z, x_1859.y, x_1859.z)) >= abs(vec4<f32>(x_1862.x, x_1862.y, x_1862.x, x_1862.x)));
        let x_1867 : vec3<bool> = vec3<bool>(x_1865.x, x_1865.y, x_1865.z);
        let x_1868 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
        let x_1871 : bool = u_xlatb8.y;
        let x_1873 : bool = u_xlatb8.x;
        u_xlatb53 = (x_1871 & x_1873);
        let x_1875 : vec3<f32> = u_xlat29;
        let x_1878 : vec4<bool> = (-(vec4<f32>(x_1875.z, x_1875.y, x_1875.z, x_1875.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1879 : vec3<bool> = vec3<bool>(x_1878.x, x_1878.y, x_1878.w);
        let x_1880 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1879.x, x_1879.y, x_1880.z, x_1879.z);
        let x_1883 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1883);
        let x_1889 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1889);
        let x_1895 : bool = u_xlatb8.w;
        u_xlat76 = select(0.0f, 1.0f, x_1895);
        let x_1898 : bool = u_xlatb8.z;
        if (x_1898) {
          let x_1903 : f32 = u_xlat8.y;
          x_1899 = x_1903;
        } else {
          let x_1905 : f32 = u_xlat76;
          x_1899 = x_1905;
        }
        let x_1906 : f32 = x_1899;
        u_xlat76 = x_1906;
        let x_1907 : bool = u_xlatb53;
        if (x_1907) {
          let x_1912 : f32 = u_xlat8.x;
          x_1908 = x_1912;
        } else {
          let x_1914 : f32 = u_xlat76;
          x_1908 = x_1914;
        }
        let x_1915 : f32 = x_1908;
        u_xlat53.x = x_1915;
        let x_1917 : i32 = u_xlati6;
        let x_1919 : f32 = x_236.x_AdditionalShadowParams[x_1917].w;
        u_xlat76 = trunc(x_1919);
        let x_1922 : f32 = u_xlat53.x;
        let x_1923 : f32 = u_xlat76;
        u_xlat53.x = (x_1922 + x_1923);
        let x_1927 : f32 = u_xlat53.x;
        u_xlati30 = i32(x_1927);
      }
      let x_1929 : i32 = u_xlati30;
      u_xlati30 = (x_1929 << bitcast<u32>(2i));
      let x_1931 : vec3<f32> = vs_TEXCOORD1;
      let x_1934 : i32 = u_xlati30;
      let x_1937 : i32 = u_xlati30;
      let x_1941 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_1934 + 1i) / 4i)][((x_1937 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1931.y, x_1931.y, x_1931.y, x_1931.y) * x_1941);
      let x_1943 : i32 = u_xlati30;
      let x_1945 : i32 = u_xlati30;
      let x_1948 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[(x_1943 / 4i)][(x_1945 % 4i)];
      let x_1949 : vec3<f32> = vs_TEXCOORD1;
      let x_1952 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1948 * vec4<f32>(x_1949.x, x_1949.x, x_1949.x, x_1949.x)) + x_1952);
      let x_1954 : i32 = u_xlati30;
      let x_1957 : i32 = u_xlati30;
      let x_1961 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_1954 + 2i) / 4i)][((x_1957 + 2i) % 4i)];
      let x_1962 : vec3<f32> = vs_TEXCOORD1;
      let x_1965 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1961 * vec4<f32>(x_1962.z, x_1962.z, x_1962.z, x_1962.z)) + x_1965);
      let x_1967 : vec4<f32> = u_xlat8;
      let x_1968 : i32 = u_xlati30;
      let x_1971 : i32 = u_xlati30;
      let x_1975 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_1968 + 3i) / 4i)][((x_1971 + 3i) % 4i)];
      u_xlat8 = (x_1967 + x_1975);
      let x_1977 : vec4<f32> = u_xlat8;
      let x_1979 : vec4<f32> = u_xlat8;
      u_xlat30 = (vec3<f32>(x_1977.x, x_1977.y, x_1977.z) / vec3<f32>(x_1979.w, x_1979.w, x_1979.w));
      let x_1982 : i32 = u_xlati6;
      let x_1984 : f32 = x_236.x_AdditionalShadowParams[x_1982].y;
      u_xlatb8.x = (0.0f < x_1984);
      let x_1988 : bool = u_xlatb8.x;
      if (x_1988) {
        let x_1991 : i32 = u_xlati6;
        let x_1993 : f32 = x_236.x_AdditionalShadowParams[x_1991].y;
        u_xlatb8.x = (1.0f == x_1993);
        let x_1997 : bool = u_xlatb8.x;
        if (x_1997) {
          let x_2000 : vec3<f32> = u_xlat30;
          let x_2004 : vec4<f32> = x_236.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2000.x, x_2000.y, x_2000.x, x_2000.y) + x_2004);
          let x_2007 : vec4<f32> = u_xlat8;
          let x_2008 : vec2<f32> = vec2<f32>(x_2007.x, x_2007.y);
          let x_2010 : f32 = u_xlat30.z;
          txVec30 = vec3<f32>(x_2008.x, x_2008.y, x_2010);
          let x_2018 : vec3<f32> = txVec30;
          let x_2020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2018.xy, x_2018.z);
          u_xlat9.x = x_2020;
          let x_2023 : vec4<f32> = u_xlat8;
          let x_2024 : vec2<f32> = vec2<f32>(x_2023.z, x_2023.w);
          let x_2026 : f32 = u_xlat30.z;
          txVec31 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
          let x_2033 : vec3<f32> = txVec31;
          let x_2035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
          u_xlat9.y = x_2035;
          let x_2037 : vec3<f32> = u_xlat30;
          let x_2041 : vec4<f32> = x_236.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2037.x, x_2037.y, x_2037.x, x_2037.y) + x_2041);
          let x_2044 : vec4<f32> = u_xlat8;
          let x_2045 : vec2<f32> = vec2<f32>(x_2044.x, x_2044.y);
          let x_2047 : f32 = u_xlat30.z;
          txVec32 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
          let x_2054 : vec3<f32> = txVec32;
          let x_2056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
          u_xlat9.z = x_2056;
          let x_2059 : vec4<f32> = u_xlat8;
          let x_2060 : vec2<f32> = vec2<f32>(x_2059.z, x_2059.w);
          let x_2062 : f32 = u_xlat30.z;
          txVec33 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
          let x_2069 : vec3<f32> = txVec33;
          let x_2071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
          u_xlat9.w = x_2071;
          let x_2073 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(x_2073, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2078 : i32 = u_xlati6;
          let x_2080 : f32 = x_236.x_AdditionalShadowParams[x_2078].y;
          u_xlatb31 = (2.0f == x_2080);
          let x_2082 : bool = u_xlatb31;
          if (x_2082) {
            let x_2086 : vec3<f32> = u_xlat30;
            let x_2090 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2090.z, x_2090.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2094 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2094);
            let x_2096 : vec3<f32> = u_xlat30;
            let x_2099 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2102 : vec2<f32> = u_xlat31;
            let x_2104 : vec2<f32> = ((vec2<f32>(x_2096.x, x_2096.y) * vec2<f32>(x_2099.z, x_2099.w)) + -(x_2102));
            let x_2105 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
            let x_2107 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2107.x, x_2107.x, x_2107.y, x_2107.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2110 : vec4<f32> = u_xlat10;
            let x_2112 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2110.x, x_2110.x, x_2110.z, x_2110.z) * vec4<f32>(x_2112.x, x_2112.x, x_2112.z, x_2112.z));
            let x_2116 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2116.y, x_2116.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2119 : vec4<f32> = u_xlat11;
            let x_2122 : vec4<f32> = u_xlat9;
            let x_2125 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2122.x, x_2122.y)));
            let x_2126 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2125.x, x_2126.y, x_2125.y, x_2126.w);
            let x_2128 : vec4<f32> = u_xlat9;
            let x_2131 : vec2<f32> = (-(vec2<f32>(x_2128.x, x_2128.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2132 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
            let x_2135 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2135.x, x_2135.y), vec2<f32>(0.0f, 0.0f));
            let x_2138 : vec2<f32> = u_xlat57;
            let x_2140 : vec2<f32> = u_xlat57;
            let x_2142 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2138) * x_2140) + vec2<f32>(x_2142.x, x_2142.y));
            let x_2145 : vec4<f32> = u_xlat9;
            let x_2147 : vec2<f32> = max(vec2<f32>(x_2145.x, x_2145.y), vec2<f32>(0.0f, 0.0f));
            let x_2148 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
            let x_2150 : vec4<f32> = u_xlat9;
            let x_2153 : vec4<f32> = u_xlat9;
            let x_2156 : vec4<f32> = u_xlat10;
            let x_2158 : vec2<f32> = ((-(vec2<f32>(x_2150.x, x_2150.y)) * vec2<f32>(x_2153.x, x_2153.y)) + vec2<f32>(x_2156.y, x_2156.w));
            let x_2159 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2158.x, x_2158.y, x_2159.z, x_2159.w);
            let x_2161 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2161 + vec2<f32>(1.0f, 1.0f));
            let x_2163 : vec4<f32> = u_xlat9;
            let x_2165 : vec2<f32> = (vec2<f32>(x_2163.x, x_2163.y) + vec2<f32>(1.0f, 1.0f));
            let x_2166 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
            let x_2168 : vec4<f32> = u_xlat10;
            let x_2170 : vec2<f32> = (vec2<f32>(x_2168.x, x_2168.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2171 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2170.x, x_2170.y, x_2171.z, x_2171.w);
            let x_2173 : vec4<f32> = u_xlat11;
            let x_2175 : vec2<f32> = (vec2<f32>(x_2173.x, x_2173.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2176 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
            let x_2178 : vec2<f32> = u_xlat57;
            let x_2179 : vec2<f32> = (x_2178 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2180 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
            let x_2182 : vec4<f32> = u_xlat9;
            let x_2184 : vec2<f32> = (vec2<f32>(x_2182.x, x_2182.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2185 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2184.x, x_2184.y, x_2185.z, x_2185.w);
            let x_2187 : vec4<f32> = u_xlat10;
            let x_2189 : vec2<f32> = (vec2<f32>(x_2187.y, x_2187.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2190 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2190.w);
            let x_2193 : f32 = u_xlat11.x;
            u_xlat12.z = x_2193;
            let x_2196 : f32 = u_xlat9.x;
            u_xlat12.w = x_2196;
            let x_2199 : f32 = u_xlat14.x;
            u_xlat13.z = x_2199;
            let x_2202 : f32 = u_xlat55.x;
            u_xlat13.w = x_2202;
            let x_2204 : vec4<f32> = u_xlat12;
            let x_2206 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2204.z, x_2204.w, x_2204.x, x_2204.z) + vec4<f32>(x_2206.z, x_2206.w, x_2206.x, x_2206.z));
            let x_2210 : f32 = u_xlat12.y;
            u_xlat11.z = x_2210;
            let x_2213 : f32 = u_xlat9.y;
            u_xlat11.w = x_2213;
            let x_2216 : f32 = u_xlat13.y;
            u_xlat14.z = x_2216;
            let x_2219 : f32 = u_xlat55.y;
            u_xlat14.w = x_2219;
            let x_2221 : vec4<f32> = u_xlat11;
            let x_2223 : vec4<f32> = u_xlat14;
            let x_2225 : vec3<f32> = (vec3<f32>(x_2221.z, x_2221.y, x_2221.w) + vec3<f32>(x_2223.z, x_2223.y, x_2223.w));
            let x_2226 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
            let x_2228 : vec4<f32> = u_xlat13;
            let x_2230 : vec4<f32> = u_xlat10;
            let x_2232 : vec3<f32> = (vec3<f32>(x_2228.x, x_2228.z, x_2228.w) / vec3<f32>(x_2230.z, x_2230.w, x_2230.y));
            let x_2233 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
            let x_2235 : vec4<f32> = u_xlat11;
            let x_2237 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.y, x_2235.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2238 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
            let x_2240 : vec4<f32> = u_xlat14;
            let x_2242 : vec4<f32> = u_xlat9;
            let x_2244 : vec3<f32> = (vec3<f32>(x_2240.z, x_2240.y, x_2240.w) / vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
            let x_2245 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
            let x_2247 : vec4<f32> = u_xlat12;
            let x_2249 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2250 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
            let x_2252 : vec4<f32> = u_xlat11;
            let x_2255 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2257 : vec3<f32> = (vec3<f32>(x_2252.y, x_2252.x, x_2252.z) * vec3<f32>(x_2255.x, x_2255.x, x_2255.x));
            let x_2258 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2257.x, x_2257.y, x_2257.z, x_2258.w);
            let x_2260 : vec4<f32> = u_xlat12;
            let x_2263 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2265 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.z) * vec3<f32>(x_2263.y, x_2263.y, x_2263.y));
            let x_2266 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
            let x_2269 : f32 = u_xlat12.x;
            u_xlat11.w = x_2269;
            let x_2271 : vec2<f32> = u_xlat31;
            let x_2274 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2277 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2271.x, x_2271.y, x_2271.x, x_2271.y) * vec4<f32>(x_2274.x, x_2274.y, x_2274.x, x_2274.y)) + vec4<f32>(x_2277.y, x_2277.w, x_2277.x, x_2277.w));
            let x_2280 : vec2<f32> = u_xlat31;
            let x_2282 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2285 : vec4<f32> = u_xlat11;
            let x_2287 : vec2<f32> = ((x_2280 * vec2<f32>(x_2282.x, x_2282.y)) + vec2<f32>(x_2285.z, x_2285.w));
            let x_2288 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
            let x_2291 : f32 = u_xlat11.y;
            u_xlat12.w = x_2291;
            let x_2293 : vec4<f32> = u_xlat12;
            let x_2294 : vec2<f32> = vec2<f32>(x_2293.y, x_2293.z);
            let x_2295 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2295.x, x_2294.x, x_2295.z, x_2294.y);
            let x_2297 : vec2<f32> = u_xlat31;
            let x_2300 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2303 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2297.x, x_2297.y, x_2297.x, x_2297.y) * vec4<f32>(x_2300.x, x_2300.y, x_2300.x, x_2300.y)) + vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2303.y));
            let x_2306 : vec2<f32> = u_xlat31;
            let x_2309 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2312 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) * vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y)) + vec4<f32>(x_2312.w, x_2312.y, x_2312.w, x_2312.z));
            let x_2315 : vec2<f32> = u_xlat31;
            let x_2318 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2321 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y) * vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.y)) + vec4<f32>(x_2321.x, x_2321.w, x_2321.z, x_2321.w));
            let x_2324 : vec4<f32> = u_xlat9;
            let x_2326 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2324.x, x_2324.x, x_2324.x, x_2324.y) * vec4<f32>(x_2326.z, x_2326.w, x_2326.y, x_2326.z));
            let x_2329 : vec4<f32> = u_xlat9;
            let x_2331 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2329.y, x_2329.y, x_2329.z, x_2329.z) * x_2331);
            let x_2334 : f32 = u_xlat9.z;
            let x_2336 : f32 = u_xlat10.y;
            u_xlat31.x = (x_2334 * x_2336);
            let x_2340 : vec4<f32> = u_xlat13;
            let x_2341 : vec2<f32> = vec2<f32>(x_2340.x, x_2340.y);
            let x_2343 : f32 = u_xlat30.z;
            txVec34 = vec3<f32>(x_2341.x, x_2341.y, x_2343);
            let x_2351 : vec3<f32> = txVec34;
            let x_2353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2351.xy, x_2351.z);
            u_xlat54 = x_2353;
            let x_2355 : vec4<f32> = u_xlat13;
            let x_2356 : vec2<f32> = vec2<f32>(x_2355.z, x_2355.w);
            let x_2358 : f32 = u_xlat30.z;
            txVec35 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
            let x_2366 : vec3<f32> = txVec35;
            let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
            u_xlat77 = x_2368;
            let x_2369 : f32 = u_xlat77;
            let x_2371 : f32 = u_xlat16.y;
            u_xlat77 = (x_2369 * x_2371);
            let x_2374 : f32 = u_xlat16.x;
            let x_2375 : f32 = u_xlat54;
            let x_2377 : f32 = u_xlat77;
            u_xlat54 = ((x_2374 * x_2375) + x_2377);
            let x_2380 : vec4<f32> = u_xlat14;
            let x_2381 : vec2<f32> = vec2<f32>(x_2380.x, x_2380.y);
            let x_2383 : f32 = u_xlat30.z;
            txVec36 = vec3<f32>(x_2381.x, x_2381.y, x_2383);
            let x_2390 : vec3<f32> = txVec36;
            let x_2392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2390.xy, x_2390.z);
            u_xlat77 = x_2392;
            let x_2394 : f32 = u_xlat16.z;
            let x_2395 : f32 = u_xlat77;
            let x_2397 : f32 = u_xlat54;
            u_xlat54 = ((x_2394 * x_2395) + x_2397);
            let x_2400 : vec4<f32> = u_xlat12;
            let x_2401 : vec2<f32> = vec2<f32>(x_2400.x, x_2400.y);
            let x_2403 : f32 = u_xlat30.z;
            txVec37 = vec3<f32>(x_2401.x, x_2401.y, x_2403);
            let x_2410 : vec3<f32> = txVec37;
            let x_2412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2410.xy, x_2410.z);
            u_xlat77 = x_2412;
            let x_2414 : f32 = u_xlat16.w;
            let x_2415 : f32 = u_xlat77;
            let x_2417 : f32 = u_xlat54;
            u_xlat54 = ((x_2414 * x_2415) + x_2417);
            let x_2420 : vec4<f32> = u_xlat15;
            let x_2421 : vec2<f32> = vec2<f32>(x_2420.x, x_2420.y);
            let x_2423 : f32 = u_xlat30.z;
            txVec38 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
            let x_2430 : vec3<f32> = txVec38;
            let x_2432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2430.xy, x_2430.z);
            u_xlat77 = x_2432;
            let x_2434 : f32 = u_xlat17.x;
            let x_2435 : f32 = u_xlat77;
            let x_2437 : f32 = u_xlat54;
            u_xlat54 = ((x_2434 * x_2435) + x_2437);
            let x_2440 : vec4<f32> = u_xlat15;
            let x_2441 : vec2<f32> = vec2<f32>(x_2440.z, x_2440.w);
            let x_2443 : f32 = u_xlat30.z;
            txVec39 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
            let x_2450 : vec3<f32> = txVec39;
            let x_2452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2450.xy, x_2450.z);
            u_xlat77 = x_2452;
            let x_2454 : f32 = u_xlat17.y;
            let x_2455 : f32 = u_xlat77;
            let x_2457 : f32 = u_xlat54;
            u_xlat54 = ((x_2454 * x_2455) + x_2457);
            let x_2460 : vec4<f32> = u_xlat12;
            let x_2461 : vec2<f32> = vec2<f32>(x_2460.z, x_2460.w);
            let x_2463 : f32 = u_xlat30.z;
            txVec40 = vec3<f32>(x_2461.x, x_2461.y, x_2463);
            let x_2470 : vec3<f32> = txVec40;
            let x_2472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2470.xy, x_2470.z);
            u_xlat77 = x_2472;
            let x_2474 : f32 = u_xlat17.z;
            let x_2475 : f32 = u_xlat77;
            let x_2477 : f32 = u_xlat54;
            u_xlat54 = ((x_2474 * x_2475) + x_2477);
            let x_2480 : vec4<f32> = u_xlat11;
            let x_2481 : vec2<f32> = vec2<f32>(x_2480.x, x_2480.y);
            let x_2483 : f32 = u_xlat30.z;
            txVec41 = vec3<f32>(x_2481.x, x_2481.y, x_2483);
            let x_2490 : vec3<f32> = txVec41;
            let x_2492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2490.xy, x_2490.z);
            u_xlat77 = x_2492;
            let x_2494 : f32 = u_xlat17.w;
            let x_2495 : f32 = u_xlat77;
            let x_2497 : f32 = u_xlat54;
            u_xlat54 = ((x_2494 * x_2495) + x_2497);
            let x_2500 : vec4<f32> = u_xlat11;
            let x_2501 : vec2<f32> = vec2<f32>(x_2500.z, x_2500.w);
            let x_2503 : f32 = u_xlat30.z;
            txVec42 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
            let x_2510 : vec3<f32> = txVec42;
            let x_2512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
            u_xlat77 = x_2512;
            let x_2514 : f32 = u_xlat31.x;
            let x_2515 : f32 = u_xlat77;
            let x_2517 : f32 = u_xlat54;
            u_xlat8.x = ((x_2514 * x_2515) + x_2517);
          } else {
            let x_2521 : vec3<f32> = u_xlat30;
            let x_2524 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(x_2524.z, x_2524.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2528 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2528);
            let x_2530 : vec3<f32> = u_xlat30;
            let x_2533 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2536 : vec2<f32> = u_xlat31;
            let x_2538 : vec2<f32> = ((vec2<f32>(x_2530.x, x_2530.y) * vec2<f32>(x_2533.z, x_2533.w)) + -(x_2536));
            let x_2539 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
            let x_2541 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2541.x, x_2541.x, x_2541.y, x_2541.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2544 : vec4<f32> = u_xlat10;
            let x_2546 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2544.x, x_2544.x, x_2544.z, x_2544.z) * vec4<f32>(x_2546.x, x_2546.x, x_2546.z, x_2546.z));
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2551 : vec2<f32> = (vec2<f32>(x_2549.y, x_2549.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2552 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2552.x, x_2551.x, x_2552.z, x_2551.y);
            let x_2554 : vec4<f32> = u_xlat11;
            let x_2557 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2554.x, x_2554.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2557.x, x_2557.y)));
            let x_2561 : vec4<f32> = u_xlat9;
            let x_2564 : vec2<f32> = (-(vec2<f32>(x_2561.x, x_2561.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2565 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2564.x, x_2565.y, x_2564.y, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat9;
            let x_2569 : vec2<f32> = min(vec2<f32>(x_2567.x, x_2567.y), vec2<f32>(0.0f, 0.0f));
            let x_2570 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2569.x, x_2569.y, x_2570.z, x_2570.w);
            let x_2572 : vec4<f32> = u_xlat11;
            let x_2575 : vec4<f32> = u_xlat11;
            let x_2578 : vec4<f32> = u_xlat10;
            let x_2580 : vec2<f32> = ((-(vec2<f32>(x_2572.x, x_2572.y)) * vec2<f32>(x_2575.x, x_2575.y)) + vec2<f32>(x_2578.x, x_2578.z));
            let x_2581 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2580.x, x_2581.y, x_2580.y, x_2581.w);
            let x_2583 : vec4<f32> = u_xlat9;
            let x_2585 : vec2<f32> = max(vec2<f32>(x_2583.x, x_2583.y), vec2<f32>(0.0f, 0.0f));
            let x_2586 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2585.x, x_2585.y, x_2586.z, x_2586.w);
            let x_2588 : vec4<f32> = u_xlat11;
            let x_2591 : vec4<f32> = u_xlat11;
            let x_2594 : vec4<f32> = u_xlat10;
            let x_2596 : vec2<f32> = ((-(vec2<f32>(x_2588.x, x_2588.y)) * vec2<f32>(x_2591.x, x_2591.y)) + vec2<f32>(x_2594.y, x_2594.w));
            let x_2597 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2597.x, x_2596.x, x_2597.z, x_2596.y);
            let x_2599 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2599 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2603 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2603 * 0.08163200318813323975f);
            let x_2606 : vec2<f32> = u_xlat55;
            let x_2608 : vec2<f32> = (vec2<f32>(x_2606.y, x_2606.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2609 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2611 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2611.x, x_2611.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2615 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2615 * 0.08163200318813323975f);
            let x_2619 : f32 = u_xlat13.y;
            u_xlat11.x = x_2619;
            let x_2621 : vec4<f32> = u_xlat9;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2621.x, x_2621.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2625 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2625.x, x_2624.x, x_2625.z, x_2624.y);
            let x_2627 : vec4<f32> = u_xlat9;
            let x_2630 : vec2<f32> = ((vec2<f32>(x_2627.x, x_2627.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2631 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2630.x, x_2631.y, x_2630.y, x_2631.w);
            let x_2634 : f32 = u_xlat55.x;
            u_xlat10.y = x_2634;
            let x_2637 : f32 = u_xlat12.y;
            u_xlat10.w = x_2637;
            let x_2639 : vec4<f32> = u_xlat10;
            let x_2640 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2639 + x_2640);
            let x_2642 : vec4<f32> = u_xlat9;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2642.y, x_2642.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2646 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2646.x, x_2645.x, x_2646.z, x_2645.y);
            let x_2648 : vec4<f32> = u_xlat9;
            let x_2651 : vec2<f32> = ((vec2<f32>(x_2648.y, x_2648.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2652 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2651.x, x_2652.y, x_2651.y, x_2652.w);
            let x_2655 : f32 = u_xlat55.y;
            u_xlat12.y = x_2655;
            let x_2657 : vec4<f32> = u_xlat12;
            let x_2658 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2657 + x_2658);
            let x_2660 : vec4<f32> = u_xlat10;
            let x_2661 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2660 / x_2661);
            let x_2663 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2663 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2665 : vec4<f32> = u_xlat12;
            let x_2666 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2665 / x_2666);
            let x_2668 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2668 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2670 : vec4<f32> = u_xlat10;
            let x_2673 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2670.w, x_2670.x, x_2670.y, x_2670.z) * vec4<f32>(x_2673.x, x_2673.x, x_2673.x, x_2673.x));
            let x_2676 : vec4<f32> = u_xlat12;
            let x_2679 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2676.x, x_2676.w, x_2676.y, x_2676.z) * vec4<f32>(x_2679.y, x_2679.y, x_2679.y, x_2679.y));
            let x_2682 : vec4<f32> = u_xlat10;
            let x_2683 : vec3<f32> = vec3<f32>(x_2682.y, x_2682.z, x_2682.w);
            let x_2684 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2683.x, x_2684.y, x_2683.y, x_2683.z);
            let x_2687 : f32 = u_xlat12.x;
            u_xlat13.y = x_2687;
            let x_2689 : vec2<f32> = u_xlat31;
            let x_2692 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y) * vec4<f32>(x_2692.x, x_2692.y, x_2692.x, x_2692.y)) + vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2695.y));
            let x_2698 : vec2<f32> = u_xlat31;
            let x_2700 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat13;
            let x_2705 : vec2<f32> = ((x_2698 * vec2<f32>(x_2700.x, x_2700.y)) + vec2<f32>(x_2703.w, x_2703.y));
            let x_2706 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
            let x_2709 : f32 = u_xlat13.y;
            u_xlat10.y = x_2709;
            let x_2712 : f32 = u_xlat12.z;
            u_xlat13.y = x_2712;
            let x_2714 : vec2<f32> = u_xlat31;
            let x_2717 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2720 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2714.x, x_2714.y, x_2714.x, x_2714.y) * vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y)) + vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2720.y));
            let x_2724 : vec2<f32> = u_xlat31;
            let x_2726 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2729 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2724 * vec2<f32>(x_2726.x, x_2726.y)) + vec2<f32>(x_2729.w, x_2729.y));
            let x_2733 : f32 = u_xlat13.y;
            u_xlat10.z = x_2733;
            let x_2735 : vec2<f32> = u_xlat31;
            let x_2738 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2741 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y) * vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.y)) + vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.z));
            let x_2745 : f32 = u_xlat12.w;
            u_xlat13.y = x_2745;
            let x_2748 : vec2<f32> = u_xlat31;
            let x_2751 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2754 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y) * vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y)) + vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2754.y));
            let x_2758 : vec2<f32> = u_xlat31;
            let x_2760 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2763 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2758 * vec2<f32>(x_2760.x, x_2760.y)) + vec2<f32>(x_2763.w, x_2763.y));
            let x_2767 : f32 = u_xlat13.y;
            u_xlat10.w = x_2767;
            let x_2770 : vec2<f32> = u_xlat31;
            let x_2772 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2770 * vec2<f32>(x_2772.x, x_2772.y)) + vec2<f32>(x_2775.x, x_2775.w));
            let x_2778 : vec4<f32> = u_xlat13;
            let x_2779 : vec3<f32> = vec3<f32>(x_2778.x, x_2778.z, x_2778.w);
            let x_2780 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2779.x, x_2780.y, x_2779.y, x_2779.z);
            let x_2782 : vec2<f32> = u_xlat31;
            let x_2785 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y) * vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y)) + vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2788.y));
            let x_2791 : vec2<f32> = u_xlat31;
            let x_2793 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2791 * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.w, x_2796.y));
            let x_2800 : f32 = u_xlat10.x;
            u_xlat12.x = x_2800;
            let x_2802 : vec2<f32> = u_xlat31;
            let x_2804 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2807 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2802 * vec2<f32>(x_2804.x, x_2804.y)) + vec2<f32>(x_2807.x, x_2807.y));
            let x_2811 : vec4<f32> = u_xlat9;
            let x_2813 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2811.x, x_2811.x, x_2811.x, x_2811.x) * x_2813);
            let x_2816 : vec4<f32> = u_xlat9;
            let x_2818 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2816.y, x_2816.y, x_2816.y, x_2816.y) * x_2818);
            let x_2821 : vec4<f32> = u_xlat9;
            let x_2823 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2821.z, x_2821.z, x_2821.z, x_2821.z) * x_2823);
            let x_2825 : vec4<f32> = u_xlat9;
            let x_2827 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2825.w, x_2825.w, x_2825.w, x_2825.w) * x_2827);
            let x_2830 : vec4<f32> = u_xlat14;
            let x_2831 : vec2<f32> = vec2<f32>(x_2830.x, x_2830.y);
            let x_2833 : f32 = u_xlat30.z;
            txVec43 = vec3<f32>(x_2831.x, x_2831.y, x_2833);
            let x_2840 : vec3<f32> = txVec43;
            let x_2842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2840.xy, x_2840.z);
            u_xlat77 = x_2842;
            let x_2844 : vec4<f32> = u_xlat14;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.z, x_2844.w);
            let x_2847 : f32 = u_xlat30.z;
            txVec44 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec44;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat10.x = x_2856;
            let x_2859 : f32 = u_xlat10.x;
            let x_2861 : f32 = u_xlat20.y;
            u_xlat10.x = (x_2859 * x_2861);
            let x_2865 : f32 = u_xlat20.x;
            let x_2866 : f32 = u_xlat77;
            let x_2869 : f32 = u_xlat10.x;
            u_xlat77 = ((x_2865 * x_2866) + x_2869);
            let x_2872 : vec4<f32> = u_xlat15;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
            let x_2875 : f32 = u_xlat30.z;
            txVec45 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec45;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat10.x = x_2884;
            let x_2887 : f32 = u_xlat20.z;
            let x_2889 : f32 = u_xlat10.x;
            let x_2891 : f32 = u_xlat77;
            u_xlat77 = ((x_2887 * x_2889) + x_2891);
            let x_2894 : vec4<f32> = u_xlat17;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
            let x_2897 : f32 = u_xlat30.z;
            txVec46 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec46;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat10.x = x_2906;
            let x_2909 : f32 = u_xlat20.w;
            let x_2911 : f32 = u_xlat10.x;
            let x_2913 : f32 = u_xlat77;
            u_xlat77 = ((x_2909 * x_2911) + x_2913);
            let x_2916 : vec4<f32> = u_xlat16;
            let x_2917 : vec2<f32> = vec2<f32>(x_2916.x, x_2916.y);
            let x_2919 : f32 = u_xlat30.z;
            txVec47 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
            let x_2926 : vec3<f32> = txVec47;
            let x_2928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
            u_xlat10.x = x_2928;
            let x_2931 : f32 = u_xlat21.x;
            let x_2933 : f32 = u_xlat10.x;
            let x_2935 : f32 = u_xlat77;
            u_xlat77 = ((x_2931 * x_2933) + x_2935);
            let x_2938 : vec4<f32> = u_xlat16;
            let x_2939 : vec2<f32> = vec2<f32>(x_2938.z, x_2938.w);
            let x_2941 : f32 = u_xlat30.z;
            txVec48 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec48;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat10.x = x_2950;
            let x_2953 : f32 = u_xlat21.y;
            let x_2955 : f32 = u_xlat10.x;
            let x_2957 : f32 = u_xlat77;
            u_xlat77 = ((x_2953 * x_2955) + x_2957);
            let x_2960 : vec2<f32> = u_xlat61;
            let x_2962 : f32 = u_xlat30.z;
            txVec49 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
            let x_2969 : vec3<f32> = txVec49;
            let x_2971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
            u_xlat10.x = x_2971;
            let x_2974 : f32 = u_xlat21.z;
            let x_2976 : f32 = u_xlat10.x;
            let x_2978 : f32 = u_xlat77;
            u_xlat77 = ((x_2974 * x_2976) + x_2978);
            let x_2981 : vec4<f32> = u_xlat17;
            let x_2982 : vec2<f32> = vec2<f32>(x_2981.z, x_2981.w);
            let x_2984 : f32 = u_xlat30.z;
            txVec50 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
            let x_2991 : vec3<f32> = txVec50;
            let x_2993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
            u_xlat10.x = x_2993;
            let x_2996 : f32 = u_xlat21.w;
            let x_2998 : f32 = u_xlat10.x;
            let x_3000 : f32 = u_xlat77;
            u_xlat77 = ((x_2996 * x_2998) + x_3000);
            let x_3003 : vec4<f32> = u_xlat18;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
            let x_3006 : f32 = u_xlat30.z;
            txVec51 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec51;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat10.x = x_3015;
            let x_3018 : f32 = u_xlat22.x;
            let x_3020 : f32 = u_xlat10.x;
            let x_3022 : f32 = u_xlat77;
            u_xlat77 = ((x_3018 * x_3020) + x_3022);
            let x_3025 : vec4<f32> = u_xlat18;
            let x_3026 : vec2<f32> = vec2<f32>(x_3025.z, x_3025.w);
            let x_3028 : f32 = u_xlat30.z;
            txVec52 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
            let x_3035 : vec3<f32> = txVec52;
            let x_3037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
            u_xlat10.x = x_3037;
            let x_3040 : f32 = u_xlat22.y;
            let x_3042 : f32 = u_xlat10.x;
            let x_3044 : f32 = u_xlat77;
            u_xlat77 = ((x_3040 * x_3042) + x_3044);
            let x_3047 : vec2<f32> = u_xlat33;
            let x_3049 : f32 = u_xlat30.z;
            txVec53 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec53;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat10.x = x_3058;
            let x_3061 : f32 = u_xlat22.z;
            let x_3063 : f32 = u_xlat10.x;
            let x_3065 : f32 = u_xlat77;
            u_xlat77 = ((x_3061 * x_3063) + x_3065);
            let x_3068 : vec2<f32> = u_xlat19;
            let x_3070 : f32 = u_xlat30.z;
            txVec54 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
            let x_3077 : vec3<f32> = txVec54;
            let x_3079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
            u_xlat10.x = x_3079;
            let x_3082 : f32 = u_xlat22.w;
            let x_3084 : f32 = u_xlat10.x;
            let x_3086 : f32 = u_xlat77;
            u_xlat77 = ((x_3082 * x_3084) + x_3086);
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3090 : vec2<f32> = vec2<f32>(x_3089.x, x_3089.y);
            let x_3092 : f32 = u_xlat30.z;
            txVec55 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3099 : vec3<f32> = txVec55;
            let x_3101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
            u_xlat10.x = x_3101;
            let x_3104 : f32 = u_xlat9.x;
            let x_3106 : f32 = u_xlat10.x;
            let x_3108 : f32 = u_xlat77;
            u_xlat77 = ((x_3104 * x_3106) + x_3108);
            let x_3111 : vec4<f32> = u_xlat13;
            let x_3112 : vec2<f32> = vec2<f32>(x_3111.z, x_3111.w);
            let x_3114 : f32 = u_xlat30.z;
            txVec56 = vec3<f32>(x_3112.x, x_3112.y, x_3114);
            let x_3121 : vec3<f32> = txVec56;
            let x_3123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3121.xy, x_3121.z);
            u_xlat9.x = x_3123;
            let x_3126 : f32 = u_xlat9.y;
            let x_3128 : f32 = u_xlat9.x;
            let x_3130 : f32 = u_xlat77;
            u_xlat77 = ((x_3126 * x_3128) + x_3130);
            let x_3133 : vec2<f32> = u_xlat58;
            let x_3135 : f32 = u_xlat30.z;
            txVec57 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec57;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat9.x = x_3144;
            let x_3147 : f32 = u_xlat9.z;
            let x_3149 : f32 = u_xlat9.x;
            let x_3151 : f32 = u_xlat77;
            u_xlat77 = ((x_3147 * x_3149) + x_3151);
            let x_3154 : vec2<f32> = u_xlat31;
            let x_3156 : f32 = u_xlat30.z;
            txVec58 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec58;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat31.x = x_3165;
            let x_3168 : f32 = u_xlat9.w;
            let x_3170 : f32 = u_xlat31.x;
            let x_3172 : f32 = u_xlat77;
            u_xlat8.x = ((x_3168 * x_3170) + x_3172);
          }
        }
      } else {
        let x_3177 : vec3<f32> = u_xlat30;
        let x_3178 : vec2<f32> = vec2<f32>(x_3177.x, x_3177.y);
        let x_3180 : f32 = u_xlat30.z;
        txVec59 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
        let x_3187 : vec3<f32> = txVec59;
        let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
        u_xlat8.x = x_3189;
      }
      let x_3191 : i32 = u_xlati6;
      let x_3193 : f32 = x_236.x_AdditionalShadowParams[x_3191].x;
      u_xlat30.x = (1.0f + -(x_3193));
      let x_3198 : f32 = u_xlat8.x;
      let x_3199 : i32 = u_xlati6;
      let x_3201 : f32 = x_236.x_AdditionalShadowParams[x_3199].x;
      let x_3204 : f32 = u_xlat30.x;
      u_xlat30.x = ((x_3198 * x_3201) + x_3204);
      let x_3208 : f32 = u_xlat30.z;
      u_xlatb53 = (0.0f >= x_3208);
      let x_3212 : f32 = u_xlat30.z;
      u_xlatb76 = (x_3212 >= 1.0f);
      let x_3214 : bool = u_xlatb76;
      let x_3215 : bool = u_xlatb53;
      u_xlatb53 = (x_3214 | x_3215);
      let x_3217 : bool = u_xlatb53;
      if (x_3217) {
        x_3218 = 1.0f;
      } else {
        let x_3223 : f32 = u_xlat30.x;
        x_3218 = x_3223;
      }
      let x_3224 : f32 = x_3218;
      u_xlat30.x = x_3224;
    } else {
      u_xlat30.x = 1.0f;
    }
    let x_3229 : f32 = u_xlat30.x;
    u_xlat53.x = (-(x_3229) + 1.0f);
    let x_3233 : f32 = u_xlat72;
    let x_3235 : f32 = u_xlat53.x;
    let x_3238 : f32 = u_xlat30.x;
    u_xlat30.x = ((x_3233 * x_3235) + x_3238);
    let x_3242 : f32 = u_xlat30.x;
    let x_3244 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3242 * x_3244);
    let x_3247 : vec4<f32> = u_xlat7;
    let x_3249 : i32 = u_xlati6;
    let x_3251 : vec4<f32> = x_1737.x_AdditionalLightsColor[x_3249];
    let x_3253 : vec3<f32> = (vec3<f32>(x_3247.x, x_3247.x, x_3247.x) * vec3<f32>(x_3251.x, x_3251.y, x_3251.z));
    let x_3254 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3254.w);
    let x_3256 : vec4<f32> = u_xlat1;
    let x_3258 : vec3<f32> = u_xlat29;
    u_xlat6.x = dot(vec3<f32>(x_3256.x, x_3256.y, x_3256.z), x_3258);
    let x_3262 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3262, 0.0f, 1.0f);
    let x_3265 : vec4<f32> = u_xlat6;
    let x_3267 : vec4<f32> = u_xlat7;
    let x_3269 : vec3<f32> = (vec3<f32>(x_3265.x, x_3265.x, x_3265.x) * vec3<f32>(x_3267.x, x_3267.y, x_3267.z));
    let x_3270 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);
    let x_3272 : vec3<f32> = u_xlat2;
    let x_3273 : f32 = u_xlat71;
    let x_3276 : vec3<f32> = u_xlat29;
    let x_3277 : vec3<f32> = ((x_3272 * vec3<f32>(x_3273, x_3273, x_3273)) + x_3276);
    let x_3278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);
    let x_3281 : vec4<f32> = u_xlat6;
    let x_3283 : vec4<f32> = u_xlat6;
    u_xlat75 = dot(vec3<f32>(x_3281.x, x_3281.y, x_3281.z), vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
    let x_3286 : f32 = u_xlat75;
    u_xlat75 = max(x_3286, 1.17549435e-38f);
    let x_3288 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3288);
    let x_3290 : f32 = u_xlat75;
    let x_3292 : vec4<f32> = u_xlat6;
    let x_3294 : vec3<f32> = (vec3<f32>(x_3290, x_3290, x_3290) * vec3<f32>(x_3292.x, x_3292.y, x_3292.z));
    let x_3295 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3294.x, x_3294.y, x_3294.z, x_3295.w);
    let x_3297 : vec4<f32> = u_xlat1;
    let x_3299 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_3297.x, x_3297.y, x_3297.z), vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
    let x_3304 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3304, 0.0f, 1.0f);
    let x_3308 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_3308);
    let x_3311 : f32 = u_xlat70;
    let x_3313 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3311 * x_3313);
    let x_3317 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_3317);
    let x_3320 : vec4<f32> = u_xlat6;
    let x_3323 : vec4<f32> = x_41.x_SpecColor;
    let x_3325 : vec3<f32> = (vec3<f32>(x_3320.x, x_3320.x, x_3320.x) * vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
    let x_3326 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
    let x_3328 : vec4<f32> = u_xlat6;
    let x_3330 : vec4<f32> = u_xlat7;
    let x_3332 : vec3<f32> = (vec3<f32>(x_3328.x, x_3328.y, x_3328.z) * vec3<f32>(x_3330.x, x_3330.y, x_3330.z));
    let x_3333 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3333.w);
    let x_3335 : vec4<f32> = u_xlat8;
    let x_3337 : vec4<f32> = u_xlat0;
    let x_3340 : vec4<f32> = u_xlat6;
    let x_3342 : vec3<f32> = ((vec3<f32>(x_3335.x, x_3335.y, x_3335.z) * vec3<f32>(x_3337.y, x_3337.z, x_3337.w)) + vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3342.x, x_3342.y, x_3342.z, x_3343.w);
    let x_3345 : vec4<f32> = u_xlat5;
    let x_3347 : vec4<f32> = u_xlat6;
    let x_3349 : vec3<f32> = (vec3<f32>(x_3345.x, x_3345.y, x_3345.z) + vec3<f32>(x_3347.x, x_3347.y, x_3347.z));
    let x_3350 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3349.x, x_3349.y, x_3349.z, x_3350.w);

    continuing {
      let x_3352 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3352 + bitcast<u32>(1i));
    }
  }
  let x_3355 : vec3<f32> = u_xlat3;
  let x_3356 : vec4<f32> = u_xlat0;
  let x_3359 : vec4<f32> = u_xlat4;
  u_xlat23 = ((x_3355 * vec3<f32>(x_3356.y, x_3356.z, x_3356.w)) + vec3<f32>(x_3359.x, x_3359.y, x_3359.z));
  let x_3364 : vec4<f32> = u_xlat5;
  let x_3366 : vec3<f32> = u_xlat23;
  let x_3367 : vec3<f32> = (vec3<f32>(x_3364.x, x_3364.y, x_3364.z) + x_3366);
  let x_3368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3367.x, x_3367.y, x_3367.z, x_3368.w);
  let x_3372 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3372 == 1.0f);
  let x_3374 : bool = u_xlatb23;
  if (x_3374) {
    let x_3379 : f32 = u_xlat0.x;
    x_3375 = x_3379;
  } else {
    x_3375 = 1.0f;
  }
  let x_3381 : f32 = x_3375;
  SV_Target0.w = x_3381;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


