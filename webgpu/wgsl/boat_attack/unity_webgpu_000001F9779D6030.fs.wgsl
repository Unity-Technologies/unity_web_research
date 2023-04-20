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

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_207 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(2) var<uniform> x_1533 : UnityPerDraw;

var<private> u_xlat73 : f32;

var<private> u_xlatu73 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1710 : AdditionalLights;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat76 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1872 : f32;
  var x_1881 : f32;
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
  var x_3191 : f32;
  var x_3347 : f32;
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
  let x_150 : vec2<f32> = vs_TEXCOORD7;
  let x_152 : f32 = x_28.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_150, x_152);
  u_xlat3 = x_153;
  let x_159 : vec2<f32> = vs_TEXCOORD7;
  let x_161 : f32 = x_28.x_GlobalMipBias.x;
  let x_162 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_159, x_161);
  let x_163 : vec3<f32> = vec3<f32>(x_162.x, x_162.y, x_162.z);
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat3;
  let x_170 : vec3<f32> = (vec3<f32>(x_166.x, x_166.y, x_166.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec3<f32> = u_xlat1;
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat71 = dot(x_174, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : f32 = u_xlat71;
  u_xlat71 = (x_178 + 0.5f);
  let x_181 : f32 = u_xlat71;
  let x_183 : vec4<f32> = u_xlat4;
  let x_185 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_189 : f32 = u_xlat3.w;
  u_xlat71 = max(x_189, 0.00009999999747378752f);
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : f32 = u_xlat71;
  let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) / vec3<f32>(x_194, x_194, x_194));
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_210 : f32 = x_207.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_210);
  let x_212 : bool = u_xlatb71;
  if (x_212) {
    let x_216 : f32 = x_207.x_MainLightShadowParams.y;
    u_xlatb71 = (x_216 == 1.0f);
    let x_219 : bool = u_xlatb71;
    if (x_219) {
      let x_224 : vec4<f32> = vs_TEXCOORD6;
      let x_227 : vec4<f32> = x_207.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_224.x, x_224.y, x_224.x, x_224.y) + x_227);
      let x_231 : vec4<f32> = u_xlat4;
      let x_232 : vec2<f32> = vec2<f32>(x_231.x, x_231.y);
      let x_235 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_232.x, x_232.y, x_235);
      let x_248 : vec3<f32> = txVec0;
      let x_250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_248.xy, x_248.z);
      u_xlat5.x = x_250;
      let x_253 : vec4<f32> = u_xlat4;
      let x_254 : vec2<f32> = vec2<f32>(x_253.z, x_253.w);
      let x_256 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_254.x, x_254.y, x_256);
      let x_263 : vec3<f32> = txVec1;
      let x_265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_263.xy, x_263.z);
      u_xlat5.y = x_265;
      let x_267 : vec4<f32> = vs_TEXCOORD6;
      let x_271 : vec4<f32> = x_207.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_267.x, x_267.y, x_267.x, x_267.y) + x_271);
      let x_274 : vec4<f32> = u_xlat4;
      let x_275 : vec2<f32> = vec2<f32>(x_274.x, x_274.y);
      let x_277 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_275.x, x_275.y, x_277);
      let x_284 : vec3<f32> = txVec2;
      let x_286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_284.xy, x_284.z);
      u_xlat5.z = x_286;
      let x_289 : vec4<f32> = u_xlat4;
      let x_290 : vec2<f32> = vec2<f32>(x_289.z, x_289.w);
      let x_292 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_290.x, x_290.y, x_292);
      let x_299 : vec3<f32> = txVec3;
      let x_301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_299.xy, x_299.z);
      u_xlat5.w = x_301;
      let x_303 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_303, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_310 : f32 = x_207.x_MainLightShadowParams.y;
      u_xlatb72 = (x_310 == 2.0f);
      let x_313 : bool = u_xlatb72;
      if (x_313) {
        let x_316 : vec4<f32> = vs_TEXCOORD6;
        let x_320 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_324 : vec2<f32> = ((vec2<f32>(x_316.x, x_316.y) * vec2<f32>(x_320.z, x_320.w)) + vec2<f32>(0.5f, 0.5f));
        let x_325 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_325.z, x_325.w);
        let x_327 : vec4<f32> = u_xlat4;
        let x_329 : vec2<f32> = floor(vec2<f32>(x_327.x, x_327.y));
        let x_330 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
        let x_334 : vec4<f32> = vs_TEXCOORD6;
        let x_337 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_340 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_334.x, x_334.y) * vec2<f32>(x_337.z, x_337.w)) + -(vec2<f32>(x_340.x, x_340.y)));
        let x_344 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_344.x, x_344.x, x_344.y, x_344.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_349 : vec4<f32> = u_xlat5;
        let x_351 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_349.x, x_349.x, x_349.z, x_349.z) * vec4<f32>(x_351.x, x_351.x, x_351.z, x_351.z));
        let x_354 : vec4<f32> = u_xlat6;
        let x_358 : vec2<f32> = (vec2<f32>(x_354.y, x_354.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_359 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_358.x, x_359.y, x_358.y, x_359.w);
        let x_361 : vec4<f32> = u_xlat6;
        let x_364 : vec2<f32> = u_xlat50;
        let x_366 : vec2<f32> = ((vec2<f32>(x_361.x, x_361.z) * vec2<f32>(0.5f, 0.5f)) + -(x_364));
        let x_367 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
        let x_370 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_370) + vec2<f32>(1.0f, 1.0f));
        let x_375 : vec2<f32> = u_xlat50;
        let x_377 : vec2<f32> = min(x_375, vec2<f32>(0.0f, 0.0f));
        let x_378 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
        let x_380 : vec4<f32> = u_xlat7;
        let x_383 : vec4<f32> = u_xlat7;
        let x_386 : vec2<f32> = u_xlat52;
        let x_387 : vec2<f32> = ((-(vec2<f32>(x_380.x, x_380.y)) * vec2<f32>(x_383.x, x_383.y)) + x_386);
        let x_388 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_390, vec2<f32>(0.0f, 0.0f));
        let x_392 : vec2<f32> = u_xlat50;
        let x_394 : vec2<f32> = u_xlat50;
        let x_396 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_392) * x_394) + vec2<f32>(x_396.y, x_396.w));
        let x_399 : vec4<f32> = u_xlat7;
        let x_401 : vec2<f32> = (vec2<f32>(x_399.x, x_399.y) + vec2<f32>(1.0f, 1.0f));
        let x_402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
        let x_404 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_404 + vec2<f32>(1.0f, 1.0f));
        let x_407 : vec4<f32> = u_xlat6;
        let x_411 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_412 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_414 : vec2<f32> = u_xlat52;
        let x_415 : vec2<f32> = (x_414 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_416 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_418 : vec4<f32> = u_xlat7;
        let x_420 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_421 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_424 : vec2<f32> = u_xlat50;
        let x_425 : vec2<f32> = (x_424 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_428.y, x_428.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_432 : f32 = u_xlat7.x;
        u_xlat8.z = x_432;
        let x_435 : f32 = u_xlat50.x;
        u_xlat8.w = x_435;
        let x_438 : f32 = u_xlat9.x;
        u_xlat6.z = x_438;
        let x_441 : f32 = u_xlat5.x;
        u_xlat6.w = x_441;
        let x_444 : vec4<f32> = u_xlat6;
        let x_446 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_444.z, x_444.w, x_444.x, x_444.z) + vec4<f32>(x_446.z, x_446.w, x_446.x, x_446.z));
        let x_450 : f32 = u_xlat8.y;
        u_xlat7.z = x_450;
        let x_453 : f32 = u_xlat50.y;
        u_xlat7.w = x_453;
        let x_456 : f32 = u_xlat6.y;
        u_xlat9.z = x_456;
        let x_459 : f32 = u_xlat5.z;
        u_xlat9.w = x_459;
        let x_461 : vec4<f32> = u_xlat7;
        let x_463 : vec4<f32> = u_xlat9;
        let x_465 : vec3<f32> = (vec3<f32>(x_461.z, x_461.y, x_461.w) + vec3<f32>(x_463.z, x_463.y, x_463.w));
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
        let x_468 : vec4<f32> = u_xlat6;
        let x_470 : vec4<f32> = u_xlat10;
        let x_472 : vec3<f32> = (vec3<f32>(x_468.x, x_468.z, x_468.w) / vec3<f32>(x_470.z, x_470.w, x_470.y));
        let x_473 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_480 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
        let x_483 : vec4<f32> = u_xlat9;
        let x_485 : vec4<f32> = u_xlat5;
        let x_487 : vec3<f32> = (vec3<f32>(x_483.z, x_483.y, x_483.w) / vec3<f32>(x_485.x, x_485.y, x_485.z));
        let x_488 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
        let x_490 : vec4<f32> = u_xlat7;
        let x_492 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_493 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat6;
        let x_498 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_500 : vec3<f32> = (vec3<f32>(x_495.y, x_495.x, x_495.z) * vec3<f32>(x_498.x, x_498.x, x_498.x));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat7;
        let x_506 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_508 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_506.y, x_506.y, x_506.y));
        let x_509 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
        let x_512 : f32 = u_xlat7.x;
        u_xlat6.w = x_512;
        let x_514 : vec4<f32> = u_xlat4;
        let x_517 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_520 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y) * vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y)) + vec4<f32>(x_520.y, x_520.w, x_520.x, x_520.w));
        let x_523 : vec4<f32> = u_xlat4;
        let x_526 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_523.x, x_523.y) * vec2<f32>(x_526.x, x_526.y)) + vec2<f32>(x_529.z, x_529.w));
        let x_533 : f32 = u_xlat6.y;
        u_xlat7.w = x_533;
        let x_535 : vec4<f32> = u_xlat7;
        let x_536 : vec2<f32> = vec2<f32>(x_535.y, x_535.z);
        let x_537 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_536.x, x_537.z, x_536.y);
        let x_539 : vec4<f32> = u_xlat4;
        let x_542 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_545 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) * vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y)) + vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.y));
        let x_548 : vec4<f32> = u_xlat4;
        let x_551 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y) * vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y)) + vec4<f32>(x_554.w, x_554.y, x_554.w, x_554.z));
        let x_557 : vec4<f32> = u_xlat4;
        let x_560 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_563 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_557.x, x_557.y, x_557.x, x_557.y) * vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y)) + vec4<f32>(x_563.x, x_563.w, x_563.z, x_563.w));
        let x_567 : vec4<f32> = u_xlat5;
        let x_569 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_567.x, x_567.x, x_567.x, x_567.y) * vec4<f32>(x_569.z, x_569.w, x_569.y, x_569.z));
        let x_573 : vec4<f32> = u_xlat5;
        let x_575 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_573.y, x_573.y, x_573.z, x_573.z) * x_575);
        let x_579 : f32 = u_xlat5.z;
        let x_581 : f32 = u_xlat10.y;
        u_xlat72 = (x_579 * x_581);
        let x_584 : vec4<f32> = u_xlat8;
        let x_585 : vec2<f32> = vec2<f32>(x_584.x, x_584.y);
        let x_587 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_585.x, x_585.y, x_587);
        let x_594 : vec3<f32> = txVec4;
        let x_596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_594.xy, x_594.z);
        u_xlat4.x = x_596;
        let x_599 : vec4<f32> = u_xlat8;
        let x_600 : vec2<f32> = vec2<f32>(x_599.z, x_599.w);
        let x_602 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_600.x, x_600.y, x_602);
        let x_610 : vec3<f32> = txVec5;
        let x_612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_610.xy, x_610.z);
        u_xlat27 = x_612;
        let x_613 : f32 = u_xlat27;
        let x_615 : f32 = u_xlat11.y;
        u_xlat27 = (x_613 * x_615);
        let x_618 : f32 = u_xlat11.x;
        let x_620 : f32 = u_xlat4.x;
        let x_622 : f32 = u_xlat27;
        u_xlat4.x = ((x_618 * x_620) + x_622);
        let x_626 : vec2<f32> = u_xlat50;
        let x_628 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_626.x, x_626.y, x_628);
        let x_635 : vec3<f32> = txVec6;
        let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
        u_xlat27 = x_637;
        let x_639 : f32 = u_xlat11.z;
        let x_640 : f32 = u_xlat27;
        let x_643 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_639 * x_640) + x_643);
        let x_647 : vec4<f32> = u_xlat7;
        let x_648 : vec2<f32> = vec2<f32>(x_647.x, x_647.y);
        let x_650 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_648.x, x_648.y, x_650);
        let x_657 : vec3<f32> = txVec7;
        let x_659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_657.xy, x_657.z);
        u_xlat27 = x_659;
        let x_661 : f32 = u_xlat11.w;
        let x_662 : f32 = u_xlat27;
        let x_665 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_661 * x_662) + x_665);
        let x_669 : vec4<f32> = u_xlat9;
        let x_670 : vec2<f32> = vec2<f32>(x_669.x, x_669.y);
        let x_672 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_670.x, x_670.y, x_672);
        let x_679 : vec3<f32> = txVec8;
        let x_681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_679.xy, x_679.z);
        u_xlat27 = x_681;
        let x_683 : f32 = u_xlat12.x;
        let x_684 : f32 = u_xlat27;
        let x_687 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_683 * x_684) + x_687);
        let x_691 : vec4<f32> = u_xlat9;
        let x_692 : vec2<f32> = vec2<f32>(x_691.z, x_691.w);
        let x_694 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_692.x, x_692.y, x_694);
        let x_701 : vec3<f32> = txVec9;
        let x_703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_701.xy, x_701.z);
        u_xlat27 = x_703;
        let x_705 : f32 = u_xlat12.y;
        let x_706 : f32 = u_xlat27;
        let x_709 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_705 * x_706) + x_709);
        let x_713 : vec4<f32> = u_xlat7;
        let x_714 : vec2<f32> = vec2<f32>(x_713.z, x_713.w);
        let x_716 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec10;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat27 = x_725;
        let x_727 : f32 = u_xlat12.z;
        let x_728 : f32 = u_xlat27;
        let x_731 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_727 * x_728) + x_731);
        let x_735 : vec4<f32> = u_xlat6;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec11;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat27 = x_747;
        let x_749 : f32 = u_xlat12.w;
        let x_750 : f32 = u_xlat27;
        let x_753 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_749 * x_750) + x_753);
        let x_757 : vec4<f32> = u_xlat6;
        let x_758 : vec2<f32> = vec2<f32>(x_757.z, x_757.w);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec12;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
        u_xlat27 = x_769;
        let x_770 : f32 = u_xlat72;
        let x_771 : f32 = u_xlat27;
        let x_774 : f32 = u_xlat4.x;
        u_xlat71 = ((x_770 * x_771) + x_774);
      } else {
        let x_777 : vec4<f32> = vs_TEXCOORD6;
        let x_780 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_783 : vec2<f32> = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.z, x_780.w)) + vec2<f32>(0.5f, 0.5f));
        let x_784 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat4;
        let x_788 : vec2<f32> = floor(vec2<f32>(x_786.x, x_786.y));
        let x_789 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_791 : vec4<f32> = vs_TEXCOORD6;
        let x_794 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_797 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_794.z, x_794.w)) + -(vec2<f32>(x_797.x, x_797.y)));
        let x_801 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_801.x, x_801.x, x_801.y, x_801.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_804 : vec4<f32> = u_xlat5;
        let x_806 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_804.x, x_804.x, x_804.z, x_804.z) * vec4<f32>(x_806.x, x_806.x, x_806.z, x_806.z));
        let x_809 : vec4<f32> = u_xlat6;
        let x_813 : vec2<f32> = (vec2<f32>(x_809.y, x_809.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_814 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_814.x, x_813.x, x_814.z, x_813.y);
        let x_816 : vec4<f32> = u_xlat6;
        let x_819 : vec2<f32> = u_xlat50;
        let x_821 : vec2<f32> = ((vec2<f32>(x_816.x, x_816.z) * vec2<f32>(0.5f, 0.5f)) + -(x_819));
        let x_822 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_821.x, x_822.y, x_821.y, x_822.w);
        let x_824 : vec2<f32> = u_xlat50;
        let x_826 : vec2<f32> = (-(x_824) + vec2<f32>(1.0f, 1.0f));
        let x_827 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_829 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_829, vec2<f32>(0.0f, 0.0f));
        let x_831 : vec2<f32> = u_xlat52;
        let x_833 : vec2<f32> = u_xlat52;
        let x_835 : vec4<f32> = u_xlat6;
        let x_837 : vec2<f32> = ((-(x_831) * x_833) + vec2<f32>(x_835.x, x_835.y));
        let x_838 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_840, vec2<f32>(0.0f, 0.0f));
        let x_843 : vec2<f32> = u_xlat52;
        let x_845 : vec2<f32> = u_xlat52;
        let x_847 : vec4<f32> = u_xlat5;
        let x_849 : vec2<f32> = ((-(x_843) * x_845) + vec2<f32>(x_847.y, x_847.w));
        let x_850 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_849.x, x_850.y, x_849.y);
        let x_852 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = (vec2<f32>(x_852.x, x_852.y) + vec2<f32>(2.0f, 2.0f));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec3<f32> = u_xlat28;
        let x_860 : vec2<f32> = (vec2<f32>(x_858.x, x_858.z) + vec2<f32>(2.0f, 2.0f));
        let x_861 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_861.x, x_860.x, x_861.z, x_860.y);
        let x_864 : f32 = u_xlat5.y;
        u_xlat8.z = (x_864 * 0.08163200318813323975f);
        let x_868 : vec4<f32> = u_xlat5;
        let x_871 : vec3<f32> = (vec3<f32>(x_868.z, x_868.x, x_868.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat6;
        let x_877 : vec2<f32> = (vec2<f32>(x_874.x, x_874.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_878 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_881 : f32 = u_xlat9.y;
        u_xlat8.x = x_881;
        let x_883 : vec2<f32> = u_xlat50;
        let x_890 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_891 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_893 : vec2<f32> = u_xlat50;
        let x_897 : vec2<f32> = ((vec2<f32>(x_893.x, x_893.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_898 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_897.x, x_898.y, x_897.y, x_898.w);
        let x_901 : f32 = u_xlat5.x;
        u_xlat6.y = x_901;
        let x_904 : f32 = u_xlat7.y;
        u_xlat6.w = x_904;
        let x_906 : vec4<f32> = u_xlat6;
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_906 + x_907);
        let x_909 : vec2<f32> = u_xlat50;
        let x_912 : vec2<f32> = ((vec2<f32>(x_909.y, x_909.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_913.x, x_912.x, x_913.z, x_912.y);
        let x_915 : vec2<f32> = u_xlat50;
        let x_918 : vec2<f32> = ((vec2<f32>(x_915.y, x_915.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_919.y, x_918.y, x_919.w);
        let x_922 : f32 = u_xlat5.y;
        u_xlat7.y = x_922;
        let x_924 : vec4<f32> = u_xlat7;
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_924 + x_925);
        let x_927 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_927 / x_928);
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_930 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_936 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_936 / x_937);
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_939 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_941 : vec4<f32> = u_xlat6;
        let x_944 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_941.w, x_941.x, x_941.y, x_941.z) * vec4<f32>(x_944.x, x_944.x, x_944.x, x_944.x));
        let x_947 : vec4<f32> = u_xlat7;
        let x_950 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_947.x, x_947.w, x_947.y, x_947.z) * vec4<f32>(x_950.y, x_950.y, x_950.y, x_950.y));
        let x_953 : vec4<f32> = u_xlat6;
        let x_954 : vec3<f32> = vec3<f32>(x_953.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_954.z);
        let x_958 : f32 = u_xlat7.x;
        u_xlat9.y = x_958;
        let x_960 : vec4<f32> = u_xlat4;
        let x_963 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) * vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y)) + vec4<f32>(x_966.x, x_966.y, x_966.z, x_966.y));
        let x_969 : vec4<f32> = u_xlat4;
        let x_972 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.x, x_972.y)) + vec2<f32>(x_975.w, x_975.y));
        let x_979 : f32 = u_xlat9.y;
        u_xlat6.y = x_979;
        let x_982 : f32 = u_xlat7.z;
        u_xlat9.y = x_982;
        let x_984 : vec4<f32> = u_xlat4;
        let x_987 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y)) + vec4<f32>(x_990.x, x_990.y, x_990.z, x_990.y));
        let x_993 : vec4<f32> = u_xlat4;
        let x_996 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat9;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.x, x_996.y)) + vec2<f32>(x_999.w, x_999.y));
        let x_1002 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat9.y;
        u_xlat6.z = x_1005;
        let x_1008 : vec4<f32> = u_xlat4;
        let x_1011 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y) * vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y)) + vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.z));
        let x_1018 : f32 = u_xlat7.w;
        u_xlat9.y = x_1018;
        let x_1021 : vec4<f32> = u_xlat4;
        let x_1024 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y) * vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y)) + vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1027.y));
        let x_1031 : vec4<f32> = u_xlat4;
        let x_1034 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.x, x_1034.y)) + vec2<f32>(x_1037.w, x_1037.y));
        let x_1040 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1039.x, x_1039.y, x_1040.z);
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.w = x_1043;
        let x_1046 : vec4<f32> = u_xlat4;
        let x_1049 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.x, x_1052.w));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = vec3<f32>(x_1055.x, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1057.y, x_1056.y, x_1056.z);
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1065.y));
        let x_1069 : vec4<f32> = u_xlat4;
        let x_1072 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1075.w, x_1075.y));
        let x_1079 : f32 = u_xlat6.x;
        u_xlat7.x = x_1079;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.x, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : vec4<f32> = u_xlat5;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.x) * x_1095);
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.y, x_1098.y) * x_1100);
        let x_1103 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1103.z, x_1103.z, x_1103.z, x_1103.z) * x_1105);
        let x_1107 : vec4<f32> = u_xlat5;
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1107.w, x_1107.w, x_1107.w, x_1107.w) * x_1109);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.x, x_1112.y);
        let x_1115 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec13;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
        u_xlat72 = x_1124;
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec14;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat6.x = x_1138;
        let x_1141 : f32 = u_xlat6.x;
        let x_1143 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1141 * x_1143);
        let x_1147 : f32 = u_xlat15.x;
        let x_1148 : f32 = u_xlat72;
        let x_1151 : f32 = u_xlat6.x;
        u_xlat72 = ((x_1147 * x_1148) + x_1151);
        let x_1154 : vec2<f32> = u_xlat50;
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec15;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat50.x = x_1165;
        let x_1168 : f32 = u_xlat15.z;
        let x_1170 : f32 = u_xlat50.x;
        let x_1172 : f32 = u_xlat72;
        u_xlat72 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat13;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec16;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat50.x = x_1187;
        let x_1190 : f32 = u_xlat15.w;
        let x_1192 : f32 = u_xlat50.x;
        let x_1194 : f32 = u_xlat72;
        u_xlat72 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec17;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat50.x = x_1209;
        let x_1212 : f32 = u_xlat16.x;
        let x_1214 : f32 = u_xlat50.x;
        let x_1216 : f32 = u_xlat72;
        u_xlat72 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec18;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat50.x = x_1231;
        let x_1234 : f32 = u_xlat16.y;
        let x_1236 : f32 = u_xlat50.x;
        let x_1238 : f32 = u_xlat72;
        u_xlat72 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec19;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat50.x = x_1253;
        let x_1256 : f32 = u_xlat16.z;
        let x_1258 : f32 = u_xlat50.x;
        let x_1260 : f32 = u_xlat72;
        u_xlat72 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec20;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat50.x = x_1275;
        let x_1278 : f32 = u_xlat16.w;
        let x_1280 : f32 = u_xlat50.x;
        let x_1282 : f32 = u_xlat72;
        u_xlat72 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat14;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec21;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat50.x = x_1297;
        let x_1300 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat50.x;
        let x_1304 : f32 = u_xlat72;
        u_xlat72 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat14;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec22;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat50.x = x_1319;
        let x_1322 : f32 = u_xlat17.y;
        let x_1324 : f32 = u_xlat50.x;
        let x_1326 : f32 = u_xlat72;
        u_xlat72 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec3<f32> = u_xlat29;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec23;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat50.x = x_1341;
        let x_1344 : f32 = u_xlat17.z;
        let x_1346 : f32 = u_xlat50.x;
        let x_1348 : f32 = u_xlat72;
        u_xlat72 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec2<f32> = u_xlat58;
        let x_1353 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec24;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat50.x = x_1362;
        let x_1365 : f32 = u_xlat17.w;
        let x_1367 : f32 = u_xlat50.x;
        let x_1369 : f32 = u_xlat72;
        u_xlat72 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat9;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec25;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat50.x = x_1384;
        let x_1387 : f32 = u_xlat5.x;
        let x_1389 : f32 = u_xlat50.x;
        let x_1391 : f32 = u_xlat72;
        u_xlat72 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec26;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat50.x = x_1406;
        let x_1409 : f32 = u_xlat5.y;
        let x_1411 : f32 = u_xlat50.x;
        let x_1413 : f32 = u_xlat72;
        u_xlat72 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec2<f32> = u_xlat53;
        let x_1418 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec27;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat50.x = x_1427;
        let x_1430 : f32 = u_xlat5.z;
        let x_1432 : f32 = u_xlat50.x;
        let x_1434 : f32 = u_xlat72;
        u_xlat72 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat4;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec28;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat4.x = x_1449;
        let x_1452 : f32 = u_xlat5.w;
        let x_1454 : f32 = u_xlat4.x;
        let x_1456 : f32 = u_xlat72;
        u_xlat71 = ((x_1452 * x_1454) + x_1456);
      }
    }
  } else {
    let x_1460 : vec4<f32> = vs_TEXCOORD6;
    let x_1461 : vec2<f32> = vec2<f32>(x_1460.x, x_1460.y);
    let x_1463 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
    let x_1470 : vec3<f32> = txVec29;
    let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
    u_xlat71 = x_1472;
  }
  let x_1474 : f32 = x_207.x_MainLightShadowParams.x;
  u_xlat72 = (-(x_1474) + 1.0f);
  let x_1477 : f32 = u_xlat71;
  let x_1479 : f32 = x_207.x_MainLightShadowParams.x;
  let x_1481 : f32 = u_xlat72;
  u_xlat71 = ((x_1477 * x_1479) + x_1481);
  let x_1484 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (0.0f >= x_1484);
  let x_1488 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1488 >= 1.0f);
  let x_1490 : bool = u_xlatb72;
  let x_1491 : bool = u_xlatb4;
  u_xlatb72 = (x_1490 | x_1491);
  let x_1493 : bool = u_xlatb72;
  let x_1494 : f32 = u_xlat71;
  u_xlat71 = select(x_1494, 1.0f, x_1493);
  let x_1496 : vec3<f32> = vs_TEXCOORD1;
  let x_1498 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1500 : vec3<f32> = (x_1496 + -(x_1498));
  let x_1501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1503 : vec4<f32> = u_xlat4;
  let x_1505 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1508 : f32 = u_xlat72;
  let x_1510 : f32 = x_207.x_MainLightShadowParams.z;
  let x_1513 : f32 = x_207.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1508 * x_1510) + x_1513);
  let x_1517 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1517, 0.0f, 1.0f);
  let x_1520 : f32 = u_xlat71;
  u_xlat27 = (-(x_1520) + 1.0f);
  let x_1524 : f32 = u_xlat4.x;
  let x_1525 : f32 = u_xlat27;
  let x_1527 : f32 = u_xlat71;
  u_xlat71 = ((x_1524 * x_1525) + x_1527);
  let x_1529 : f32 = u_xlat71;
  let x_1535 : f32 = x_1533.unity_LightData.z;
  u_xlat71 = (x_1529 * x_1535);
  let x_1537 : f32 = u_xlat71;
  let x_1540 : vec4<f32> = x_28.x_MainLightColor;
  let x_1542 : vec3<f32> = (vec3<f32>(x_1537, x_1537, x_1537) * vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
  let x_1543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  let x_1545 : vec3<f32> = u_xlat1;
  let x_1547 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat71 = dot(x_1545, vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
  let x_1550 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1550, 0.0f, 1.0f);
  let x_1552 : f32 = u_xlat71;
  let x_1554 : vec4<f32> = u_xlat4;
  let x_1556 : vec3<f32> = (vec3<f32>(x_1552, x_1552, x_1552) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
  let x_1560 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1560 * 10.0f) + 1.0f);
  let x_1564 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1564);
  let x_1566 : vec3<f32> = u_xlat2;
  let x_1567 : f32 = u_xlat70;
  let x_1571 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1573 : vec3<f32> = ((x_1566 * vec3<f32>(x_1567, x_1567, x_1567)) + vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1577 : vec4<f32> = u_xlat6;
  let x_1579 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1582 : f32 = u_xlat73;
  u_xlat73 = max(x_1582, 1.17549435e-38f);
  let x_1585 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1585);
  let x_1587 : f32 = u_xlat73;
  let x_1589 : vec4<f32> = u_xlat6;
  let x_1591 : vec3<f32> = (vec3<f32>(x_1587, x_1587, x_1587) * vec3<f32>(x_1589.x, x_1589.y, x_1589.z));
  let x_1592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
  let x_1594 : vec3<f32> = u_xlat1;
  let x_1595 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(x_1594, vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
  let x_1598 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1598, 0.0f, 1.0f);
  let x_1600 : f32 = u_xlat73;
  u_xlat73 = log2(x_1600);
  let x_1602 : f32 = u_xlat71;
  let x_1603 : f32 = u_xlat73;
  u_xlat73 = (x_1602 * x_1603);
  let x_1605 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1605);
  let x_1607 : f32 = u_xlat73;
  let x_1610 : vec4<f32> = x_41.x_SpecColor;
  let x_1612 : vec3<f32> = (vec3<f32>(x_1607, x_1607, x_1607) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : vec4<f32> = u_xlat4;
  let x_1617 : vec4<f32> = u_xlat6;
  let x_1619 : vec3<f32> = (vec3<f32>(x_1615.x, x_1615.y, x_1615.z) * vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
  let x_1620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
  let x_1622 : vec4<f32> = u_xlat5;
  let x_1624 : vec4<f32> = u_xlat0;
  let x_1627 : vec4<f32> = u_xlat4;
  let x_1629 : vec3<f32> = ((vec3<f32>(x_1622.x, x_1622.y, x_1622.z) * vec3<f32>(x_1624.y, x_1624.z, x_1624.w)) + vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
  let x_1630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
  let x_1634 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1636 : f32 = x_1533.unity_LightData.y;
  u_xlat73 = min(x_1634, x_1636);
  let x_1640 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1640));
  let x_1643 : f32 = u_xlat72;
  let x_1646 : f32 = x_207.x_AdditionalShadowFadeParams.x;
  let x_1649 : f32 = x_207.x_AdditionalShadowFadeParams.y;
  u_xlat72 = ((x_1643 * x_1646) + x_1649);
  let x_1651 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1651, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1663 : u32 = u_xlatu_loop_1;
    let x_1664 : u32 = u_xlatu73;
    if ((x_1663 < x_1664)) {
    } else {
      break;
    }
    let x_1667 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1667 >> 2u);
    let x_1671 : u32 = u_xlatu_loop_1;
    u_xlati29 = bitcast<i32>((x_1671 & 3u));
    let x_1674 : u32 = u_xlatu6;
    let x_1677 : vec4<f32> = x_1533.unity_LightIndices[bitcast<i32>(x_1674)];
    let x_1687 : i32 = u_xlati29;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1692 : vec4<u32> = indexable[x_1687];
    u_xlat6.x = dot(x_1677, bitcast<vec4<f32>>(x_1692));
    let x_1698 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1698);
    let x_1700 : vec3<f32> = vs_TEXCOORD1;
    let x_1711 : i32 = u_xlati6;
    let x_1713 : vec4<f32> = x_1710.x_AdditionalLightsPosition[x_1711];
    let x_1716 : i32 = u_xlati6;
    let x_1718 : vec4<f32> = x_1710.x_AdditionalLightsPosition[x_1716];
    u_xlat29 = ((-(x_1700) * vec3<f32>(x_1713.w, x_1713.w, x_1713.w)) + vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
    let x_1721 : vec3<f32> = u_xlat29;
    let x_1722 : vec3<f32> = u_xlat29;
    u_xlat7.x = dot(x_1721, x_1722);
    let x_1726 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1726, 0.00006103515625f);
    let x_1731 : f32 = u_xlat7.x;
    u_xlat30.x = inverseSqrt(x_1731);
    let x_1734 : vec3<f32> = u_xlat29;
    let x_1735 : vec3<f32> = u_xlat30;
    u_xlat29 = (x_1734 * vec3<f32>(x_1735.x, x_1735.x, x_1735.x));
    let x_1739 : f32 = u_xlat7.x;
    u_xlat30.x = (1.0f / x_1739);
    let x_1743 : f32 = u_xlat7.x;
    let x_1744 : i32 = u_xlati6;
    let x_1746 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1744].x;
    u_xlat7.x = (x_1743 * x_1746);
    let x_1750 : f32 = u_xlat7.x;
    let x_1753 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1750) * x_1753) + 1.0f);
    let x_1758 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1758, 0.0f);
    let x_1762 : f32 = u_xlat7.x;
    let x_1764 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1762 * x_1764);
    let x_1768 : f32 = u_xlat7.x;
    let x_1770 : f32 = u_xlat30.x;
    u_xlat7.x = (x_1768 * x_1770);
    let x_1773 : i32 = u_xlati6;
    let x_1775 : vec4<f32> = x_1710.x_AdditionalLightsSpotDir[x_1773];
    let x_1777 : vec3<f32> = u_xlat29;
    u_xlat30.x = dot(vec3<f32>(x_1775.x, x_1775.y, x_1775.z), x_1777);
    let x_1781 : f32 = u_xlat30.x;
    let x_1782 : i32 = u_xlati6;
    let x_1784 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1782].z;
    let x_1786 : i32 = u_xlati6;
    let x_1788 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1786].w;
    u_xlat30.x = ((x_1781 * x_1784) + x_1788);
    let x_1792 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_1792, 0.0f, 1.0f);
    let x_1796 : f32 = u_xlat30.x;
    let x_1798 : f32 = u_xlat30.x;
    u_xlat30.x = (x_1796 * x_1798);
    let x_1802 : f32 = u_xlat30.x;
    let x_1804 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1802 * x_1804);
    let x_1809 : i32 = u_xlati6;
    let x_1811 : f32 = x_207.x_AdditionalShadowParams[x_1809].w;
    u_xlati30 = i32(x_1811);
    let x_1814 : i32 = u_xlati30;
    u_xlatb53 = (x_1814 >= 0i);
    let x_1816 : bool = u_xlatb53;
    if (x_1816) {
      let x_1820 : i32 = u_xlati6;
      let x_1822 : f32 = x_207.x_AdditionalShadowParams[x_1820].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1822, x_1822, x_1822, x_1822))));
      let x_1827 : bool = u_xlatb53;
      if (x_1827) {
        let x_1832 : vec3<f32> = u_xlat29;
        let x_1835 : vec3<f32> = u_xlat29;
        let x_1838 : vec4<bool> = (abs(vec4<f32>(x_1832.z, x_1832.z, x_1832.y, x_1832.z)) >= abs(vec4<f32>(x_1835.x, x_1835.y, x_1835.x, x_1835.x)));
        let x_1840 : vec3<bool> = vec3<bool>(x_1838.x, x_1838.y, x_1838.z);
        let x_1841 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
        let x_1844 : bool = u_xlatb8.y;
        let x_1846 : bool = u_xlatb8.x;
        u_xlatb53 = (x_1844 & x_1846);
        let x_1848 : vec3<f32> = u_xlat29;
        let x_1851 : vec4<bool> = (-(vec4<f32>(x_1848.z, x_1848.y, x_1848.z, x_1848.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1852 : vec3<bool> = vec3<bool>(x_1851.x, x_1851.y, x_1851.w);
        let x_1853 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1852.x, x_1852.y, x_1853.z, x_1852.z);
        let x_1856 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1856);
        let x_1862 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1862);
        let x_1868 : bool = u_xlatb8.w;
        u_xlat76 = select(0.0f, 1.0f, x_1868);
        let x_1871 : bool = u_xlatb8.z;
        if (x_1871) {
          let x_1876 : f32 = u_xlat8.y;
          x_1872 = x_1876;
        } else {
          let x_1878 : f32 = u_xlat76;
          x_1872 = x_1878;
        }
        let x_1879 : f32 = x_1872;
        u_xlat76 = x_1879;
        let x_1880 : bool = u_xlatb53;
        if (x_1880) {
          let x_1885 : f32 = u_xlat8.x;
          x_1881 = x_1885;
        } else {
          let x_1887 : f32 = u_xlat76;
          x_1881 = x_1887;
        }
        let x_1888 : f32 = x_1881;
        u_xlat53.x = x_1888;
        let x_1890 : i32 = u_xlati6;
        let x_1892 : f32 = x_207.x_AdditionalShadowParams[x_1890].w;
        u_xlat76 = trunc(x_1892);
        let x_1895 : f32 = u_xlat53.x;
        let x_1896 : f32 = u_xlat76;
        u_xlat53.x = (x_1895 + x_1896);
        let x_1900 : f32 = u_xlat53.x;
        u_xlati30 = i32(x_1900);
      }
      let x_1902 : i32 = u_xlati30;
      u_xlati30 = (x_1902 << bitcast<u32>(2i));
      let x_1904 : vec3<f32> = vs_TEXCOORD1;
      let x_1907 : i32 = u_xlati30;
      let x_1910 : i32 = u_xlati30;
      let x_1914 : vec4<f32> = x_207.x_AdditionalLightsWorldToShadow[((x_1907 + 1i) / 4i)][((x_1910 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1904.y, x_1904.y, x_1904.y, x_1904.y) * x_1914);
      let x_1916 : i32 = u_xlati30;
      let x_1918 : i32 = u_xlati30;
      let x_1921 : vec4<f32> = x_207.x_AdditionalLightsWorldToShadow[(x_1916 / 4i)][(x_1918 % 4i)];
      let x_1922 : vec3<f32> = vs_TEXCOORD1;
      let x_1925 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1921 * vec4<f32>(x_1922.x, x_1922.x, x_1922.x, x_1922.x)) + x_1925);
      let x_1927 : i32 = u_xlati30;
      let x_1930 : i32 = u_xlati30;
      let x_1934 : vec4<f32> = x_207.x_AdditionalLightsWorldToShadow[((x_1927 + 2i) / 4i)][((x_1930 + 2i) % 4i)];
      let x_1935 : vec3<f32> = vs_TEXCOORD1;
      let x_1938 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1934 * vec4<f32>(x_1935.z, x_1935.z, x_1935.z, x_1935.z)) + x_1938);
      let x_1940 : vec4<f32> = u_xlat8;
      let x_1941 : i32 = u_xlati30;
      let x_1944 : i32 = u_xlati30;
      let x_1948 : vec4<f32> = x_207.x_AdditionalLightsWorldToShadow[((x_1941 + 3i) / 4i)][((x_1944 + 3i) % 4i)];
      u_xlat8 = (x_1940 + x_1948);
      let x_1950 : vec4<f32> = u_xlat8;
      let x_1952 : vec4<f32> = u_xlat8;
      u_xlat30 = (vec3<f32>(x_1950.x, x_1950.y, x_1950.z) / vec3<f32>(x_1952.w, x_1952.w, x_1952.w));
      let x_1955 : i32 = u_xlati6;
      let x_1957 : f32 = x_207.x_AdditionalShadowParams[x_1955].y;
      u_xlatb8.x = (0.0f < x_1957);
      let x_1961 : bool = u_xlatb8.x;
      if (x_1961) {
        let x_1964 : i32 = u_xlati6;
        let x_1966 : f32 = x_207.x_AdditionalShadowParams[x_1964].y;
        u_xlatb8.x = (1.0f == x_1966);
        let x_1970 : bool = u_xlatb8.x;
        if (x_1970) {
          let x_1973 : vec3<f32> = u_xlat30;
          let x_1977 : vec4<f32> = x_207.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.y) + x_1977);
          let x_1980 : vec4<f32> = u_xlat8;
          let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
          let x_1983 : f32 = u_xlat30.z;
          txVec30 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
          let x_1991 : vec3<f32> = txVec30;
          let x_1993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
          u_xlat9.x = x_1993;
          let x_1996 : vec4<f32> = u_xlat8;
          let x_1997 : vec2<f32> = vec2<f32>(x_1996.z, x_1996.w);
          let x_1999 : f32 = u_xlat30.z;
          txVec31 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
          let x_2006 : vec3<f32> = txVec31;
          let x_2008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
          u_xlat9.y = x_2008;
          let x_2010 : vec3<f32> = u_xlat30;
          let x_2014 : vec4<f32> = x_207.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2010.x, x_2010.y, x_2010.x, x_2010.y) + x_2014);
          let x_2017 : vec4<f32> = u_xlat8;
          let x_2018 : vec2<f32> = vec2<f32>(x_2017.x, x_2017.y);
          let x_2020 : f32 = u_xlat30.z;
          txVec32 = vec3<f32>(x_2018.x, x_2018.y, x_2020);
          let x_2027 : vec3<f32> = txVec32;
          let x_2029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2027.xy, x_2027.z);
          u_xlat9.z = x_2029;
          let x_2032 : vec4<f32> = u_xlat8;
          let x_2033 : vec2<f32> = vec2<f32>(x_2032.z, x_2032.w);
          let x_2035 : f32 = u_xlat30.z;
          txVec33 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
          let x_2042 : vec3<f32> = txVec33;
          let x_2044 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
          u_xlat9.w = x_2044;
          let x_2046 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(x_2046, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2051 : i32 = u_xlati6;
          let x_2053 : f32 = x_207.x_AdditionalShadowParams[x_2051].y;
          u_xlatb31 = (2.0f == x_2053);
          let x_2055 : bool = u_xlatb31;
          if (x_2055) {
            let x_2059 : vec3<f32> = u_xlat30;
            let x_2063 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(x_2063.z, x_2063.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2067 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2067);
            let x_2069 : vec3<f32> = u_xlat30;
            let x_2072 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2075 : vec2<f32> = u_xlat31;
            let x_2077 : vec2<f32> = ((vec2<f32>(x_2069.x, x_2069.y) * vec2<f32>(x_2072.z, x_2072.w)) + -(x_2075));
            let x_2078 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2077.x, x_2077.y, x_2078.z, x_2078.w);
            let x_2080 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2080.x, x_2080.x, x_2080.y, x_2080.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2083 : vec4<f32> = u_xlat10;
            let x_2085 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2083.x, x_2083.x, x_2083.z, x_2083.z) * vec4<f32>(x_2085.x, x_2085.x, x_2085.z, x_2085.z));
            let x_2089 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2089.y, x_2089.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2092 : vec4<f32> = u_xlat11;
            let x_2095 : vec4<f32> = u_xlat9;
            let x_2098 : vec2<f32> = ((vec2<f32>(x_2092.x, x_2092.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2095.x, x_2095.y)));
            let x_2099 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2098.x, x_2099.y, x_2098.y, x_2099.w);
            let x_2101 : vec4<f32> = u_xlat9;
            let x_2104 : vec2<f32> = (-(vec2<f32>(x_2101.x, x_2101.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2105 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
            let x_2108 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2108.x, x_2108.y), vec2<f32>(0.0f, 0.0f));
            let x_2111 : vec2<f32> = u_xlat57;
            let x_2113 : vec2<f32> = u_xlat57;
            let x_2115 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2111) * x_2113) + vec2<f32>(x_2115.x, x_2115.y));
            let x_2118 : vec4<f32> = u_xlat9;
            let x_2120 : vec2<f32> = max(vec2<f32>(x_2118.x, x_2118.y), vec2<f32>(0.0f, 0.0f));
            let x_2121 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2120.x, x_2120.y, x_2121.z, x_2121.w);
            let x_2123 : vec4<f32> = u_xlat9;
            let x_2126 : vec4<f32> = u_xlat9;
            let x_2129 : vec4<f32> = u_xlat10;
            let x_2131 : vec2<f32> = ((-(vec2<f32>(x_2123.x, x_2123.y)) * vec2<f32>(x_2126.x, x_2126.y)) + vec2<f32>(x_2129.y, x_2129.w));
            let x_2132 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
            let x_2134 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2134 + vec2<f32>(1.0f, 1.0f));
            let x_2136 : vec4<f32> = u_xlat9;
            let x_2138 : vec2<f32> = (vec2<f32>(x_2136.x, x_2136.y) + vec2<f32>(1.0f, 1.0f));
            let x_2139 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2138.x, x_2138.y, x_2139.z, x_2139.w);
            let x_2141 : vec4<f32> = u_xlat10;
            let x_2143 : vec2<f32> = (vec2<f32>(x_2141.x, x_2141.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2144 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
            let x_2146 : vec4<f32> = u_xlat11;
            let x_2148 : vec2<f32> = (vec2<f32>(x_2146.x, x_2146.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2149 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
            let x_2151 : vec2<f32> = u_xlat57;
            let x_2152 : vec2<f32> = (x_2151 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2153 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2152.x, x_2152.y, x_2153.z, x_2153.w);
            let x_2155 : vec4<f32> = u_xlat9;
            let x_2157 : vec2<f32> = (vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2158 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2157.x, x_2157.y, x_2158.z, x_2158.w);
            let x_2160 : vec4<f32> = u_xlat10;
            let x_2162 : vec2<f32> = (vec2<f32>(x_2160.y, x_2160.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2163 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
            let x_2166 : f32 = u_xlat11.x;
            u_xlat12.z = x_2166;
            let x_2169 : f32 = u_xlat9.x;
            u_xlat12.w = x_2169;
            let x_2172 : f32 = u_xlat14.x;
            u_xlat13.z = x_2172;
            let x_2175 : f32 = u_xlat55.x;
            u_xlat13.w = x_2175;
            let x_2177 : vec4<f32> = u_xlat12;
            let x_2179 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2177.z, x_2177.w, x_2177.x, x_2177.z) + vec4<f32>(x_2179.z, x_2179.w, x_2179.x, x_2179.z));
            let x_2183 : f32 = u_xlat12.y;
            u_xlat11.z = x_2183;
            let x_2186 : f32 = u_xlat9.y;
            u_xlat11.w = x_2186;
            let x_2189 : f32 = u_xlat13.y;
            u_xlat14.z = x_2189;
            let x_2192 : f32 = u_xlat55.y;
            u_xlat14.w = x_2192;
            let x_2194 : vec4<f32> = u_xlat11;
            let x_2196 : vec4<f32> = u_xlat14;
            let x_2198 : vec3<f32> = (vec3<f32>(x_2194.z, x_2194.y, x_2194.w) + vec3<f32>(x_2196.z, x_2196.y, x_2196.w));
            let x_2199 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
            let x_2201 : vec4<f32> = u_xlat13;
            let x_2203 : vec4<f32> = u_xlat10;
            let x_2205 : vec3<f32> = (vec3<f32>(x_2201.x, x_2201.z, x_2201.w) / vec3<f32>(x_2203.z, x_2203.w, x_2203.y));
            let x_2206 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
            let x_2208 : vec4<f32> = u_xlat11;
            let x_2210 : vec3<f32> = (vec3<f32>(x_2208.x, x_2208.y, x_2208.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2211 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
            let x_2213 : vec4<f32> = u_xlat14;
            let x_2215 : vec4<f32> = u_xlat9;
            let x_2217 : vec3<f32> = (vec3<f32>(x_2213.z, x_2213.y, x_2213.w) / vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
            let x_2218 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
            let x_2220 : vec4<f32> = u_xlat12;
            let x_2222 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2223 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat11;
            let x_2228 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2230 : vec3<f32> = (vec3<f32>(x_2225.y, x_2225.x, x_2225.z) * vec3<f32>(x_2228.x, x_2228.x, x_2228.x));
            let x_2231 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
            let x_2233 : vec4<f32> = u_xlat12;
            let x_2236 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2238 : vec3<f32> = (vec3<f32>(x_2233.x, x_2233.y, x_2233.z) * vec3<f32>(x_2236.y, x_2236.y, x_2236.y));
            let x_2239 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
            let x_2242 : f32 = u_xlat12.x;
            u_xlat11.w = x_2242;
            let x_2244 : vec2<f32> = u_xlat31;
            let x_2247 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2250 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2244.x, x_2244.y, x_2244.x, x_2244.y) * vec4<f32>(x_2247.x, x_2247.y, x_2247.x, x_2247.y)) + vec4<f32>(x_2250.y, x_2250.w, x_2250.x, x_2250.w));
            let x_2253 : vec2<f32> = u_xlat31;
            let x_2255 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2258 : vec4<f32> = u_xlat11;
            let x_2260 : vec2<f32> = ((x_2253 * vec2<f32>(x_2255.x, x_2255.y)) + vec2<f32>(x_2258.z, x_2258.w));
            let x_2261 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2260.x, x_2260.y, x_2261.z, x_2261.w);
            let x_2264 : f32 = u_xlat11.y;
            u_xlat12.w = x_2264;
            let x_2266 : vec4<f32> = u_xlat12;
            let x_2267 : vec2<f32> = vec2<f32>(x_2266.y, x_2266.z);
            let x_2268 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2268.x, x_2267.x, x_2268.z, x_2267.y);
            let x_2270 : vec2<f32> = u_xlat31;
            let x_2273 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2276 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2270.x, x_2270.y, x_2270.x, x_2270.y) * vec4<f32>(x_2273.x, x_2273.y, x_2273.x, x_2273.y)) + vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2276.y));
            let x_2279 : vec2<f32> = u_xlat31;
            let x_2282 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2285 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2279.x, x_2279.y, x_2279.x, x_2279.y) * vec4<f32>(x_2282.x, x_2282.y, x_2282.x, x_2282.y)) + vec4<f32>(x_2285.w, x_2285.y, x_2285.w, x_2285.z));
            let x_2288 : vec2<f32> = u_xlat31;
            let x_2291 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2294 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2288.x, x_2288.y, x_2288.x, x_2288.y) * vec4<f32>(x_2291.x, x_2291.y, x_2291.x, x_2291.y)) + vec4<f32>(x_2294.x, x_2294.w, x_2294.z, x_2294.w));
            let x_2297 : vec4<f32> = u_xlat9;
            let x_2299 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2297.x, x_2297.x, x_2297.x, x_2297.y) * vec4<f32>(x_2299.z, x_2299.w, x_2299.y, x_2299.z));
            let x_2302 : vec4<f32> = u_xlat9;
            let x_2304 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2302.y, x_2302.y, x_2302.z, x_2302.z) * x_2304);
            let x_2307 : f32 = u_xlat9.z;
            let x_2309 : f32 = u_xlat10.y;
            u_xlat31.x = (x_2307 * x_2309);
            let x_2313 : vec4<f32> = u_xlat13;
            let x_2314 : vec2<f32> = vec2<f32>(x_2313.x, x_2313.y);
            let x_2316 : f32 = u_xlat30.z;
            txVec34 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
            let x_2324 : vec3<f32> = txVec34;
            let x_2326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
            u_xlat54 = x_2326;
            let x_2328 : vec4<f32> = u_xlat13;
            let x_2329 : vec2<f32> = vec2<f32>(x_2328.z, x_2328.w);
            let x_2331 : f32 = u_xlat30.z;
            txVec35 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
            let x_2339 : vec3<f32> = txVec35;
            let x_2341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2339.xy, x_2339.z);
            u_xlat77 = x_2341;
            let x_2342 : f32 = u_xlat77;
            let x_2344 : f32 = u_xlat16.y;
            u_xlat77 = (x_2342 * x_2344);
            let x_2347 : f32 = u_xlat16.x;
            let x_2348 : f32 = u_xlat54;
            let x_2350 : f32 = u_xlat77;
            u_xlat54 = ((x_2347 * x_2348) + x_2350);
            let x_2353 : vec4<f32> = u_xlat14;
            let x_2354 : vec2<f32> = vec2<f32>(x_2353.x, x_2353.y);
            let x_2356 : f32 = u_xlat30.z;
            txVec36 = vec3<f32>(x_2354.x, x_2354.y, x_2356);
            let x_2363 : vec3<f32> = txVec36;
            let x_2365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
            u_xlat77 = x_2365;
            let x_2367 : f32 = u_xlat16.z;
            let x_2368 : f32 = u_xlat77;
            let x_2370 : f32 = u_xlat54;
            u_xlat54 = ((x_2367 * x_2368) + x_2370);
            let x_2373 : vec4<f32> = u_xlat12;
            let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
            let x_2376 : f32 = u_xlat30.z;
            txVec37 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
            let x_2383 : vec3<f32> = txVec37;
            let x_2385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
            u_xlat77 = x_2385;
            let x_2387 : f32 = u_xlat16.w;
            let x_2388 : f32 = u_xlat77;
            let x_2390 : f32 = u_xlat54;
            u_xlat54 = ((x_2387 * x_2388) + x_2390);
            let x_2393 : vec4<f32> = u_xlat15;
            let x_2394 : vec2<f32> = vec2<f32>(x_2393.x, x_2393.y);
            let x_2396 : f32 = u_xlat30.z;
            txVec38 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
            let x_2403 : vec3<f32> = txVec38;
            let x_2405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2403.xy, x_2403.z);
            u_xlat77 = x_2405;
            let x_2407 : f32 = u_xlat17.x;
            let x_2408 : f32 = u_xlat77;
            let x_2410 : f32 = u_xlat54;
            u_xlat54 = ((x_2407 * x_2408) + x_2410);
            let x_2413 : vec4<f32> = u_xlat15;
            let x_2414 : vec2<f32> = vec2<f32>(x_2413.z, x_2413.w);
            let x_2416 : f32 = u_xlat30.z;
            txVec39 = vec3<f32>(x_2414.x, x_2414.y, x_2416);
            let x_2423 : vec3<f32> = txVec39;
            let x_2425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2423.xy, x_2423.z);
            u_xlat77 = x_2425;
            let x_2427 : f32 = u_xlat17.y;
            let x_2428 : f32 = u_xlat77;
            let x_2430 : f32 = u_xlat54;
            u_xlat54 = ((x_2427 * x_2428) + x_2430);
            let x_2433 : vec4<f32> = u_xlat12;
            let x_2434 : vec2<f32> = vec2<f32>(x_2433.z, x_2433.w);
            let x_2436 : f32 = u_xlat30.z;
            txVec40 = vec3<f32>(x_2434.x, x_2434.y, x_2436);
            let x_2443 : vec3<f32> = txVec40;
            let x_2445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2443.xy, x_2443.z);
            u_xlat77 = x_2445;
            let x_2447 : f32 = u_xlat17.z;
            let x_2448 : f32 = u_xlat77;
            let x_2450 : f32 = u_xlat54;
            u_xlat54 = ((x_2447 * x_2448) + x_2450);
            let x_2453 : vec4<f32> = u_xlat11;
            let x_2454 : vec2<f32> = vec2<f32>(x_2453.x, x_2453.y);
            let x_2456 : f32 = u_xlat30.z;
            txVec41 = vec3<f32>(x_2454.x, x_2454.y, x_2456);
            let x_2463 : vec3<f32> = txVec41;
            let x_2465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2463.xy, x_2463.z);
            u_xlat77 = x_2465;
            let x_2467 : f32 = u_xlat17.w;
            let x_2468 : f32 = u_xlat77;
            let x_2470 : f32 = u_xlat54;
            u_xlat54 = ((x_2467 * x_2468) + x_2470);
            let x_2473 : vec4<f32> = u_xlat11;
            let x_2474 : vec2<f32> = vec2<f32>(x_2473.z, x_2473.w);
            let x_2476 : f32 = u_xlat30.z;
            txVec42 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
            let x_2483 : vec3<f32> = txVec42;
            let x_2485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2483.xy, x_2483.z);
            u_xlat77 = x_2485;
            let x_2487 : f32 = u_xlat31.x;
            let x_2488 : f32 = u_xlat77;
            let x_2490 : f32 = u_xlat54;
            u_xlat8.x = ((x_2487 * x_2488) + x_2490);
          } else {
            let x_2494 : vec3<f32> = u_xlat30;
            let x_2497 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2494.x, x_2494.y) * vec2<f32>(x_2497.z, x_2497.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2501 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2501);
            let x_2503 : vec3<f32> = u_xlat30;
            let x_2506 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2509 : vec2<f32> = u_xlat31;
            let x_2511 : vec2<f32> = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2506.z, x_2506.w)) + -(x_2509));
            let x_2512 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2514.x, x_2514.x, x_2514.y, x_2514.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2517 : vec4<f32> = u_xlat10;
            let x_2519 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2517.x, x_2517.x, x_2517.z, x_2517.z) * vec4<f32>(x_2519.x, x_2519.x, x_2519.z, x_2519.z));
            let x_2522 : vec4<f32> = u_xlat11;
            let x_2524 : vec2<f32> = (vec2<f32>(x_2522.y, x_2522.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2525 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2525.x, x_2524.x, x_2525.z, x_2524.y);
            let x_2527 : vec4<f32> = u_xlat11;
            let x_2530 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2527.x, x_2527.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2530.x, x_2530.y)));
            let x_2534 : vec4<f32> = u_xlat9;
            let x_2537 : vec2<f32> = (-(vec2<f32>(x_2534.x, x_2534.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2538 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2537.x, x_2538.y, x_2537.y, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat9;
            let x_2542 : vec2<f32> = min(vec2<f32>(x_2540.x, x_2540.y), vec2<f32>(0.0f, 0.0f));
            let x_2543 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2542.x, x_2542.y, x_2543.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat11;
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2551 : vec4<f32> = u_xlat10;
            let x_2553 : vec2<f32> = ((-(vec2<f32>(x_2545.x, x_2545.y)) * vec2<f32>(x_2548.x, x_2548.y)) + vec2<f32>(x_2551.x, x_2551.z));
            let x_2554 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2553.x, x_2554.y, x_2553.y, x_2554.w);
            let x_2556 : vec4<f32> = u_xlat9;
            let x_2558 : vec2<f32> = max(vec2<f32>(x_2556.x, x_2556.y), vec2<f32>(0.0f, 0.0f));
            let x_2559 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2558.x, x_2558.y, x_2559.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat11;
            let x_2564 : vec4<f32> = u_xlat11;
            let x_2567 : vec4<f32> = u_xlat10;
            let x_2569 : vec2<f32> = ((-(vec2<f32>(x_2561.x, x_2561.y)) * vec2<f32>(x_2564.x, x_2564.y)) + vec2<f32>(x_2567.y, x_2567.w));
            let x_2570 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2570.x, x_2569.x, x_2570.z, x_2569.y);
            let x_2572 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2572 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2576 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2576 * 0.08163200318813323975f);
            let x_2579 : vec2<f32> = u_xlat55;
            let x_2581 : vec2<f32> = (vec2<f32>(x_2579.y, x_2579.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2582 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2581.x, x_2581.y, x_2582.z, x_2582.w);
            let x_2584 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2584.x, x_2584.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2588 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2588 * 0.08163200318813323975f);
            let x_2592 : f32 = u_xlat13.y;
            u_xlat11.x = x_2592;
            let x_2594 : vec4<f32> = u_xlat9;
            let x_2597 : vec2<f32> = ((vec2<f32>(x_2594.x, x_2594.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2598 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2598.x, x_2597.x, x_2598.z, x_2597.y);
            let x_2600 : vec4<f32> = u_xlat9;
            let x_2603 : vec2<f32> = ((vec2<f32>(x_2600.x, x_2600.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2604 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2603.x, x_2604.y, x_2603.y, x_2604.w);
            let x_2607 : f32 = u_xlat55.x;
            u_xlat10.y = x_2607;
            let x_2610 : f32 = u_xlat12.y;
            u_xlat10.w = x_2610;
            let x_2612 : vec4<f32> = u_xlat10;
            let x_2613 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2612 + x_2613);
            let x_2615 : vec4<f32> = u_xlat9;
            let x_2618 : vec2<f32> = ((vec2<f32>(x_2615.y, x_2615.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2619.x, x_2618.x, x_2619.z, x_2618.y);
            let x_2621 : vec4<f32> = u_xlat9;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2621.y, x_2621.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2625 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2624.x, x_2625.y, x_2624.y, x_2625.w);
            let x_2628 : f32 = u_xlat55.y;
            u_xlat12.y = x_2628;
            let x_2630 : vec4<f32> = u_xlat12;
            let x_2631 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2630 + x_2631);
            let x_2633 : vec4<f32> = u_xlat10;
            let x_2634 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2633 / x_2634);
            let x_2636 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2636 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2638 : vec4<f32> = u_xlat12;
            let x_2639 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2638 / x_2639);
            let x_2641 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2641 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2643 : vec4<f32> = u_xlat10;
            let x_2646 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2643.w, x_2643.x, x_2643.y, x_2643.z) * vec4<f32>(x_2646.x, x_2646.x, x_2646.x, x_2646.x));
            let x_2649 : vec4<f32> = u_xlat12;
            let x_2652 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2649.x, x_2649.w, x_2649.y, x_2649.z) * vec4<f32>(x_2652.y, x_2652.y, x_2652.y, x_2652.y));
            let x_2655 : vec4<f32> = u_xlat10;
            let x_2656 : vec3<f32> = vec3<f32>(x_2655.y, x_2655.z, x_2655.w);
            let x_2657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2656.x, x_2657.y, x_2656.y, x_2656.z);
            let x_2660 : f32 = u_xlat12.x;
            u_xlat13.y = x_2660;
            let x_2662 : vec2<f32> = u_xlat31;
            let x_2665 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) * vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y)) + vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2668.y));
            let x_2671 : vec2<f32> = u_xlat31;
            let x_2673 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2676 : vec4<f32> = u_xlat13;
            let x_2678 : vec2<f32> = ((x_2671 * vec2<f32>(x_2673.x, x_2673.y)) + vec2<f32>(x_2676.w, x_2676.y));
            let x_2679 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2678.x, x_2678.y, x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat13.y;
            u_xlat10.y = x_2682;
            let x_2685 : f32 = u_xlat12.z;
            u_xlat13.y = x_2685;
            let x_2687 : vec2<f32> = u_xlat31;
            let x_2690 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2693 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2687.x, x_2687.y, x_2687.x, x_2687.y) * vec4<f32>(x_2690.x, x_2690.y, x_2690.x, x_2690.y)) + vec4<f32>(x_2693.x, x_2693.y, x_2693.z, x_2693.y));
            let x_2697 : vec2<f32> = u_xlat31;
            let x_2699 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2702 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2697 * vec2<f32>(x_2699.x, x_2699.y)) + vec2<f32>(x_2702.w, x_2702.y));
            let x_2706 : f32 = u_xlat13.y;
            u_xlat10.z = x_2706;
            let x_2708 : vec2<f32> = u_xlat31;
            let x_2711 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2714 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2708.x, x_2708.y, x_2708.x, x_2708.y) * vec4<f32>(x_2711.x, x_2711.y, x_2711.x, x_2711.y)) + vec4<f32>(x_2714.x, x_2714.y, x_2714.x, x_2714.z));
            let x_2718 : f32 = u_xlat12.w;
            u_xlat13.y = x_2718;
            let x_2721 : vec2<f32> = u_xlat31;
            let x_2724 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2727.y));
            let x_2731 : vec2<f32> = u_xlat31;
            let x_2733 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2731 * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.w, x_2736.y));
            let x_2740 : f32 = u_xlat13.y;
            u_xlat10.w = x_2740;
            let x_2743 : vec2<f32> = u_xlat31;
            let x_2745 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2743 * vec2<f32>(x_2745.x, x_2745.y)) + vec2<f32>(x_2748.x, x_2748.w));
            let x_2751 : vec4<f32> = u_xlat13;
            let x_2752 : vec3<f32> = vec3<f32>(x_2751.x, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2752.x, x_2753.y, x_2752.y, x_2752.z);
            let x_2755 : vec2<f32> = u_xlat31;
            let x_2758 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2761 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.y) * vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y)) + vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2761.y));
            let x_2764 : vec2<f32> = u_xlat31;
            let x_2766 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2764 * vec2<f32>(x_2766.x, x_2766.y)) + vec2<f32>(x_2769.w, x_2769.y));
            let x_2773 : f32 = u_xlat10.x;
            u_xlat12.x = x_2773;
            let x_2775 : vec2<f32> = u_xlat31;
            let x_2777 : vec4<f32> = x_207.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2775 * vec2<f32>(x_2777.x, x_2777.y)) + vec2<f32>(x_2780.x, x_2780.y));
            let x_2784 : vec4<f32> = u_xlat9;
            let x_2786 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2784.x, x_2784.x, x_2784.x, x_2784.x) * x_2786);
            let x_2789 : vec4<f32> = u_xlat9;
            let x_2791 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2789.y, x_2789.y, x_2789.y, x_2789.y) * x_2791);
            let x_2794 : vec4<f32> = u_xlat9;
            let x_2796 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2794.z, x_2794.z, x_2794.z, x_2794.z) * x_2796);
            let x_2798 : vec4<f32> = u_xlat9;
            let x_2800 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2798.w, x_2798.w, x_2798.w, x_2798.w) * x_2800);
            let x_2803 : vec4<f32> = u_xlat14;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.x, x_2803.y);
            let x_2806 : f32 = u_xlat30.z;
            txVec43 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec43;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat77 = x_2815;
            let x_2817 : vec4<f32> = u_xlat14;
            let x_2818 : vec2<f32> = vec2<f32>(x_2817.z, x_2817.w);
            let x_2820 : f32 = u_xlat30.z;
            txVec44 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
            let x_2827 : vec3<f32> = txVec44;
            let x_2829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
            u_xlat10.x = x_2829;
            let x_2832 : f32 = u_xlat10.x;
            let x_2834 : f32 = u_xlat20.y;
            u_xlat10.x = (x_2832 * x_2834);
            let x_2838 : f32 = u_xlat20.x;
            let x_2839 : f32 = u_xlat77;
            let x_2842 : f32 = u_xlat10.x;
            u_xlat77 = ((x_2838 * x_2839) + x_2842);
            let x_2845 : vec4<f32> = u_xlat15;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.x, x_2845.y);
            let x_2848 : f32 = u_xlat30.z;
            txVec45 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec45;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat10.x = x_2857;
            let x_2860 : f32 = u_xlat20.z;
            let x_2862 : f32 = u_xlat10.x;
            let x_2864 : f32 = u_xlat77;
            u_xlat77 = ((x_2860 * x_2862) + x_2864);
            let x_2867 : vec4<f32> = u_xlat17;
            let x_2868 : vec2<f32> = vec2<f32>(x_2867.x, x_2867.y);
            let x_2870 : f32 = u_xlat30.z;
            txVec46 = vec3<f32>(x_2868.x, x_2868.y, x_2870);
            let x_2877 : vec3<f32> = txVec46;
            let x_2879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2877.xy, x_2877.z);
            u_xlat10.x = x_2879;
            let x_2882 : f32 = u_xlat20.w;
            let x_2884 : f32 = u_xlat10.x;
            let x_2886 : f32 = u_xlat77;
            u_xlat77 = ((x_2882 * x_2884) + x_2886);
            let x_2889 : vec4<f32> = u_xlat16;
            let x_2890 : vec2<f32> = vec2<f32>(x_2889.x, x_2889.y);
            let x_2892 : f32 = u_xlat30.z;
            txVec47 = vec3<f32>(x_2890.x, x_2890.y, x_2892);
            let x_2899 : vec3<f32> = txVec47;
            let x_2901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2899.xy, x_2899.z);
            u_xlat10.x = x_2901;
            let x_2904 : f32 = u_xlat21.x;
            let x_2906 : f32 = u_xlat10.x;
            let x_2908 : f32 = u_xlat77;
            u_xlat77 = ((x_2904 * x_2906) + x_2908);
            let x_2911 : vec4<f32> = u_xlat16;
            let x_2912 : vec2<f32> = vec2<f32>(x_2911.z, x_2911.w);
            let x_2914 : f32 = u_xlat30.z;
            txVec48 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2921 : vec3<f32> = txVec48;
            let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
            u_xlat10.x = x_2923;
            let x_2926 : f32 = u_xlat21.y;
            let x_2928 : f32 = u_xlat10.x;
            let x_2930 : f32 = u_xlat77;
            u_xlat77 = ((x_2926 * x_2928) + x_2930);
            let x_2933 : vec2<f32> = u_xlat61;
            let x_2935 : f32 = u_xlat30.z;
            txVec49 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
            let x_2942 : vec3<f32> = txVec49;
            let x_2944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2942.xy, x_2942.z);
            u_xlat10.x = x_2944;
            let x_2947 : f32 = u_xlat21.z;
            let x_2949 : f32 = u_xlat10.x;
            let x_2951 : f32 = u_xlat77;
            u_xlat77 = ((x_2947 * x_2949) + x_2951);
            let x_2954 : vec4<f32> = u_xlat17;
            let x_2955 : vec2<f32> = vec2<f32>(x_2954.z, x_2954.w);
            let x_2957 : f32 = u_xlat30.z;
            txVec50 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
            let x_2964 : vec3<f32> = txVec50;
            let x_2966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
            u_xlat10.x = x_2966;
            let x_2969 : f32 = u_xlat21.w;
            let x_2971 : f32 = u_xlat10.x;
            let x_2973 : f32 = u_xlat77;
            u_xlat77 = ((x_2969 * x_2971) + x_2973);
            let x_2976 : vec4<f32> = u_xlat18;
            let x_2977 : vec2<f32> = vec2<f32>(x_2976.x, x_2976.y);
            let x_2979 : f32 = u_xlat30.z;
            txVec51 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2986 : vec3<f32> = txVec51;
            let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
            u_xlat10.x = x_2988;
            let x_2991 : f32 = u_xlat22.x;
            let x_2993 : f32 = u_xlat10.x;
            let x_2995 : f32 = u_xlat77;
            u_xlat77 = ((x_2991 * x_2993) + x_2995);
            let x_2998 : vec4<f32> = u_xlat18;
            let x_2999 : vec2<f32> = vec2<f32>(x_2998.z, x_2998.w);
            let x_3001 : f32 = u_xlat30.z;
            txVec52 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
            let x_3008 : vec3<f32> = txVec52;
            let x_3010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
            u_xlat10.x = x_3010;
            let x_3013 : f32 = u_xlat22.y;
            let x_3015 : f32 = u_xlat10.x;
            let x_3017 : f32 = u_xlat77;
            u_xlat77 = ((x_3013 * x_3015) + x_3017);
            let x_3020 : vec2<f32> = u_xlat33;
            let x_3022 : f32 = u_xlat30.z;
            txVec53 = vec3<f32>(x_3020.x, x_3020.y, x_3022);
            let x_3029 : vec3<f32> = txVec53;
            let x_3031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3029.xy, x_3029.z);
            u_xlat10.x = x_3031;
            let x_3034 : f32 = u_xlat22.z;
            let x_3036 : f32 = u_xlat10.x;
            let x_3038 : f32 = u_xlat77;
            u_xlat77 = ((x_3034 * x_3036) + x_3038);
            let x_3041 : vec2<f32> = u_xlat19;
            let x_3043 : f32 = u_xlat30.z;
            txVec54 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
            let x_3050 : vec3<f32> = txVec54;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat10.x = x_3052;
            let x_3055 : f32 = u_xlat22.w;
            let x_3057 : f32 = u_xlat10.x;
            let x_3059 : f32 = u_xlat77;
            u_xlat77 = ((x_3055 * x_3057) + x_3059);
            let x_3062 : vec4<f32> = u_xlat13;
            let x_3063 : vec2<f32> = vec2<f32>(x_3062.x, x_3062.y);
            let x_3065 : f32 = u_xlat30.z;
            txVec55 = vec3<f32>(x_3063.x, x_3063.y, x_3065);
            let x_3072 : vec3<f32> = txVec55;
            let x_3074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3072.xy, x_3072.z);
            u_xlat10.x = x_3074;
            let x_3077 : f32 = u_xlat9.x;
            let x_3079 : f32 = u_xlat10.x;
            let x_3081 : f32 = u_xlat77;
            u_xlat77 = ((x_3077 * x_3079) + x_3081);
            let x_3084 : vec4<f32> = u_xlat13;
            let x_3085 : vec2<f32> = vec2<f32>(x_3084.z, x_3084.w);
            let x_3087 : f32 = u_xlat30.z;
            txVec56 = vec3<f32>(x_3085.x, x_3085.y, x_3087);
            let x_3094 : vec3<f32> = txVec56;
            let x_3096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3094.xy, x_3094.z);
            u_xlat9.x = x_3096;
            let x_3099 : f32 = u_xlat9.y;
            let x_3101 : f32 = u_xlat9.x;
            let x_3103 : f32 = u_xlat77;
            u_xlat77 = ((x_3099 * x_3101) + x_3103);
            let x_3106 : vec2<f32> = u_xlat58;
            let x_3108 : f32 = u_xlat30.z;
            txVec57 = vec3<f32>(x_3106.x, x_3106.y, x_3108);
            let x_3115 : vec3<f32> = txVec57;
            let x_3117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3115.xy, x_3115.z);
            u_xlat9.x = x_3117;
            let x_3120 : f32 = u_xlat9.z;
            let x_3122 : f32 = u_xlat9.x;
            let x_3124 : f32 = u_xlat77;
            u_xlat77 = ((x_3120 * x_3122) + x_3124);
            let x_3127 : vec2<f32> = u_xlat31;
            let x_3129 : f32 = u_xlat30.z;
            txVec58 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
            let x_3136 : vec3<f32> = txVec58;
            let x_3138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
            u_xlat31.x = x_3138;
            let x_3141 : f32 = u_xlat9.w;
            let x_3143 : f32 = u_xlat31.x;
            let x_3145 : f32 = u_xlat77;
            u_xlat8.x = ((x_3141 * x_3143) + x_3145);
          }
        }
      } else {
        let x_3150 : vec3<f32> = u_xlat30;
        let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
        let x_3153 : f32 = u_xlat30.z;
        txVec59 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
        let x_3160 : vec3<f32> = txVec59;
        let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
        u_xlat8.x = x_3162;
      }
      let x_3164 : i32 = u_xlati6;
      let x_3166 : f32 = x_207.x_AdditionalShadowParams[x_3164].x;
      u_xlat30.x = (1.0f + -(x_3166));
      let x_3171 : f32 = u_xlat8.x;
      let x_3172 : i32 = u_xlati6;
      let x_3174 : f32 = x_207.x_AdditionalShadowParams[x_3172].x;
      let x_3177 : f32 = u_xlat30.x;
      u_xlat30.x = ((x_3171 * x_3174) + x_3177);
      let x_3181 : f32 = u_xlat30.z;
      u_xlatb53 = (0.0f >= x_3181);
      let x_3185 : f32 = u_xlat30.z;
      u_xlatb76 = (x_3185 >= 1.0f);
      let x_3187 : bool = u_xlatb76;
      let x_3188 : bool = u_xlatb53;
      u_xlatb53 = (x_3187 | x_3188);
      let x_3190 : bool = u_xlatb53;
      if (x_3190) {
        x_3191 = 1.0f;
      } else {
        let x_3196 : f32 = u_xlat30.x;
        x_3191 = x_3196;
      }
      let x_3197 : f32 = x_3191;
      u_xlat30.x = x_3197;
    } else {
      u_xlat30.x = 1.0f;
    }
    let x_3202 : f32 = u_xlat30.x;
    u_xlat53.x = (-(x_3202) + 1.0f);
    let x_3206 : f32 = u_xlat72;
    let x_3208 : f32 = u_xlat53.x;
    let x_3211 : f32 = u_xlat30.x;
    u_xlat30.x = ((x_3206 * x_3208) + x_3211);
    let x_3215 : f32 = u_xlat30.x;
    let x_3217 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3215 * x_3217);
    let x_3220 : vec4<f32> = u_xlat7;
    let x_3222 : i32 = u_xlati6;
    let x_3224 : vec4<f32> = x_1710.x_AdditionalLightsColor[x_3222];
    let x_3226 : vec3<f32> = (vec3<f32>(x_3220.x, x_3220.x, x_3220.x) * vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
    let x_3227 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
    let x_3229 : vec3<f32> = u_xlat1;
    let x_3230 : vec3<f32> = u_xlat29;
    u_xlat6.x = dot(x_3229, x_3230);
    let x_3234 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3234, 0.0f, 1.0f);
    let x_3237 : vec4<f32> = u_xlat6;
    let x_3239 : vec4<f32> = u_xlat7;
    let x_3241 : vec3<f32> = (vec3<f32>(x_3237.x, x_3237.x, x_3237.x) * vec3<f32>(x_3239.x, x_3239.y, x_3239.z));
    let x_3242 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);
    let x_3244 : vec3<f32> = u_xlat2;
    let x_3245 : f32 = u_xlat70;
    let x_3248 : vec3<f32> = u_xlat29;
    let x_3249 : vec3<f32> = ((x_3244 * vec3<f32>(x_3245, x_3245, x_3245)) + x_3248);
    let x_3250 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3250.w);
    let x_3253 : vec4<f32> = u_xlat6;
    let x_3255 : vec4<f32> = u_xlat6;
    u_xlat75 = dot(vec3<f32>(x_3253.x, x_3253.y, x_3253.z), vec3<f32>(x_3255.x, x_3255.y, x_3255.z));
    let x_3258 : f32 = u_xlat75;
    u_xlat75 = max(x_3258, 1.17549435e-38f);
    let x_3260 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3260);
    let x_3262 : f32 = u_xlat75;
    let x_3264 : vec4<f32> = u_xlat6;
    let x_3266 : vec3<f32> = (vec3<f32>(x_3262, x_3262, x_3262) * vec3<f32>(x_3264.x, x_3264.y, x_3264.z));
    let x_3267 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
    let x_3269 : vec3<f32> = u_xlat1;
    let x_3270 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(x_3269, vec3<f32>(x_3270.x, x_3270.y, x_3270.z));
    let x_3275 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3275, 0.0f, 1.0f);
    let x_3279 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_3279);
    let x_3282 : f32 = u_xlat71;
    let x_3284 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3282 * x_3284);
    let x_3288 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_3288);
    let x_3291 : vec4<f32> = u_xlat6;
    let x_3294 : vec4<f32> = x_41.x_SpecColor;
    let x_3296 : vec3<f32> = (vec3<f32>(x_3291.x, x_3291.x, x_3291.x) * vec3<f32>(x_3294.x, x_3294.y, x_3294.z));
    let x_3297 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
    let x_3299 : vec4<f32> = u_xlat6;
    let x_3301 : vec4<f32> = u_xlat7;
    let x_3303 : vec3<f32> = (vec3<f32>(x_3299.x, x_3299.y, x_3299.z) * vec3<f32>(x_3301.x, x_3301.y, x_3301.z));
    let x_3304 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3304.w);
    let x_3306 : vec4<f32> = u_xlat8;
    let x_3308 : vec4<f32> = u_xlat0;
    let x_3311 : vec4<f32> = u_xlat6;
    let x_3313 : vec3<f32> = ((vec3<f32>(x_3306.x, x_3306.y, x_3306.z) * vec3<f32>(x_3308.y, x_3308.z, x_3308.w)) + vec3<f32>(x_3311.x, x_3311.y, x_3311.z));
    let x_3314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
    let x_3316 : vec4<f32> = u_xlat5;
    let x_3318 : vec4<f32> = u_xlat6;
    let x_3320 : vec3<f32> = (vec3<f32>(x_3316.x, x_3316.y, x_3316.z) + vec3<f32>(x_3318.x, x_3318.y, x_3318.z));
    let x_3321 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);

    continuing {
      let x_3323 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3323 + bitcast<u32>(1i));
    }
  }
  let x_3326 : vec4<f32> = u_xlat3;
  let x_3328 : vec4<f32> = u_xlat0;
  let x_3331 : vec4<f32> = u_xlat4;
  u_xlat23 = ((vec3<f32>(x_3326.x, x_3326.y, x_3326.z) * vec3<f32>(x_3328.y, x_3328.z, x_3328.w)) + vec3<f32>(x_3331.x, x_3331.y, x_3331.z));
  let x_3336 : vec4<f32> = u_xlat5;
  let x_3338 : vec3<f32> = u_xlat23;
  let x_3339 : vec3<f32> = (vec3<f32>(x_3336.x, x_3336.y, x_3336.z) + x_3338);
  let x_3340 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3339.x, x_3339.y, x_3339.z, x_3340.w);
  let x_3344 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3344 == 1.0f);
  let x_3346 : bool = u_xlatb23;
  if (x_3346) {
    let x_3351 : f32 = u_xlat0.x;
    x_3347 = x_3351;
  } else {
    x_3347 = 1.0f;
  }
  let x_3353 : f32 = x_3347;
  SV_Target0.w = x_3353;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


