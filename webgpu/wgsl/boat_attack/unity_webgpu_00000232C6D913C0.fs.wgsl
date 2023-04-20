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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_173 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_257 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati52 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_1778 : AdditionalLights;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb29 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
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
  var x_1937 : f32;
  var x_1947 : f32;
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
  var x_3381 : f32;
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
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat24;
    x_98 = x_101;
  } else {
    let x_103 : vec4<f32> = u_xlat2;
    x_98 = vec3<f32>(x_103.x, x_103.y, x_103.z);
  }
  let x_105 : vec3<f32> = x_98;
  u_xlat1 = x_105;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_111);
  let x_113 : f32 = u_xlat70;
  let x_115 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = (vec3<f32>(x_113, x_113, x_113) * x_115);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec3<f32> = u_xlat1;
  let x_120 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat70;
  u_xlat70 = max(x_122, 0.00006103515625f);
  let x_125 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_125);
  let x_130 : f32 = vs_TEXCOORD1.y;
  let x_132 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3 = (x_130 * x_132);
  let x_135 : f32 = x_28.unity_MatrixV[0i].z;
  let x_137 : f32 = vs_TEXCOORD1.x;
  let x_139 : f32 = u_xlat3;
  u_xlat3 = ((x_135 * x_137) + x_139);
  let x_142 : f32 = x_28.unity_MatrixV[2i].z;
  let x_144 : f32 = vs_TEXCOORD1.z;
  let x_146 : f32 = u_xlat3;
  u_xlat3 = ((x_142 * x_144) + x_146);
  let x_148 : f32 = u_xlat3;
  let x_151 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat3 = (x_148 + x_151);
  let x_153 : f32 = u_xlat3;
  let x_157 : f32 = x_28.x_ProjectionParams.y;
  u_xlat3 = (-(x_153) + -(x_157));
  let x_160 : f32 = u_xlat3;
  u_xlat3 = max(x_160, 0.0f);
  let x_162 : f32 = u_xlat3;
  let x_165 : f32 = x_28.unity_FogParams.x;
  u_xlat3 = (x_162 * x_165);
  u_xlat2.w = 1.0f;
  let x_176 : vec4<f32> = x_173.unity_SHAr;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_176, x_177);
  let x_182 : vec4<f32> = x_173.unity_SHAg;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_182, x_183);
  let x_188 : vec4<f32> = x_173.unity_SHAb;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_188, x_189);
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_193.y, x_193.z, x_193.z, x_193.x) * vec4<f32>(x_195.x, x_195.y, x_195.z, x_195.z));
  let x_201 : vec4<f32> = x_173.unity_SHBr;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_173.unity_SHBg;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_173.unity_SHBb;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_213, x_214);
  let x_219 : f32 = u_xlat2.y;
  let x_221 : f32 = u_xlat2.y;
  u_xlat71 = (x_219 * x_221);
  let x_224 : f32 = u_xlat2.x;
  let x_226 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat71;
  u_xlat71 = ((x_224 * x_226) + -(x_228));
  let x_234 : vec4<f32> = x_173.unity_SHC;
  let x_236 : f32 = u_xlat71;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236, x_236, x_236)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec3<f32> = u_xlat26;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_242 + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_246, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_260 : f32 = x_257.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_260);
  let x_262 : bool = u_xlatb71;
  if (x_262) {
    let x_266 : f32 = x_257.x_MainLightShadowParams.y;
    u_xlatb71 = (x_266 == 1.0f);
    let x_268 : bool = u_xlatb71;
    if (x_268) {
      let x_273 : vec4<f32> = vs_TEXCOORD6;
      let x_276 : vec4<f32> = x_257.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_273.x, x_273.y, x_273.x, x_273.y) + x_276);
      let x_279 : vec4<f32> = u_xlat4;
      let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
      let x_282 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_280.x, x_280.y, x_282);
      let x_294 : vec3<f32> = txVec0;
      let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_294.xy, x_294.z);
      u_xlat5.x = x_296;
      let x_299 : vec4<f32> = u_xlat4;
      let x_300 : vec2<f32> = vec2<f32>(x_299.z, x_299.w);
      let x_302 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_300.x, x_300.y, x_302);
      let x_309 : vec3<f32> = txVec1;
      let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_309.xy, x_309.z);
      u_xlat5.y = x_311;
      let x_313 : vec4<f32> = vs_TEXCOORD6;
      let x_316 : vec4<f32> = x_257.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_316);
      let x_319 : vec4<f32> = u_xlat4;
      let x_320 : vec2<f32> = vec2<f32>(x_319.x, x_319.y);
      let x_322 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_320.x, x_320.y, x_322);
      let x_329 : vec3<f32> = txVec2;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat5.z = x_331;
      let x_334 : vec4<f32> = u_xlat4;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec3;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.w = x_346;
      let x_348 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_348, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_355 : f32 = x_257.x_MainLightShadowParams.y;
      u_xlatb4 = (x_355 == 2.0f);
      let x_358 : bool = u_xlatb4;
      if (x_358) {
        let x_361 : vec4<f32> = vs_TEXCOORD6;
        let x_364 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_369 : vec2<f32> = ((vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_364.z, x_364.w)) + vec2<f32>(0.5f, 0.5f));
        let x_370 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec4<f32> = u_xlat4;
        let x_374 : vec2<f32> = floor(vec2<f32>(x_372.x, x_372.y));
        let x_375 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
        let x_379 : vec4<f32> = vs_TEXCOORD6;
        let x_382 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_385 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_382.z, x_382.w)) + -(vec2<f32>(x_385.x, x_385.y)));
        let x_389 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_389.x, x_389.x, x_389.y, x_389.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_393 : vec4<f32> = u_xlat5;
        let x_395 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_393.x, x_393.x, x_393.z, x_393.z) * vec4<f32>(x_395.x, x_395.x, x_395.z, x_395.z));
        let x_398 : vec4<f32> = u_xlat6;
        let x_402 : vec2<f32> = (vec2<f32>(x_398.y, x_398.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_403 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_403.w);
        let x_405 : vec4<f32> = u_xlat6;
        let x_408 : vec2<f32> = u_xlat50;
        let x_410 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.z) * vec2<f32>(0.5f, 0.5f)) + -(x_408));
        let x_411 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
        let x_414 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_414) + vec2<f32>(1.0f, 1.0f));
        let x_419 : vec2<f32> = u_xlat50;
        let x_421 : vec2<f32> = min(x_419, vec2<f32>(0.0f, 0.0f));
        let x_422 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec4<f32> = u_xlat7;
        let x_427 : vec4<f32> = u_xlat7;
        let x_430 : vec2<f32> = u_xlat52;
        let x_431 : vec2<f32> = ((-(vec2<f32>(x_424.x, x_424.y)) * vec2<f32>(x_427.x, x_427.y)) + x_430);
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_434 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_434, vec2<f32>(0.0f, 0.0f));
        let x_436 : vec2<f32> = u_xlat50;
        let x_438 : vec2<f32> = u_xlat50;
        let x_440 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_436) * x_438) + vec2<f32>(x_440.y, x_440.w));
        let x_443 : vec4<f32> = u_xlat7;
        let x_445 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) + vec2<f32>(1.0f, 1.0f));
        let x_446 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_448 + vec2<f32>(1.0f, 1.0f));
        let x_451 : vec4<f32> = u_xlat6;
        let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec2<f32> = u_xlat52;
        let x_459 : vec2<f32> = (x_458 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat7;
        let x_464 : vec2<f32> = (vec2<f32>(x_462.x, x_462.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_465 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_468 : vec2<f32> = u_xlat50;
        let x_469 : vec2<f32> = (x_468 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_472.y, x_472.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_476 : f32 = u_xlat7.x;
        u_xlat8.z = x_476;
        let x_479 : f32 = u_xlat50.x;
        u_xlat8.w = x_479;
        let x_482 : f32 = u_xlat9.x;
        u_xlat6.z = x_482;
        let x_485 : f32 = u_xlat5.x;
        u_xlat6.w = x_485;
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_488.z, x_488.w, x_488.x, x_488.z) + vec4<f32>(x_490.z, x_490.w, x_490.x, x_490.z));
        let x_494 : f32 = u_xlat8.y;
        u_xlat7.z = x_494;
        let x_497 : f32 = u_xlat50.y;
        u_xlat7.w = x_497;
        let x_500 : f32 = u_xlat6.y;
        u_xlat9.z = x_500;
        let x_503 : f32 = u_xlat5.z;
        u_xlat9.w = x_503;
        let x_505 : vec4<f32> = u_xlat7;
        let x_507 : vec4<f32> = u_xlat9;
        let x_509 : vec3<f32> = (vec3<f32>(x_505.z, x_505.y, x_505.w) + vec3<f32>(x_507.z, x_507.y, x_507.w));
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat6;
        let x_514 : vec4<f32> = u_xlat10;
        let x_516 : vec3<f32> = (vec3<f32>(x_512.x, x_512.z, x_512.w) / vec3<f32>(x_514.z, x_514.w, x_514.y));
        let x_517 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat6;
        let x_525 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat9;
        let x_530 : vec4<f32> = u_xlat5;
        let x_532 : vec3<f32> = (vec3<f32>(x_528.z, x_528.y, x_528.w) / vec3<f32>(x_530.x, x_530.y, x_530.z));
        let x_533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_537 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat6;
        let x_543 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_545 : vec3<f32> = (vec3<f32>(x_540.y, x_540.x, x_540.z) * vec3<f32>(x_543.x, x_543.x, x_543.x));
        let x_546 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat7;
        let x_551 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_553 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_551.y, x_551.y, x_551.y));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_557 : f32 = u_xlat7.x;
        u_xlat6.w = x_557;
        let x_559 : vec4<f32> = u_xlat4;
        let x_562 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) * vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y)) + vec4<f32>(x_565.y, x_565.w, x_565.x, x_565.w));
        let x_568 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_571.x, x_571.y)) + vec2<f32>(x_574.z, x_574.w));
        let x_578 : f32 = u_xlat6.y;
        u_xlat7.w = x_578;
        let x_580 : vec4<f32> = u_xlat7;
        let x_581 : vec2<f32> = vec2<f32>(x_580.y, x_580.z);
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_581.x, x_582.z, x_581.y);
        let x_584 : vec4<f32> = u_xlat4;
        let x_587 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) * vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y)) + vec4<f32>(x_590.x, x_590.y, x_590.z, x_590.y));
        let x_593 : vec4<f32> = u_xlat4;
        let x_596 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y) * vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y)) + vec4<f32>(x_599.w, x_599.y, x_599.w, x_599.z));
        let x_602 : vec4<f32> = u_xlat4;
        let x_605 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y) * vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y)) + vec4<f32>(x_608.x, x_608.w, x_608.z, x_608.w));
        let x_612 : vec4<f32> = u_xlat5;
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_612.x, x_612.x, x_612.x, x_612.y) * vec4<f32>(x_614.z, x_614.w, x_614.y, x_614.z));
        let x_618 : vec4<f32> = u_xlat5;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_618.y, x_618.y, x_618.z, x_618.z) * x_620);
        let x_623 : f32 = u_xlat5.z;
        let x_625 : f32 = u_xlat10.y;
        u_xlat4.x = (x_623 * x_625);
        let x_629 : vec4<f32> = u_xlat8;
        let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
        let x_632 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_630.x, x_630.y, x_632);
        let x_640 : vec3<f32> = txVec4;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
        u_xlat27.x = x_642;
        let x_645 : vec4<f32> = u_xlat8;
        let x_646 : vec2<f32> = vec2<f32>(x_645.z, x_645.w);
        let x_648 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_646.x, x_646.y, x_648);
        let x_655 : vec3<f32> = txVec5;
        let x_657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_655.xy, x_655.z);
        u_xlat5.x = x_657;
        let x_660 : f32 = u_xlat5.x;
        let x_662 : f32 = u_xlat11.y;
        u_xlat5.x = (x_660 * x_662);
        let x_666 : f32 = u_xlat11.x;
        let x_668 : f32 = u_xlat27.x;
        let x_671 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_666 * x_668) + x_671);
        let x_675 : vec2<f32> = u_xlat50;
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec6;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat50.x = x_686;
        let x_689 : f32 = u_xlat11.z;
        let x_691 : f32 = u_xlat50.x;
        let x_694 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_689 * x_691) + x_694);
        let x_698 : vec4<f32> = u_xlat7;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec7;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
        u_xlat50.x = x_710;
        let x_713 : f32 = u_xlat11.w;
        let x_715 : f32 = u_xlat50.x;
        let x_718 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_713 * x_715) + x_718);
        let x_722 : vec4<f32> = u_xlat9;
        let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
        let x_725 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec8;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat50.x = x_734;
        let x_737 : f32 = u_xlat12.x;
        let x_739 : f32 = u_xlat50.x;
        let x_742 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_737 * x_739) + x_742);
        let x_746 : vec4<f32> = u_xlat9;
        let x_747 : vec2<f32> = vec2<f32>(x_746.z, x_746.w);
        let x_749 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_747.x, x_747.y, x_749);
        let x_756 : vec3<f32> = txVec9;
        let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_756.xy, x_756.z);
        u_xlat50.x = x_758;
        let x_761 : f32 = u_xlat12.y;
        let x_763 : f32 = u_xlat50.x;
        let x_766 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_761 * x_763) + x_766);
        let x_770 : vec4<f32> = u_xlat7;
        let x_771 : vec2<f32> = vec2<f32>(x_770.z, x_770.w);
        let x_773 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_780 : vec3<f32> = txVec10;
        let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_780.xy, x_780.z);
        u_xlat50.x = x_782;
        let x_785 : f32 = u_xlat12.z;
        let x_787 : f32 = u_xlat50.x;
        let x_790 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_785 * x_787) + x_790);
        let x_794 : vec4<f32> = u_xlat6;
        let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
        let x_797 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec11;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat50.x = x_806;
        let x_809 : f32 = u_xlat12.w;
        let x_811 : f32 = u_xlat50.x;
        let x_814 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_809 * x_811) + x_814);
        let x_818 : vec4<f32> = u_xlat6;
        let x_819 : vec2<f32> = vec2<f32>(x_818.z, x_818.w);
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec12;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_828.xy, x_828.z);
        u_xlat50.x = x_830;
        let x_833 : f32 = u_xlat4.x;
        let x_835 : f32 = u_xlat50.x;
        let x_838 : f32 = u_xlat27.x;
        u_xlat71 = ((x_833 * x_835) + x_838);
      } else {
        let x_841 : vec4<f32> = vs_TEXCOORD6;
        let x_844 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + vec2<f32>(0.5f, 0.5f));
        let x_848 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat4;
        let x_852 : vec2<f32> = floor(vec2<f32>(x_850.x, x_850.y));
        let x_853 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = vs_TEXCOORD6;
        let x_858 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_861 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_855.x, x_855.y) * vec2<f32>(x_858.z, x_858.w)) + -(vec2<f32>(x_861.x, x_861.y)));
        let x_865 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat5;
        let x_870 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat6;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = u_xlat50;
        let x_885 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(x_883));
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_886.y, x_885.y, x_886.w);
        let x_888 : vec2<f32> = u_xlat50;
        let x_890 : vec2<f32> = (-(x_888) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_893 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_893, vec2<f32>(0.0f, 0.0f));
        let x_895 : vec2<f32> = u_xlat52;
        let x_897 : vec2<f32> = u_xlat52;
        let x_899 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = ((-(x_895) * x_897) + vec2<f32>(x_899.x, x_899.y));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec2<f32> = u_xlat52;
        let x_909 : vec2<f32> = u_xlat52;
        let x_911 : vec4<f32> = u_xlat5;
        let x_913 : vec2<f32> = ((-(x_907) * x_909) + vec2<f32>(x_911.y, x_911.w));
        let x_914 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_913.x, x_914.y, x_913.y);
        let x_916 : vec4<f32> = u_xlat6;
        let x_919 : vec2<f32> = (vec2<f32>(x_916.x, x_916.y) + vec2<f32>(2.0f, 2.0f));
        let x_920 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec3<f32> = u_xlat28;
        let x_924 : vec2<f32> = (vec2<f32>(x_922.x, x_922.z) + vec2<f32>(2.0f, 2.0f));
        let x_925 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_928 : f32 = u_xlat5.y;
        u_xlat8.z = (x_928 * 0.08163200318813323975f);
        let x_932 : vec4<f32> = u_xlat5;
        let x_935 : vec3<f32> = (vec3<f32>(x_932.z, x_932.x, x_932.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_942 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : f32 = u_xlat9.y;
        u_xlat8.x = x_945;
        let x_947 : vec2<f32> = u_xlat50;
        let x_954 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_955.x, x_954.x, x_955.z, x_954.y);
        let x_957 : vec2<f32> = u_xlat50;
        let x_961 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_962.w);
        let x_965 : f32 = u_xlat5.x;
        u_xlat6.y = x_965;
        let x_968 : f32 = u_xlat7.y;
        u_xlat6.w = x_968;
        let x_970 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_970 + x_971);
        let x_973 : vec2<f32> = u_xlat50;
        let x_976 : vec2<f32> = ((vec2<f32>(x_973.y, x_973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_977 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec2<f32> = u_xlat50;
        let x_982 : vec2<f32> = ((vec2<f32>(x_979.y, x_979.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_986 : f32 = u_xlat5.y;
        u_xlat7.y = x_986;
        let x_988 : vec4<f32> = u_xlat7;
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_988 + x_989);
        let x_991 : vec4<f32> = u_xlat6;
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_991 / x_992);
        let x_994 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_994 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1000 / x_1001);
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1003 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1008 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1005.w, x_1005.x, x_1005.y, x_1005.z) * vec4<f32>(x_1008.x, x_1008.x, x_1008.x, x_1008.x));
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1014 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1011.x, x_1011.w, x_1011.y, x_1011.z) * vec4<f32>(x_1014.y, x_1014.y, x_1014.y, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1018 : vec3<f32> = vec3<f32>(x_1017.y, x_1017.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1019.y, x_1018.y, x_1018.z);
        let x_1022 : f32 = u_xlat7.x;
        u_xlat9.y = x_1022;
        let x_1024 : vec4<f32> = u_xlat4;
        let x_1027 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat4;
        let x_1036 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.y = x_1043;
        let x_1046 : f32 = u_xlat7.z;
        u_xlat9.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1069 : f32 = u_xlat9.y;
        u_xlat6.z = x_1069;
        let x_1072 : vec4<f32> = u_xlat4;
        let x_1075 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.z));
        let x_1082 : f32 = u_xlat7.w;
        u_xlat9.y = x_1082;
        let x_1085 : vec4<f32> = u_xlat4;
        let x_1088 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1095 : vec4<f32> = u_xlat4;
        let x_1098 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.w, x_1101.y));
        let x_1104 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
        let x_1107 : f32 = u_xlat9.y;
        u_xlat6.w = x_1107;
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec4<f32> = u_xlat4;
        let x_1126 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec4<f32> = u_xlat4;
        let x_1136 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat6.x;
        u_xlat7.x = x_1143;
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat6.x = x_1188;
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1202 : vec3<f32> = txVec14;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1202.xy, x_1202.z);
        u_xlat75 = x_1204;
        let x_1205 : f32 = u_xlat75;
        let x_1207 : f32 = u_xlat15.y;
        u_xlat75 = (x_1205 * x_1207);
        let x_1210 : f32 = u_xlat15.x;
        let x_1212 : f32 = u_xlat6.x;
        let x_1214 : f32 = u_xlat75;
        u_xlat6.x = ((x_1210 * x_1212) + x_1214);
        let x_1218 : vec2<f32> = u_xlat50;
        let x_1220 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec15;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat50.x = x_1229;
        let x_1232 : f32 = u_xlat15.z;
        let x_1234 : f32 = u_xlat50.x;
        let x_1237 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1232 * x_1234) + x_1237);
        let x_1241 : vec4<f32> = u_xlat13;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1252 : vec3<f32> = txVec16;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat73 = x_1254;
        let x_1256 : f32 = u_xlat15.w;
        let x_1257 : f32 = u_xlat73;
        let x_1260 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1256 * x_1257) + x_1260);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec17;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat73 = x_1276;
        let x_1278 : f32 = u_xlat16.x;
        let x_1279 : f32 = u_xlat73;
        let x_1282 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1278 * x_1279) + x_1282);
        let x_1286 : vec4<f32> = u_xlat11;
        let x_1287 : vec2<f32> = vec2<f32>(x_1286.z, x_1286.w);
        let x_1289 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec18;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1296.xy, x_1296.z);
        u_xlat73 = x_1298;
        let x_1300 : f32 = u_xlat16.y;
        let x_1301 : f32 = u_xlat73;
        let x_1304 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1300 * x_1301) + x_1304);
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec19;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat73 = x_1320;
        let x_1322 : f32 = u_xlat16.z;
        let x_1323 : f32 = u_xlat73;
        let x_1326 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1322 * x_1323) + x_1326);
        let x_1330 : vec4<f32> = u_xlat13;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.z, x_1330.w);
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec20;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat73 = x_1342;
        let x_1344 : f32 = u_xlat16.w;
        let x_1345 : f32 = u_xlat73;
        let x_1348 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1344 * x_1345) + x_1348);
        let x_1352 : vec4<f32> = u_xlat14;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec21;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat73 = x_1364;
        let x_1366 : f32 = u_xlat17.x;
        let x_1367 : f32 = u_xlat73;
        let x_1370 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1366 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat14;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.z, x_1374.w);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec22;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat73 = x_1386;
        let x_1388 : f32 = u_xlat17.y;
        let x_1389 : f32 = u_xlat73;
        let x_1392 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1388 * x_1389) + x_1392);
        let x_1396 : vec3<f32> = u_xlat29;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec23;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat73 = x_1408;
        let x_1410 : f32 = u_xlat17.z;
        let x_1411 : f32 = u_xlat73;
        let x_1414 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec2<f32> = u_xlat58;
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec24;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat73 = x_1429;
        let x_1431 : f32 = u_xlat17.w;
        let x_1432 : f32 = u_xlat73;
        let x_1435 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1431 * x_1432) + x_1435);
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec25;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat73 = x_1451;
        let x_1453 : f32 = u_xlat5.x;
        let x_1454 : f32 = u_xlat73;
        let x_1457 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1453 * x_1454) + x_1457);
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec26;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat73 = x_1473;
        let x_1475 : f32 = u_xlat5.y;
        let x_1476 : f32 = u_xlat73;
        let x_1479 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1475 * x_1476) + x_1479);
        let x_1483 : vec2<f32> = u_xlat53;
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec27;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat73 = x_1494;
        let x_1496 : f32 = u_xlat5.z;
        let x_1497 : f32 = u_xlat73;
        let x_1500 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat4;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec28;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat4.x = x_1516;
        let x_1519 : f32 = u_xlat5.w;
        let x_1521 : f32 = u_xlat4.x;
        let x_1524 : f32 = u_xlat50.x;
        u_xlat71 = ((x_1519 * x_1521) + x_1524);
      }
    }
  } else {
    let x_1528 : vec4<f32> = vs_TEXCOORD6;
    let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
    let x_1531 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
    let x_1538 : vec3<f32> = txVec29;
    let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
    u_xlat71 = x_1540;
  }
  let x_1542 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1542) + 1.0f);
  let x_1546 : f32 = u_xlat71;
  let x_1548 : f32 = x_257.x_MainLightShadowParams.x;
  let x_1551 : f32 = u_xlat4.x;
  u_xlat71 = ((x_1546 * x_1548) + x_1551);
  let x_1554 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1554);
  let x_1558 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_1558 >= 1.0f);
  let x_1560 : bool = u_xlatb27;
  let x_1561 : bool = u_xlatb4;
  u_xlatb4 = (x_1560 | x_1561);
  let x_1563 : bool = u_xlatb4;
  let x_1564 : f32 = u_xlat71;
  u_xlat71 = select(x_1564, 1.0f, x_1563);
  let x_1566 : vec3<f32> = vs_TEXCOORD1;
  let x_1568 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1570 : vec3<f32> = (x_1566 + -(x_1568));
  let x_1571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec4<f32> = u_xlat4;
  let x_1575 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1573.x, x_1573.y, x_1573.z), vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
  let x_1580 : f32 = u_xlat4.x;
  let x_1582 : f32 = x_257.x_MainLightShadowParams.z;
  let x_1585 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1580 * x_1582) + x_1585);
  let x_1589 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1589, 0.0f, 1.0f);
  let x_1592 : f32 = u_xlat71;
  u_xlat50.x = (-(x_1592) + 1.0f);
  let x_1597 : f32 = u_xlat27.x;
  let x_1599 : f32 = u_xlat50.x;
  let x_1601 : f32 = u_xlat71;
  u_xlat71 = ((x_1597 * x_1599) + x_1601);
  let x_1603 : f32 = u_xlat71;
  let x_1605 : f32 = x_173.unity_LightData.z;
  u_xlat71 = (x_1603 * x_1605);
  let x_1607 : f32 = u_xlat71;
  let x_1610 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1607, x_1607, x_1607) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = u_xlat2;
  let x_1616 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat71 = dot(vec3<f32>(x_1613.x, x_1613.y, x_1613.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
  let x_1619 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1619, 0.0f, 1.0f);
  let x_1621 : f32 = u_xlat71;
  let x_1623 : vec3<f32> = u_xlat27;
  let x_1624 : vec3<f32> = (vec3<f32>(x_1621, x_1621, x_1621) * x_1623);
  let x_1625 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1628 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1628 * 10.0f) + 1.0f);
  let x_1632 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1632);
  let x_1634 : vec3<f32> = u_xlat1;
  let x_1635 : f32 = u_xlat70;
  let x_1639 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1641 : vec3<f32> = ((x_1634 * vec3<f32>(x_1635, x_1635, x_1635)) + vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1642 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  let x_1645 : vec4<f32> = u_xlat6;
  let x_1647 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1645.x, x_1645.y, x_1645.z), vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
  let x_1650 : f32 = u_xlat74;
  u_xlat74 = max(x_1650, 1.17549435e-38f);
  let x_1653 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1653);
  let x_1655 : f32 = u_xlat74;
  let x_1657 : vec4<f32> = u_xlat6;
  let x_1659 : vec3<f32> = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1660 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1662 : vec4<f32> = u_xlat2;
  let x_1664 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1662.x, x_1662.y, x_1662.z), vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1667 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1667, 0.0f, 1.0f);
  let x_1669 : f32 = u_xlat74;
  u_xlat74 = log2(x_1669);
  let x_1671 : f32 = u_xlat71;
  let x_1672 : f32 = u_xlat74;
  u_xlat74 = (x_1671 * x_1672);
  let x_1674 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1674);
  let x_1676 : f32 = u_xlat74;
  let x_1679 : vec4<f32> = x_41.x_SpecColor;
  let x_1681 : vec3<f32> = (vec3<f32>(x_1676, x_1676, x_1676) * vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
  let x_1682 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1684 : vec3<f32> = u_xlat27;
  let x_1685 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1684 * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
  let x_1688 : vec4<f32> = u_xlat5;
  let x_1690 : vec4<f32> = u_xlat0;
  let x_1693 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1688.x, x_1688.y, x_1688.z) * vec3<f32>(x_1690.y, x_1690.z, x_1690.w)) + x_1693);
  let x_1696 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1698 : f32 = x_173.unity_LightData.y;
  u_xlat5.x = min(x_1696, x_1698);
  let x_1704 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1704));
  let x_1708 : f32 = u_xlat4.x;
  let x_1711 : f32 = x_257.x_AdditionalShadowFadeParams.x;
  let x_1714 : f32 = x_257.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1708 * x_1711) + x_1714);
  let x_1718 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1718, 0.0f, 1.0f);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1731 : u32 = u_xlatu_loop_1;
    let x_1732 : u32 = u_xlatu5;
    if ((x_1731 < x_1732)) {
    } else {
      break;
    }
    let x_1735 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_1735 >> 2u);
    let x_1739 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1739 & 3u));
    let x_1742 : u32 = u_xlatu29;
    let x_1745 : vec4<f32> = x_173.unity_LightIndices[bitcast<i32>(x_1742)];
    let x_1755 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1760 : vec4<u32> = indexable[x_1755];
    u_xlat29.x = dot(x_1745, bitcast<vec4<f32>>(x_1760));
    let x_1766 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_1766);
    let x_1768 : vec3<f32> = vs_TEXCOORD1;
    let x_1779 : i32 = u_xlati29;
    let x_1781 : vec4<f32> = x_1778.x_AdditionalLightsPosition[x_1779];
    let x_1784 : i32 = u_xlati29;
    let x_1786 : vec4<f32> = x_1778.x_AdditionalLightsPosition[x_1784];
    let x_1788 : vec3<f32> = ((-(x_1768) * vec3<f32>(x_1781.w, x_1781.w, x_1781.w)) + vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
    let x_1789 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
    let x_1791 : vec4<f32> = u_xlat7;
    let x_1793 : vec4<f32> = u_xlat7;
    u_xlat52.x = dot(vec3<f32>(x_1791.x, x_1791.y, x_1791.z), vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
    let x_1798 : f32 = u_xlat52.x;
    u_xlat52.x = max(x_1798, 0.00006103515625f);
    let x_1802 : f32 = u_xlat52.x;
    u_xlat75 = inverseSqrt(x_1802);
    let x_1804 : f32 = u_xlat75;
    let x_1806 : vec4<f32> = u_xlat7;
    let x_1808 : vec3<f32> = (vec3<f32>(x_1804, x_1804, x_1804) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
    let x_1809 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
    let x_1812 : f32 = u_xlat52.x;
    u_xlat75 = (1.0f / x_1812);
    let x_1815 : f32 = u_xlat52.x;
    let x_1816 : i32 = u_xlati29;
    let x_1818 : f32 = x_1778.x_AdditionalLightsAttenuation[x_1816].x;
    u_xlat52.x = (x_1815 * x_1818);
    let x_1822 : f32 = u_xlat52.x;
    let x_1825 : f32 = u_xlat52.x;
    u_xlat52.x = ((-(x_1822) * x_1825) + 1.0f);
    let x_1830 : f32 = u_xlat52.x;
    u_xlat52.x = max(x_1830, 0.0f);
    let x_1834 : f32 = u_xlat52.x;
    let x_1836 : f32 = u_xlat52.x;
    u_xlat52.x = (x_1834 * x_1836);
    let x_1840 : f32 = u_xlat52.x;
    let x_1841 : f32 = u_xlat75;
    u_xlat52.x = (x_1840 * x_1841);
    let x_1844 : i32 = u_xlati29;
    let x_1846 : vec4<f32> = x_1778.x_AdditionalLightsSpotDir[x_1844];
    let x_1848 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1846.x, x_1846.y, x_1846.z), vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
    let x_1851 : f32 = u_xlat75;
    let x_1852 : i32 = u_xlati29;
    let x_1854 : f32 = x_1778.x_AdditionalLightsAttenuation[x_1852].z;
    let x_1856 : i32 = u_xlati29;
    let x_1858 : f32 = x_1778.x_AdditionalLightsAttenuation[x_1856].w;
    u_xlat75 = ((x_1851 * x_1854) + x_1858);
    let x_1860 : f32 = u_xlat75;
    u_xlat75 = clamp(x_1860, 0.0f, 1.0f);
    let x_1862 : f32 = u_xlat75;
    let x_1863 : f32 = u_xlat75;
    u_xlat75 = (x_1862 * x_1863);
    let x_1865 : f32 = u_xlat75;
    let x_1867 : f32 = u_xlat52.x;
    u_xlat52.x = (x_1865 * x_1867);
    let x_1872 : i32 = u_xlati29;
    let x_1874 : f32 = x_257.x_AdditionalShadowParams[x_1872].w;
    u_xlati75 = i32(x_1874);
    let x_1877 : i32 = u_xlati75;
    u_xlatb76 = (x_1877 >= 0i);
    let x_1879 : bool = u_xlatb76;
    if (x_1879) {
      let x_1883 : i32 = u_xlati29;
      let x_1885 : f32 = x_257.x_AdditionalShadowParams[x_1883].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1885, x_1885, x_1885, x_1885))));
      let x_1890 : bool = u_xlatb76;
      if (x_1890) {
        let x_1895 : vec4<f32> = u_xlat7;
        let x_1898 : vec4<f32> = u_xlat7;
        let x_1901 : vec4<bool> = (abs(vec4<f32>(x_1895.z, x_1895.z, x_1895.y, x_1895.z)) >= abs(vec4<f32>(x_1898.x, x_1898.y, x_1898.x, x_1898.x)));
        let x_1903 : vec3<bool> = vec3<bool>(x_1901.x, x_1901.y, x_1901.z);
        let x_1904 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
        let x_1907 : bool = u_xlatb8.y;
        let x_1909 : bool = u_xlatb8.x;
        u_xlatb76 = (x_1907 & x_1909);
        let x_1911 : vec4<f32> = u_xlat7;
        let x_1914 : vec4<bool> = (-(vec4<f32>(x_1911.z, x_1911.y, x_1911.z, x_1911.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1915 : vec3<bool> = vec3<bool>(x_1914.x, x_1914.y, x_1914.w);
        let x_1916 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1915.x, x_1915.y, x_1916.z, x_1915.z);
        let x_1919 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1919);
        let x_1925 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1925);
        let x_1931 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_1931);
        let x_1935 : bool = u_xlatb8.z;
        if (x_1935) {
          let x_1941 : f32 = u_xlat8.y;
          x_1937 = x_1941;
        } else {
          let x_1943 : f32 = u_xlat77;
          x_1937 = x_1943;
        }
        let x_1944 : f32 = x_1937;
        u_xlat31 = x_1944;
        let x_1946 : bool = u_xlatb76;
        if (x_1946) {
          let x_1951 : f32 = u_xlat8.x;
          x_1947 = x_1951;
        } else {
          let x_1953 : f32 = u_xlat31;
          x_1947 = x_1953;
        }
        let x_1954 : f32 = x_1947;
        u_xlat76 = x_1954;
        let x_1955 : i32 = u_xlati29;
        let x_1957 : f32 = x_257.x_AdditionalShadowParams[x_1955].w;
        u_xlat8.x = trunc(x_1957);
        let x_1960 : f32 = u_xlat76;
        let x_1962 : f32 = u_xlat8.x;
        u_xlat76 = (x_1960 + x_1962);
        let x_1964 : f32 = u_xlat76;
        u_xlati75 = i32(x_1964);
      }
      let x_1966 : i32 = u_xlati75;
      u_xlati75 = (x_1966 << bitcast<u32>(2i));
      let x_1968 : vec3<f32> = vs_TEXCOORD1;
      let x_1971 : i32 = u_xlati75;
      let x_1974 : i32 = u_xlati75;
      let x_1978 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_1971 + 1i) / 4i)][((x_1974 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1968.y, x_1968.y, x_1968.y, x_1968.y) * x_1978);
      let x_1980 : i32 = u_xlati75;
      let x_1982 : i32 = u_xlati75;
      let x_1985 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[(x_1980 / 4i)][(x_1982 % 4i)];
      let x_1986 : vec3<f32> = vs_TEXCOORD1;
      let x_1989 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1985 * vec4<f32>(x_1986.x, x_1986.x, x_1986.x, x_1986.x)) + x_1989);
      let x_1991 : i32 = u_xlati75;
      let x_1994 : i32 = u_xlati75;
      let x_1998 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_1991 + 2i) / 4i)][((x_1994 + 2i) % 4i)];
      let x_1999 : vec3<f32> = vs_TEXCOORD1;
      let x_2002 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1998 * vec4<f32>(x_1999.z, x_1999.z, x_1999.z, x_1999.z)) + x_2002);
      let x_2004 : vec4<f32> = u_xlat8;
      let x_2005 : i32 = u_xlati75;
      let x_2008 : i32 = u_xlati75;
      let x_2012 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_2005 + 3i) / 4i)][((x_2008 + 3i) % 4i)];
      u_xlat8 = (x_2004 + x_2012);
      let x_2014 : vec4<f32> = u_xlat8;
      let x_2016 : vec4<f32> = u_xlat8;
      let x_2018 : vec3<f32> = (vec3<f32>(x_2014.x, x_2014.y, x_2014.z) / vec3<f32>(x_2016.w, x_2016.w, x_2016.w));
      let x_2019 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
      let x_2022 : i32 = u_xlati29;
      let x_2024 : f32 = x_257.x_AdditionalShadowParams[x_2022].y;
      u_xlatb75 = (0.0f < x_2024);
      let x_2026 : bool = u_xlatb75;
      if (x_2026) {
        let x_2029 : i32 = u_xlati29;
        let x_2031 : f32 = x_257.x_AdditionalShadowParams[x_2029].y;
        u_xlatb75 = (1.0f == x_2031);
        let x_2033 : bool = u_xlatb75;
        if (x_2033) {
          let x_2036 : vec4<f32> = u_xlat8;
          let x_2040 : vec4<f32> = x_257.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2036.x, x_2036.y, x_2036.x, x_2036.y) + x_2040);
          let x_2043 : vec4<f32> = u_xlat9;
          let x_2044 : vec2<f32> = vec2<f32>(x_2043.x, x_2043.y);
          let x_2046 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
          let x_2054 : vec3<f32> = txVec30;
          let x_2056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
          u_xlat10.x = x_2056;
          let x_2059 : vec4<f32> = u_xlat9;
          let x_2060 : vec2<f32> = vec2<f32>(x_2059.z, x_2059.w);
          let x_2062 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
          let x_2069 : vec3<f32> = txVec31;
          let x_2071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
          u_xlat10.y = x_2071;
          let x_2073 : vec4<f32> = u_xlat8;
          let x_2077 : vec4<f32> = x_257.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2073.x, x_2073.y, x_2073.x, x_2073.y) + x_2077);
          let x_2080 : vec4<f32> = u_xlat9;
          let x_2081 : vec2<f32> = vec2<f32>(x_2080.x, x_2080.y);
          let x_2083 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2081.x, x_2081.y, x_2083);
          let x_2090 : vec3<f32> = txVec32;
          let x_2092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2090.xy, x_2090.z);
          u_xlat10.z = x_2092;
          let x_2095 : vec4<f32> = u_xlat9;
          let x_2096 : vec2<f32> = vec2<f32>(x_2095.z, x_2095.w);
          let x_2098 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
          let x_2105 : vec3<f32> = txVec33;
          let x_2107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2105.xy, x_2105.z);
          u_xlat10.w = x_2107;
          let x_2109 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2109, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2112 : i32 = u_xlati29;
          let x_2114 : f32 = x_257.x_AdditionalShadowParams[x_2112].y;
          u_xlatb76 = (2.0f == x_2114);
          let x_2116 : bool = u_xlatb76;
          if (x_2116) {
            let x_2119 : vec4<f32> = u_xlat8;
            let x_2123 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2126 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(x_2123.z, x_2123.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2127 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2127.w);
            let x_2129 : vec4<f32> = u_xlat9;
            let x_2131 : vec2<f32> = floor(vec2<f32>(x_2129.x, x_2129.y));
            let x_2132 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
            let x_2135 : vec4<f32> = u_xlat8;
            let x_2138 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2141 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2135.x, x_2135.y) * vec2<f32>(x_2138.z, x_2138.w)) + -(vec2<f32>(x_2141.x, x_2141.y)));
            let x_2145 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2145.x, x_2145.x, x_2145.y, x_2145.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2148 : vec4<f32> = u_xlat10;
            let x_2150 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2148.x, x_2148.x, x_2148.z, x_2148.z) * vec4<f32>(x_2150.x, x_2150.x, x_2150.z, x_2150.z));
            let x_2153 : vec4<f32> = u_xlat11;
            let x_2155 : vec2<f32> = (vec2<f32>(x_2153.y, x_2153.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2156 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2155.x, x_2156.y, x_2155.y, x_2156.w);
            let x_2158 : vec4<f32> = u_xlat11;
            let x_2161 : vec2<f32> = u_xlat55;
            let x_2163 : vec2<f32> = ((vec2<f32>(x_2158.x, x_2158.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2161));
            let x_2164 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
            let x_2167 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2167) + vec2<f32>(1.0f, 1.0f));
            let x_2170 : vec2<f32> = u_xlat55;
            let x_2171 : vec2<f32> = min(x_2170, vec2<f32>(0.0f, 0.0f));
            let x_2172 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
            let x_2174 : vec4<f32> = u_xlat12;
            let x_2177 : vec4<f32> = u_xlat12;
            let x_2180 : vec2<f32> = u_xlat57;
            let x_2181 : vec2<f32> = ((-(vec2<f32>(x_2174.x, x_2174.y)) * vec2<f32>(x_2177.x, x_2177.y)) + x_2180);
            let x_2182 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2181.x, x_2181.y, x_2182.z, x_2182.w);
            let x_2184 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2184, vec2<f32>(0.0f, 0.0f));
            let x_2186 : vec2<f32> = u_xlat55;
            let x_2188 : vec2<f32> = u_xlat55;
            let x_2190 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2186) * x_2188) + vec2<f32>(x_2190.y, x_2190.w));
            let x_2193 : vec4<f32> = u_xlat12;
            let x_2195 : vec2<f32> = (vec2<f32>(x_2193.x, x_2193.y) + vec2<f32>(1.0f, 1.0f));
            let x_2196 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2195.x, x_2195.y, x_2196.z, x_2196.w);
            let x_2198 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2198 + vec2<f32>(1.0f, 1.0f));
            let x_2200 : vec4<f32> = u_xlat11;
            let x_2202 : vec2<f32> = (vec2<f32>(x_2200.x, x_2200.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2203 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
            let x_2205 : vec2<f32> = u_xlat57;
            let x_2206 : vec2<f32> = (x_2205 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2207 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2206.x, x_2206.y, x_2207.z, x_2207.w);
            let x_2209 : vec4<f32> = u_xlat12;
            let x_2211 : vec2<f32> = (vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2212 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
            let x_2214 : vec2<f32> = u_xlat55;
            let x_2215 : vec2<f32> = (x_2214 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2216 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2218.y, x_2218.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2222 : f32 = u_xlat12.x;
            u_xlat13.z = x_2222;
            let x_2225 : f32 = u_xlat55.x;
            u_xlat13.w = x_2225;
            let x_2228 : f32 = u_xlat14.x;
            u_xlat11.z = x_2228;
            let x_2231 : f32 = u_xlat10.x;
            u_xlat11.w = x_2231;
            let x_2233 : vec4<f32> = u_xlat11;
            let x_2235 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2233.z, x_2233.w, x_2233.x, x_2233.z) + vec4<f32>(x_2235.z, x_2235.w, x_2235.x, x_2235.z));
            let x_2239 : f32 = u_xlat13.y;
            u_xlat12.z = x_2239;
            let x_2242 : f32 = u_xlat55.y;
            u_xlat12.w = x_2242;
            let x_2245 : f32 = u_xlat11.y;
            u_xlat14.z = x_2245;
            let x_2248 : f32 = u_xlat10.z;
            u_xlat14.w = x_2248;
            let x_2250 : vec4<f32> = u_xlat12;
            let x_2252 : vec4<f32> = u_xlat14;
            let x_2254 : vec3<f32> = (vec3<f32>(x_2250.z, x_2250.y, x_2250.w) + vec3<f32>(x_2252.z, x_2252.y, x_2252.w));
            let x_2255 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
            let x_2257 : vec4<f32> = u_xlat11;
            let x_2259 : vec4<f32> = u_xlat15;
            let x_2261 : vec3<f32> = (vec3<f32>(x_2257.x, x_2257.z, x_2257.w) / vec3<f32>(x_2259.z, x_2259.w, x_2259.y));
            let x_2262 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
            let x_2264 : vec4<f32> = u_xlat11;
            let x_2266 : vec3<f32> = (vec3<f32>(x_2264.x, x_2264.y, x_2264.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2267 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat14;
            let x_2271 : vec4<f32> = u_xlat10;
            let x_2273 : vec3<f32> = (vec3<f32>(x_2269.z, x_2269.y, x_2269.w) / vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
            let x_2274 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
            let x_2276 : vec4<f32> = u_xlat12;
            let x_2278 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2279 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
            let x_2281 : vec4<f32> = u_xlat11;
            let x_2284 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2286 : vec3<f32> = (vec3<f32>(x_2281.y, x_2281.x, x_2281.z) * vec3<f32>(x_2284.x, x_2284.x, x_2284.x));
            let x_2287 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
            let x_2289 : vec4<f32> = u_xlat12;
            let x_2292 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2289.x, x_2289.y, x_2289.z) * vec3<f32>(x_2292.y, x_2292.y, x_2292.y));
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2298 : f32 = u_xlat12.x;
            u_xlat11.w = x_2298;
            let x_2300 : vec4<f32> = u_xlat9;
            let x_2303 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2306 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2300.x, x_2300.y, x_2300.x, x_2300.y) * vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.y)) + vec4<f32>(x_2306.y, x_2306.w, x_2306.x, x_2306.w));
            let x_2309 : vec4<f32> = u_xlat9;
            let x_2312 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2315 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(x_2312.x, x_2312.y)) + vec2<f32>(x_2315.z, x_2315.w));
            let x_2319 : f32 = u_xlat11.y;
            u_xlat12.w = x_2319;
            let x_2321 : vec4<f32> = u_xlat12;
            let x_2322 : vec2<f32> = vec2<f32>(x_2321.y, x_2321.z);
            let x_2323 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2323.x, x_2322.x, x_2323.z, x_2322.y);
            let x_2325 : vec4<f32> = u_xlat9;
            let x_2328 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2331 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2325.x, x_2325.y, x_2325.x, x_2325.y) * vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y)) + vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2331.y));
            let x_2334 : vec4<f32> = u_xlat9;
            let x_2337 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2340 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.y) * vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y)) + vec4<f32>(x_2340.w, x_2340.y, x_2340.w, x_2340.z));
            let x_2343 : vec4<f32> = u_xlat9;
            let x_2346 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2349 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y) * vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.y)) + vec4<f32>(x_2349.x, x_2349.w, x_2349.z, x_2349.w));
            let x_2352 : vec4<f32> = u_xlat10;
            let x_2354 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2352.x, x_2352.x, x_2352.x, x_2352.y) * vec4<f32>(x_2354.z, x_2354.w, x_2354.y, x_2354.z));
            let x_2357 : vec4<f32> = u_xlat10;
            let x_2359 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2357.y, x_2357.y, x_2357.z, x_2357.z) * x_2359);
            let x_2362 : f32 = u_xlat10.z;
            let x_2364 : f32 = u_xlat15.y;
            u_xlat76 = (x_2362 * x_2364);
            let x_2367 : vec4<f32> = u_xlat13;
            let x_2368 : vec2<f32> = vec2<f32>(x_2367.x, x_2367.y);
            let x_2370 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
            let x_2377 : vec3<f32> = txVec34;
            let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
            u_xlat77 = x_2379;
            let x_2381 : vec4<f32> = u_xlat13;
            let x_2382 : vec2<f32> = vec2<f32>(x_2381.z, x_2381.w);
            let x_2384 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
            let x_2391 : vec3<f32> = txVec35;
            let x_2393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
            u_xlat9.x = x_2393;
            let x_2396 : f32 = u_xlat9.x;
            let x_2398 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2396 * x_2398);
            let x_2402 : f32 = u_xlat16.x;
            let x_2403 : f32 = u_xlat77;
            let x_2406 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2402 * x_2403) + x_2406);
            let x_2409 : vec2<f32> = u_xlat55;
            let x_2411 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2409.x, x_2409.y, x_2411);
            let x_2418 : vec3<f32> = txVec36;
            let x_2420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2418.xy, x_2418.z);
            u_xlat9.x = x_2420;
            let x_2423 : f32 = u_xlat16.z;
            let x_2425 : f32 = u_xlat9.x;
            let x_2427 : f32 = u_xlat77;
            u_xlat77 = ((x_2423 * x_2425) + x_2427);
            let x_2430 : vec4<f32> = u_xlat12;
            let x_2431 : vec2<f32> = vec2<f32>(x_2430.x, x_2430.y);
            let x_2433 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2431.x, x_2431.y, x_2433);
            let x_2440 : vec3<f32> = txVec37;
            let x_2442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2440.xy, x_2440.z);
            u_xlat9.x = x_2442;
            let x_2445 : f32 = u_xlat16.w;
            let x_2447 : f32 = u_xlat9.x;
            let x_2449 : f32 = u_xlat77;
            u_xlat77 = ((x_2445 * x_2447) + x_2449);
            let x_2452 : vec4<f32> = u_xlat14;
            let x_2453 : vec2<f32> = vec2<f32>(x_2452.x, x_2452.y);
            let x_2455 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2453.x, x_2453.y, x_2455);
            let x_2462 : vec3<f32> = txVec38;
            let x_2464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2462.xy, x_2462.z);
            u_xlat9.x = x_2464;
            let x_2467 : f32 = u_xlat17.x;
            let x_2469 : f32 = u_xlat9.x;
            let x_2471 : f32 = u_xlat77;
            u_xlat77 = ((x_2467 * x_2469) + x_2471);
            let x_2474 : vec4<f32> = u_xlat14;
            let x_2475 : vec2<f32> = vec2<f32>(x_2474.z, x_2474.w);
            let x_2477 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2475.x, x_2475.y, x_2477);
            let x_2484 : vec3<f32> = txVec39;
            let x_2486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2484.xy, x_2484.z);
            u_xlat9.x = x_2486;
            let x_2489 : f32 = u_xlat17.y;
            let x_2491 : f32 = u_xlat9.x;
            let x_2493 : f32 = u_xlat77;
            u_xlat77 = ((x_2489 * x_2491) + x_2493);
            let x_2496 : vec4<f32> = u_xlat12;
            let x_2497 : vec2<f32> = vec2<f32>(x_2496.z, x_2496.w);
            let x_2499 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2497.x, x_2497.y, x_2499);
            let x_2506 : vec3<f32> = txVec40;
            let x_2508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
            u_xlat9.x = x_2508;
            let x_2511 : f32 = u_xlat17.z;
            let x_2513 : f32 = u_xlat9.x;
            let x_2515 : f32 = u_xlat77;
            u_xlat77 = ((x_2511 * x_2513) + x_2515);
            let x_2518 : vec4<f32> = u_xlat11;
            let x_2519 : vec2<f32> = vec2<f32>(x_2518.x, x_2518.y);
            let x_2521 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2519.x, x_2519.y, x_2521);
            let x_2528 : vec3<f32> = txVec41;
            let x_2530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2528.xy, x_2528.z);
            u_xlat9.x = x_2530;
            let x_2533 : f32 = u_xlat17.w;
            let x_2535 : f32 = u_xlat9.x;
            let x_2537 : f32 = u_xlat77;
            u_xlat77 = ((x_2533 * x_2535) + x_2537);
            let x_2540 : vec4<f32> = u_xlat11;
            let x_2541 : vec2<f32> = vec2<f32>(x_2540.z, x_2540.w);
            let x_2543 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2541.x, x_2541.y, x_2543);
            let x_2550 : vec3<f32> = txVec42;
            let x_2552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2550.xy, x_2550.z);
            u_xlat9.x = x_2552;
            let x_2554 : f32 = u_xlat76;
            let x_2556 : f32 = u_xlat9.x;
            let x_2558 : f32 = u_xlat77;
            u_xlat75 = ((x_2554 * x_2556) + x_2558);
          } else {
            let x_2561 : vec4<f32> = u_xlat8;
            let x_2564 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2567 : vec2<f32> = ((vec2<f32>(x_2561.x, x_2561.y) * vec2<f32>(x_2564.z, x_2564.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2568 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
            let x_2570 : vec4<f32> = u_xlat9;
            let x_2572 : vec2<f32> = floor(vec2<f32>(x_2570.x, x_2570.y));
            let x_2573 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
            let x_2575 : vec4<f32> = u_xlat8;
            let x_2578 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.z, x_2578.w)) + -(vec2<f32>(x_2581.x, x_2581.y)));
            let x_2585 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2585.x, x_2585.x, x_2585.y, x_2585.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2588 : vec4<f32> = u_xlat10;
            let x_2590 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2588.x, x_2588.x, x_2588.z, x_2588.z) * vec4<f32>(x_2590.x, x_2590.x, x_2590.z, x_2590.z));
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2595 : vec2<f32> = (vec2<f32>(x_2593.y, x_2593.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2596 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2596.x, x_2595.x, x_2596.z, x_2595.y);
            let x_2598 : vec4<f32> = u_xlat11;
            let x_2601 : vec2<f32> = u_xlat55;
            let x_2603 : vec2<f32> = ((vec2<f32>(x_2598.x, x_2598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2601));
            let x_2604 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2603.x, x_2604.y, x_2603.y, x_2604.w);
            let x_2606 : vec2<f32> = u_xlat55;
            let x_2608 : vec2<f32> = (-(x_2606) + vec2<f32>(1.0f, 1.0f));
            let x_2609 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2611 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2611, vec2<f32>(0.0f, 0.0f));
            let x_2613 : vec2<f32> = u_xlat57;
            let x_2615 : vec2<f32> = u_xlat57;
            let x_2617 : vec4<f32> = u_xlat11;
            let x_2619 : vec2<f32> = ((-(x_2613) * x_2615) + vec2<f32>(x_2617.x, x_2617.y));
            let x_2620 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
            let x_2622 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2622, vec2<f32>(0.0f, 0.0f));
            let x_2625 : vec2<f32> = u_xlat57;
            let x_2627 : vec2<f32> = u_xlat57;
            let x_2629 : vec4<f32> = u_xlat10;
            let x_2631 : vec2<f32> = ((-(x_2625) * x_2627) + vec2<f32>(x_2629.y, x_2629.w));
            let x_2632 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2631.x, x_2632.y, x_2631.y);
            let x_2634 : vec4<f32> = u_xlat11;
            let x_2636 : vec2<f32> = (vec2<f32>(x_2634.x, x_2634.y) + vec2<f32>(2.0f, 2.0f));
            let x_2637 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
            let x_2639 : vec3<f32> = u_xlat33;
            let x_2641 : vec2<f32> = (vec2<f32>(x_2639.x, x_2639.z) + vec2<f32>(2.0f, 2.0f));
            let x_2642 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2642.x, x_2641.x, x_2642.z, x_2641.y);
            let x_2645 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2645 * 0.08163200318813323975f);
            let x_2648 : vec4<f32> = u_xlat10;
            let x_2650 : vec3<f32> = (vec3<f32>(x_2648.z, x_2648.x, x_2648.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
            let x_2653 : vec4<f32> = u_xlat11;
            let x_2655 : vec2<f32> = (vec2<f32>(x_2653.x, x_2653.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2656 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2659 : f32 = u_xlat14.y;
            u_xlat13.x = x_2659;
            let x_2661 : vec2<f32> = u_xlat55;
            let x_2664 : vec2<f32> = ((vec2<f32>(x_2661.x, x_2661.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2665 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2665.x, x_2664.x, x_2665.z, x_2664.y);
            let x_2667 : vec2<f32> = u_xlat55;
            let x_2670 : vec2<f32> = ((vec2<f32>(x_2667.x, x_2667.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2671 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2671.w);
            let x_2674 : f32 = u_xlat10.x;
            u_xlat11.y = x_2674;
            let x_2677 : f32 = u_xlat12.y;
            u_xlat11.w = x_2677;
            let x_2679 : vec4<f32> = u_xlat11;
            let x_2680 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2679 + x_2680);
            let x_2682 : vec2<f32> = u_xlat55;
            let x_2685 : vec2<f32> = ((vec2<f32>(x_2682.y, x_2682.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2686 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2686.x, x_2685.x, x_2686.z, x_2685.y);
            let x_2688 : vec2<f32> = u_xlat55;
            let x_2691 : vec2<f32> = ((vec2<f32>(x_2688.y, x_2688.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2692 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2692.w);
            let x_2695 : f32 = u_xlat10.y;
            u_xlat12.y = x_2695;
            let x_2697 : vec4<f32> = u_xlat12;
            let x_2698 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2697 + x_2698);
            let x_2700 : vec4<f32> = u_xlat11;
            let x_2701 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2700 / x_2701);
            let x_2703 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2703 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2705 : vec4<f32> = u_xlat12;
            let x_2706 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2705 / x_2706);
            let x_2708 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2708 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2710 : vec4<f32> = u_xlat11;
            let x_2713 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2710.w, x_2710.x, x_2710.y, x_2710.z) * vec4<f32>(x_2713.x, x_2713.x, x_2713.x, x_2713.x));
            let x_2716 : vec4<f32> = u_xlat12;
            let x_2719 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2716.x, x_2716.w, x_2716.y, x_2716.z) * vec4<f32>(x_2719.y, x_2719.y, x_2719.y, x_2719.y));
            let x_2722 : vec4<f32> = u_xlat11;
            let x_2723 : vec3<f32> = vec3<f32>(x_2722.y, x_2722.z, x_2722.w);
            let x_2724 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2723.x, x_2724.y, x_2723.y, x_2723.z);
            let x_2727 : f32 = u_xlat12.x;
            u_xlat14.y = x_2727;
            let x_2729 : vec4<f32> = u_xlat9;
            let x_2732 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2735 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y) * vec4<f32>(x_2732.x, x_2732.y, x_2732.x, x_2732.y)) + vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2735.y));
            let x_2738 : vec4<f32> = u_xlat9;
            let x_2741 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2744 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2738.x, x_2738.y) * vec2<f32>(x_2741.x, x_2741.y)) + vec2<f32>(x_2744.w, x_2744.y));
            let x_2748 : f32 = u_xlat14.y;
            u_xlat11.y = x_2748;
            let x_2751 : f32 = u_xlat12.z;
            u_xlat14.y = x_2751;
            let x_2753 : vec4<f32> = u_xlat9;
            let x_2756 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2759 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y) * vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y)) + vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2759.y));
            let x_2762 : vec4<f32> = u_xlat9;
            let x_2765 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2768 : vec4<f32> = u_xlat14;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2762.x, x_2762.y) * vec2<f32>(x_2765.x, x_2765.y)) + vec2<f32>(x_2768.w, x_2768.y));
            let x_2771 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2774 : f32 = u_xlat14.y;
            u_xlat11.z = x_2774;
            let x_2777 : vec4<f32> = u_xlat9;
            let x_2780 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) * vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y)) + vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.z));
            let x_2787 : f32 = u_xlat12.w;
            u_xlat14.y = x_2787;
            let x_2790 : vec4<f32> = u_xlat9;
            let x_2793 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y) * vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y)) + vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2796.y));
            let x_2800 : vec4<f32> = u_xlat9;
            let x_2803 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2800.x, x_2800.y) * vec2<f32>(x_2803.x, x_2803.y)) + vec2<f32>(x_2806.w, x_2806.y));
            let x_2810 : f32 = u_xlat14.y;
            u_xlat11.w = x_2810;
            let x_2813 : vec4<f32> = u_xlat9;
            let x_2816 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2819 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2813.x, x_2813.y) * vec2<f32>(x_2816.x, x_2816.y)) + vec2<f32>(x_2819.x, x_2819.w));
            let x_2822 : vec4<f32> = u_xlat14;
            let x_2823 : vec3<f32> = vec3<f32>(x_2822.x, x_2822.z, x_2822.w);
            let x_2824 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2823.x, x_2824.y, x_2823.y, x_2823.z);
            let x_2826 : vec4<f32> = u_xlat9;
            let x_2829 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y) * vec4<f32>(x_2829.x, x_2829.y, x_2829.x, x_2829.y)) + vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2832.y));
            let x_2835 : vec4<f32> = u_xlat9;
            let x_2838 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2841 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2835.x, x_2835.y) * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.w, x_2841.y));
            let x_2845 : f32 = u_xlat11.x;
            u_xlat12.x = x_2845;
            let x_2847 : vec4<f32> = u_xlat9;
            let x_2850 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2853 : vec4<f32> = u_xlat12;
            let x_2855 : vec2<f32> = ((vec2<f32>(x_2847.x, x_2847.y) * vec2<f32>(x_2850.x, x_2850.y)) + vec2<f32>(x_2853.x, x_2853.y));
            let x_2856 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2855.x, x_2855.y, x_2856.z, x_2856.w);
            let x_2859 : vec4<f32> = u_xlat10;
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2859.x, x_2859.x, x_2859.x, x_2859.x) * x_2861);
            let x_2864 : vec4<f32> = u_xlat10;
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2864.y, x_2864.y, x_2864.y, x_2864.y) * x_2866);
            let x_2869 : vec4<f32> = u_xlat10;
            let x_2871 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2869.z, x_2869.z, x_2869.z, x_2869.z) * x_2871);
            let x_2873 : vec4<f32> = u_xlat10;
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2873.w, x_2873.w, x_2873.w, x_2873.w) * x_2875);
            let x_2878 : vec4<f32> = u_xlat15;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.x, x_2878.y);
            let x_2881 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec43;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat76 = x_2890;
            let x_2892 : vec4<f32> = u_xlat15;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec44;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat77 = x_2904;
            let x_2905 : f32 = u_xlat77;
            let x_2907 : f32 = u_xlat20.y;
            u_xlat77 = (x_2905 * x_2907);
            let x_2910 : f32 = u_xlat20.x;
            let x_2911 : f32 = u_xlat76;
            let x_2913 : f32 = u_xlat77;
            u_xlat76 = ((x_2910 * x_2911) + x_2913);
            let x_2916 : vec2<f32> = u_xlat55;
            let x_2918 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2916.x, x_2916.y, x_2918);
            let x_2925 : vec3<f32> = txVec45;
            let x_2927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
            u_xlat77 = x_2927;
            let x_2929 : f32 = u_xlat20.z;
            let x_2930 : f32 = u_xlat77;
            let x_2932 : f32 = u_xlat76;
            u_xlat76 = ((x_2929 * x_2930) + x_2932);
            let x_2935 : vec4<f32> = u_xlat18;
            let x_2936 : vec2<f32> = vec2<f32>(x_2935.x, x_2935.y);
            let x_2938 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec46;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat77 = x_2947;
            let x_2949 : f32 = u_xlat20.w;
            let x_2950 : f32 = u_xlat77;
            let x_2952 : f32 = u_xlat76;
            u_xlat76 = ((x_2949 * x_2950) + x_2952);
            let x_2955 : vec4<f32> = u_xlat16;
            let x_2956 : vec2<f32> = vec2<f32>(x_2955.x, x_2955.y);
            let x_2958 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2956.x, x_2956.y, x_2958);
            let x_2965 : vec3<f32> = txVec47;
            let x_2967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2965.xy, x_2965.z);
            u_xlat77 = x_2967;
            let x_2969 : f32 = u_xlat21.x;
            let x_2970 : f32 = u_xlat77;
            let x_2972 : f32 = u_xlat76;
            u_xlat76 = ((x_2969 * x_2970) + x_2972);
            let x_2975 : vec4<f32> = u_xlat16;
            let x_2976 : vec2<f32> = vec2<f32>(x_2975.z, x_2975.w);
            let x_2978 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
            let x_2985 : vec3<f32> = txVec48;
            let x_2987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
            u_xlat77 = x_2987;
            let x_2989 : f32 = u_xlat21.y;
            let x_2990 : f32 = u_xlat77;
            let x_2992 : f32 = u_xlat76;
            u_xlat76 = ((x_2989 * x_2990) + x_2992);
            let x_2995 : vec4<f32> = u_xlat17;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.x, x_2995.y);
            let x_2998 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec49;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat77 = x_3007;
            let x_3009 : f32 = u_xlat21.z;
            let x_3010 : f32 = u_xlat77;
            let x_3012 : f32 = u_xlat76;
            u_xlat76 = ((x_3009 * x_3010) + x_3012);
            let x_3015 : vec4<f32> = u_xlat18;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.z, x_3015.w);
            let x_3018 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec50;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat77 = x_3027;
            let x_3029 : f32 = u_xlat21.w;
            let x_3030 : f32 = u_xlat77;
            let x_3032 : f32 = u_xlat76;
            u_xlat76 = ((x_3029 * x_3030) + x_3032);
            let x_3035 : vec4<f32> = u_xlat19;
            let x_3036 : vec2<f32> = vec2<f32>(x_3035.x, x_3035.y);
            let x_3038 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3036.x, x_3036.y, x_3038);
            let x_3045 : vec3<f32> = txVec51;
            let x_3047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3045.xy, x_3045.z);
            u_xlat77 = x_3047;
            let x_3049 : f32 = u_xlat22.x;
            let x_3050 : f32 = u_xlat77;
            let x_3052 : f32 = u_xlat76;
            u_xlat76 = ((x_3049 * x_3050) + x_3052);
            let x_3055 : vec4<f32> = u_xlat19;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
            let x_3058 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec52;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat77 = x_3067;
            let x_3069 : f32 = u_xlat22.y;
            let x_3070 : f32 = u_xlat77;
            let x_3072 : f32 = u_xlat76;
            u_xlat76 = ((x_3069 * x_3070) + x_3072);
            let x_3075 : vec2<f32> = u_xlat34;
            let x_3077 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec53;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat77 = x_3086;
            let x_3088 : f32 = u_xlat22.z;
            let x_3089 : f32 = u_xlat77;
            let x_3091 : f32 = u_xlat76;
            u_xlat76 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec2<f32> = u_xlat63;
            let x_3096 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec54;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat77 = x_3105;
            let x_3107 : f32 = u_xlat22.w;
            let x_3108 : f32 = u_xlat77;
            let x_3110 : f32 = u_xlat76;
            u_xlat76 = ((x_3107 * x_3108) + x_3110);
            let x_3113 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
            let x_3116 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3123 : vec3<f32> = txVec55;
            let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
            u_xlat77 = x_3125;
            let x_3127 : f32 = u_xlat10.x;
            let x_3128 : f32 = u_xlat77;
            let x_3130 : f32 = u_xlat76;
            u_xlat76 = ((x_3127 * x_3128) + x_3130);
            let x_3133 : vec4<f32> = u_xlat14;
            let x_3134 : vec2<f32> = vec2<f32>(x_3133.z, x_3133.w);
            let x_3136 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
            let x_3143 : vec3<f32> = txVec56;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat77 = x_3145;
            let x_3147 : f32 = u_xlat10.y;
            let x_3148 : f32 = u_xlat77;
            let x_3150 : f32 = u_xlat76;
            u_xlat76 = ((x_3147 * x_3148) + x_3150);
            let x_3153 : vec2<f32> = u_xlat58;
            let x_3155 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec57;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat77 = x_3164;
            let x_3166 : f32 = u_xlat10.z;
            let x_3167 : f32 = u_xlat77;
            let x_3169 : f32 = u_xlat76;
            u_xlat76 = ((x_3166 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat9;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
            let x_3175 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec58;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat77 = x_3184;
            let x_3186 : f32 = u_xlat10.w;
            let x_3187 : f32 = u_xlat77;
            let x_3189 : f32 = u_xlat76;
            u_xlat75 = ((x_3186 * x_3187) + x_3189);
          }
        }
      } else {
        let x_3193 : vec4<f32> = u_xlat8;
        let x_3194 : vec2<f32> = vec2<f32>(x_3193.x, x_3193.y);
        let x_3196 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
        let x_3203 : vec3<f32> = txVec59;
        let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
        u_xlat75 = x_3205;
      }
      let x_3206 : i32 = u_xlati29;
      let x_3208 : f32 = x_257.x_AdditionalShadowParams[x_3206].x;
      u_xlat76 = (1.0f + -(x_3208));
      let x_3211 : f32 = u_xlat75;
      let x_3212 : i32 = u_xlati29;
      let x_3214 : f32 = x_257.x_AdditionalShadowParams[x_3212].x;
      let x_3216 : f32 = u_xlat76;
      u_xlat75 = ((x_3211 * x_3214) + x_3216);
      let x_3219 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3219);
      let x_3222 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3222 >= 1.0f);
      let x_3225 : bool = u_xlatb76;
      let x_3227 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3225 | x_3227);
      let x_3229 : bool = u_xlatb76;
      let x_3230 : f32 = u_xlat75;
      u_xlat75 = select(x_3230, 1.0f, x_3229);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3233 : f32 = u_xlat75;
    u_xlat76 = (-(x_3233) + 1.0f);
    let x_3237 : f32 = u_xlat4.x;
    let x_3238 : f32 = u_xlat76;
    let x_3240 : f32 = u_xlat75;
    u_xlat75 = ((x_3237 * x_3238) + x_3240);
    let x_3242 : f32 = u_xlat75;
    let x_3244 : f32 = u_xlat52.x;
    u_xlat52.x = (x_3242 * x_3244);
    let x_3247 : vec2<f32> = u_xlat52;
    let x_3249 : i32 = u_xlati29;
    let x_3251 : vec4<f32> = x_1778.x_AdditionalLightsColor[x_3249];
    u_xlat29 = (vec3<f32>(x_3247.x, x_3247.x, x_3247.x) * vec3<f32>(x_3251.x, x_3251.y, x_3251.z));
    let x_3254 : vec4<f32> = u_xlat2;
    let x_3256 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3254.x, x_3254.y, x_3254.z), vec3<f32>(x_3256.x, x_3256.y, x_3256.z));
    let x_3259 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3259, 0.0f, 1.0f);
    let x_3261 : vec3<f32> = u_xlat29;
    let x_3262 : f32 = u_xlat76;
    let x_3264 : vec3<f32> = (x_3261 * vec3<f32>(x_3262, x_3262, x_3262));
    let x_3265 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3264.x, x_3264.y, x_3264.z, x_3265.w);
    let x_3267 : vec3<f32> = u_xlat1;
    let x_3268 : f32 = u_xlat70;
    let x_3271 : vec4<f32> = u_xlat7;
    let x_3273 : vec3<f32> = ((x_3267 * vec3<f32>(x_3268, x_3268, x_3268)) + vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
    let x_3274 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
    let x_3276 : vec4<f32> = u_xlat7;
    let x_3278 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3276.x, x_3276.y, x_3276.z), vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
    let x_3281 : f32 = u_xlat76;
    u_xlat76 = max(x_3281, 1.17549435e-38f);
    let x_3283 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3283);
    let x_3285 : f32 = u_xlat76;
    let x_3287 : vec4<f32> = u_xlat7;
    let x_3289 : vec3<f32> = (vec3<f32>(x_3285, x_3285, x_3285) * vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
    let x_3292 : vec4<f32> = u_xlat2;
    let x_3294 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_3292.x, x_3292.y, x_3292.z), vec3<f32>(x_3294.x, x_3294.y, x_3294.z));
    let x_3299 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_3299, 0.0f, 1.0f);
    let x_3303 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_3303);
    let x_3306 : f32 = u_xlat71;
    let x_3308 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3306 * x_3308);
    let x_3312 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_3312);
    let x_3315 : vec4<f32> = u_xlat7;
    let x_3318 : vec4<f32> = x_41.x_SpecColor;
    let x_3320 : vec3<f32> = (vec3<f32>(x_3315.x, x_3315.x, x_3315.x) * vec3<f32>(x_3318.x, x_3318.y, x_3318.z));
    let x_3321 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);
    let x_3323 : vec3<f32> = u_xlat29;
    let x_3324 : vec4<f32> = u_xlat7;
    u_xlat29 = (x_3323 * vec3<f32>(x_3324.x, x_3324.y, x_3324.z));
    let x_3327 : vec4<f32> = u_xlat8;
    let x_3329 : vec4<f32> = u_xlat0;
    let x_3332 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3327.x, x_3327.y, x_3327.z) * vec3<f32>(x_3329.y, x_3329.z, x_3329.w)) + x_3332);
    let x_3334 : vec3<f32> = u_xlat28;
    let x_3335 : vec3<f32> = u_xlat29;
    u_xlat28 = (x_3334 + x_3335);

    continuing {
      let x_3337 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3337 + bitcast<u32>(1i));
    }
  }
  let x_3340 : vec3<f32> = u_xlat26;
  let x_3341 : vec4<f32> = u_xlat0;
  let x_3344 : vec3<f32> = u_xlat27;
  u_xlat23 = ((x_3340 * vec3<f32>(x_3341.y, x_3341.z, x_3341.w)) + x_3344);
  let x_3346 : vec3<f32> = u_xlat28;
  let x_3347 : vec3<f32> = u_xlat23;
  u_xlat23 = (x_3346 + x_3347);
  let x_3349 : f32 = u_xlat3;
  let x_3350 : f32 = u_xlat3;
  u_xlat1.x = (x_3349 * -(x_3350));
  let x_3355 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3355);
  let x_3358 : vec3<f32> = u_xlat23;
  let x_3360 : vec4<f32> = x_28.unity_FogColor;
  u_xlat23 = (x_3358 + -(vec3<f32>(x_3360.x, x_3360.y, x_3360.z)));
  let x_3366 : vec3<f32> = u_xlat1;
  let x_3368 : vec3<f32> = u_xlat23;
  let x_3371 : vec4<f32> = x_28.unity_FogColor;
  let x_3373 : vec3<f32> = ((vec3<f32>(x_3366.x, x_3366.x, x_3366.x) * x_3368) + vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
  let x_3374 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3374.w);
  let x_3378 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3378 == 1.0f);
  let x_3380 : bool = u_xlatb23;
  if (x_3380) {
    let x_3385 : f32 = u_xlat0.x;
    x_3381 = x_3385;
  } else {
    x_3381 = 1.0f;
  }
  let x_3387 : f32 = x_3381;
  SV_Target0.w = x_3387;
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


