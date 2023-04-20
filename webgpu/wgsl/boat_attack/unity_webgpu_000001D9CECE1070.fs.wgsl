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

@group(1) @binding(1) var<uniform> x_1812 : AdditionalLights;

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
  var x_1952 : f32;
  var x_1962 : f32;
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
  var x_3555 : f32;
  var x_3568 : f32;
  var x_3616 : f32;
  var x_3628 : vec3<f32>;
  var x_3713 : f32;
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
  let x_1722 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1724 : f32 = x_156.unity_LightData.y;
  u_xlat23 = min(x_1722, x_1724);
  let x_1728 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1728));
  let x_1731 : f32 = u_xlat69;
  let x_1734 : f32 = x_240.x_AdditionalShadowFadeParams.x;
  let x_1737 : f32 = x_240.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1731 * x_1734) + x_1737);
  let x_1739 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1739, 0.0f, 1.0f);
  let x_1742 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1744 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1746 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1748 : f32 = x_1566.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1749 : vec4<f32> = vec4<f32>(x_1742, x_1744, x_1746, x_1748);
  let x_1755 : vec4<bool> = (vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1749.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1755.x, x_1755.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1767 : u32 = u_xlatu_loop_1;
    let x_1768 : u32 = u_xlatu23;
    if ((x_1767 < x_1768)) {
    } else {
      break;
    }
    let x_1771 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1771 >> 2u);
    let x_1775 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1775 & 3u));
    let x_1778 : u32 = u_xlatu71;
    let x_1781 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_1778)];
    let x_1791 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1796 : vec4<u32> = indexable[x_1791];
    u_xlat71 = dot(x_1781, bitcast<vec4<f32>>(x_1796));
    let x_1800 : f32 = u_xlat71;
    u_xlati71 = i32(x_1800);
    let x_1802 : vec3<f32> = vs_TEXCOORD1;
    let x_1813 : i32 = u_xlati71;
    let x_1815 : vec4<f32> = x_1812.x_AdditionalLightsPosition[x_1813];
    let x_1818 : i32 = u_xlati71;
    let x_1820 : vec4<f32> = x_1812.x_AdditionalLightsPosition[x_1818];
    let x_1822 : vec3<f32> = ((-(x_1802) * vec3<f32>(x_1815.w, x_1815.w, x_1815.w)) + vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
    let x_1823 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    let x_1826 : vec4<f32> = u_xlat7;
    let x_1828 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1826.x, x_1826.y, x_1826.z), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : f32 = u_xlat72;
    u_xlat72 = max(x_1831, 0.00006103515625f);
    let x_1835 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1835);
    let x_1837 : f32 = u_xlat73;
    let x_1839 : vec4<f32> = u_xlat7;
    let x_1841 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    let x_1844 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1844);
    let x_1846 : f32 = u_xlat72;
    let x_1847 : i32 = u_xlati71;
    let x_1849 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1847].x;
    u_xlat72 = (x_1846 * x_1849);
    let x_1851 : f32 = u_xlat72;
    let x_1853 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1851) * x_1853) + 1.0f);
    let x_1856 : f32 = u_xlat72;
    u_xlat72 = max(x_1856, 0.0f);
    let x_1858 : f32 = u_xlat72;
    let x_1859 : f32 = u_xlat72;
    u_xlat72 = (x_1858 * x_1859);
    let x_1861 : f32 = u_xlat72;
    let x_1862 : f32 = u_xlat73;
    u_xlat72 = (x_1861 * x_1862);
    let x_1864 : i32 = u_xlati71;
    let x_1866 : vec4<f32> = x_1812.x_AdditionalLightsSpotDir[x_1864];
    let x_1868 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
    let x_1871 : f32 = u_xlat73;
    let x_1872 : i32 = u_xlati71;
    let x_1874 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1872].z;
    let x_1876 : i32 = u_xlati71;
    let x_1878 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1876].w;
    u_xlat73 = ((x_1871 * x_1874) + x_1878);
    let x_1880 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1880, 0.0f, 1.0f);
    let x_1882 : f32 = u_xlat73;
    let x_1883 : f32 = u_xlat73;
    u_xlat73 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat72;
    let x_1886 : f32 = u_xlat73;
    u_xlat72 = (x_1885 * x_1886);
    let x_1890 : i32 = u_xlati71;
    let x_1892 : f32 = x_240.x_AdditionalShadowParams[x_1890].w;
    u_xlati73 = i32(x_1892);
    let x_1895 : i32 = u_xlati73;
    u_xlatb51 = (x_1895 >= 0i);
    let x_1897 : bool = u_xlatb51;
    if (x_1897) {
      let x_1901 : i32 = u_xlati71;
      let x_1903 : f32 = x_240.x_AdditionalShadowParams[x_1901].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1903, x_1903, x_1903, x_1903))));
      let x_1907 : bool = u_xlatb51;
      if (x_1907) {
        let x_1912 : vec4<f32> = u_xlat7;
        let x_1915 : vec4<f32> = u_xlat7;
        let x_1918 : vec4<bool> = (abs(vec4<f32>(x_1912.z, x_1912.z, x_1912.y, x_1912.z)) >= abs(vec4<f32>(x_1915.x, x_1915.y, x_1915.x, x_1915.x)));
        let x_1920 : vec3<bool> = vec3<bool>(x_1918.x, x_1918.y, x_1918.z);
        let x_1921 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
        let x_1924 : bool = u_xlatb8.y;
        let x_1926 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1924 & x_1926);
        let x_1928 : vec4<f32> = u_xlat7;
        let x_1931 : vec4<bool> = (-(vec4<f32>(x_1928.z, x_1928.y, x_1928.z, x_1928.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1932 : vec3<bool> = vec3<bool>(x_1931.x, x_1931.y, x_1931.w);
        let x_1933 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1932.x, x_1932.y, x_1933.z, x_1932.z);
        let x_1936 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1936);
        let x_1942 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1942);
        let x_1948 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1948);
        let x_1951 : bool = u_xlatb8.z;
        if (x_1951) {
          let x_1956 : f32 = u_xlat8.y;
          x_1952 = x_1956;
        } else {
          let x_1958 : f32 = u_xlat74;
          x_1952 = x_1958;
        }
        let x_1959 : f32 = x_1952;
        u_xlat74 = x_1959;
        let x_1961 : bool = u_xlatb51;
        if (x_1961) {
          let x_1966 : f32 = u_xlat8.x;
          x_1962 = x_1966;
        } else {
          let x_1968 : f32 = u_xlat74;
          x_1962 = x_1968;
        }
        let x_1969 : f32 = x_1962;
        u_xlat51.x = x_1969;
        let x_1971 : i32 = u_xlati71;
        let x_1973 : f32 = x_240.x_AdditionalShadowParams[x_1971].w;
        u_xlat74 = trunc(x_1973);
        let x_1976 : f32 = u_xlat51.x;
        let x_1977 : f32 = u_xlat74;
        u_xlat51.x = (x_1976 + x_1977);
        let x_1981 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1981);
      }
      let x_1983 : i32 = u_xlati73;
      u_xlati73 = (x_1983 << bitcast<u32>(2i));
      let x_1985 : vec3<f32> = vs_TEXCOORD1;
      let x_1988 : i32 = u_xlati73;
      let x_1991 : i32 = u_xlati73;
      let x_1995 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1988 + 1i) / 4i)][((x_1991 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1985.y, x_1985.y, x_1985.y, x_1985.y) * x_1995);
      let x_1997 : i32 = u_xlati73;
      let x_1999 : i32 = u_xlati73;
      let x_2002 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[(x_1997 / 4i)][(x_1999 % 4i)];
      let x_2003 : vec3<f32> = vs_TEXCOORD1;
      let x_2006 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2002 * vec4<f32>(x_2003.x, x_2003.x, x_2003.x, x_2003.x)) + x_2006);
      let x_2008 : i32 = u_xlati73;
      let x_2011 : i32 = u_xlati73;
      let x_2015 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_2008 + 2i) / 4i)][((x_2011 + 2i) % 4i)];
      let x_2016 : vec3<f32> = vs_TEXCOORD1;
      let x_2019 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2015 * vec4<f32>(x_2016.z, x_2016.z, x_2016.z, x_2016.z)) + x_2019);
      let x_2021 : vec4<f32> = u_xlat8;
      let x_2022 : i32 = u_xlati73;
      let x_2025 : i32 = u_xlati73;
      let x_2029 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_2022 + 3i) / 4i)][((x_2025 + 3i) % 4i)];
      u_xlat8 = (x_2021 + x_2029);
      let x_2031 : vec4<f32> = u_xlat8;
      let x_2033 : vec4<f32> = u_xlat8;
      let x_2035 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) / vec3<f32>(x_2033.w, x_2033.w, x_2033.w));
      let x_2036 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
      let x_2039 : i32 = u_xlati71;
      let x_2041 : f32 = x_240.x_AdditionalShadowParams[x_2039].y;
      u_xlatb73 = (0.0f < x_2041);
      let x_2043 : bool = u_xlatb73;
      if (x_2043) {
        let x_2046 : i32 = u_xlati71;
        let x_2048 : f32 = x_240.x_AdditionalShadowParams[x_2046].y;
        u_xlatb73 = (1.0f == x_2048);
        let x_2050 : bool = u_xlatb73;
        if (x_2050) {
          let x_2053 : vec4<f32> = u_xlat8;
          let x_2057 : vec4<f32> = x_240.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2053.x, x_2053.y, x_2053.x, x_2053.y) + x_2057);
          let x_2060 : vec4<f32> = u_xlat9;
          let x_2061 : vec2<f32> = vec2<f32>(x_2060.x, x_2060.y);
          let x_2063 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
          let x_2071 : vec3<f32> = txVec30;
          let x_2073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2071.xy, x_2071.z);
          u_xlat10.x = x_2073;
          let x_2076 : vec4<f32> = u_xlat9;
          let x_2077 : vec2<f32> = vec2<f32>(x_2076.z, x_2076.w);
          let x_2079 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
          let x_2086 : vec3<f32> = txVec31;
          let x_2088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
          u_xlat10.y = x_2088;
          let x_2090 : vec4<f32> = u_xlat8;
          let x_2094 : vec4<f32> = x_240.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2090.x, x_2090.y, x_2090.x, x_2090.y) + x_2094);
          let x_2097 : vec4<f32> = u_xlat9;
          let x_2098 : vec2<f32> = vec2<f32>(x_2097.x, x_2097.y);
          let x_2100 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
          let x_2107 : vec3<f32> = txVec32;
          let x_2109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
          u_xlat10.z = x_2109;
          let x_2112 : vec4<f32> = u_xlat9;
          let x_2113 : vec2<f32> = vec2<f32>(x_2112.z, x_2112.w);
          let x_2115 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
          let x_2122 : vec3<f32> = txVec33;
          let x_2124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
          u_xlat10.w = x_2124;
          let x_2126 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2126, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2129 : i32 = u_xlati71;
          let x_2131 : f32 = x_240.x_AdditionalShadowParams[x_2129].y;
          u_xlatb51 = (2.0f == x_2131);
          let x_2133 : bool = u_xlatb51;
          if (x_2133) {
            let x_2136 : vec4<f32> = u_xlat8;
            let x_2140 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2136.x, x_2136.y) * vec2<f32>(x_2140.z, x_2140.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2144 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2144);
            let x_2146 : vec4<f32> = u_xlat8;
            let x_2149 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2152 : vec2<f32> = u_xlat51;
            let x_2154 : vec2<f32> = ((vec2<f32>(x_2146.x, x_2146.y) * vec2<f32>(x_2149.z, x_2149.w)) + -(x_2152));
            let x_2155 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
            let x_2157 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2157.x, x_2157.x, x_2157.y, x_2157.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2160 : vec4<f32> = u_xlat10;
            let x_2162 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2160.x, x_2160.x, x_2160.z, x_2160.z) * vec4<f32>(x_2162.x, x_2162.x, x_2162.z, x_2162.z));
            let x_2166 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2166.y, x_2166.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2169 : vec4<f32> = u_xlat11;
            let x_2172 : vec4<f32> = u_xlat9;
            let x_2175 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2172.x, x_2172.y)));
            let x_2176 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2175.x, x_2176.y, x_2175.y, x_2176.w);
            let x_2178 : vec4<f32> = u_xlat9;
            let x_2181 : vec2<f32> = (-(vec2<f32>(x_2178.x, x_2178.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2182 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2181.x, x_2181.y, x_2182.z, x_2182.w);
            let x_2185 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2185.x, x_2185.y), vec2<f32>(0.0f, 0.0f));
            let x_2188 : vec2<f32> = u_xlat57;
            let x_2190 : vec2<f32> = u_xlat57;
            let x_2192 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2188) * x_2190) + vec2<f32>(x_2192.x, x_2192.y));
            let x_2195 : vec4<f32> = u_xlat9;
            let x_2197 : vec2<f32> = max(vec2<f32>(x_2195.x, x_2195.y), vec2<f32>(0.0f, 0.0f));
            let x_2198 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
            let x_2200 : vec4<f32> = u_xlat9;
            let x_2203 : vec4<f32> = u_xlat9;
            let x_2206 : vec4<f32> = u_xlat10;
            let x_2208 : vec2<f32> = ((-(vec2<f32>(x_2200.x, x_2200.y)) * vec2<f32>(x_2203.x, x_2203.y)) + vec2<f32>(x_2206.y, x_2206.w));
            let x_2209 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
            let x_2211 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2211 + vec2<f32>(1.0f, 1.0f));
            let x_2213 : vec4<f32> = u_xlat9;
            let x_2215 : vec2<f32> = (vec2<f32>(x_2213.x, x_2213.y) + vec2<f32>(1.0f, 1.0f));
            let x_2216 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat10;
            let x_2220 : vec2<f32> = (vec2<f32>(x_2218.x, x_2218.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2221 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
            let x_2223 : vec4<f32> = u_xlat11;
            let x_2225 : vec2<f32> = (vec2<f32>(x_2223.x, x_2223.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2226 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
            let x_2228 : vec2<f32> = u_xlat57;
            let x_2229 : vec2<f32> = (x_2228 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2230 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2229.x, x_2229.y, x_2230.z, x_2230.w);
            let x_2232 : vec4<f32> = u_xlat9;
            let x_2234 : vec2<f32> = (vec2<f32>(x_2232.x, x_2232.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2235 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2234.x, x_2234.y, x_2235.z, x_2235.w);
            let x_2237 : vec4<f32> = u_xlat10;
            let x_2239 : vec2<f32> = (vec2<f32>(x_2237.y, x_2237.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2240 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2243 : f32 = u_xlat11.x;
            u_xlat12.z = x_2243;
            let x_2246 : f32 = u_xlat9.x;
            u_xlat12.w = x_2246;
            let x_2249 : f32 = u_xlat14.x;
            u_xlat13.z = x_2249;
            let x_2252 : f32 = u_xlat55.x;
            u_xlat13.w = x_2252;
            let x_2254 : vec4<f32> = u_xlat12;
            let x_2256 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2254.z, x_2254.w, x_2254.x, x_2254.z) + vec4<f32>(x_2256.z, x_2256.w, x_2256.x, x_2256.z));
            let x_2260 : f32 = u_xlat12.y;
            u_xlat11.z = x_2260;
            let x_2263 : f32 = u_xlat9.y;
            u_xlat11.w = x_2263;
            let x_2266 : f32 = u_xlat13.y;
            u_xlat14.z = x_2266;
            let x_2269 : f32 = u_xlat55.y;
            u_xlat14.w = x_2269;
            let x_2271 : vec4<f32> = u_xlat11;
            let x_2273 : vec4<f32> = u_xlat14;
            let x_2275 : vec3<f32> = (vec3<f32>(x_2271.z, x_2271.y, x_2271.w) + vec3<f32>(x_2273.z, x_2273.y, x_2273.w));
            let x_2276 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
            let x_2278 : vec4<f32> = u_xlat13;
            let x_2280 : vec4<f32> = u_xlat10;
            let x_2282 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.z, x_2278.w) / vec3<f32>(x_2280.z, x_2280.w, x_2280.y));
            let x_2283 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
            let x_2285 : vec4<f32> = u_xlat11;
            let x_2287 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
            let x_2290 : vec4<f32> = u_xlat14;
            let x_2292 : vec4<f32> = u_xlat9;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2290.z, x_2290.y, x_2290.w) / vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat12;
            let x_2299 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.y, x_2297.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2300 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
            let x_2302 : vec4<f32> = u_xlat11;
            let x_2305 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2307 : vec3<f32> = (vec3<f32>(x_2302.y, x_2302.x, x_2302.z) * vec3<f32>(x_2305.x, x_2305.x, x_2305.x));
            let x_2308 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
            let x_2310 : vec4<f32> = u_xlat12;
            let x_2313 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2315 : vec3<f32> = (vec3<f32>(x_2310.x, x_2310.y, x_2310.z) * vec3<f32>(x_2313.y, x_2313.y, x_2313.y));
            let x_2316 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
            let x_2319 : f32 = u_xlat12.x;
            u_xlat11.w = x_2319;
            let x_2321 : vec2<f32> = u_xlat51;
            let x_2324 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2327 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2321.x, x_2321.y, x_2321.x, x_2321.y) * vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y)) + vec4<f32>(x_2327.y, x_2327.w, x_2327.x, x_2327.w));
            let x_2330 : vec2<f32> = u_xlat51;
            let x_2332 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2335 : vec4<f32> = u_xlat11;
            let x_2337 : vec2<f32> = ((x_2330 * vec2<f32>(x_2332.x, x_2332.y)) + vec2<f32>(x_2335.z, x_2335.w));
            let x_2338 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2337.x, x_2337.y, x_2338.z, x_2338.w);
            let x_2341 : f32 = u_xlat11.y;
            u_xlat12.w = x_2341;
            let x_2343 : vec4<f32> = u_xlat12;
            let x_2344 : vec2<f32> = vec2<f32>(x_2343.y, x_2343.z);
            let x_2345 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2345.x, x_2344.x, x_2345.z, x_2344.y);
            let x_2347 : vec2<f32> = u_xlat51;
            let x_2350 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2353 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2347.x, x_2347.y, x_2347.x, x_2347.y) * vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y)) + vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2353.y));
            let x_2356 : vec2<f32> = u_xlat51;
            let x_2359 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2362 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2356.x, x_2356.y, x_2356.x, x_2356.y) * vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y)) + vec4<f32>(x_2362.w, x_2362.y, x_2362.w, x_2362.z));
            let x_2365 : vec2<f32> = u_xlat51;
            let x_2368 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2371 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.y) * vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y)) + vec4<f32>(x_2371.x, x_2371.w, x_2371.z, x_2371.w));
            let x_2374 : vec4<f32> = u_xlat9;
            let x_2376 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2374.x, x_2374.x, x_2374.x, x_2374.y) * vec4<f32>(x_2376.z, x_2376.w, x_2376.y, x_2376.z));
            let x_2379 : vec4<f32> = u_xlat9;
            let x_2381 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2379.y, x_2379.y, x_2379.z, x_2379.z) * x_2381);
            let x_2384 : f32 = u_xlat9.z;
            let x_2386 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2384 * x_2386);
            let x_2390 : vec4<f32> = u_xlat13;
            let x_2391 : vec2<f32> = vec2<f32>(x_2390.x, x_2390.y);
            let x_2393 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
            let x_2400 : vec3<f32> = txVec34;
            let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
            u_xlat74 = x_2402;
            let x_2404 : vec4<f32> = u_xlat13;
            let x_2405 : vec2<f32> = vec2<f32>(x_2404.z, x_2404.w);
            let x_2407 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2405.x, x_2405.y, x_2407);
            let x_2415 : vec3<f32> = txVec35;
            let x_2417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
            u_xlat75 = x_2417;
            let x_2418 : f32 = u_xlat75;
            let x_2420 : f32 = u_xlat16.y;
            u_xlat75 = (x_2418 * x_2420);
            let x_2423 : f32 = u_xlat16.x;
            let x_2424 : f32 = u_xlat74;
            let x_2426 : f32 = u_xlat75;
            u_xlat74 = ((x_2423 * x_2424) + x_2426);
            let x_2429 : vec4<f32> = u_xlat14;
            let x_2430 : vec2<f32> = vec2<f32>(x_2429.x, x_2429.y);
            let x_2432 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2430.x, x_2430.y, x_2432);
            let x_2439 : vec3<f32> = txVec36;
            let x_2441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2439.xy, x_2439.z);
            u_xlat75 = x_2441;
            let x_2443 : f32 = u_xlat16.z;
            let x_2444 : f32 = u_xlat75;
            let x_2446 : f32 = u_xlat74;
            u_xlat74 = ((x_2443 * x_2444) + x_2446);
            let x_2449 : vec4<f32> = u_xlat12;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.x, x_2449.y);
            let x_2452 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec37;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat75 = x_2461;
            let x_2463 : f32 = u_xlat16.w;
            let x_2464 : f32 = u_xlat75;
            let x_2466 : f32 = u_xlat74;
            u_xlat74 = ((x_2463 * x_2464) + x_2466);
            let x_2469 : vec4<f32> = u_xlat15;
            let x_2470 : vec2<f32> = vec2<f32>(x_2469.x, x_2469.y);
            let x_2472 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2470.x, x_2470.y, x_2472);
            let x_2479 : vec3<f32> = txVec38;
            let x_2481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2479.xy, x_2479.z);
            u_xlat75 = x_2481;
            let x_2483 : f32 = u_xlat17.x;
            let x_2484 : f32 = u_xlat75;
            let x_2486 : f32 = u_xlat74;
            u_xlat74 = ((x_2483 * x_2484) + x_2486);
            let x_2489 : vec4<f32> = u_xlat15;
            let x_2490 : vec2<f32> = vec2<f32>(x_2489.z, x_2489.w);
            let x_2492 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
            let x_2499 : vec3<f32> = txVec39;
            let x_2501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
            u_xlat75 = x_2501;
            let x_2503 : f32 = u_xlat17.y;
            let x_2504 : f32 = u_xlat75;
            let x_2506 : f32 = u_xlat74;
            u_xlat74 = ((x_2503 * x_2504) + x_2506);
            let x_2509 : vec4<f32> = u_xlat12;
            let x_2510 : vec2<f32> = vec2<f32>(x_2509.z, x_2509.w);
            let x_2512 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
            let x_2519 : vec3<f32> = txVec40;
            let x_2521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2519.xy, x_2519.z);
            u_xlat75 = x_2521;
            let x_2523 : f32 = u_xlat17.z;
            let x_2524 : f32 = u_xlat75;
            let x_2526 : f32 = u_xlat74;
            u_xlat74 = ((x_2523 * x_2524) + x_2526);
            let x_2529 : vec4<f32> = u_xlat11;
            let x_2530 : vec2<f32> = vec2<f32>(x_2529.x, x_2529.y);
            let x_2532 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2530.x, x_2530.y, x_2532);
            let x_2539 : vec3<f32> = txVec41;
            let x_2541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2539.xy, x_2539.z);
            u_xlat75 = x_2541;
            let x_2543 : f32 = u_xlat17.w;
            let x_2544 : f32 = u_xlat75;
            let x_2546 : f32 = u_xlat74;
            u_xlat74 = ((x_2543 * x_2544) + x_2546);
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2550 : vec2<f32> = vec2<f32>(x_2549.z, x_2549.w);
            let x_2552 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
            let x_2559 : vec3<f32> = txVec42;
            let x_2561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
            u_xlat75 = x_2561;
            let x_2563 : f32 = u_xlat51.x;
            let x_2564 : f32 = u_xlat75;
            let x_2566 : f32 = u_xlat74;
            u_xlat73 = ((x_2563 * x_2564) + x_2566);
          } else {
            let x_2569 : vec4<f32> = u_xlat8;
            let x_2572 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2569.x, x_2569.y) * vec2<f32>(x_2572.z, x_2572.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2576 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2576);
            let x_2578 : vec4<f32> = u_xlat8;
            let x_2581 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2584 : vec2<f32> = u_xlat51;
            let x_2586 : vec2<f32> = ((vec2<f32>(x_2578.x, x_2578.y) * vec2<f32>(x_2581.z, x_2581.w)) + -(x_2584));
            let x_2587 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2586.x, x_2586.y, x_2587.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2589.x, x_2589.x, x_2589.y, x_2589.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2592 : vec4<f32> = u_xlat10;
            let x_2594 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2592.x, x_2592.x, x_2592.z, x_2592.z) * vec4<f32>(x_2594.x, x_2594.x, x_2594.z, x_2594.z));
            let x_2597 : vec4<f32> = u_xlat11;
            let x_2599 : vec2<f32> = (vec2<f32>(x_2597.y, x_2597.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2600 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2600.x, x_2599.x, x_2600.z, x_2599.y);
            let x_2602 : vec4<f32> = u_xlat11;
            let x_2605 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2602.x, x_2602.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2605.x, x_2605.y)));
            let x_2609 : vec4<f32> = u_xlat9;
            let x_2612 : vec2<f32> = (-(vec2<f32>(x_2609.x, x_2609.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2613 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2612.x, x_2613.y, x_2612.y, x_2613.w);
            let x_2615 : vec4<f32> = u_xlat9;
            let x_2617 : vec2<f32> = min(vec2<f32>(x_2615.x, x_2615.y), vec2<f32>(0.0f, 0.0f));
            let x_2618 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
            let x_2620 : vec4<f32> = u_xlat11;
            let x_2623 : vec4<f32> = u_xlat11;
            let x_2626 : vec4<f32> = u_xlat10;
            let x_2628 : vec2<f32> = ((-(vec2<f32>(x_2620.x, x_2620.y)) * vec2<f32>(x_2623.x, x_2623.y)) + vec2<f32>(x_2626.x, x_2626.z));
            let x_2629 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2628.x, x_2629.y, x_2628.y, x_2629.w);
            let x_2631 : vec4<f32> = u_xlat9;
            let x_2633 : vec2<f32> = max(vec2<f32>(x_2631.x, x_2631.y), vec2<f32>(0.0f, 0.0f));
            let x_2634 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2633.x, x_2633.y, x_2634.z, x_2634.w);
            let x_2636 : vec4<f32> = u_xlat11;
            let x_2639 : vec4<f32> = u_xlat11;
            let x_2642 : vec4<f32> = u_xlat10;
            let x_2644 : vec2<f32> = ((-(vec2<f32>(x_2636.x, x_2636.y)) * vec2<f32>(x_2639.x, x_2639.y)) + vec2<f32>(x_2642.y, x_2642.w));
            let x_2645 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2645.x, x_2644.x, x_2645.z, x_2644.y);
            let x_2647 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2647 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2651 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2651 * 0.08163200318813323975f);
            let x_2654 : vec2<f32> = u_xlat55;
            let x_2656 : vec2<f32> = (vec2<f32>(x_2654.y, x_2654.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2659.x, x_2659.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2663 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2663 * 0.08163200318813323975f);
            let x_2667 : f32 = u_xlat13.y;
            u_xlat11.x = x_2667;
            let x_2669 : vec4<f32> = u_xlat9;
            let x_2672 : vec2<f32> = ((vec2<f32>(x_2669.x, x_2669.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2673 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2673.x, x_2672.x, x_2673.z, x_2672.y);
            let x_2675 : vec4<f32> = u_xlat9;
            let x_2678 : vec2<f32> = ((vec2<f32>(x_2675.x, x_2675.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2679 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2678.x, x_2679.y, x_2678.y, x_2679.w);
            let x_2682 : f32 = u_xlat55.x;
            u_xlat10.y = x_2682;
            let x_2685 : f32 = u_xlat12.y;
            u_xlat10.w = x_2685;
            let x_2687 : vec4<f32> = u_xlat10;
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2687 + x_2688);
            let x_2690 : vec4<f32> = u_xlat9;
            let x_2693 : vec2<f32> = ((vec2<f32>(x_2690.y, x_2690.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2694 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2694.x, x_2693.x, x_2694.z, x_2693.y);
            let x_2696 : vec4<f32> = u_xlat9;
            let x_2699 : vec2<f32> = ((vec2<f32>(x_2696.y, x_2696.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2700 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2699.x, x_2700.y, x_2699.y, x_2700.w);
            let x_2703 : f32 = u_xlat55.y;
            u_xlat12.y = x_2703;
            let x_2705 : vec4<f32> = u_xlat12;
            let x_2706 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2705 + x_2706);
            let x_2708 : vec4<f32> = u_xlat10;
            let x_2709 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2708 / x_2709);
            let x_2711 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2711 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2713 : vec4<f32> = u_xlat12;
            let x_2714 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2713 / x_2714);
            let x_2716 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2716 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2718 : vec4<f32> = u_xlat10;
            let x_2721 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2718.w, x_2718.x, x_2718.y, x_2718.z) * vec4<f32>(x_2721.x, x_2721.x, x_2721.x, x_2721.x));
            let x_2724 : vec4<f32> = u_xlat12;
            let x_2727 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2724.x, x_2724.w, x_2724.y, x_2724.z) * vec4<f32>(x_2727.y, x_2727.y, x_2727.y, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat10;
            let x_2731 : vec3<f32> = vec3<f32>(x_2730.y, x_2730.z, x_2730.w);
            let x_2732 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2731.x, x_2732.y, x_2731.y, x_2731.z);
            let x_2735 : f32 = u_xlat12.x;
            u_xlat13.y = x_2735;
            let x_2737 : vec2<f32> = u_xlat51;
            let x_2740 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y) * vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y)) + vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2743.y));
            let x_2746 : vec2<f32> = u_xlat51;
            let x_2748 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat13;
            let x_2753 : vec2<f32> = ((x_2746 * vec2<f32>(x_2748.x, x_2748.y)) + vec2<f32>(x_2751.w, x_2751.y));
            let x_2754 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2753.x, x_2753.y, x_2754.z, x_2754.w);
            let x_2757 : f32 = u_xlat13.y;
            u_xlat10.y = x_2757;
            let x_2760 : f32 = u_xlat12.z;
            u_xlat13.y = x_2760;
            let x_2762 : vec2<f32> = u_xlat51;
            let x_2765 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2768 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y) * vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y)) + vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2768.y));
            let x_2772 : vec2<f32> = u_xlat51;
            let x_2774 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2777 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2772 * vec2<f32>(x_2774.x, x_2774.y)) + vec2<f32>(x_2777.w, x_2777.y));
            let x_2781 : f32 = u_xlat13.y;
            u_xlat10.z = x_2781;
            let x_2783 : vec2<f32> = u_xlat51;
            let x_2786 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y) * vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y)) + vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.z));
            let x_2793 : f32 = u_xlat12.w;
            u_xlat13.y = x_2793;
            let x_2796 : vec2<f32> = u_xlat51;
            let x_2799 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y) * vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y)) + vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2802.y));
            let x_2806 : vec2<f32> = u_xlat51;
            let x_2808 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2811 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2806 * vec2<f32>(x_2808.x, x_2808.y)) + vec2<f32>(x_2811.w, x_2811.y));
            let x_2815 : f32 = u_xlat13.y;
            u_xlat10.w = x_2815;
            let x_2818 : vec2<f32> = u_xlat51;
            let x_2820 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2823 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2818 * vec2<f32>(x_2820.x, x_2820.y)) + vec2<f32>(x_2823.x, x_2823.w));
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2827 : vec3<f32> = vec3<f32>(x_2826.x, x_2826.z, x_2826.w);
            let x_2828 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2827.x, x_2828.y, x_2827.y, x_2827.z);
            let x_2830 : vec2<f32> = u_xlat51;
            let x_2833 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y) * vec4<f32>(x_2833.x, x_2833.y, x_2833.x, x_2833.y)) + vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2836.y));
            let x_2839 : vec2<f32> = u_xlat51;
            let x_2841 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2844 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2839 * vec2<f32>(x_2841.x, x_2841.y)) + vec2<f32>(x_2844.w, x_2844.y));
            let x_2848 : f32 = u_xlat10.x;
            u_xlat12.x = x_2848;
            let x_2850 : vec2<f32> = u_xlat51;
            let x_2852 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2855 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2850 * vec2<f32>(x_2852.x, x_2852.y)) + vec2<f32>(x_2855.x, x_2855.y));
            let x_2859 : vec4<f32> = u_xlat9;
            let x_2861 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2859.x, x_2859.x, x_2859.x, x_2859.x) * x_2861);
            let x_2864 : vec4<f32> = u_xlat9;
            let x_2866 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2864.y, x_2864.y, x_2864.y, x_2864.y) * x_2866);
            let x_2869 : vec4<f32> = u_xlat9;
            let x_2871 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2869.z, x_2869.z, x_2869.z, x_2869.z) * x_2871);
            let x_2873 : vec4<f32> = u_xlat9;
            let x_2875 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2873.w, x_2873.w, x_2873.w, x_2873.w) * x_2875);
            let x_2878 : vec4<f32> = u_xlat14;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.x, x_2878.y);
            let x_2881 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec43;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat75 = x_2890;
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2903 : vec3<f32> = txVec44;
            let x_2905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2903.xy, x_2903.z);
            u_xlat76 = x_2905;
            let x_2906 : f32 = u_xlat76;
            let x_2908 : f32 = u_xlat20.y;
            u_xlat76 = (x_2906 * x_2908);
            let x_2911 : f32 = u_xlat20.x;
            let x_2912 : f32 = u_xlat75;
            let x_2914 : f32 = u_xlat76;
            u_xlat75 = ((x_2911 * x_2912) + x_2914);
            let x_2917 : vec4<f32> = u_xlat15;
            let x_2918 : vec2<f32> = vec2<f32>(x_2917.x, x_2917.y);
            let x_2920 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
            let x_2927 : vec3<f32> = txVec45;
            let x_2929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2927.xy, x_2927.z);
            u_xlat76 = x_2929;
            let x_2931 : f32 = u_xlat20.z;
            let x_2932 : f32 = u_xlat76;
            let x_2934 : f32 = u_xlat75;
            u_xlat75 = ((x_2931 * x_2932) + x_2934);
            let x_2937 : vec4<f32> = u_xlat17;
            let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
            let x_2940 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2947 : vec3<f32> = txVec46;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat76 = x_2949;
            let x_2951 : f32 = u_xlat20.w;
            let x_2952 : f32 = u_xlat76;
            let x_2954 : f32 = u_xlat75;
            u_xlat75 = ((x_2951 * x_2952) + x_2954);
            let x_2957 : vec4<f32> = u_xlat16;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.x, x_2957.y);
            let x_2960 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec47;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat76 = x_2969;
            let x_2971 : f32 = u_xlat21.x;
            let x_2972 : f32 = u_xlat76;
            let x_2974 : f32 = u_xlat75;
            u_xlat75 = ((x_2971 * x_2972) + x_2974);
            let x_2977 : vec4<f32> = u_xlat16;
            let x_2978 : vec2<f32> = vec2<f32>(x_2977.z, x_2977.w);
            let x_2980 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
            let x_2987 : vec3<f32> = txVec48;
            let x_2989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
            u_xlat76 = x_2989;
            let x_2991 : f32 = u_xlat21.y;
            let x_2992 : f32 = u_xlat76;
            let x_2994 : f32 = u_xlat75;
            u_xlat75 = ((x_2991 * x_2992) + x_2994);
            let x_2997 : vec2<f32> = u_xlat61;
            let x_2999 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2997.x, x_2997.y, x_2999);
            let x_3006 : vec3<f32> = txVec49;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat76 = x_3008;
            let x_3010 : f32 = u_xlat21.z;
            let x_3011 : f32 = u_xlat76;
            let x_3013 : f32 = u_xlat75;
            u_xlat75 = ((x_3010 * x_3011) + x_3013);
            let x_3016 : vec4<f32> = u_xlat17;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.z, x_3016.w);
            let x_3019 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec50;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat76 = x_3028;
            let x_3030 : f32 = u_xlat21.w;
            let x_3031 : f32 = u_xlat76;
            let x_3033 : f32 = u_xlat75;
            u_xlat75 = ((x_3030 * x_3031) + x_3033);
            let x_3036 : vec4<f32> = u_xlat18;
            let x_3037 : vec2<f32> = vec2<f32>(x_3036.x, x_3036.y);
            let x_3039 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3037.x, x_3037.y, x_3039);
            let x_3046 : vec3<f32> = txVec51;
            let x_3048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3046.xy, x_3046.z);
            u_xlat76 = x_3048;
            let x_3050 : f32 = u_xlat22.x;
            let x_3051 : f32 = u_xlat76;
            let x_3053 : f32 = u_xlat75;
            u_xlat75 = ((x_3050 * x_3051) + x_3053);
            let x_3056 : vec4<f32> = u_xlat18;
            let x_3057 : vec2<f32> = vec2<f32>(x_3056.z, x_3056.w);
            let x_3059 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3066 : vec3<f32> = txVec52;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat76 = x_3068;
            let x_3070 : f32 = u_xlat22.y;
            let x_3071 : f32 = u_xlat76;
            let x_3073 : f32 = u_xlat75;
            u_xlat75 = ((x_3070 * x_3071) + x_3073);
            let x_3076 : vec2<f32> = u_xlat33;
            let x_3078 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
            let x_3085 : vec3<f32> = txVec53;
            let x_3087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
            u_xlat76 = x_3087;
            let x_3089 : f32 = u_xlat22.z;
            let x_3090 : f32 = u_xlat76;
            let x_3092 : f32 = u_xlat75;
            u_xlat75 = ((x_3089 * x_3090) + x_3092);
            let x_3095 : vec2<f32> = u_xlat19;
            let x_3097 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec54;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat76 = x_3106;
            let x_3108 : f32 = u_xlat22.w;
            let x_3109 : f32 = u_xlat76;
            let x_3111 : f32 = u_xlat75;
            u_xlat75 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat13;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
            let x_3117 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec55;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat76 = x_3126;
            let x_3128 : f32 = u_xlat9.x;
            let x_3129 : f32 = u_xlat76;
            let x_3131 : f32 = u_xlat75;
            u_xlat75 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat13;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.z, x_3134.w);
            let x_3137 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec56;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat76 = x_3146;
            let x_3148 : f32 = u_xlat9.y;
            let x_3149 : f32 = u_xlat76;
            let x_3151 : f32 = u_xlat75;
            u_xlat75 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec2<f32> = u_xlat58;
            let x_3156 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec57;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat76 = x_3165;
            let x_3167 : f32 = u_xlat9.z;
            let x_3168 : f32 = u_xlat76;
            let x_3170 : f32 = u_xlat75;
            u_xlat75 = ((x_3167 * x_3168) + x_3170);
            let x_3173 : vec2<f32> = u_xlat51;
            let x_3175 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec58;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat51.x = x_3184;
            let x_3187 : f32 = u_xlat9.w;
            let x_3189 : f32 = u_xlat51.x;
            let x_3191 : f32 = u_xlat75;
            u_xlat73 = ((x_3187 * x_3189) + x_3191);
          }
        }
      } else {
        let x_3195 : vec4<f32> = u_xlat8;
        let x_3196 : vec2<f32> = vec2<f32>(x_3195.x, x_3195.y);
        let x_3198 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
        let x_3205 : vec3<f32> = txVec59;
        let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
        u_xlat73 = x_3207;
      }
      let x_3208 : i32 = u_xlati71;
      let x_3210 : f32 = x_240.x_AdditionalShadowParams[x_3208].x;
      u_xlat51.x = (1.0f + -(x_3210));
      let x_3214 : f32 = u_xlat73;
      let x_3215 : i32 = u_xlati71;
      let x_3217 : f32 = x_240.x_AdditionalShadowParams[x_3215].x;
      let x_3220 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3214 * x_3217) + x_3220);
      let x_3223 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3223);
      let x_3227 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3227 >= 1.0f);
      let x_3229 : bool = u_xlatb74;
      let x_3230 : bool = u_xlatb51;
      u_xlatb51 = (x_3229 | x_3230);
      let x_3232 : bool = u_xlatb51;
      let x_3233 : f32 = u_xlat73;
      u_xlat73 = select(x_3233, 1.0f, x_3232);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3236 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3236) + 1.0f);
    let x_3240 : f32 = u_xlat69;
    let x_3242 : f32 = u_xlat51.x;
    let x_3244 : f32 = u_xlat73;
    u_xlat73 = ((x_3240 * x_3242) + x_3244);
    let x_3247 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3247 & 31i)));
    let x_3251 : i32 = u_xlati51;
    let x_3254 : f32 = x_1566.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3251) & bitcast<u32>(x_3254)));
    let x_3258 : i32 = u_xlati51;
    if ((x_3258 != 0i)) {
      let x_3262 : i32 = u_xlati71;
      let x_3264 : f32 = x_1566.x_AdditionalLightsLightTypes[x_3262].el;
      u_xlati51 = i32(x_3264);
      let x_3267 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3267 != 0i));
      let x_3271 : i32 = u_xlati71;
      u_xlati75 = (x_3271 << bitcast<u32>(2i));
      let x_3273 : i32 = u_xlati74;
      if ((x_3273 != 0i)) {
        let x_3277 : vec3<f32> = vs_TEXCOORD1;
        let x_3279 : i32 = u_xlati75;
        let x_3282 : i32 = u_xlati75;
        let x_3286 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3279 + 1i) / 4i)][((x_3282 + 1i) % 4i)];
        let x_3288 : vec3<f32> = (vec3<f32>(x_3277.y, x_3277.y, x_3277.y) * vec3<f32>(x_3286.x, x_3286.y, x_3286.w));
        let x_3289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3288.x, x_3288.y, x_3288.z, x_3289.w);
        let x_3291 : i32 = u_xlati75;
        let x_3293 : i32 = u_xlati75;
        let x_3296 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3291 / 4i)][(x_3293 % 4i)];
        let x_3298 : vec3<f32> = vs_TEXCOORD1;
        let x_3301 : vec4<f32> = u_xlat8;
        let x_3303 : vec3<f32> = ((vec3<f32>(x_3296.x, x_3296.y, x_3296.w) * vec3<f32>(x_3298.x, x_3298.x, x_3298.x)) + vec3<f32>(x_3301.x, x_3301.y, x_3301.z));
        let x_3304 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3304.w);
        let x_3306 : i32 = u_xlati75;
        let x_3309 : i32 = u_xlati75;
        let x_3313 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3306 + 2i) / 4i)][((x_3309 + 2i) % 4i)];
        let x_3315 : vec3<f32> = vs_TEXCOORD1;
        let x_3318 : vec4<f32> = u_xlat8;
        let x_3320 : vec3<f32> = ((vec3<f32>(x_3313.x, x_3313.y, x_3313.w) * vec3<f32>(x_3315.z, x_3315.z, x_3315.z)) + vec3<f32>(x_3318.x, x_3318.y, x_3318.z));
        let x_3321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);
        let x_3323 : vec4<f32> = u_xlat8;
        let x_3325 : i32 = u_xlati75;
        let x_3328 : i32 = u_xlati75;
        let x_3332 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3325 + 3i) / 4i)][((x_3328 + 3i) % 4i)];
        let x_3334 : vec3<f32> = (vec3<f32>(x_3323.x, x_3323.y, x_3323.z) + vec3<f32>(x_3332.x, x_3332.y, x_3332.w));
        let x_3335 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3335.w);
        let x_3337 : vec4<f32> = u_xlat8;
        let x_3339 : vec4<f32> = u_xlat8;
        let x_3341 : vec2<f32> = (vec2<f32>(x_3337.x, x_3337.y) / vec2<f32>(x_3339.z, x_3339.z));
        let x_3342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3341.x, x_3341.y, x_3342.z, x_3342.w);
        let x_3344 : vec4<f32> = u_xlat8;
        let x_3347 : vec2<f32> = ((vec2<f32>(x_3344.x, x_3344.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3348 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3347.x, x_3347.y, x_3348.z, x_3348.w);
        let x_3350 : vec4<f32> = u_xlat8;
        let x_3354 : vec2<f32> = clamp(vec2<f32>(x_3350.x, x_3350.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3354.x, x_3354.y, x_3355.z, x_3355.w);
        let x_3357 : i32 = u_xlati71;
        let x_3359 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3357];
        let x_3361 : vec4<f32> = u_xlat8;
        let x_3364 : i32 = u_xlati71;
        let x_3366 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3364];
        let x_3368 : vec2<f32> = ((vec2<f32>(x_3359.x, x_3359.y) * vec2<f32>(x_3361.x, x_3361.y)) + vec2<f32>(x_3366.z, x_3366.w));
        let x_3369 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3368.x, x_3368.y, x_3369.z, x_3369.w);
      } else {
        let x_3372 : i32 = u_xlati51;
        u_xlatb51 = (x_3372 == 1i);
        let x_3374 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3374);
        let x_3376 : i32 = u_xlati51;
        if ((x_3376 != 0i)) {
          let x_3380 : vec3<f32> = vs_TEXCOORD1;
          let x_3382 : i32 = u_xlati75;
          let x_3385 : i32 = u_xlati75;
          let x_3389 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3382 + 1i) / 4i)][((x_3385 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3380.y, x_3380.y) * vec2<f32>(x_3389.x, x_3389.y));
          let x_3392 : i32 = u_xlati75;
          let x_3394 : i32 = u_xlati75;
          let x_3397 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3392 / 4i)][(x_3394 % 4i)];
          let x_3399 : vec3<f32> = vs_TEXCOORD1;
          let x_3402 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3397.x, x_3397.y) * vec2<f32>(x_3399.x, x_3399.x)) + x_3402);
          let x_3404 : i32 = u_xlati75;
          let x_3407 : i32 = u_xlati75;
          let x_3411 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3404 + 2i) / 4i)][((x_3407 + 2i) % 4i)];
          let x_3413 : vec3<f32> = vs_TEXCOORD1;
          let x_3416 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3411.x, x_3411.y) * vec2<f32>(x_3413.z, x_3413.z)) + x_3416);
          let x_3418 : vec2<f32> = u_xlat51;
          let x_3419 : i32 = u_xlati75;
          let x_3422 : i32 = u_xlati75;
          let x_3426 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3419 + 3i) / 4i)][((x_3422 + 3i) % 4i)];
          u_xlat51 = (x_3418 + vec2<f32>(x_3426.x, x_3426.y));
          let x_3429 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3429 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3432 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3432);
          let x_3434 : i32 = u_xlati71;
          let x_3436 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3434];
          let x_3438 : vec2<f32> = u_xlat51;
          let x_3440 : i32 = u_xlati71;
          let x_3442 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3440];
          let x_3444 : vec2<f32> = ((vec2<f32>(x_3436.x, x_3436.y) * x_3438) + vec2<f32>(x_3442.z, x_3442.w));
          let x_3445 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3444.x, x_3444.y, x_3445.z, x_3445.w);
        } else {
          let x_3448 : vec3<f32> = vs_TEXCOORD1;
          let x_3450 : i32 = u_xlati75;
          let x_3453 : i32 = u_xlati75;
          let x_3457 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3450 + 1i) / 4i)][((x_3453 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3448.y, x_3448.y, x_3448.y, x_3448.y) * x_3457);
          let x_3459 : i32 = u_xlati75;
          let x_3461 : i32 = u_xlati75;
          let x_3464 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[(x_3459 / 4i)][(x_3461 % 4i)];
          let x_3465 : vec3<f32> = vs_TEXCOORD1;
          let x_3468 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3464 * vec4<f32>(x_3465.x, x_3465.x, x_3465.x, x_3465.x)) + x_3468);
          let x_3470 : i32 = u_xlati75;
          let x_3473 : i32 = u_xlati75;
          let x_3477 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3470 + 2i) / 4i)][((x_3473 + 2i) % 4i)];
          let x_3478 : vec3<f32> = vs_TEXCOORD1;
          let x_3481 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3477 * vec4<f32>(x_3478.z, x_3478.z, x_3478.z, x_3478.z)) + x_3481);
          let x_3483 : vec4<f32> = u_xlat9;
          let x_3484 : i32 = u_xlati75;
          let x_3487 : i32 = u_xlati75;
          let x_3491 : vec4<f32> = x_1566.x_AdditionalLightsWorldToLights[((x_3484 + 3i) / 4i)][((x_3487 + 3i) % 4i)];
          u_xlat9 = (x_3483 + x_3491);
          let x_3493 : vec4<f32> = u_xlat9;
          let x_3495 : vec4<f32> = u_xlat9;
          let x_3497 : vec3<f32> = (vec3<f32>(x_3493.x, x_3493.y, x_3493.z) / vec3<f32>(x_3495.w, x_3495.w, x_3495.w));
          let x_3498 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
          let x_3500 : vec4<f32> = u_xlat9;
          let x_3502 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3500.x, x_3500.y, x_3500.z), vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
          let x_3507 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3507);
          let x_3510 : vec2<f32> = u_xlat51;
          let x_3512 : vec4<f32> = u_xlat9;
          let x_3514 : vec3<f32> = (vec3<f32>(x_3510.x, x_3510.x, x_3510.x) * vec3<f32>(x_3512.x, x_3512.y, x_3512.z));
          let x_3515 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3514.x, x_3514.y, x_3514.z, x_3515.w);
          let x_3517 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3517.x, x_3517.y, x_3517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3524 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3524, 0.00000099999999747524f);
          let x_3529 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3529);
          let x_3532 : vec2<f32> = u_xlat51;
          let x_3534 : vec4<f32> = u_xlat9;
          let x_3536 : vec3<f32> = (vec3<f32>(x_3532.x, x_3532.x, x_3532.x) * vec3<f32>(x_3534.z, x_3534.x, x_3534.y));
          let x_3537 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3536.x, x_3536.y, x_3536.z, x_3537.w);
          let x_3540 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3540);
          let x_3544 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3544, 0.0f, 1.0f);
          let x_3548 : vec4<f32> = u_xlat10;
          let x_3550 : vec4<bool> = (vec4<f32>(x_3548.y, x_3548.z, x_3548.y, x_3548.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3550.x, x_3550.y);
          let x_3554 : bool = u_xlatb54.x;
          if (x_3554) {
            let x_3559 : f32 = u_xlat10.x;
            x_3555 = x_3559;
          } else {
            let x_3562 : f32 = u_xlat10.x;
            x_3555 = -(x_3562);
          }
          let x_3564 : f32 = x_3555;
          u_xlat54.x = x_3564;
          let x_3567 : bool = u_xlatb54.y;
          if (x_3567) {
            let x_3572 : f32 = u_xlat10.x;
            x_3568 = x_3572;
          } else {
            let x_3575 : f32 = u_xlat10.x;
            x_3568 = -(x_3575);
          }
          let x_3577 : f32 = x_3568;
          u_xlat54.y = x_3577;
          let x_3579 : vec4<f32> = u_xlat9;
          let x_3581 : vec2<f32> = u_xlat51;
          let x_3584 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3579.x, x_3579.y) * vec2<f32>(x_3581.x, x_3581.x)) + x_3584);
          let x_3586 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3586 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3589 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3589, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3593 : i32 = u_xlati71;
          let x_3595 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3593];
          let x_3597 : vec2<f32> = u_xlat51;
          let x_3599 : i32 = u_xlati71;
          let x_3601 : vec4<f32> = x_1566.x_AdditionalLightsCookieAtlasUVRects[x_3599];
          let x_3603 : vec2<f32> = ((vec2<f32>(x_3595.x, x_3595.y) * x_3597) + vec2<f32>(x_3601.z, x_3601.w));
          let x_3604 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3603.x, x_3603.y, x_3604.z, x_3604.w);
        }
      }
      let x_3611 : vec4<f32> = u_xlat8;
      let x_3613 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3611.x, x_3611.y), 0.0f);
      u_xlat8 = x_3613;
      let x_3615 : bool = u_xlatb5.y;
      if (x_3615) {
        let x_3620 : f32 = u_xlat8.w;
        x_3616 = x_3620;
      } else {
        let x_3623 : f32 = u_xlat8.x;
        x_3616 = x_3623;
      }
      let x_3624 : f32 = x_3616;
      u_xlat51.x = x_3624;
      let x_3627 : bool = u_xlatb5.x;
      if (x_3627) {
        let x_3631 : vec4<f32> = u_xlat8;
        x_3628 = vec3<f32>(x_3631.x, x_3631.y, x_3631.z);
      } else {
        let x_3634 : vec2<f32> = u_xlat51;
        x_3628 = vec3<f32>(x_3634.x, x_3634.x, x_3634.x);
      }
      let x_3636 : vec3<f32> = x_3628;
      let x_3637 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3643 : vec4<f32> = u_xlat8;
    let x_3645 : i32 = u_xlati71;
    let x_3647 : vec4<f32> = x_1812.x_AdditionalLightsColor[x_3645];
    let x_3649 : vec3<f32> = (vec3<f32>(x_3643.x, x_3643.y, x_3643.z) * vec3<f32>(x_3647.x, x_3647.y, x_3647.z));
    let x_3650 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3649.x, x_3649.y, x_3649.z, x_3650.w);
    let x_3652 : f32 = u_xlat72;
    let x_3653 : f32 = u_xlat73;
    u_xlat71 = (x_3652 * x_3653);
    let x_3655 : f32 = u_xlat71;
    let x_3657 : vec4<f32> = u_xlat8;
    let x_3659 : vec3<f32> = (vec3<f32>(x_3655, x_3655, x_3655) * vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
    let x_3660 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
    let x_3662 : vec4<f32> = u_xlat2;
    let x_3664 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3662.x, x_3662.y, x_3662.z), vec3<f32>(x_3664.x, x_3664.y, x_3664.z));
    let x_3667 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3667, 0.0f, 1.0f);
    let x_3669 : f32 = u_xlat71;
    let x_3671 : vec4<f32> = u_xlat8;
    let x_3673 : vec3<f32> = (vec3<f32>(x_3669, x_3669, x_3669) * vec3<f32>(x_3671.x, x_3671.y, x_3671.z));
    let x_3674 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3673.x, x_3673.y, x_3673.z, x_3674.w);
    let x_3676 : vec4<f32> = u_xlat7;
    let x_3678 : vec4<f32> = u_xlat1;
    let x_3681 : vec4<f32> = u_xlat6;
    let x_3683 : vec3<f32> = ((vec3<f32>(x_3676.x, x_3676.y, x_3676.z) * vec3<f32>(x_3678.y, x_3678.z, x_3678.w)) + vec3<f32>(x_3681.x, x_3681.y, x_3681.z));
    let x_3684 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);

    continuing {
      let x_3686 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3686 + bitcast<u32>(1i));
    }
  }
  let x_3688 : vec3<f32> = u_xlat3;
  let x_3689 : vec4<f32> = u_xlat1;
  let x_3692 : vec4<f32> = u_xlat4;
  let x_3694 : vec3<f32> = ((x_3688 * vec3<f32>(x_3689.y, x_3689.z, x_3689.w)) + vec3<f32>(x_3692.x, x_3692.y, x_3692.z));
  let x_3695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3694.x, x_3694.y, x_3694.z, x_3695.w);
  let x_3699 : vec4<f32> = u_xlat6;
  let x_3701 : vec4<f32> = u_xlat1;
  let x_3703 : vec3<f32> = (vec3<f32>(x_3699.x, x_3699.y, x_3699.z) + vec3<f32>(x_3701.x, x_3701.y, x_3701.z));
  let x_3704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3703.x, x_3703.y, x_3703.z, x_3704.w);
  let x_3707 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3707 == 1.0f);
  let x_3709 : bool = u_xlatb23;
  let x_3710 : bool = u_xlatb46;
  u_xlatb23 = (x_3709 | x_3710);
  let x_3712 : bool = u_xlatb23;
  if (x_3712) {
    let x_3717 : f32 = u_xlat0.x;
    x_3713 = x_3717;
  } else {
    x_3713 = 1.0f;
  }
  let x_3719 : f32 = x_3713;
  SV_Target0.w = x_3719;
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


