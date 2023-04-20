diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_156 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_240 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1566 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1819 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb73 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

var<private> u_xlat54 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1653 : f32;
  var x_1665 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1959 : f32;
  var x_1969 : f32;
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
  var x_3562 : f32;
  var x_3575 : f32;
  var x_3623 : f32;
  var x_3635 : vec3<f32>;
  var x_3727 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat23 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat69;
  let x_90 : f32 = u_xlat46;
  u_xlat46 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat46;
  u_xlat46 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat23;
  let x_97 : f32 = u_xlat46;
  u_xlat23 = (x_96 / x_97);
  let x_99 : f32 = u_xlat23;
  u_xlat23 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat23;
  u_xlat23 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb46;
  if (x_109) {
    let x_113 : f32 = u_xlat23;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat23 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat23;
  u_xlatb23 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb23;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat23;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat2.w = 1.0f;
  let x_159 : vec4<f32> = x_156.unity_SHAr;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_159, x_160);
  let x_165 : vec4<f32> = x_156.unity_SHAg;
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_165, x_166);
  let x_172 : vec4<f32> = x_156.unity_SHAb;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_172, x_173);
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_185 : vec4<f32> = x_156.unity_SHBr;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_156.unity_SHBg;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_156.unity_SHBb;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_197, x_198);
  let x_202 : f32 = u_xlat2.y;
  let x_204 : f32 = u_xlat2.y;
  u_xlat23 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat23;
  u_xlat23 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_156.unity_SHC;
  let x_218 : f32 = u_xlat23;
  let x_221 : vec4<f32> = u_xlat5;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat3;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_226 + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_230, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_243 : f32 = x_240.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_243);
  let x_245 : bool = u_xlatb23;
  if (x_245) {
    let x_249 : f32 = x_240.x_MainLightShadowParams.y;
    u_xlatb23 = (x_249 == 1.0f);
    let x_251 : bool = u_xlatb23;
    if (x_251) {
      let x_256 : vec4<f32> = vs_TEXCOORD6;
      let x_260 : vec4<f32> = x_240.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_256.x, x_256.y, x_256.x, x_256.y) + x_260);
      let x_264 : vec4<f32> = u_xlat4;
      let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
      let x_268 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_265.x, x_265.y, x_268);
      let x_280 : vec3<f32> = txVec0;
      let x_282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_280.xy, x_280.z);
      u_xlat5.x = x_282;
      let x_285 : vec4<f32> = u_xlat4;
      let x_286 : vec2<f32> = vec2<f32>(x_285.z, x_285.w);
      let x_288 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_286.x, x_286.y, x_288);
      let x_295 : vec3<f32> = txVec1;
      let x_297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_295.xy, x_295.z);
      u_xlat5.y = x_297;
      let x_299 : vec4<f32> = vs_TEXCOORD6;
      let x_303 : vec4<f32> = x_240.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_299.x, x_299.y, x_299.x, x_299.y) + x_303);
      let x_306 : vec4<f32> = u_xlat4;
      let x_307 : vec2<f32> = vec2<f32>(x_306.x, x_306.y);
      let x_309 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_307.x, x_307.y, x_309);
      let x_316 : vec3<f32> = txVec2;
      let x_318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_316.xy, x_316.z);
      u_xlat5.z = x_318;
      let x_321 : vec4<f32> = u_xlat4;
      let x_322 : vec2<f32> = vec2<f32>(x_321.z, x_321.w);
      let x_324 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_322.x, x_322.y, x_324);
      let x_331 : vec3<f32> = txVec3;
      let x_333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_331.xy, x_331.z);
      u_xlat5.w = x_333;
      let x_335 : vec4<f32> = u_xlat5;
      u_xlat23 = dot(x_335, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_342 : f32 = x_240.x_MainLightShadowParams.y;
      u_xlatb69 = (x_342 == 2.0f);
      let x_345 : bool = u_xlatb69;
      if (x_345) {
        let x_348 : vec4<f32> = vs_TEXCOORD6;
        let x_352 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_356 : vec2<f32> = ((vec2<f32>(x_348.x, x_348.y) * vec2<f32>(x_352.z, x_352.w)) + vec2<f32>(0.5f, 0.5f));
        let x_357 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_357.z, x_357.w);
        let x_359 : vec4<f32> = u_xlat4;
        let x_361 : vec2<f32> = floor(vec2<f32>(x_359.x, x_359.y));
        let x_362 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
        let x_366 : vec4<f32> = vs_TEXCOORD6;
        let x_369 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_372 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_366.x, x_366.y) * vec2<f32>(x_369.z, x_369.w)) + -(vec2<f32>(x_372.x, x_372.y)));
        let x_376 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_376.x, x_376.x, x_376.y, x_376.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_381 : vec4<f32> = u_xlat5;
        let x_383 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_381.x, x_381.x, x_381.z, x_381.z) * vec4<f32>(x_383.x, x_383.x, x_383.z, x_383.z));
        let x_386 : vec4<f32> = u_xlat6;
        let x_390 : vec2<f32> = (vec2<f32>(x_386.y, x_386.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_391 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_390.x, x_391.y, x_390.y, x_391.w);
        let x_393 : vec4<f32> = u_xlat6;
        let x_396 : vec2<f32> = u_xlat50;
        let x_398 : vec2<f32> = ((vec2<f32>(x_393.x, x_393.z) * vec2<f32>(0.5f, 0.5f)) + -(x_396));
        let x_399 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_402 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_402) + vec2<f32>(1.0f, 1.0f));
        let x_407 : vec2<f32> = u_xlat50;
        let x_409 : vec2<f32> = min(x_407, vec2<f32>(0.0f, 0.0f));
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
        let x_412 : vec4<f32> = u_xlat7;
        let x_415 : vec4<f32> = u_xlat7;
        let x_418 : vec2<f32> = u_xlat52;
        let x_419 : vec2<f32> = ((-(vec2<f32>(x_412.x, x_412.y)) * vec2<f32>(x_415.x, x_415.y)) + x_418);
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_422 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_422, vec2<f32>(0.0f, 0.0f));
        let x_424 : vec2<f32> = u_xlat50;
        let x_426 : vec2<f32> = u_xlat50;
        let x_428 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_424) * x_426) + vec2<f32>(x_428.y, x_428.w));
        let x_431 : vec4<f32> = u_xlat7;
        let x_433 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_436 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_436 + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec4<f32> = u_xlat6;
        let x_443 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec2<f32> = u_xlat52;
        let x_447 : vec2<f32> = (x_446 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_450 : vec4<f32> = u_xlat7;
        let x_452 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_456 : vec2<f32> = u_xlat50;
        let x_457 : vec2<f32> = (x_456 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_458 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_460.y, x_460.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_464 : f32 = u_xlat7.x;
        u_xlat8.z = x_464;
        let x_467 : f32 = u_xlat50.x;
        u_xlat8.w = x_467;
        let x_470 : f32 = u_xlat9.x;
        u_xlat6.z = x_470;
        let x_473 : f32 = u_xlat5.x;
        u_xlat6.w = x_473;
        let x_476 : vec4<f32> = u_xlat6;
        let x_478 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_476.z, x_476.w, x_476.x, x_476.z) + vec4<f32>(x_478.z, x_478.w, x_478.x, x_478.z));
        let x_482 : f32 = u_xlat8.y;
        u_xlat7.z = x_482;
        let x_485 : f32 = u_xlat50.y;
        u_xlat7.w = x_485;
        let x_488 : f32 = u_xlat6.y;
        u_xlat9.z = x_488;
        let x_491 : f32 = u_xlat5.z;
        u_xlat9.w = x_491;
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec4<f32> = u_xlat9;
        let x_497 : vec3<f32> = (vec3<f32>(x_493.z, x_493.y, x_493.w) + vec3<f32>(x_495.z, x_495.y, x_495.w));
        let x_498 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat6;
        let x_502 : vec4<f32> = u_xlat10;
        let x_504 : vec3<f32> = (vec3<f32>(x_500.x, x_500.z, x_500.w) / vec3<f32>(x_502.z, x_502.w, x_502.y));
        let x_505 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
        let x_507 : vec4<f32> = u_xlat6;
        let x_513 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_514 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
        let x_516 : vec4<f32> = u_xlat9;
        let x_518 : vec4<f32> = u_xlat5;
        let x_520 : vec3<f32> = (vec3<f32>(x_516.z, x_516.y, x_516.w) / vec3<f32>(x_518.x, x_518.y, x_518.z));
        let x_521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
        let x_523 : vec4<f32> = u_xlat7;
        let x_525 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_526 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat6;
        let x_531 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_533 : vec3<f32> = (vec3<f32>(x_528.y, x_528.x, x_528.z) * vec3<f32>(x_531.x, x_531.x, x_531.x));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat7;
        let x_539 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_541 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_539.y, x_539.y, x_539.y));
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_545 : f32 = u_xlat7.x;
        u_xlat6.w = x_545;
        let x_547 : vec4<f32> = u_xlat4;
        let x_550 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y) * vec4<f32>(x_550.x, x_550.y, x_550.x, x_550.y)) + vec4<f32>(x_553.y, x_553.w, x_553.x, x_553.w));
        let x_556 : vec4<f32> = u_xlat4;
        let x_559 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(x_562.z, x_562.w));
        let x_566 : f32 = u_xlat6.y;
        u_xlat7.w = x_566;
        let x_568 : vec4<f32> = u_xlat7;
        let x_569 : vec2<f32> = vec2<f32>(x_568.y, x_568.z);
        let x_570 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_570.x, x_569.x, x_570.z, x_569.y);
        let x_572 : vec4<f32> = u_xlat4;
        let x_575 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_572.x, x_572.y, x_572.x, x_572.y) * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y)) + vec4<f32>(x_578.x, x_578.y, x_578.z, x_578.y));
        let x_581 : vec4<f32> = u_xlat4;
        let x_584 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) * vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y)) + vec4<f32>(x_587.w, x_587.y, x_587.w, x_587.z));
        let x_590 : vec4<f32> = u_xlat4;
        let x_593 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y) * vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y)) + vec4<f32>(x_596.x, x_596.w, x_596.z, x_596.w));
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_600.x, x_600.x, x_600.x, x_600.y) * vec4<f32>(x_602.z, x_602.w, x_602.y, x_602.z));
        let x_606 : vec4<f32> = u_xlat5;
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_606.y, x_606.y, x_606.z, x_606.z) * x_608);
        let x_611 : f32 = u_xlat5.z;
        let x_613 : f32 = u_xlat10.y;
        u_xlat69 = (x_611 * x_613);
        let x_616 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_626 : vec3<f32> = txVec4;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
        u_xlat1.x = x_628;
        let x_631 : vec4<f32> = u_xlat8;
        let x_632 : vec2<f32> = vec2<f32>(x_631.z, x_631.w);
        let x_634 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_632.x, x_632.y, x_634);
        let x_642 : vec3<f32> = txVec5;
        let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_642.xy, x_642.z);
        u_xlat71 = x_644;
        let x_645 : f32 = u_xlat71;
        let x_647 : f32 = u_xlat11.y;
        u_xlat71 = (x_645 * x_647);
        let x_650 : f32 = u_xlat11.x;
        let x_652 : f32 = u_xlat1.x;
        let x_654 : f32 = u_xlat71;
        u_xlat1.x = ((x_650 * x_652) + x_654);
        let x_658 : vec2<f32> = u_xlat50;
        let x_660 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_658.x, x_658.y, x_660);
        let x_667 : vec3<f32> = txVec6;
        let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
        u_xlat71 = x_669;
        let x_671 : f32 = u_xlat11.z;
        let x_672 : f32 = u_xlat71;
        let x_675 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_671 * x_672) + x_675);
        let x_679 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_689 : vec3<f32> = txVec7;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_689.xy, x_689.z);
        u_xlat71 = x_691;
        let x_693 : f32 = u_xlat11.w;
        let x_694 : f32 = u_xlat71;
        let x_697 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_693 * x_694) + x_697);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec8;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_711.xy, x_711.z);
        u_xlat71 = x_713;
        let x_715 : f32 = u_xlat12.x;
        let x_716 : f32 = u_xlat71;
        let x_719 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_715 * x_716) + x_719);
        let x_723 : vec4<f32> = u_xlat9;
        let x_724 : vec2<f32> = vec2<f32>(x_723.z, x_723.w);
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_733 : vec3<f32> = txVec9;
        let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
        u_xlat71 = x_735;
        let x_737 : f32 = u_xlat12.y;
        let x_738 : f32 = u_xlat71;
        let x_741 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_737 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat7;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec10;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat71 = x_757;
        let x_759 : f32 = u_xlat12.z;
        let x_760 : f32 = u_xlat71;
        let x_763 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_759 * x_760) + x_763);
        let x_767 : vec4<f32> = u_xlat6;
        let x_768 : vec2<f32> = vec2<f32>(x_767.x, x_767.y);
        let x_770 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_768.x, x_768.y, x_770);
        let x_777 : vec3<f32> = txVec11;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
        u_xlat71 = x_779;
        let x_781 : f32 = u_xlat12.w;
        let x_782 : f32 = u_xlat71;
        let x_785 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_781 * x_782) + x_785);
        let x_789 : vec4<f32> = u_xlat6;
        let x_790 : vec2<f32> = vec2<f32>(x_789.z, x_789.w);
        let x_792 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_790.x, x_790.y, x_792);
        let x_799 : vec3<f32> = txVec12;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_799.xy, x_799.z);
        u_xlat71 = x_801;
        let x_802 : f32 = u_xlat69;
        let x_803 : f32 = u_xlat71;
        let x_806 : f32 = u_xlat1.x;
        u_xlat23 = ((x_802 * x_803) + x_806);
      } else {
        let x_809 : vec4<f32> = vs_TEXCOORD6;
        let x_812 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_815 : vec2<f32> = ((vec2<f32>(x_809.x, x_809.y) * vec2<f32>(x_812.z, x_812.w)) + vec2<f32>(0.5f, 0.5f));
        let x_816 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat4;
        let x_820 : vec2<f32> = floor(vec2<f32>(x_818.x, x_818.y));
        let x_821 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
        let x_823 : vec4<f32> = vs_TEXCOORD6;
        let x_826 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_826.z, x_826.w)) + -(vec2<f32>(x_829.x, x_829.y)));
        let x_833 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_833.x, x_833.x, x_833.y, x_833.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_836 : vec4<f32> = u_xlat5;
        let x_838 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_836.x, x_836.x, x_836.z, x_836.z) * vec4<f32>(x_838.x, x_838.x, x_838.z, x_838.z));
        let x_841 : vec4<f32> = u_xlat6;
        let x_845 : vec2<f32> = (vec2<f32>(x_841.y, x_841.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_846 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_846.x, x_845.x, x_846.z, x_845.y);
        let x_848 : vec4<f32> = u_xlat6;
        let x_851 : vec2<f32> = u_xlat50;
        let x_853 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.z) * vec2<f32>(0.5f, 0.5f)) + -(x_851));
        let x_854 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_853.x, x_854.y, x_853.y, x_854.w);
        let x_856 : vec2<f32> = u_xlat50;
        let x_858 : vec2<f32> = (-(x_856) + vec2<f32>(1.0f, 1.0f));
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_861 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_861, vec2<f32>(0.0f, 0.0f));
        let x_863 : vec2<f32> = u_xlat52;
        let x_865 : vec2<f32> = u_xlat52;
        let x_867 : vec4<f32> = u_xlat6;
        let x_869 : vec2<f32> = ((-(x_863) * x_865) + vec2<f32>(x_867.x, x_867.y));
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_872, vec2<f32>(0.0f, 0.0f));
        let x_875 : vec2<f32> = u_xlat52;
        let x_877 : vec2<f32> = u_xlat52;
        let x_879 : vec4<f32> = u_xlat5;
        let x_881 : vec2<f32> = ((-(x_875) * x_877) + vec2<f32>(x_879.y, x_879.w));
        let x_882 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_881.x, x_882.y, x_881.y);
        let x_884 : vec4<f32> = u_xlat6;
        let x_887 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) + vec2<f32>(2.0f, 2.0f));
        let x_888 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec3<f32> = u_xlat28;
        let x_892 : vec2<f32> = (vec2<f32>(x_890.x, x_890.z) + vec2<f32>(2.0f, 2.0f));
        let x_893 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_893.x, x_892.x, x_893.z, x_892.y);
        let x_896 : f32 = u_xlat5.y;
        u_xlat8.z = (x_896 * 0.08163200318813323975f);
        let x_900 : vec4<f32> = u_xlat5;
        let x_903 : vec3<f32> = (vec3<f32>(x_900.z, x_900.x, x_900.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_904 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
        let x_906 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = (vec2<f32>(x_906.x, x_906.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
        let x_913 : f32 = u_xlat9.y;
        u_xlat8.x = x_913;
        let x_915 : vec2<f32> = u_xlat50;
        let x_922 : vec2<f32> = ((vec2<f32>(x_915.x, x_915.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec2<f32> = u_xlat50;
        let x_929 : vec2<f32> = ((vec2<f32>(x_925.x, x_925.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_930.w);
        let x_933 : f32 = u_xlat5.x;
        u_xlat6.y = x_933;
        let x_936 : f32 = u_xlat7.y;
        u_xlat6.w = x_936;
        let x_938 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_938 + x_939);
        let x_941 : vec2<f32> = u_xlat50;
        let x_944 : vec2<f32> = ((vec2<f32>(x_941.y, x_941.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_944.x, x_945.z, x_944.y);
        let x_947 : vec2<f32> = u_xlat50;
        let x_950 : vec2<f32> = ((vec2<f32>(x_947.y, x_947.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_951 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_950.x, x_951.y, x_950.y, x_951.w);
        let x_954 : f32 = u_xlat5.y;
        u_xlat7.y = x_954;
        let x_956 : vec4<f32> = u_xlat7;
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_956 + x_957);
        let x_959 : vec4<f32> = u_xlat6;
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_959 / x_960);
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_962 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_968 : vec4<f32> = u_xlat7;
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_968 / x_969);
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_971 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_973 : vec4<f32> = u_xlat6;
        let x_976 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_973.w, x_973.x, x_973.y, x_973.z) * vec4<f32>(x_976.x, x_976.x, x_976.x, x_976.x));
        let x_979 : vec4<f32> = u_xlat7;
        let x_982 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_979.x, x_979.w, x_979.y, x_979.z) * vec4<f32>(x_982.y, x_982.y, x_982.y, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        let x_986 : vec3<f32> = vec3<f32>(x_985.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_986.z);
        let x_990 : f32 = u_xlat7.x;
        u_xlat9.y = x_990;
        let x_992 : vec4<f32> = u_xlat4;
        let x_995 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) * vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y)) + vec4<f32>(x_998.x, x_998.y, x_998.z, x_998.y));
        let x_1001 : vec4<f32> = u_xlat4;
        let x_1004 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1004.x, x_1004.y)) + vec2<f32>(x_1007.w, x_1007.y));
        let x_1011 : f32 = u_xlat9.y;
        u_xlat6.y = x_1011;
        let x_1014 : f32 = u_xlat7.z;
        u_xlat9.y = x_1014;
        let x_1016 : vec4<f32> = u_xlat4;
        let x_1019 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat4;
        let x_1028 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.w, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat9.y;
        u_xlat6.z = x_1037;
        let x_1040 : vec4<f32> = u_xlat4;
        let x_1043 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y) * vec4<f32>(x_1043.x, x_1043.y, x_1043.x, x_1043.y)) + vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.z));
        let x_1050 : f32 = u_xlat7.w;
        u_xlat9.y = x_1050;
        let x_1053 : vec4<f32> = u_xlat4;
        let x_1056 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) * vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y)) + vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.y));
        let x_1063 : vec4<f32> = u_xlat4;
        let x_1066 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.w, x_1069.y));
        let x_1073 : f32 = u_xlat9.y;
        u_xlat6.w = x_1073;
        let x_1076 : vec4<f32> = u_xlat4;
        let x_1079 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1082.x, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1086 : vec3<f32> = vec3<f32>(x_1085.x, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1086.x, x_1087.y, x_1086.y, x_1086.z);
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1099 : vec4<f32> = u_xlat4;
        let x_1102 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
        let x_1109 : f32 = u_xlat6.x;
        u_xlat7.x = x_1109;
        let x_1111 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1123 : vec4<f32> = u_xlat5;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1123.x, x_1123.x, x_1123.x, x_1123.x) * x_1125);
        let x_1128 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1128.y, x_1128.y, x_1128.y, x_1128.y) * x_1130);
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1133.z, x_1133.z, x_1133.z, x_1133.z) * x_1135);
        let x_1137 : vec4<f32> = u_xlat5;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1137.w, x_1137.w, x_1137.w, x_1137.w) * x_1139);
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
        let x_1145 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec13;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat69 = x_1154;
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.z, x_1156.w);
        let x_1159 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec14;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1166.xy, x_1166.z);
        u_xlat1.x = x_1168;
        let x_1171 : f32 = u_xlat1.x;
        let x_1173 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1171 * x_1173);
        let x_1177 : f32 = u_xlat15.x;
        let x_1178 : f32 = u_xlat69;
        let x_1181 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1177 * x_1178) + x_1181);
        let x_1184 : vec2<f32> = u_xlat50;
        let x_1186 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec15;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat1.x = x_1195;
        let x_1198 : f32 = u_xlat15.z;
        let x_1200 : f32 = u_xlat1.x;
        let x_1202 : f32 = u_xlat69;
        u_xlat69 = ((x_1198 * x_1200) + x_1202);
        let x_1205 : vec4<f32> = u_xlat13;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.x, x_1205.y);
        let x_1208 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec16;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1215.xy, x_1215.z);
        u_xlat1.x = x_1217;
        let x_1220 : f32 = u_xlat15.w;
        let x_1222 : f32 = u_xlat1.x;
        let x_1224 : f32 = u_xlat69;
        u_xlat69 = ((x_1220 * x_1222) + x_1224);
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec17;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat1.x = x_1239;
        let x_1242 : f32 = u_xlat16.x;
        let x_1244 : f32 = u_xlat1.x;
        let x_1246 : f32 = u_xlat69;
        u_xlat69 = ((x_1242 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec18;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat1.x = x_1261;
        let x_1264 : f32 = u_xlat16.y;
        let x_1266 : f32 = u_xlat1.x;
        let x_1268 : f32 = u_xlat69;
        u_xlat69 = ((x_1264 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat12;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.x, x_1271.y);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec19;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat1.x = x_1283;
        let x_1286 : f32 = u_xlat16.z;
        let x_1288 : f32 = u_xlat1.x;
        let x_1290 : f32 = u_xlat69;
        u_xlat69 = ((x_1286 * x_1288) + x_1290);
        let x_1293 : vec4<f32> = u_xlat13;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.z, x_1293.w);
        let x_1296 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec20;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1303.xy, x_1303.z);
        u_xlat1.x = x_1305;
        let x_1308 : f32 = u_xlat16.w;
        let x_1310 : f32 = u_xlat1.x;
        let x_1312 : f32 = u_xlat69;
        u_xlat69 = ((x_1308 * x_1310) + x_1312);
        let x_1315 : vec4<f32> = u_xlat14;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
        let x_1318 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec21;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1325.xy, x_1325.z);
        u_xlat1.x = x_1327;
        let x_1330 : f32 = u_xlat17.x;
        let x_1332 : f32 = u_xlat1.x;
        let x_1334 : f32 = u_xlat69;
        u_xlat69 = ((x_1330 * x_1332) + x_1334);
        let x_1337 : vec4<f32> = u_xlat14;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.z, x_1337.w);
        let x_1340 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec22;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1347.xy, x_1347.z);
        u_xlat1.x = x_1349;
        let x_1352 : f32 = u_xlat17.y;
        let x_1354 : f32 = u_xlat1.x;
        let x_1356 : f32 = u_xlat69;
        u_xlat69 = ((x_1352 * x_1354) + x_1356);
        let x_1359 : vec2<f32> = u_xlat29;
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec23;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat1.x = x_1370;
        let x_1373 : f32 = u_xlat17.z;
        let x_1375 : f32 = u_xlat1.x;
        let x_1377 : f32 = u_xlat69;
        u_xlat69 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat58;
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec24;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat1.x = x_1391;
        let x_1394 : f32 = u_xlat17.w;
        let x_1396 : f32 = u_xlat1.x;
        let x_1398 : f32 = u_xlat69;
        u_xlat69 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec25;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat1.x = x_1413;
        let x_1416 : f32 = u_xlat5.x;
        let x_1418 : f32 = u_xlat1.x;
        let x_1420 : f32 = u_xlat69;
        u_xlat69 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec26;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat1.x = x_1435;
        let x_1438 : f32 = u_xlat5.y;
        let x_1440 : f32 = u_xlat1.x;
        let x_1442 : f32 = u_xlat69;
        u_xlat69 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec2<f32> = u_xlat53;
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec27;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat1.x = x_1456;
        let x_1459 : f32 = u_xlat5.z;
        let x_1461 : f32 = u_xlat1.x;
        let x_1463 : f32 = u_xlat69;
        u_xlat69 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat4;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec28;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat1.x = x_1478;
        let x_1481 : f32 = u_xlat5.w;
        let x_1483 : f32 = u_xlat1.x;
        let x_1485 : f32 = u_xlat69;
        u_xlat23 = ((x_1481 * x_1483) + x_1485);
      }
    }
  } else {
    let x_1489 : vec4<f32> = vs_TEXCOORD6;
    let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
    let x_1492 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
    let x_1499 : vec3<f32> = txVec29;
    let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
    u_xlat23 = x_1501;
  }
  let x_1503 : f32 = x_240.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1503) + 1.0f);
  let x_1506 : f32 = u_xlat23;
  let x_1508 : f32 = x_240.x_MainLightShadowParams.x;
  let x_1510 : f32 = u_xlat69;
  u_xlat23 = ((x_1506 * x_1508) + x_1510);
  let x_1513 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1513);
  let x_1517 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1517 >= 1.0f);
  let x_1519 : bool = u_xlatb69;
  let x_1520 : bool = u_xlatb1;
  u_xlatb69 = (x_1519 | x_1520);
  let x_1522 : bool = u_xlatb69;
  let x_1523 : f32 = u_xlat23;
  u_xlat23 = select(x_1523, 1.0f, x_1522);
  let x_1526 : vec3<f32> = vs_TEXCOORD1;
  let x_1530 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1532 : vec3<f32> = (x_1526 + -(x_1530));
  let x_1533 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1535 : vec4<f32> = u_xlat4;
  let x_1537 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1535.x, x_1535.y, x_1535.z), vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
  let x_1540 : f32 = u_xlat69;
  let x_1542 : f32 = x_240.x_MainLightShadowParams.z;
  let x_1545 : f32 = x_240.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1540 * x_1542) + x_1545);
  let x_1549 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1549, 0.0f, 1.0f);
  let x_1552 : f32 = u_xlat23;
  u_xlat71 = (-(x_1552) + 1.0f);
  let x_1556 : f32 = u_xlat1.x;
  let x_1557 : f32 = u_xlat71;
  let x_1559 : f32 = u_xlat23;
  u_xlat23 = ((x_1556 * x_1557) + x_1559);
  let x_1569 : f32 = x_1566.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1569 == -1.0f));
  let x_1572 : bool = u_xlatb1;
  if (x_1572) {
    let x_1575 : vec3<f32> = vs_TEXCOORD1;
    let x_1578 : vec4<f32> = x_1566.x_MainLightWorldToLight[1i];
    let x_1580 : vec2<f32> = (vec2<f32>(x_1575.y, x_1575.y) * vec2<f32>(x_1578.x, x_1578.y));
    let x_1581 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
    let x_1584 : vec4<f32> = x_1566.x_MainLightWorldToLight[0i];
    let x_1586 : vec3<f32> = vs_TEXCOORD1;
    let x_1589 : vec4<f32> = u_xlat4;
    let x_1591 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(x_1586.x, x_1586.x)) + vec2<f32>(x_1589.x, x_1589.y));
    let x_1592 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
    let x_1595 : vec4<f32> = x_1566.x_MainLightWorldToLight[2i];
    let x_1597 : vec3<f32> = vs_TEXCOORD1;
    let x_1600 : vec4<f32> = u_xlat4;
    let x_1602 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597.z, x_1597.z)) + vec2<f32>(x_1600.x, x_1600.y));
    let x_1603 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
    let x_1605 : vec4<f32> = u_xlat4;
    let x_1609 : vec4<f32> = x_1566.x_MainLightWorldToLight[3i];
    let x_1611 : vec2<f32> = (vec2<f32>(x_1605.x, x_1605.y) + vec2<f32>(x_1609.x, x_1609.y));
    let x_1612 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
    let x_1614 : vec4<f32> = u_xlat4;
    let x_1617 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1618 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
    let x_1625 : vec4<f32> = u_xlat4;
    let x_1628 : f32 = x_27.x_GlobalMipBias.x;
    let x_1629 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1625.x, x_1625.y), x_1628);
    u_xlat4 = x_1629;
    let x_1634 : f32 = x_1566.x_MainLightCookieTextureFormat;
    let x_1636 : f32 = x_1566.x_MainLightCookieTextureFormat;
    let x_1638 : f32 = x_1566.x_MainLightCookieTextureFormat;
    let x_1640 : f32 = x_1566.x_MainLightCookieTextureFormat;
    let x_1641 : vec4<f32> = vec4<f32>(x_1634, x_1636, x_1638, x_1640);
    let x_1649 : vec4<bool> = (vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1641.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1649.x, x_1649.y);
    let x_1652 : bool = u_xlatb5.y;
    if (x_1652) {
      let x_1657 : f32 = u_xlat4.w;
      x_1653 = x_1657;
    } else {
      let x_1660 : f32 = u_xlat4.x;
      x_1653 = x_1660;
    }
    let x_1661 : f32 = x_1653;
    u_xlat1.x = x_1661;
    let x_1664 : bool = u_xlatb5.x;
    if (x_1664) {
      let x_1668 : vec4<f32> = u_xlat4;
      x_1665 = vec3<f32>(x_1668.x, x_1668.y, x_1668.z);
    } else {
      let x_1671 : vec4<f32> = u_xlat1;
      x_1665 = vec3<f32>(x_1671.x, x_1671.x, x_1671.x);
    }
    let x_1673 : vec3<f32> = x_1665;
    let x_1674 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1680 : vec4<f32> = u_xlat4;
  let x_1683 : vec4<f32> = x_27.x_MainLightColor;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1680.x, x_1680.y, x_1680.z) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : f32 = u_xlat23;
  let x_1690 : f32 = x_156.unity_LightData.z;
  u_xlat23 = (x_1688 * x_1690);
  let x_1692 : f32 = u_xlat23;
  let x_1694 : vec4<f32> = u_xlat4;
  let x_1696 : vec3<f32> = (vec3<f32>(x_1692, x_1692, x_1692) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1699 : vec4<f32> = u_xlat2;
  let x_1702 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat23 = dot(vec3<f32>(x_1699.x, x_1699.y, x_1699.z), vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1705, 0.0f, 1.0f);
  let x_1707 : f32 = u_xlat23;
  let x_1709 : vec4<f32> = u_xlat4;
  let x_1711 : vec3<f32> = (vec3<f32>(x_1707, x_1707, x_1707) * vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1714 : vec4<f32> = u_xlat1;
  let x_1716 : vec4<f32> = u_xlat4;
  let x_1718 : vec3<f32> = (vec3<f32>(x_1714.y, x_1714.z, x_1714.w) * vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
  let x_1721 : vec4<f32> = u_xlat0;
  let x_1723 : vec4<f32> = u_xlat4;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1721.x, x_1721.x, x_1721.x) * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1729 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1731 : f32 = x_156.unity_LightData.y;
  u_xlat23 = min(x_1729, x_1731);
  let x_1735 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1735));
  let x_1738 : f32 = u_xlat69;
  let x_1741 : f32 = x_240.x_AdditionalShadowFadeParams.x;
  let x_1744 : f32 = x_240.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1738 * x_1741) + x_1744);
  let x_1746 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1746, 0.0f, 1.0f);
  let x_1749 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1751 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1753 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1755 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1756 : vec4<f32> = vec4<f32>(x_1749, x_1751, x_1753, x_1755);
  let x_1762 : vec4<bool> = (vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1756.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1762.x, x_1762.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1774 : u32 = u_xlatu_loop_1;
    let x_1775 : u32 = u_xlatu23;
    if ((x_1774 < x_1775)) {
    } else {
      break;
    }
    let x_1778 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1778 >> 2u);
    let x_1782 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1782 & 3u));
    let x_1785 : u32 = u_xlatu71;
    let x_1788 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_1785)];
    let x_1798 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1803 : vec4<u32> = indexable[x_1798];
    u_xlat71 = dot(x_1788, bitcast<vec4<f32>>(x_1803));
    let x_1807 : f32 = u_xlat71;
    u_xlati71 = i32(x_1807);
    let x_1809 : vec3<f32> = vs_TEXCOORD1;
    let x_1820 : i32 = u_xlati71;
    let x_1822 : vec4<f32> = x_1819.x_AdditionalLightsPosition[x_1820];
    let x_1825 : i32 = u_xlati71;
    let x_1827 : vec4<f32> = x_1819.x_AdditionalLightsPosition[x_1825];
    let x_1829 : vec3<f32> = ((-(x_1809) * vec3<f32>(x_1822.w, x_1822.w, x_1822.w)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
    let x_1833 : vec4<f32> = u_xlat7;
    let x_1835 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1833.x, x_1833.y, x_1833.z), vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
    let x_1838 : f32 = u_xlat72;
    u_xlat72 = max(x_1838, 0.00006103515625f);
    let x_1842 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1842);
    let x_1844 : f32 = u_xlat73;
    let x_1846 : vec4<f32> = u_xlat7;
    let x_1848 : vec3<f32> = (vec3<f32>(x_1844, x_1844, x_1844) * vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    let x_1851 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1851);
    let x_1853 : f32 = u_xlat72;
    let x_1854 : i32 = u_xlati71;
    let x_1856 : f32 = x_1819.x_AdditionalLightsAttenuation[x_1854].x;
    u_xlat72 = (x_1853 * x_1856);
    let x_1858 : f32 = u_xlat72;
    let x_1860 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1858) * x_1860) + 1.0f);
    let x_1863 : f32 = u_xlat72;
    u_xlat72 = max(x_1863, 0.0f);
    let x_1865 : f32 = u_xlat72;
    let x_1866 : f32 = u_xlat72;
    u_xlat72 = (x_1865 * x_1866);
    let x_1868 : f32 = u_xlat72;
    let x_1869 : f32 = u_xlat73;
    u_xlat72 = (x_1868 * x_1869);
    let x_1871 : i32 = u_xlati71;
    let x_1873 : vec4<f32> = x_1819.x_AdditionalLightsSpotDir[x_1871];
    let x_1875 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
    let x_1878 : f32 = u_xlat73;
    let x_1879 : i32 = u_xlati71;
    let x_1881 : f32 = x_1819.x_AdditionalLightsAttenuation[x_1879].z;
    let x_1883 : i32 = u_xlati71;
    let x_1885 : f32 = x_1819.x_AdditionalLightsAttenuation[x_1883].w;
    u_xlat73 = ((x_1878 * x_1881) + x_1885);
    let x_1887 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1887, 0.0f, 1.0f);
    let x_1889 : f32 = u_xlat73;
    let x_1890 : f32 = u_xlat73;
    u_xlat73 = (x_1889 * x_1890);
    let x_1892 : f32 = u_xlat72;
    let x_1893 : f32 = u_xlat73;
    u_xlat72 = (x_1892 * x_1893);
    let x_1897 : i32 = u_xlati71;
    let x_1899 : f32 = x_240.x_AdditionalShadowParams[x_1897].w;
    u_xlati73 = i32(x_1899);
    let x_1902 : i32 = u_xlati73;
    u_xlatb51 = (x_1902 >= 0i);
    let x_1904 : bool = u_xlatb51;
    if (x_1904) {
      let x_1908 : i32 = u_xlati71;
      let x_1910 : f32 = x_240.x_AdditionalShadowParams[x_1908].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1910, x_1910, x_1910, x_1910))));
      let x_1914 : bool = u_xlatb51;
      if (x_1914) {
        let x_1919 : vec4<f32> = u_xlat7;
        let x_1922 : vec4<f32> = u_xlat7;
        let x_1925 : vec4<bool> = (abs(vec4<f32>(x_1919.z, x_1919.z, x_1919.y, x_1919.z)) >= abs(vec4<f32>(x_1922.x, x_1922.y, x_1922.x, x_1922.x)));
        let x_1927 : vec3<bool> = vec3<bool>(x_1925.x, x_1925.y, x_1925.z);
        let x_1928 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
        let x_1931 : bool = u_xlatb8.y;
        let x_1933 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1931 & x_1933);
        let x_1935 : vec4<f32> = u_xlat7;
        let x_1938 : vec4<bool> = (-(vec4<f32>(x_1935.z, x_1935.y, x_1935.z, x_1935.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1939 : vec3<bool> = vec3<bool>(x_1938.x, x_1938.y, x_1938.w);
        let x_1940 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1939.x, x_1939.y, x_1940.z, x_1939.z);
        let x_1943 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1943);
        let x_1949 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1949);
        let x_1955 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1955);
        let x_1958 : bool = u_xlatb8.z;
        if (x_1958) {
          let x_1963 : f32 = u_xlat8.y;
          x_1959 = x_1963;
        } else {
          let x_1965 : f32 = u_xlat74;
          x_1959 = x_1965;
        }
        let x_1966 : f32 = x_1959;
        u_xlat74 = x_1966;
        let x_1968 : bool = u_xlatb51;
        if (x_1968) {
          let x_1973 : f32 = u_xlat8.x;
          x_1969 = x_1973;
        } else {
          let x_1975 : f32 = u_xlat74;
          x_1969 = x_1975;
        }
        let x_1976 : f32 = x_1969;
        u_xlat51.x = x_1976;
        let x_1978 : i32 = u_xlati71;
        let x_1980 : f32 = x_240.x_AdditionalShadowParams[x_1978].w;
        u_xlat74 = trunc(x_1980);
        let x_1983 : f32 = u_xlat51.x;
        let x_1984 : f32 = u_xlat74;
        u_xlat51.x = (x_1983 + x_1984);
        let x_1988 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1988);
      }
      let x_1990 : i32 = u_xlati73;
      u_xlati73 = (x_1990 << bitcast<u32>(2i));
      let x_1992 : vec3<f32> = vs_TEXCOORD1;
      let x_1995 : i32 = u_xlati73;
      let x_1998 : i32 = u_xlati73;
      let x_2002 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1995 + 1i) / 4i)][((x_1998 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1992.y, x_1992.y, x_1992.y, x_1992.y) * x_2002);
      let x_2004 : i32 = u_xlati73;
      let x_2006 : i32 = u_xlati73;
      let x_2009 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[(x_2004 / 4i)][(x_2006 % 4i)];
      let x_2010 : vec3<f32> = vs_TEXCOORD1;
      let x_2013 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2009 * vec4<f32>(x_2010.x, x_2010.x, x_2010.x, x_2010.x)) + x_2013);
      let x_2015 : i32 = u_xlati73;
      let x_2018 : i32 = u_xlati73;
      let x_2022 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_2015 + 2i) / 4i)][((x_2018 + 2i) % 4i)];
      let x_2023 : vec3<f32> = vs_TEXCOORD1;
      let x_2026 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2022 * vec4<f32>(x_2023.z, x_2023.z, x_2023.z, x_2023.z)) + x_2026);
      let x_2028 : vec4<f32> = u_xlat8;
      let x_2029 : i32 = u_xlati73;
      let x_2032 : i32 = u_xlati73;
      let x_2036 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_2029 + 3i) / 4i)][((x_2032 + 3i) % 4i)];
      u_xlat8 = (x_2028 + x_2036);
      let x_2038 : vec4<f32> = u_xlat8;
      let x_2040 : vec4<f32> = u_xlat8;
      let x_2042 : vec3<f32> = (vec3<f32>(x_2038.x, x_2038.y, x_2038.z) / vec3<f32>(x_2040.w, x_2040.w, x_2040.w));
      let x_2043 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
      let x_2046 : i32 = u_xlati71;
      let x_2048 : f32 = x_240.x_AdditionalShadowParams[x_2046].y;
      u_xlatb73 = (0.0f < x_2048);
      let x_2050 : bool = u_xlatb73;
      if (x_2050) {
        let x_2053 : i32 = u_xlati71;
        let x_2055 : f32 = x_240.x_AdditionalShadowParams[x_2053].y;
        u_xlatb73 = (1.0f == x_2055);
        let x_2057 : bool = u_xlatb73;
        if (x_2057) {
          let x_2060 : vec4<f32> = u_xlat8;
          let x_2064 : vec4<f32> = x_240.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2060.x, x_2060.y, x_2060.x, x_2060.y) + x_2064);
          let x_2067 : vec4<f32> = u_xlat9;
          let x_2068 : vec2<f32> = vec2<f32>(x_2067.x, x_2067.y);
          let x_2070 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
          let x_2078 : vec3<f32> = txVec30;
          let x_2080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2078.xy, x_2078.z);
          u_xlat10.x = x_2080;
          let x_2083 : vec4<f32> = u_xlat9;
          let x_2084 : vec2<f32> = vec2<f32>(x_2083.z, x_2083.w);
          let x_2086 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
          let x_2093 : vec3<f32> = txVec31;
          let x_2095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2093.xy, x_2093.z);
          u_xlat10.y = x_2095;
          let x_2097 : vec4<f32> = u_xlat8;
          let x_2101 : vec4<f32> = x_240.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2097.x, x_2097.y, x_2097.x, x_2097.y) + x_2101);
          let x_2104 : vec4<f32> = u_xlat9;
          let x_2105 : vec2<f32> = vec2<f32>(x_2104.x, x_2104.y);
          let x_2107 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
          let x_2114 : vec3<f32> = txVec32;
          let x_2116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2114.xy, x_2114.z);
          u_xlat10.z = x_2116;
          let x_2119 : vec4<f32> = u_xlat9;
          let x_2120 : vec2<f32> = vec2<f32>(x_2119.z, x_2119.w);
          let x_2122 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
          let x_2129 : vec3<f32> = txVec33;
          let x_2131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
          u_xlat10.w = x_2131;
          let x_2133 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2133, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2136 : i32 = u_xlati71;
          let x_2138 : f32 = x_240.x_AdditionalShadowParams[x_2136].y;
          u_xlatb51 = (2.0f == x_2138);
          let x_2140 : bool = u_xlatb51;
          if (x_2140) {
            let x_2143 : vec4<f32> = u_xlat8;
            let x_2147 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2143.x, x_2143.y) * vec2<f32>(x_2147.z, x_2147.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2151 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2151);
            let x_2153 : vec4<f32> = u_xlat8;
            let x_2156 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2159 : vec2<f32> = u_xlat51;
            let x_2161 : vec2<f32> = ((vec2<f32>(x_2153.x, x_2153.y) * vec2<f32>(x_2156.z, x_2156.w)) + -(x_2159));
            let x_2162 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
            let x_2164 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2164.x, x_2164.x, x_2164.y, x_2164.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2167 : vec4<f32> = u_xlat10;
            let x_2169 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2167.x, x_2167.x, x_2167.z, x_2167.z) * vec4<f32>(x_2169.x, x_2169.x, x_2169.z, x_2169.z));
            let x_2173 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2173.y, x_2173.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2176 : vec4<f32> = u_xlat11;
            let x_2179 : vec4<f32> = u_xlat9;
            let x_2182 : vec2<f32> = ((vec2<f32>(x_2176.x, x_2176.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2179.x, x_2179.y)));
            let x_2183 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2182.x, x_2183.y, x_2182.y, x_2183.w);
            let x_2185 : vec4<f32> = u_xlat9;
            let x_2188 : vec2<f32> = (-(vec2<f32>(x_2185.x, x_2185.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2189 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
            let x_2192 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2192.x, x_2192.y), vec2<f32>(0.0f, 0.0f));
            let x_2195 : vec2<f32> = u_xlat57;
            let x_2197 : vec2<f32> = u_xlat57;
            let x_2199 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2195) * x_2197) + vec2<f32>(x_2199.x, x_2199.y));
            let x_2202 : vec4<f32> = u_xlat9;
            let x_2204 : vec2<f32> = max(vec2<f32>(x_2202.x, x_2202.y), vec2<f32>(0.0f, 0.0f));
            let x_2205 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
            let x_2207 : vec4<f32> = u_xlat9;
            let x_2210 : vec4<f32> = u_xlat9;
            let x_2213 : vec4<f32> = u_xlat10;
            let x_2215 : vec2<f32> = ((-(vec2<f32>(x_2207.x, x_2207.y)) * vec2<f32>(x_2210.x, x_2210.y)) + vec2<f32>(x_2213.y, x_2213.w));
            let x_2216 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2218 + vec2<f32>(1.0f, 1.0f));
            let x_2220 : vec4<f32> = u_xlat9;
            let x_2222 : vec2<f32> = (vec2<f32>(x_2220.x, x_2220.y) + vec2<f32>(1.0f, 1.0f));
            let x_2223 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat10;
            let x_2227 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2228 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
            let x_2230 : vec4<f32> = u_xlat11;
            let x_2232 : vec2<f32> = (vec2<f32>(x_2230.x, x_2230.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2233 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
            let x_2235 : vec2<f32> = u_xlat57;
            let x_2236 : vec2<f32> = (x_2235 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2237 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2236.x, x_2236.y, x_2237.z, x_2237.w);
            let x_2239 : vec4<f32> = u_xlat9;
            let x_2241 : vec2<f32> = (vec2<f32>(x_2239.x, x_2239.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2242 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
            let x_2244 : vec4<f32> = u_xlat10;
            let x_2246 : vec2<f32> = (vec2<f32>(x_2244.y, x_2244.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2247 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2250 : f32 = u_xlat11.x;
            u_xlat12.z = x_2250;
            let x_2253 : f32 = u_xlat9.x;
            u_xlat12.w = x_2253;
            let x_2256 : f32 = u_xlat14.x;
            u_xlat13.z = x_2256;
            let x_2259 : f32 = u_xlat55.x;
            u_xlat13.w = x_2259;
            let x_2261 : vec4<f32> = u_xlat12;
            let x_2263 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2261.z, x_2261.w, x_2261.x, x_2261.z) + vec4<f32>(x_2263.z, x_2263.w, x_2263.x, x_2263.z));
            let x_2267 : f32 = u_xlat12.y;
            u_xlat11.z = x_2267;
            let x_2270 : f32 = u_xlat9.y;
            u_xlat11.w = x_2270;
            let x_2273 : f32 = u_xlat13.y;
            u_xlat14.z = x_2273;
            let x_2276 : f32 = u_xlat55.y;
            u_xlat14.w = x_2276;
            let x_2278 : vec4<f32> = u_xlat11;
            let x_2280 : vec4<f32> = u_xlat14;
            let x_2282 : vec3<f32> = (vec3<f32>(x_2278.z, x_2278.y, x_2278.w) + vec3<f32>(x_2280.z, x_2280.y, x_2280.w));
            let x_2283 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
            let x_2285 : vec4<f32> = u_xlat13;
            let x_2287 : vec4<f32> = u_xlat10;
            let x_2289 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.z, x_2285.w) / vec3<f32>(x_2287.z, x_2287.w, x_2287.y));
            let x_2290 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
            let x_2292 : vec4<f32> = u_xlat11;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2295 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat14;
            let x_2299 : vec4<f32> = u_xlat9;
            let x_2301 : vec3<f32> = (vec3<f32>(x_2297.z, x_2297.y, x_2297.w) / vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
            let x_2302 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat12;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2304.x, x_2304.y, x_2304.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2307 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2312 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2314 : vec3<f32> = (vec3<f32>(x_2309.y, x_2309.x, x_2309.z) * vec3<f32>(x_2312.x, x_2312.x, x_2312.x));
            let x_2315 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
            let x_2317 : vec4<f32> = u_xlat12;
            let x_2320 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2322 : vec3<f32> = (vec3<f32>(x_2317.x, x_2317.y, x_2317.z) * vec3<f32>(x_2320.y, x_2320.y, x_2320.y));
            let x_2323 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
            let x_2326 : f32 = u_xlat12.x;
            u_xlat11.w = x_2326;
            let x_2328 : vec2<f32> = u_xlat51;
            let x_2331 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) * vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.y, x_2334.w, x_2334.x, x_2334.w));
            let x_2337 : vec2<f32> = u_xlat51;
            let x_2339 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2342 : vec4<f32> = u_xlat11;
            let x_2344 : vec2<f32> = ((x_2337 * vec2<f32>(x_2339.x, x_2339.y)) + vec2<f32>(x_2342.z, x_2342.w));
            let x_2345 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
            let x_2348 : f32 = u_xlat11.y;
            u_xlat12.w = x_2348;
            let x_2350 : vec4<f32> = u_xlat12;
            let x_2351 : vec2<f32> = vec2<f32>(x_2350.y, x_2350.z);
            let x_2352 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2352.x, x_2351.x, x_2352.z, x_2351.y);
            let x_2354 : vec2<f32> = u_xlat51;
            let x_2357 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2360 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) * vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y)) + vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2360.y));
            let x_2363 : vec2<f32> = u_xlat51;
            let x_2366 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2369 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) * vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y)) + vec4<f32>(x_2369.w, x_2369.y, x_2369.w, x_2369.z));
            let x_2372 : vec2<f32> = u_xlat51;
            let x_2375 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2378 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2372.x, x_2372.y, x_2372.x, x_2372.y) * vec4<f32>(x_2375.x, x_2375.y, x_2375.x, x_2375.y)) + vec4<f32>(x_2378.x, x_2378.w, x_2378.z, x_2378.w));
            let x_2381 : vec4<f32> = u_xlat9;
            let x_2383 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2381.x, x_2381.x, x_2381.x, x_2381.y) * vec4<f32>(x_2383.z, x_2383.w, x_2383.y, x_2383.z));
            let x_2386 : vec4<f32> = u_xlat9;
            let x_2388 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2386.y, x_2386.y, x_2386.z, x_2386.z) * x_2388);
            let x_2391 : f32 = u_xlat9.z;
            let x_2393 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2391 * x_2393);
            let x_2397 : vec4<f32> = u_xlat13;
            let x_2398 : vec2<f32> = vec2<f32>(x_2397.x, x_2397.y);
            let x_2400 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
            let x_2407 : vec3<f32> = txVec34;
            let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
            u_xlat74 = x_2409;
            let x_2411 : vec4<f32> = u_xlat13;
            let x_2412 : vec2<f32> = vec2<f32>(x_2411.z, x_2411.w);
            let x_2414 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
            let x_2422 : vec3<f32> = txVec35;
            let x_2424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2422.xy, x_2422.z);
            u_xlat75 = x_2424;
            let x_2425 : f32 = u_xlat75;
            let x_2427 : f32 = u_xlat16.y;
            u_xlat75 = (x_2425 * x_2427);
            let x_2430 : f32 = u_xlat16.x;
            let x_2431 : f32 = u_xlat74;
            let x_2433 : f32 = u_xlat75;
            u_xlat74 = ((x_2430 * x_2431) + x_2433);
            let x_2436 : vec4<f32> = u_xlat14;
            let x_2437 : vec2<f32> = vec2<f32>(x_2436.x, x_2436.y);
            let x_2439 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2437.x, x_2437.y, x_2439);
            let x_2446 : vec3<f32> = txVec36;
            let x_2448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2446.xy, x_2446.z);
            u_xlat75 = x_2448;
            let x_2450 : f32 = u_xlat16.z;
            let x_2451 : f32 = u_xlat75;
            let x_2453 : f32 = u_xlat74;
            u_xlat74 = ((x_2450 * x_2451) + x_2453);
            let x_2456 : vec4<f32> = u_xlat12;
            let x_2457 : vec2<f32> = vec2<f32>(x_2456.x, x_2456.y);
            let x_2459 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2457.x, x_2457.y, x_2459);
            let x_2466 : vec3<f32> = txVec37;
            let x_2468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2466.xy, x_2466.z);
            u_xlat75 = x_2468;
            let x_2470 : f32 = u_xlat16.w;
            let x_2471 : f32 = u_xlat75;
            let x_2473 : f32 = u_xlat74;
            u_xlat74 = ((x_2470 * x_2471) + x_2473);
            let x_2476 : vec4<f32> = u_xlat15;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.x, x_2476.y);
            let x_2479 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec38;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat75 = x_2488;
            let x_2490 : f32 = u_xlat17.x;
            let x_2491 : f32 = u_xlat75;
            let x_2493 : f32 = u_xlat74;
            u_xlat74 = ((x_2490 * x_2491) + x_2493);
            let x_2496 : vec4<f32> = u_xlat15;
            let x_2497 : vec2<f32> = vec2<f32>(x_2496.z, x_2496.w);
            let x_2499 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2497.x, x_2497.y, x_2499);
            let x_2506 : vec3<f32> = txVec39;
            let x_2508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
            u_xlat75 = x_2508;
            let x_2510 : f32 = u_xlat17.y;
            let x_2511 : f32 = u_xlat75;
            let x_2513 : f32 = u_xlat74;
            u_xlat74 = ((x_2510 * x_2511) + x_2513);
            let x_2516 : vec4<f32> = u_xlat12;
            let x_2517 : vec2<f32> = vec2<f32>(x_2516.z, x_2516.w);
            let x_2519 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2517.x, x_2517.y, x_2519);
            let x_2526 : vec3<f32> = txVec40;
            let x_2528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2526.xy, x_2526.z);
            u_xlat75 = x_2528;
            let x_2530 : f32 = u_xlat17.z;
            let x_2531 : f32 = u_xlat75;
            let x_2533 : f32 = u_xlat74;
            u_xlat74 = ((x_2530 * x_2531) + x_2533);
            let x_2536 : vec4<f32> = u_xlat11;
            let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
            let x_2539 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
            let x_2546 : vec3<f32> = txVec41;
            let x_2548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
            u_xlat75 = x_2548;
            let x_2550 : f32 = u_xlat17.w;
            let x_2551 : f32 = u_xlat75;
            let x_2553 : f32 = u_xlat74;
            u_xlat74 = ((x_2550 * x_2551) + x_2553);
            let x_2556 : vec4<f32> = u_xlat11;
            let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
            let x_2559 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
            let x_2566 : vec3<f32> = txVec42;
            let x_2568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
            u_xlat75 = x_2568;
            let x_2570 : f32 = u_xlat51.x;
            let x_2571 : f32 = u_xlat75;
            let x_2573 : f32 = u_xlat74;
            u_xlat73 = ((x_2570 * x_2571) + x_2573);
          } else {
            let x_2576 : vec4<f32> = u_xlat8;
            let x_2579 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2576.x, x_2576.y) * vec2<f32>(x_2579.z, x_2579.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2583 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2583);
            let x_2585 : vec4<f32> = u_xlat8;
            let x_2588 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2591 : vec2<f32> = u_xlat51;
            let x_2593 : vec2<f32> = ((vec2<f32>(x_2585.x, x_2585.y) * vec2<f32>(x_2588.z, x_2588.w)) + -(x_2591));
            let x_2594 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2596.x, x_2596.x, x_2596.y, x_2596.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2599 : vec4<f32> = u_xlat10;
            let x_2601 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2599.x, x_2599.x, x_2599.z, x_2599.z) * vec4<f32>(x_2601.x, x_2601.x, x_2601.z, x_2601.z));
            let x_2604 : vec4<f32> = u_xlat11;
            let x_2606 : vec2<f32> = (vec2<f32>(x_2604.y, x_2604.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2607 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2607.x, x_2606.x, x_2607.z, x_2606.y);
            let x_2609 : vec4<f32> = u_xlat11;
            let x_2612 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2609.x, x_2609.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2612.x, x_2612.y)));
            let x_2616 : vec4<f32> = u_xlat9;
            let x_2619 : vec2<f32> = (-(vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2620 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2619.x, x_2620.y, x_2619.y, x_2620.w);
            let x_2622 : vec4<f32> = u_xlat9;
            let x_2624 : vec2<f32> = min(vec2<f32>(x_2622.x, x_2622.y), vec2<f32>(0.0f, 0.0f));
            let x_2625 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat11;
            let x_2630 : vec4<f32> = u_xlat11;
            let x_2633 : vec4<f32> = u_xlat10;
            let x_2635 : vec2<f32> = ((-(vec2<f32>(x_2627.x, x_2627.y)) * vec2<f32>(x_2630.x, x_2630.y)) + vec2<f32>(x_2633.x, x_2633.z));
            let x_2636 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2635.x, x_2636.y, x_2635.y, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat9;
            let x_2640 : vec2<f32> = max(vec2<f32>(x_2638.x, x_2638.y), vec2<f32>(0.0f, 0.0f));
            let x_2641 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2643 : vec4<f32> = u_xlat11;
            let x_2646 : vec4<f32> = u_xlat11;
            let x_2649 : vec4<f32> = u_xlat10;
            let x_2651 : vec2<f32> = ((-(vec2<f32>(x_2643.x, x_2643.y)) * vec2<f32>(x_2646.x, x_2646.y)) + vec2<f32>(x_2649.y, x_2649.w));
            let x_2652 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2652.x, x_2651.x, x_2652.z, x_2651.y);
            let x_2654 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2654 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2658 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2658 * 0.08163200318813323975f);
            let x_2661 : vec2<f32> = u_xlat55;
            let x_2663 : vec2<f32> = (vec2<f32>(x_2661.y, x_2661.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2664 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2663.x, x_2663.y, x_2664.z, x_2664.w);
            let x_2666 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2666.x, x_2666.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2670 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2670 * 0.08163200318813323975f);
            let x_2674 : f32 = u_xlat13.y;
            u_xlat11.x = x_2674;
            let x_2676 : vec4<f32> = u_xlat9;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.x, x_2676.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2680 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2680.x, x_2679.x, x_2680.z, x_2679.y);
            let x_2682 : vec4<f32> = u_xlat9;
            let x_2685 : vec2<f32> = ((vec2<f32>(x_2682.x, x_2682.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2686 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2685.x, x_2686.y, x_2685.y, x_2686.w);
            let x_2689 : f32 = u_xlat55.x;
            u_xlat10.y = x_2689;
            let x_2692 : f32 = u_xlat12.y;
            u_xlat10.w = x_2692;
            let x_2694 : vec4<f32> = u_xlat10;
            let x_2695 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2694 + x_2695);
            let x_2697 : vec4<f32> = u_xlat9;
            let x_2700 : vec2<f32> = ((vec2<f32>(x_2697.y, x_2697.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2701 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2701.x, x_2700.x, x_2701.z, x_2700.y);
            let x_2703 : vec4<f32> = u_xlat9;
            let x_2706 : vec2<f32> = ((vec2<f32>(x_2703.y, x_2703.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2707 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2706.x, x_2707.y, x_2706.y, x_2707.w);
            let x_2710 : f32 = u_xlat55.y;
            u_xlat12.y = x_2710;
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2713 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2712 + x_2713);
            let x_2715 : vec4<f32> = u_xlat10;
            let x_2716 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2715 / x_2716);
            let x_2718 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2718 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2720 : vec4<f32> = u_xlat12;
            let x_2721 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2720 / x_2721);
            let x_2723 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2723 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2725 : vec4<f32> = u_xlat10;
            let x_2728 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2725.w, x_2725.x, x_2725.y, x_2725.z) * vec4<f32>(x_2728.x, x_2728.x, x_2728.x, x_2728.x));
            let x_2731 : vec4<f32> = u_xlat12;
            let x_2734 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2731.x, x_2731.w, x_2731.y, x_2731.z) * vec4<f32>(x_2734.y, x_2734.y, x_2734.y, x_2734.y));
            let x_2737 : vec4<f32> = u_xlat10;
            let x_2738 : vec3<f32> = vec3<f32>(x_2737.y, x_2737.z, x_2737.w);
            let x_2739 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2738.x, x_2739.y, x_2738.y, x_2738.z);
            let x_2742 : f32 = u_xlat12.x;
            u_xlat13.y = x_2742;
            let x_2744 : vec2<f32> = u_xlat51;
            let x_2747 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2750 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y) * vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y)) + vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2750.y));
            let x_2753 : vec2<f32> = u_xlat51;
            let x_2755 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2758 : vec4<f32> = u_xlat13;
            let x_2760 : vec2<f32> = ((x_2753 * vec2<f32>(x_2755.x, x_2755.y)) + vec2<f32>(x_2758.w, x_2758.y));
            let x_2761 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2764 : f32 = u_xlat13.y;
            u_xlat10.y = x_2764;
            let x_2767 : f32 = u_xlat12.z;
            u_xlat13.y = x_2767;
            let x_2769 : vec2<f32> = u_xlat51;
            let x_2772 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) * vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y)) + vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2775.y));
            let x_2779 : vec2<f32> = u_xlat51;
            let x_2781 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2779 * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2784.w, x_2784.y));
            let x_2788 : f32 = u_xlat13.y;
            u_xlat10.z = x_2788;
            let x_2790 : vec2<f32> = u_xlat51;
            let x_2793 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y) * vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y)) + vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.z));
            let x_2800 : f32 = u_xlat12.w;
            u_xlat13.y = x_2800;
            let x_2803 : vec2<f32> = u_xlat51;
            let x_2806 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y) * vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y)) + vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2809.y));
            let x_2813 : vec2<f32> = u_xlat51;
            let x_2815 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2818 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2813 * vec2<f32>(x_2815.x, x_2815.y)) + vec2<f32>(x_2818.w, x_2818.y));
            let x_2822 : f32 = u_xlat13.y;
            u_xlat10.w = x_2822;
            let x_2825 : vec2<f32> = u_xlat51;
            let x_2827 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2830 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2825 * vec2<f32>(x_2827.x, x_2827.y)) + vec2<f32>(x_2830.x, x_2830.w));
            let x_2833 : vec4<f32> = u_xlat13;
            let x_2834 : vec3<f32> = vec3<f32>(x_2833.x, x_2833.z, x_2833.w);
            let x_2835 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2834.x, x_2835.y, x_2834.y, x_2834.z);
            let x_2837 : vec2<f32> = u_xlat51;
            let x_2840 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y) * vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y)) + vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2843.y));
            let x_2846 : vec2<f32> = u_xlat51;
            let x_2848 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2851 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2846 * vec2<f32>(x_2848.x, x_2848.y)) + vec2<f32>(x_2851.w, x_2851.y));
            let x_2855 : f32 = u_xlat10.x;
            u_xlat12.x = x_2855;
            let x_2857 : vec2<f32> = u_xlat51;
            let x_2859 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2862 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2857 * vec2<f32>(x_2859.x, x_2859.y)) + vec2<f32>(x_2862.x, x_2862.y));
            let x_2866 : vec4<f32> = u_xlat9;
            let x_2868 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2866.x, x_2866.x, x_2866.x, x_2866.x) * x_2868);
            let x_2871 : vec4<f32> = u_xlat9;
            let x_2873 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2871.y, x_2871.y, x_2871.y, x_2871.y) * x_2873);
            let x_2876 : vec4<f32> = u_xlat9;
            let x_2878 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2876.z, x_2876.z, x_2876.z, x_2876.z) * x_2878);
            let x_2880 : vec4<f32> = u_xlat9;
            let x_2882 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2880.w, x_2880.w, x_2880.w, x_2880.w) * x_2882);
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2886 : vec2<f32> = vec2<f32>(x_2885.x, x_2885.y);
            let x_2888 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
            let x_2895 : vec3<f32> = txVec43;
            let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
            u_xlat75 = x_2897;
            let x_2899 : vec4<f32> = u_xlat14;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.z, x_2899.w);
            let x_2902 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2910 : vec3<f32> = txVec44;
            let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
            u_xlat76 = x_2912;
            let x_2913 : f32 = u_xlat76;
            let x_2915 : f32 = u_xlat20.y;
            u_xlat76 = (x_2913 * x_2915);
            let x_2918 : f32 = u_xlat20.x;
            let x_2919 : f32 = u_xlat75;
            let x_2921 : f32 = u_xlat76;
            u_xlat75 = ((x_2918 * x_2919) + x_2921);
            let x_2924 : vec4<f32> = u_xlat15;
            let x_2925 : vec2<f32> = vec2<f32>(x_2924.x, x_2924.y);
            let x_2927 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec45;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat76 = x_2936;
            let x_2938 : f32 = u_xlat20.z;
            let x_2939 : f32 = u_xlat76;
            let x_2941 : f32 = u_xlat75;
            u_xlat75 = ((x_2938 * x_2939) + x_2941);
            let x_2944 : vec4<f32> = u_xlat17;
            let x_2945 : vec2<f32> = vec2<f32>(x_2944.x, x_2944.y);
            let x_2947 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
            let x_2954 : vec3<f32> = txVec46;
            let x_2956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2954.xy, x_2954.z);
            u_xlat76 = x_2956;
            let x_2958 : f32 = u_xlat20.w;
            let x_2959 : f32 = u_xlat76;
            let x_2961 : f32 = u_xlat75;
            u_xlat75 = ((x_2958 * x_2959) + x_2961);
            let x_2964 : vec4<f32> = u_xlat16;
            let x_2965 : vec2<f32> = vec2<f32>(x_2964.x, x_2964.y);
            let x_2967 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2965.x, x_2965.y, x_2967);
            let x_2974 : vec3<f32> = txVec47;
            let x_2976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
            u_xlat76 = x_2976;
            let x_2978 : f32 = u_xlat21.x;
            let x_2979 : f32 = u_xlat76;
            let x_2981 : f32 = u_xlat75;
            u_xlat75 = ((x_2978 * x_2979) + x_2981);
            let x_2984 : vec4<f32> = u_xlat16;
            let x_2985 : vec2<f32> = vec2<f32>(x_2984.z, x_2984.w);
            let x_2987 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
            let x_2994 : vec3<f32> = txVec48;
            let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
            u_xlat76 = x_2996;
            let x_2998 : f32 = u_xlat21.y;
            let x_2999 : f32 = u_xlat76;
            let x_3001 : f32 = u_xlat75;
            u_xlat75 = ((x_2998 * x_2999) + x_3001);
            let x_3004 : vec2<f32> = u_xlat61;
            let x_3006 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec49;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat76 = x_3015;
            let x_3017 : f32 = u_xlat21.z;
            let x_3018 : f32 = u_xlat76;
            let x_3020 : f32 = u_xlat75;
            u_xlat75 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat17;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.z, x_3023.w);
            let x_3026 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec50;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat76 = x_3035;
            let x_3037 : f32 = u_xlat21.w;
            let x_3038 : f32 = u_xlat76;
            let x_3040 : f32 = u_xlat75;
            u_xlat75 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec4<f32> = u_xlat18;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.x, x_3043.y);
            let x_3046 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec51;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat76 = x_3055;
            let x_3057 : f32 = u_xlat22.x;
            let x_3058 : f32 = u_xlat76;
            let x_3060 : f32 = u_xlat75;
            u_xlat75 = ((x_3057 * x_3058) + x_3060);
            let x_3063 : vec4<f32> = u_xlat18;
            let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
            let x_3066 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
            let x_3073 : vec3<f32> = txVec52;
            let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
            u_xlat76 = x_3075;
            let x_3077 : f32 = u_xlat22.y;
            let x_3078 : f32 = u_xlat76;
            let x_3080 : f32 = u_xlat75;
            u_xlat75 = ((x_3077 * x_3078) + x_3080);
            let x_3083 : vec2<f32> = u_xlat33;
            let x_3085 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec53;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat76 = x_3094;
            let x_3096 : f32 = u_xlat22.z;
            let x_3097 : f32 = u_xlat76;
            let x_3099 : f32 = u_xlat75;
            u_xlat75 = ((x_3096 * x_3097) + x_3099);
            let x_3102 : vec2<f32> = u_xlat19;
            let x_3104 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec54;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat76 = x_3113;
            let x_3115 : f32 = u_xlat22.w;
            let x_3116 : f32 = u_xlat76;
            let x_3118 : f32 = u_xlat75;
            u_xlat75 = ((x_3115 * x_3116) + x_3118);
            let x_3121 : vec4<f32> = u_xlat13;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
            let x_3124 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec55;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat76 = x_3133;
            let x_3135 : f32 = u_xlat9.x;
            let x_3136 : f32 = u_xlat76;
            let x_3138 : f32 = u_xlat75;
            u_xlat75 = ((x_3135 * x_3136) + x_3138);
            let x_3141 : vec4<f32> = u_xlat13;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.z, x_3141.w);
            let x_3144 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec56;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat76 = x_3153;
            let x_3155 : f32 = u_xlat9.y;
            let x_3156 : f32 = u_xlat76;
            let x_3158 : f32 = u_xlat75;
            u_xlat75 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec2<f32> = u_xlat58;
            let x_3163 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec57;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat76 = x_3172;
            let x_3174 : f32 = u_xlat9.z;
            let x_3175 : f32 = u_xlat76;
            let x_3177 : f32 = u_xlat75;
            u_xlat75 = ((x_3174 * x_3175) + x_3177);
            let x_3180 : vec2<f32> = u_xlat51;
            let x_3182 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3189 : vec3<f32> = txVec58;
            let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
            u_xlat51.x = x_3191;
            let x_3194 : f32 = u_xlat9.w;
            let x_3196 : f32 = u_xlat51.x;
            let x_3198 : f32 = u_xlat75;
            u_xlat73 = ((x_3194 * x_3196) + x_3198);
          }
        }
      } else {
        let x_3202 : vec4<f32> = u_xlat8;
        let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
        let x_3205 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
        let x_3212 : vec3<f32> = txVec59;
        let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
        u_xlat73 = x_3214;
      }
      let x_3215 : i32 = u_xlati71;
      let x_3217 : f32 = x_240.x_AdditionalShadowParams[x_3215].x;
      u_xlat51.x = (1.0f + -(x_3217));
      let x_3221 : f32 = u_xlat73;
      let x_3222 : i32 = u_xlati71;
      let x_3224 : f32 = x_240.x_AdditionalShadowParams[x_3222].x;
      let x_3227 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3221 * x_3224) + x_3227);
      let x_3230 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3230);
      let x_3234 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3234 >= 1.0f);
      let x_3236 : bool = u_xlatb74;
      let x_3237 : bool = u_xlatb51;
      u_xlatb51 = (x_3236 | x_3237);
      let x_3239 : bool = u_xlatb51;
      let x_3240 : f32 = u_xlat73;
      u_xlat73 = select(x_3240, 1.0f, x_3239);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3243 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3243) + 1.0f);
    let x_3247 : f32 = u_xlat69;
    let x_3249 : f32 = u_xlat51.x;
    let x_3251 : f32 = u_xlat73;
    u_xlat73 = ((x_3247 * x_3249) + x_3251);
    let x_3254 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3254 & 31i)));
    let x_3258 : i32 = u_xlati51;
    let x_3261 : f32 = x_1566.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3258) & bitcast<u32>(x_3261)));
    let x_3265 : i32 = u_xlati51;
    if ((x_3265 != 0i)) {
      let x_3269 : i32 = u_xlati71;
      let x_3271 : f32 = x_1566.x_AdditionalLightsLightTypes[x_3269].el;
      u_xlati51 = i32(x_3271);
      let x_3274 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3274 != 0i));
      let x_3278 : i32 = u_xlati71;
      u_xlati75 = (x_3278 << bitcast<u32>(2i));
      let x_3280 : i32 = u_xlati74;
      if ((x_3280 != 0i)) {
        let x_3284 : vec3<f32> = vs_TEXCOORD1;
        let x_3286 : i32 = u_xlati75;
        let x_3289 : i32 = u_xlati75;
        let x_3293 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3286 + 1i) / 4i)][((x_3289 + 1i) % 4i)];
        let x_3295 : vec3<f32> = (vec3<f32>(x_3284.y, x_3284.y, x_3284.y) * vec3<f32>(x_3293.x, x_3293.y, x_3293.w));
        let x_3296 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3295.x, x_3295.y, x_3295.z, x_3296.w);
        let x_3298 : i32 = u_xlati75;
        let x_3300 : i32 = u_xlati75;
        let x_3303 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3298 / 4i)][(x_3300 % 4i)];
        let x_3305 : vec3<f32> = vs_TEXCOORD1;
        let x_3308 : vec4<f32> = u_xlat8;
        let x_3310 : vec3<f32> = ((vec3<f32>(x_3303.x, x_3303.y, x_3303.w) * vec3<f32>(x_3305.x, x_3305.x, x_3305.x)) + vec3<f32>(x_3308.x, x_3308.y, x_3308.z));
        let x_3311 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3310.x, x_3310.y, x_3310.z, x_3311.w);
        let x_3313 : i32 = u_xlati75;
        let x_3316 : i32 = u_xlati75;
        let x_3320 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3313 + 2i) / 4i)][((x_3316 + 2i) % 4i)];
        let x_3322 : vec3<f32> = vs_TEXCOORD1;
        let x_3325 : vec4<f32> = u_xlat8;
        let x_3327 : vec3<f32> = ((vec3<f32>(x_3320.x, x_3320.y, x_3320.w) * vec3<f32>(x_3322.z, x_3322.z, x_3322.z)) + vec3<f32>(x_3325.x, x_3325.y, x_3325.z));
        let x_3328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3327.x, x_3327.y, x_3327.z, x_3328.w);
        let x_3330 : vec4<f32> = u_xlat8;
        let x_3332 : i32 = u_xlati75;
        let x_3335 : i32 = u_xlati75;
        let x_3339 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3332 + 3i) / 4i)][((x_3335 + 3i) % 4i)];
        let x_3341 : vec3<f32> = (vec3<f32>(x_3330.x, x_3330.y, x_3330.z) + vec3<f32>(x_3339.x, x_3339.y, x_3339.w));
        let x_3342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
        let x_3344 : vec4<f32> = u_xlat8;
        let x_3346 : vec4<f32> = u_xlat8;
        let x_3348 : vec2<f32> = (vec2<f32>(x_3344.x, x_3344.y) / vec2<f32>(x_3346.z, x_3346.z));
        let x_3349 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3348.x, x_3348.y, x_3349.z, x_3349.w);
        let x_3351 : vec4<f32> = u_xlat8;
        let x_3354 : vec2<f32> = ((vec2<f32>(x_3351.x, x_3351.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3354.x, x_3354.y, x_3355.z, x_3355.w);
        let x_3357 : vec4<f32> = u_xlat8;
        let x_3361 : vec2<f32> = clamp(vec2<f32>(x_3357.x, x_3357.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3362 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3361.x, x_3361.y, x_3362.z, x_3362.w);
        let x_3364 : i32 = u_xlati71;
        let x_3366 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3364];
        let x_3368 : vec4<f32> = u_xlat8;
        let x_3371 : i32 = u_xlati71;
        let x_3373 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3371];
        let x_3375 : vec2<f32> = ((vec2<f32>(x_3366.x, x_3366.y) * vec2<f32>(x_3368.x, x_3368.y)) + vec2<f32>(x_3373.z, x_3373.w));
        let x_3376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3375.x, x_3375.y, x_3376.z, x_3376.w);
      } else {
        let x_3379 : i32 = u_xlati51;
        u_xlatb51 = (x_3379 == 1i);
        let x_3381 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3381);
        let x_3383 : i32 = u_xlati51;
        if ((x_3383 != 0i)) {
          let x_3387 : vec3<f32> = vs_TEXCOORD1;
          let x_3389 : i32 = u_xlati75;
          let x_3392 : i32 = u_xlati75;
          let x_3396 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3389 + 1i) / 4i)][((x_3392 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3387.y, x_3387.y) * vec2<f32>(x_3396.x, x_3396.y));
          let x_3399 : i32 = u_xlati75;
          let x_3401 : i32 = u_xlati75;
          let x_3404 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3399 / 4i)][(x_3401 % 4i)];
          let x_3406 : vec3<f32> = vs_TEXCOORD1;
          let x_3409 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3404.x, x_3404.y) * vec2<f32>(x_3406.x, x_3406.x)) + x_3409);
          let x_3411 : i32 = u_xlati75;
          let x_3414 : i32 = u_xlati75;
          let x_3418 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3411 + 2i) / 4i)][((x_3414 + 2i) % 4i)];
          let x_3420 : vec3<f32> = vs_TEXCOORD1;
          let x_3423 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3418.x, x_3418.y) * vec2<f32>(x_3420.z, x_3420.z)) + x_3423);
          let x_3425 : vec2<f32> = u_xlat51;
          let x_3426 : i32 = u_xlati75;
          let x_3429 : i32 = u_xlati75;
          let x_3433 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3426 + 3i) / 4i)][((x_3429 + 3i) % 4i)];
          u_xlat51 = (x_3425 + vec2<f32>(x_3433.x, x_3433.y));
          let x_3436 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3436 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3439 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3439);
          let x_3441 : i32 = u_xlati71;
          let x_3443 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3441];
          let x_3445 : vec2<f32> = u_xlat51;
          let x_3447 : i32 = u_xlati71;
          let x_3449 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3447];
          let x_3451 : vec2<f32> = ((vec2<f32>(x_3443.x, x_3443.y) * x_3445) + vec2<f32>(x_3449.z, x_3449.w));
          let x_3452 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3451.x, x_3451.y, x_3452.z, x_3452.w);
        } else {
          let x_3455 : vec3<f32> = vs_TEXCOORD1;
          let x_3457 : i32 = u_xlati75;
          let x_3460 : i32 = u_xlati75;
          let x_3464 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3457 + 1i) / 4i)][((x_3460 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3455.y, x_3455.y, x_3455.y, x_3455.y) * x_3464);
          let x_3466 : i32 = u_xlati75;
          let x_3468 : i32 = u_xlati75;
          let x_3471 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3466 / 4i)][(x_3468 % 4i)];
          let x_3472 : vec3<f32> = vs_TEXCOORD1;
          let x_3475 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3471 * vec4<f32>(x_3472.x, x_3472.x, x_3472.x, x_3472.x)) + x_3475);
          let x_3477 : i32 = u_xlati75;
          let x_3480 : i32 = u_xlati75;
          let x_3484 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3477 + 2i) / 4i)][((x_3480 + 2i) % 4i)];
          let x_3485 : vec3<f32> = vs_TEXCOORD1;
          let x_3488 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3484 * vec4<f32>(x_3485.z, x_3485.z, x_3485.z, x_3485.z)) + x_3488);
          let x_3490 : vec4<f32> = u_xlat9;
          let x_3491 : i32 = u_xlati75;
          let x_3494 : i32 = u_xlati75;
          let x_3498 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3491 + 3i) / 4i)][((x_3494 + 3i) % 4i)];
          u_xlat9 = (x_3490 + x_3498);
          let x_3500 : vec4<f32> = u_xlat9;
          let x_3502 : vec4<f32> = u_xlat9;
          let x_3504 : vec3<f32> = (vec3<f32>(x_3500.x, x_3500.y, x_3500.z) / vec3<f32>(x_3502.w, x_3502.w, x_3502.w));
          let x_3505 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
          let x_3507 : vec4<f32> = u_xlat9;
          let x_3509 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3507.x, x_3507.y, x_3507.z), vec3<f32>(x_3509.x, x_3509.y, x_3509.z));
          let x_3514 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3514);
          let x_3517 : vec2<f32> = u_xlat51;
          let x_3519 : vec4<f32> = u_xlat9;
          let x_3521 : vec3<f32> = (vec3<f32>(x_3517.x, x_3517.x, x_3517.x) * vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
          let x_3522 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
          let x_3524 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3524.x, x_3524.y, x_3524.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3531 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3531, 0.00000099999999747524f);
          let x_3536 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3536);
          let x_3539 : vec2<f32> = u_xlat51;
          let x_3541 : vec4<f32> = u_xlat9;
          let x_3543 : vec3<f32> = (vec3<f32>(x_3539.x, x_3539.x, x_3539.x) * vec3<f32>(x_3541.z, x_3541.x, x_3541.y));
          let x_3544 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3543.x, x_3543.y, x_3543.z, x_3544.w);
          let x_3547 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3547);
          let x_3551 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3551, 0.0f, 1.0f);
          let x_3555 : vec4<f32> = u_xlat10;
          let x_3557 : vec4<bool> = (vec4<f32>(x_3555.y, x_3555.z, x_3555.y, x_3555.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3557.x, x_3557.y);
          let x_3561 : bool = u_xlatb54.x;
          if (x_3561) {
            let x_3566 : f32 = u_xlat10.x;
            x_3562 = x_3566;
          } else {
            let x_3569 : f32 = u_xlat10.x;
            x_3562 = -(x_3569);
          }
          let x_3571 : f32 = x_3562;
          u_xlat54.x = x_3571;
          let x_3574 : bool = u_xlatb54.y;
          if (x_3574) {
            let x_3579 : f32 = u_xlat10.x;
            x_3575 = x_3579;
          } else {
            let x_3582 : f32 = u_xlat10.x;
            x_3575 = -(x_3582);
          }
          let x_3584 : f32 = x_3575;
          u_xlat54.y = x_3584;
          let x_3586 : vec4<f32> = u_xlat9;
          let x_3588 : vec2<f32> = u_xlat51;
          let x_3591 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3586.x, x_3586.y) * vec2<f32>(x_3588.x, x_3588.x)) + x_3591);
          let x_3593 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3593 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3596 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3596, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3600 : i32 = u_xlati71;
          let x_3602 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3600];
          let x_3604 : vec2<f32> = u_xlat51;
          let x_3606 : i32 = u_xlati71;
          let x_3608 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3606];
          let x_3610 : vec2<f32> = ((vec2<f32>(x_3602.x, x_3602.y) * x_3604) + vec2<f32>(x_3608.z, x_3608.w));
          let x_3611 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3610.x, x_3610.y, x_3611.z, x_3611.w);
        }
      }
      let x_3618 : vec4<f32> = u_xlat8;
      let x_3620 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3618.x, x_3618.y), 0.0f);
      u_xlat8 = x_3620;
      let x_3622 : bool = u_xlatb5.y;
      if (x_3622) {
        let x_3627 : f32 = u_xlat8.w;
        x_3623 = x_3627;
      } else {
        let x_3630 : f32 = u_xlat8.x;
        x_3623 = x_3630;
      }
      let x_3631 : f32 = x_3623;
      u_xlat51.x = x_3631;
      let x_3634 : bool = u_xlatb5.x;
      if (x_3634) {
        let x_3638 : vec4<f32> = u_xlat8;
        x_3635 = vec3<f32>(x_3638.x, x_3638.y, x_3638.z);
      } else {
        let x_3641 : vec2<f32> = u_xlat51;
        x_3635 = vec3<f32>(x_3641.x, x_3641.x, x_3641.x);
      }
      let x_3643 : vec3<f32> = x_3635;
      let x_3644 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3643.x, x_3643.y, x_3643.z, x_3644.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3650 : vec4<f32> = u_xlat8;
    let x_3652 : i32 = u_xlati71;
    let x_3654 : vec4<f32> = x_1819.x_AdditionalLightsColor[x_3652];
    let x_3656 : vec3<f32> = (vec3<f32>(x_3650.x, x_3650.y, x_3650.z) * vec3<f32>(x_3654.x, x_3654.y, x_3654.z));
    let x_3657 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3656.x, x_3656.y, x_3656.z, x_3657.w);
    let x_3659 : f32 = u_xlat72;
    let x_3660 : f32 = u_xlat73;
    u_xlat71 = (x_3659 * x_3660);
    let x_3662 : f32 = u_xlat71;
    let x_3664 : vec4<f32> = u_xlat8;
    let x_3666 : vec3<f32> = (vec3<f32>(x_3662, x_3662, x_3662) * vec3<f32>(x_3664.x, x_3664.y, x_3664.z));
    let x_3667 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3667.w);
    let x_3669 : vec4<f32> = u_xlat2;
    let x_3671 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3669.x, x_3669.y, x_3669.z), vec3<f32>(x_3671.x, x_3671.y, x_3671.z));
    let x_3674 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3674, 0.0f, 1.0f);
    let x_3676 : f32 = u_xlat71;
    let x_3678 : vec4<f32> = u_xlat8;
    let x_3680 : vec3<f32> = (vec3<f32>(x_3676, x_3676, x_3676) * vec3<f32>(x_3678.x, x_3678.y, x_3678.z));
    let x_3681 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
    let x_3683 : vec4<f32> = u_xlat1;
    let x_3685 : vec4<f32> = u_xlat7;
    let x_3687 : vec3<f32> = (vec3<f32>(x_3683.y, x_3683.z, x_3683.w) * vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
    let x_3688 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3688.w);
    let x_3690 : vec4<f32> = u_xlat7;
    let x_3692 : vec4<f32> = u_xlat0;
    let x_3695 : vec4<f32> = u_xlat6;
    let x_3697 : vec3<f32> = ((vec3<f32>(x_3690.x, x_3690.y, x_3690.z) * vec3<f32>(x_3692.x, x_3692.x, x_3692.x)) + vec3<f32>(x_3695.x, x_3695.y, x_3695.z));
    let x_3698 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3697.x, x_3697.y, x_3697.z, x_3698.w);

    continuing {
      let x_3700 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3700 + bitcast<u32>(1i));
    }
  }
  let x_3702 : vec3<f32> = u_xlat3;
  let x_3703 : vec4<f32> = u_xlat1;
  let x_3706 : vec4<f32> = u_xlat4;
  let x_3708 : vec3<f32> = ((x_3702 * vec3<f32>(x_3703.y, x_3703.z, x_3703.w)) + vec3<f32>(x_3706.x, x_3706.y, x_3706.z));
  let x_3709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3708.x, x_3708.y, x_3708.z, x_3709.w);
  let x_3713 : vec4<f32> = u_xlat6;
  let x_3715 : vec4<f32> = u_xlat1;
  let x_3717 : vec3<f32> = (vec3<f32>(x_3713.x, x_3713.y, x_3713.z) + vec3<f32>(x_3715.x, x_3715.y, x_3715.z));
  let x_3718 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3717.x, x_3717.y, x_3717.z, x_3718.w);
  let x_3721 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3721 == 1.0f);
  let x_3723 : bool = u_xlatb23;
  let x_3724 : bool = u_xlatb46;
  u_xlatb23 = (x_3723 | x_3724);
  let x_3726 : bool = u_xlatb23;
  if (x_3726) {
    let x_3731 : f32 = u_xlat0.x;
    x_3727 = x_3731;
  } else {
    x_3727 = 1.0f;
  }
  let x_3733 : f32 = x_3727;
  SV_Target0.w = x_3733;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


