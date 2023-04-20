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

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_156 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_240 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlatu22 : u32;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1672 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1813 : f32;
  var x_1823 : f32;
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
  var x_3160 : f32;
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
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat22;
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
  u_xlat22 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat22;
  u_xlat22 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_156.unity_SHC;
  let x_218 : f32 = u_xlat22;
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
  u_xlatb22 = (0.0f < x_243);
  let x_245 : bool = u_xlatb22;
  if (x_245) {
    let x_249 : f32 = x_240.x_MainLightShadowParams.y;
    u_xlatb22 = (x_249 == 1.0f);
    let x_251 : bool = u_xlatb22;
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
      u_xlat22 = dot(x_335, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_342 : f32 = x_240.x_MainLightShadowParams.y;
      u_xlatb66 = (x_342 == 2.0f);
      let x_345 : bool = u_xlatb66;
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
        u_xlat48 = ((vec2<f32>(x_366.x, x_366.y) * vec2<f32>(x_369.z, x_369.w)) + -(vec2<f32>(x_372.x, x_372.y)));
        let x_376 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_376.x, x_376.x, x_376.y, x_376.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_381 : vec4<f32> = u_xlat5;
        let x_383 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_381.x, x_381.x, x_381.z, x_381.z) * vec4<f32>(x_383.x, x_383.x, x_383.z, x_383.z));
        let x_386 : vec4<f32> = u_xlat6;
        let x_390 : vec2<f32> = (vec2<f32>(x_386.y, x_386.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_391 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_390.x, x_391.y, x_390.y, x_391.w);
        let x_393 : vec4<f32> = u_xlat6;
        let x_396 : vec2<f32> = u_xlat48;
        let x_398 : vec2<f32> = ((vec2<f32>(x_393.x, x_393.z) * vec2<f32>(0.5f, 0.5f)) + -(x_396));
        let x_399 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_402 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_402) + vec2<f32>(1.0f, 1.0f));
        let x_407 : vec2<f32> = u_xlat48;
        let x_409 : vec2<f32> = min(x_407, vec2<f32>(0.0f, 0.0f));
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
        let x_412 : vec4<f32> = u_xlat7;
        let x_415 : vec4<f32> = u_xlat7;
        let x_418 : vec2<f32> = u_xlat50;
        let x_419 : vec2<f32> = ((-(vec2<f32>(x_412.x, x_412.y)) * vec2<f32>(x_415.x, x_415.y)) + x_418);
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_422 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_422, vec2<f32>(0.0f, 0.0f));
        let x_424 : vec2<f32> = u_xlat48;
        let x_426 : vec2<f32> = u_xlat48;
        let x_428 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_424) * x_426) + vec2<f32>(x_428.y, x_428.w));
        let x_431 : vec4<f32> = u_xlat7;
        let x_433 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_436 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_436 + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec4<f32> = u_xlat6;
        let x_443 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec2<f32> = u_xlat50;
        let x_447 : vec2<f32> = (x_446 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_450 : vec4<f32> = u_xlat7;
        let x_452 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_456 : vec2<f32> = u_xlat48;
        let x_457 : vec2<f32> = (x_456 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_458 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_460.y, x_460.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_464 : f32 = u_xlat7.x;
        u_xlat8.z = x_464;
        let x_467 : f32 = u_xlat48.x;
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
        let x_485 : f32 = u_xlat48.y;
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
        u_xlat48 = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(x_562.z, x_562.w));
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
        u_xlat66 = (x_611 * x_613);
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
        u_xlat68 = x_644;
        let x_645 : f32 = u_xlat68;
        let x_647 : f32 = u_xlat11.y;
        u_xlat68 = (x_645 * x_647);
        let x_650 : f32 = u_xlat11.x;
        let x_652 : f32 = u_xlat1.x;
        let x_654 : f32 = u_xlat68;
        u_xlat1.x = ((x_650 * x_652) + x_654);
        let x_658 : vec2<f32> = u_xlat48;
        let x_660 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_658.x, x_658.y, x_660);
        let x_667 : vec3<f32> = txVec6;
        let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
        u_xlat68 = x_669;
        let x_671 : f32 = u_xlat11.z;
        let x_672 : f32 = u_xlat68;
        let x_675 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_671 * x_672) + x_675);
        let x_679 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_689 : vec3<f32> = txVec7;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_689.xy, x_689.z);
        u_xlat68 = x_691;
        let x_693 : f32 = u_xlat11.w;
        let x_694 : f32 = u_xlat68;
        let x_697 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_693 * x_694) + x_697);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec8;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_711.xy, x_711.z);
        u_xlat68 = x_713;
        let x_715 : f32 = u_xlat12.x;
        let x_716 : f32 = u_xlat68;
        let x_719 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_715 * x_716) + x_719);
        let x_723 : vec4<f32> = u_xlat9;
        let x_724 : vec2<f32> = vec2<f32>(x_723.z, x_723.w);
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_733 : vec3<f32> = txVec9;
        let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
        u_xlat68 = x_735;
        let x_737 : f32 = u_xlat12.y;
        let x_738 : f32 = u_xlat68;
        let x_741 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_737 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat7;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec10;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat68 = x_757;
        let x_759 : f32 = u_xlat12.z;
        let x_760 : f32 = u_xlat68;
        let x_763 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_759 * x_760) + x_763);
        let x_767 : vec4<f32> = u_xlat6;
        let x_768 : vec2<f32> = vec2<f32>(x_767.x, x_767.y);
        let x_770 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_768.x, x_768.y, x_770);
        let x_777 : vec3<f32> = txVec11;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
        u_xlat68 = x_779;
        let x_781 : f32 = u_xlat12.w;
        let x_782 : f32 = u_xlat68;
        let x_785 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_781 * x_782) + x_785);
        let x_789 : vec4<f32> = u_xlat6;
        let x_790 : vec2<f32> = vec2<f32>(x_789.z, x_789.w);
        let x_792 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_790.x, x_790.y, x_792);
        let x_799 : vec3<f32> = txVec12;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_799.xy, x_799.z);
        u_xlat68 = x_801;
        let x_802 : f32 = u_xlat66;
        let x_803 : f32 = u_xlat68;
        let x_806 : f32 = u_xlat1.x;
        u_xlat22 = ((x_802 * x_803) + x_806);
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
        u_xlat48 = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_826.z, x_826.w)) + -(vec2<f32>(x_829.x, x_829.y)));
        let x_833 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_833.x, x_833.x, x_833.y, x_833.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_836 : vec4<f32> = u_xlat5;
        let x_838 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_836.x, x_836.x, x_836.z, x_836.z) * vec4<f32>(x_838.x, x_838.x, x_838.z, x_838.z));
        let x_841 : vec4<f32> = u_xlat6;
        let x_845 : vec2<f32> = (vec2<f32>(x_841.y, x_841.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_846 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_846.x, x_845.x, x_846.z, x_845.y);
        let x_848 : vec4<f32> = u_xlat6;
        let x_851 : vec2<f32> = u_xlat48;
        let x_853 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.z) * vec2<f32>(0.5f, 0.5f)) + -(x_851));
        let x_854 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_853.x, x_854.y, x_853.y, x_854.w);
        let x_856 : vec2<f32> = u_xlat48;
        let x_858 : vec2<f32> = (-(x_856) + vec2<f32>(1.0f, 1.0f));
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_861 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_861, vec2<f32>(0.0f, 0.0f));
        let x_863 : vec2<f32> = u_xlat50;
        let x_865 : vec2<f32> = u_xlat50;
        let x_867 : vec4<f32> = u_xlat6;
        let x_869 : vec2<f32> = ((-(x_863) * x_865) + vec2<f32>(x_867.x, x_867.y));
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_872, vec2<f32>(0.0f, 0.0f));
        let x_875 : vec2<f32> = u_xlat50;
        let x_877 : vec2<f32> = u_xlat50;
        let x_879 : vec4<f32> = u_xlat5;
        let x_881 : vec2<f32> = ((-(x_875) * x_877) + vec2<f32>(x_879.y, x_879.w));
        let x_882 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_881.x, x_882.y, x_881.y);
        let x_884 : vec4<f32> = u_xlat6;
        let x_887 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) + vec2<f32>(2.0f, 2.0f));
        let x_888 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec3<f32> = u_xlat27;
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
        let x_915 : vec2<f32> = u_xlat48;
        let x_922 : vec2<f32> = ((vec2<f32>(x_915.x, x_915.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec2<f32> = u_xlat48;
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
        let x_941 : vec2<f32> = u_xlat48;
        let x_944 : vec2<f32> = ((vec2<f32>(x_941.y, x_941.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_944.x, x_945.z, x_944.y);
        let x_947 : vec2<f32> = u_xlat48;
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
        u_xlat48 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1004.x, x_1004.y)) + vec2<f32>(x_1007.w, x_1007.y));
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
        u_xlat28 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.w, x_1069.y));
        let x_1073 : f32 = u_xlat9.y;
        u_xlat6.w = x_1073;
        let x_1076 : vec4<f32> = u_xlat4;
        let x_1079 : vec4<f32> = x_240.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1082.x, x_1082.w));
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
        u_xlat51 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
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
        u_xlat66 = x_1154;
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
        let x_1178 : f32 = u_xlat66;
        let x_1181 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1177 * x_1178) + x_1181);
        let x_1184 : vec2<f32> = u_xlat48;
        let x_1186 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec15;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat1.x = x_1195;
        let x_1198 : f32 = u_xlat15.z;
        let x_1200 : f32 = u_xlat1.x;
        let x_1202 : f32 = u_xlat66;
        u_xlat66 = ((x_1198 * x_1200) + x_1202);
        let x_1205 : vec4<f32> = u_xlat13;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.x, x_1205.y);
        let x_1208 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec16;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1215.xy, x_1215.z);
        u_xlat1.x = x_1217;
        let x_1220 : f32 = u_xlat15.w;
        let x_1222 : f32 = u_xlat1.x;
        let x_1224 : f32 = u_xlat66;
        u_xlat66 = ((x_1220 * x_1222) + x_1224);
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec17;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat1.x = x_1239;
        let x_1242 : f32 = u_xlat16.x;
        let x_1244 : f32 = u_xlat1.x;
        let x_1246 : f32 = u_xlat66;
        u_xlat66 = ((x_1242 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec18;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat1.x = x_1261;
        let x_1264 : f32 = u_xlat16.y;
        let x_1266 : f32 = u_xlat1.x;
        let x_1268 : f32 = u_xlat66;
        u_xlat66 = ((x_1264 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat12;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.x, x_1271.y);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec19;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat1.x = x_1283;
        let x_1286 : f32 = u_xlat16.z;
        let x_1288 : f32 = u_xlat1.x;
        let x_1290 : f32 = u_xlat66;
        u_xlat66 = ((x_1286 * x_1288) + x_1290);
        let x_1293 : vec4<f32> = u_xlat13;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.z, x_1293.w);
        let x_1296 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec20;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1303.xy, x_1303.z);
        u_xlat1.x = x_1305;
        let x_1308 : f32 = u_xlat16.w;
        let x_1310 : f32 = u_xlat1.x;
        let x_1312 : f32 = u_xlat66;
        u_xlat66 = ((x_1308 * x_1310) + x_1312);
        let x_1315 : vec4<f32> = u_xlat14;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
        let x_1318 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec21;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1325.xy, x_1325.z);
        u_xlat1.x = x_1327;
        let x_1330 : f32 = u_xlat17.x;
        let x_1332 : f32 = u_xlat1.x;
        let x_1334 : f32 = u_xlat66;
        u_xlat66 = ((x_1330 * x_1332) + x_1334);
        let x_1337 : vec4<f32> = u_xlat14;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.z, x_1337.w);
        let x_1340 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec22;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1347.xy, x_1347.z);
        u_xlat1.x = x_1349;
        let x_1352 : f32 = u_xlat17.y;
        let x_1354 : f32 = u_xlat1.x;
        let x_1356 : f32 = u_xlat66;
        u_xlat66 = ((x_1352 * x_1354) + x_1356);
        let x_1359 : vec2<f32> = u_xlat28;
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec23;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat1.x = x_1370;
        let x_1373 : f32 = u_xlat17.z;
        let x_1375 : f32 = u_xlat1.x;
        let x_1377 : f32 = u_xlat66;
        u_xlat66 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat56;
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec24;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat1.x = x_1391;
        let x_1394 : f32 = u_xlat17.w;
        let x_1396 : f32 = u_xlat1.x;
        let x_1398 : f32 = u_xlat66;
        u_xlat66 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec25;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat1.x = x_1413;
        let x_1416 : f32 = u_xlat5.x;
        let x_1418 : f32 = u_xlat1.x;
        let x_1420 : f32 = u_xlat66;
        u_xlat66 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec26;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat1.x = x_1435;
        let x_1438 : f32 = u_xlat5.y;
        let x_1440 : f32 = u_xlat1.x;
        let x_1442 : f32 = u_xlat66;
        u_xlat66 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec2<f32> = u_xlat51;
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec27;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat1.x = x_1456;
        let x_1459 : f32 = u_xlat5.z;
        let x_1461 : f32 = u_xlat1.x;
        let x_1463 : f32 = u_xlat66;
        u_xlat66 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat4;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec28;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat1.x = x_1478;
        let x_1481 : f32 = u_xlat5.w;
        let x_1483 : f32 = u_xlat1.x;
        let x_1485 : f32 = u_xlat66;
        u_xlat22 = ((x_1481 * x_1483) + x_1485);
      }
    }
  } else {
    let x_1489 : vec4<f32> = vs_TEXCOORD6;
    let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
    let x_1492 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
    let x_1499 : vec3<f32> = txVec29;
    let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
    u_xlat22 = x_1501;
  }
  let x_1503 : f32 = x_240.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1503) + 1.0f);
  let x_1506 : f32 = u_xlat22;
  let x_1508 : f32 = x_240.x_MainLightShadowParams.x;
  let x_1510 : f32 = u_xlat66;
  u_xlat22 = ((x_1506 * x_1508) + x_1510);
  let x_1513 : f32 = vs_TEXCOORD6.z;
  u_xlatb66 = (0.0f >= x_1513);
  let x_1517 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1517 >= 1.0f);
  let x_1519 : bool = u_xlatb66;
  let x_1520 : bool = u_xlatb1;
  u_xlatb66 = (x_1519 | x_1520);
  let x_1522 : bool = u_xlatb66;
  let x_1523 : f32 = u_xlat22;
  u_xlat22 = select(x_1523, 1.0f, x_1522);
  let x_1526 : vec3<f32> = vs_TEXCOORD1;
  let x_1530 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1532 : vec3<f32> = (x_1526 + -(x_1530));
  let x_1533 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1535 : vec4<f32> = u_xlat4;
  let x_1537 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(vec3<f32>(x_1535.x, x_1535.y, x_1535.z), vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
  let x_1540 : f32 = u_xlat66;
  let x_1542 : f32 = x_240.x_MainLightShadowParams.z;
  let x_1545 : f32 = x_240.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1540 * x_1542) + x_1545);
  let x_1549 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1549, 0.0f, 1.0f);
  let x_1552 : f32 = u_xlat22;
  u_xlat68 = (-(x_1552) + 1.0f);
  let x_1556 : f32 = u_xlat1.x;
  let x_1557 : f32 = u_xlat68;
  let x_1559 : f32 = u_xlat22;
  u_xlat22 = ((x_1556 * x_1557) + x_1559);
  let x_1561 : f32 = u_xlat22;
  let x_1563 : f32 = x_156.unity_LightData.z;
  u_xlat22 = (x_1561 * x_1563);
  let x_1565 : f32 = u_xlat22;
  let x_1569 : vec4<f32> = x_27.x_MainLightColor;
  let x_1571 : vec3<f32> = (vec3<f32>(x_1565, x_1565, x_1565) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : vec4<f32> = u_xlat2;
  let x_1578 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_1574.x, x_1574.y, x_1574.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1581, 0.0f, 1.0f);
  let x_1583 : f32 = u_xlat22;
  let x_1585 : vec4<f32> = u_xlat4;
  let x_1587 : vec3<f32> = (vec3<f32>(x_1583, x_1583, x_1583) * vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : vec4<f32> = u_xlat1;
  let x_1592 : vec4<f32> = u_xlat4;
  let x_1594 : vec3<f32> = (vec3<f32>(x_1590.y, x_1590.z, x_1590.w) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
  let x_1595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1598 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1600 : f32 = x_156.unity_LightData.y;
  u_xlat22 = min(x_1598, x_1600);
  let x_1604 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1604));
  let x_1607 : f32 = u_xlat66;
  let x_1610 : f32 = x_240.x_AdditionalShadowFadeParams.x;
  let x_1613 : f32 = x_240.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1607 * x_1610) + x_1613);
  let x_1615 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1615, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1627 : u32 = u_xlatu_loop_1;
    let x_1628 : u32 = u_xlatu22;
    if ((x_1627 < x_1628)) {
    } else {
      break;
    }
    let x_1631 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1631 >> 2u);
    let x_1635 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1635 & 3u));
    let x_1638 : u32 = u_xlatu68;
    let x_1641 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_1638)];
    let x_1651 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1656 : vec4<u32> = indexable[x_1651];
    u_xlat68 = dot(x_1641, bitcast<vec4<f32>>(x_1656));
    let x_1660 : f32 = u_xlat68;
    u_xlati68 = i32(x_1660);
    let x_1662 : vec3<f32> = vs_TEXCOORD1;
    let x_1673 : i32 = u_xlati68;
    let x_1675 : vec4<f32> = x_1672.x_AdditionalLightsPosition[x_1673];
    let x_1678 : i32 = u_xlati68;
    let x_1680 : vec4<f32> = x_1672.x_AdditionalLightsPosition[x_1678];
    let x_1682 : vec3<f32> = ((-(x_1662) * vec3<f32>(x_1675.w, x_1675.w, x_1675.w)) + vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
    let x_1683 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
    let x_1686 : vec4<f32> = u_xlat6;
    let x_1688 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1686.x, x_1686.y, x_1686.z), vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
    let x_1691 : f32 = u_xlat69;
    u_xlat69 = max(x_1691, 0.00006103515625f);
    let x_1695 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1695);
    let x_1697 : f32 = u_xlat70;
    let x_1699 : vec4<f32> = u_xlat6;
    let x_1701 : vec3<f32> = (vec3<f32>(x_1697, x_1697, x_1697) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
    let x_1702 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
    let x_1704 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1704);
    let x_1706 : f32 = u_xlat69;
    let x_1707 : i32 = u_xlati68;
    let x_1709 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1707].x;
    u_xlat69 = (x_1706 * x_1709);
    let x_1711 : f32 = u_xlat69;
    let x_1713 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1711) * x_1713) + 1.0f);
    let x_1716 : f32 = u_xlat69;
    u_xlat69 = max(x_1716, 0.0f);
    let x_1718 : f32 = u_xlat69;
    let x_1719 : f32 = u_xlat69;
    u_xlat69 = (x_1718 * x_1719);
    let x_1721 : f32 = u_xlat69;
    let x_1722 : f32 = u_xlat70;
    u_xlat69 = (x_1721 * x_1722);
    let x_1724 : i32 = u_xlati68;
    let x_1726 : vec4<f32> = x_1672.x_AdditionalLightsSpotDir[x_1724];
    let x_1728 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1731 : f32 = u_xlat70;
    let x_1732 : i32 = u_xlati68;
    let x_1734 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1732].z;
    let x_1736 : i32 = u_xlati68;
    let x_1738 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1736].w;
    u_xlat70 = ((x_1731 * x_1734) + x_1738);
    let x_1740 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1740, 0.0f, 1.0f);
    let x_1742 : f32 = u_xlat70;
    let x_1743 : f32 = u_xlat70;
    u_xlat70 = (x_1742 * x_1743);
    let x_1745 : f32 = u_xlat69;
    let x_1746 : f32 = u_xlat70;
    u_xlat69 = (x_1745 * x_1746);
    let x_1750 : i32 = u_xlati68;
    let x_1752 : f32 = x_240.x_AdditionalShadowParams[x_1750].w;
    u_xlati70 = i32(x_1752);
    let x_1755 : i32 = u_xlati70;
    u_xlatb71 = (x_1755 >= 0i);
    let x_1757 : bool = u_xlatb71;
    if (x_1757) {
      let x_1761 : i32 = u_xlati68;
      let x_1763 : f32 = x_240.x_AdditionalShadowParams[x_1761].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1763, x_1763, x_1763, x_1763))));
      let x_1768 : bool = u_xlatb71;
      if (x_1768) {
        let x_1773 : vec4<f32> = u_xlat6;
        let x_1776 : vec4<f32> = u_xlat6;
        let x_1779 : vec4<bool> = (abs(vec4<f32>(x_1773.z, x_1773.z, x_1773.y, x_1773.z)) >= abs(vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.x)));
        let x_1781 : vec3<bool> = vec3<bool>(x_1779.x, x_1779.y, x_1779.z);
        let x_1782 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
        let x_1785 : bool = u_xlatb7.y;
        let x_1787 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1785 & x_1787);
        let x_1789 : vec4<f32> = u_xlat6;
        let x_1792 : vec4<bool> = (-(vec4<f32>(x_1789.z, x_1789.y, x_1789.z, x_1789.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1793 : vec3<bool> = vec3<bool>(x_1792.x, x_1792.y, x_1792.w);
        let x_1794 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1793.x, x_1793.y, x_1794.z, x_1793.z);
        let x_1797 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1797);
        let x_1803 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1803);
        let x_1809 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1809);
        let x_1812 : bool = u_xlatb7.z;
        if (x_1812) {
          let x_1817 : f32 = u_xlat7.y;
          x_1813 = x_1817;
        } else {
          let x_1819 : f32 = u_xlat72;
          x_1813 = x_1819;
        }
        let x_1820 : f32 = x_1813;
        u_xlat72 = x_1820;
        let x_1822 : bool = u_xlatb71;
        if (x_1822) {
          let x_1827 : f32 = u_xlat7.x;
          x_1823 = x_1827;
        } else {
          let x_1829 : f32 = u_xlat72;
          x_1823 = x_1829;
        }
        let x_1830 : f32 = x_1823;
        u_xlat71 = x_1830;
        let x_1831 : i32 = u_xlati68;
        let x_1833 : f32 = x_240.x_AdditionalShadowParams[x_1831].w;
        u_xlat72 = trunc(x_1833);
        let x_1835 : f32 = u_xlat71;
        let x_1836 : f32 = u_xlat72;
        u_xlat71 = (x_1835 + x_1836);
        let x_1838 : f32 = u_xlat71;
        u_xlati70 = i32(x_1838);
      }
      let x_1840 : i32 = u_xlati70;
      u_xlati70 = (x_1840 << bitcast<u32>(2i));
      let x_1842 : vec3<f32> = vs_TEXCOORD1;
      let x_1845 : i32 = u_xlati70;
      let x_1848 : i32 = u_xlati70;
      let x_1852 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1845 + 1i) / 4i)][((x_1848 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1842.y, x_1842.y, x_1842.y, x_1842.y) * x_1852);
      let x_1854 : i32 = u_xlati70;
      let x_1856 : i32 = u_xlati70;
      let x_1859 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[(x_1854 / 4i)][(x_1856 % 4i)];
      let x_1860 : vec3<f32> = vs_TEXCOORD1;
      let x_1863 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1859 * vec4<f32>(x_1860.x, x_1860.x, x_1860.x, x_1860.x)) + x_1863);
      let x_1865 : i32 = u_xlati70;
      let x_1868 : i32 = u_xlati70;
      let x_1872 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1865 + 2i) / 4i)][((x_1868 + 2i) % 4i)];
      let x_1873 : vec3<f32> = vs_TEXCOORD1;
      let x_1876 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1872 * vec4<f32>(x_1873.z, x_1873.z, x_1873.z, x_1873.z)) + x_1876);
      let x_1878 : vec4<f32> = u_xlat7;
      let x_1879 : i32 = u_xlati70;
      let x_1882 : i32 = u_xlati70;
      let x_1886 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1879 + 3i) / 4i)][((x_1882 + 3i) % 4i)];
      u_xlat7 = (x_1878 + x_1886);
      let x_1888 : vec4<f32> = u_xlat7;
      let x_1890 : vec4<f32> = u_xlat7;
      let x_1892 : vec3<f32> = (vec3<f32>(x_1888.x, x_1888.y, x_1888.z) / vec3<f32>(x_1890.w, x_1890.w, x_1890.w));
      let x_1893 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
      let x_1896 : i32 = u_xlati68;
      let x_1898 : f32 = x_240.x_AdditionalShadowParams[x_1896].y;
      u_xlatb70 = (0.0f < x_1898);
      let x_1900 : bool = u_xlatb70;
      if (x_1900) {
        let x_1903 : i32 = u_xlati68;
        let x_1905 : f32 = x_240.x_AdditionalShadowParams[x_1903].y;
        u_xlatb70 = (1.0f == x_1905);
        let x_1907 : bool = u_xlatb70;
        if (x_1907) {
          let x_1910 : vec4<f32> = u_xlat7;
          let x_1914 : vec4<f32> = x_240.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1910.x, x_1910.y, x_1910.x, x_1910.y) + x_1914);
          let x_1917 : vec4<f32> = u_xlat8;
          let x_1918 : vec2<f32> = vec2<f32>(x_1917.x, x_1917.y);
          let x_1920 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
          let x_1928 : vec3<f32> = txVec30;
          let x_1930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
          u_xlat9.x = x_1930;
          let x_1933 : vec4<f32> = u_xlat8;
          let x_1934 : vec2<f32> = vec2<f32>(x_1933.z, x_1933.w);
          let x_1936 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
          let x_1943 : vec3<f32> = txVec31;
          let x_1945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1943.xy, x_1943.z);
          u_xlat9.y = x_1945;
          let x_1947 : vec4<f32> = u_xlat7;
          let x_1951 : vec4<f32> = x_240.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.y) + x_1951);
          let x_1954 : vec4<f32> = u_xlat8;
          let x_1955 : vec2<f32> = vec2<f32>(x_1954.x, x_1954.y);
          let x_1957 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
          let x_1964 : vec3<f32> = txVec32;
          let x_1966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1964.xy, x_1964.z);
          u_xlat9.z = x_1966;
          let x_1969 : vec4<f32> = u_xlat8;
          let x_1970 : vec2<f32> = vec2<f32>(x_1969.z, x_1969.w);
          let x_1972 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
          let x_1979 : vec3<f32> = txVec33;
          let x_1981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1979.xy, x_1979.z);
          u_xlat9.w = x_1981;
          let x_1983 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1983, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1986 : i32 = u_xlati68;
          let x_1988 : f32 = x_240.x_AdditionalShadowParams[x_1986].y;
          u_xlatb71 = (2.0f == x_1988);
          let x_1990 : bool = u_xlatb71;
          if (x_1990) {
            let x_1993 : vec4<f32> = u_xlat7;
            let x_1997 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2000 : vec2<f32> = ((vec2<f32>(x_1993.x, x_1993.y) * vec2<f32>(x_1997.z, x_1997.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2001 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2000.x, x_2000.y, x_2001.z, x_2001.w);
            let x_2003 : vec4<f32> = u_xlat8;
            let x_2005 : vec2<f32> = floor(vec2<f32>(x_2003.x, x_2003.y));
            let x_2006 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2006.w);
            let x_2009 : vec4<f32> = u_xlat7;
            let x_2012 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2015 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2009.x, x_2009.y) * vec2<f32>(x_2012.z, x_2012.w)) + -(vec2<f32>(x_2015.x, x_2015.y)));
            let x_2019 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2019.x, x_2019.x, x_2019.y, x_2019.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2022 : vec4<f32> = u_xlat9;
            let x_2024 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2022.x, x_2022.x, x_2022.z, x_2022.z) * vec4<f32>(x_2024.x, x_2024.x, x_2024.z, x_2024.z));
            let x_2027 : vec4<f32> = u_xlat10;
            let x_2029 : vec2<f32> = (vec2<f32>(x_2027.y, x_2027.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2030 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2029.x, x_2030.y, x_2029.y, x_2030.w);
            let x_2032 : vec4<f32> = u_xlat10;
            let x_2035 : vec2<f32> = u_xlat52;
            let x_2037 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2035));
            let x_2038 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2037.x, x_2037.y, x_2038.z, x_2038.w);
            let x_2041 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2041) + vec2<f32>(1.0f, 1.0f));
            let x_2044 : vec2<f32> = u_xlat52;
            let x_2045 : vec2<f32> = min(x_2044, vec2<f32>(0.0f, 0.0f));
            let x_2046 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2046.w);
            let x_2048 : vec4<f32> = u_xlat11;
            let x_2051 : vec4<f32> = u_xlat11;
            let x_2054 : vec2<f32> = u_xlat54;
            let x_2055 : vec2<f32> = ((-(vec2<f32>(x_2048.x, x_2048.y)) * vec2<f32>(x_2051.x, x_2051.y)) + x_2054);
            let x_2056 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
            let x_2058 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2058, vec2<f32>(0.0f, 0.0f));
            let x_2060 : vec2<f32> = u_xlat52;
            let x_2062 : vec2<f32> = u_xlat52;
            let x_2064 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2060) * x_2062) + vec2<f32>(x_2064.y, x_2064.w));
            let x_2067 : vec4<f32> = u_xlat11;
            let x_2069 : vec2<f32> = (vec2<f32>(x_2067.x, x_2067.y) + vec2<f32>(1.0f, 1.0f));
            let x_2070 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2069.x, x_2069.y, x_2070.z, x_2070.w);
            let x_2072 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2072 + vec2<f32>(1.0f, 1.0f));
            let x_2074 : vec4<f32> = u_xlat10;
            let x_2076 : vec2<f32> = (vec2<f32>(x_2074.x, x_2074.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2077 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
            let x_2079 : vec2<f32> = u_xlat54;
            let x_2080 : vec2<f32> = (x_2079 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2081 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
            let x_2083 : vec4<f32> = u_xlat11;
            let x_2085 : vec2<f32> = (vec2<f32>(x_2083.x, x_2083.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2086 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2085.x, x_2085.y, x_2086.z, x_2086.w);
            let x_2088 : vec2<f32> = u_xlat52;
            let x_2089 : vec2<f32> = (x_2088 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2090 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2089.x, x_2089.y, x_2090.z, x_2090.w);
            let x_2092 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2092.y, x_2092.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2096 : f32 = u_xlat11.x;
            u_xlat12.z = x_2096;
            let x_2099 : f32 = u_xlat52.x;
            u_xlat12.w = x_2099;
            let x_2102 : f32 = u_xlat13.x;
            u_xlat10.z = x_2102;
            let x_2105 : f32 = u_xlat9.x;
            u_xlat10.w = x_2105;
            let x_2107 : vec4<f32> = u_xlat10;
            let x_2109 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2107.z, x_2107.w, x_2107.x, x_2107.z) + vec4<f32>(x_2109.z, x_2109.w, x_2109.x, x_2109.z));
            let x_2113 : f32 = u_xlat12.y;
            u_xlat11.z = x_2113;
            let x_2116 : f32 = u_xlat52.y;
            u_xlat11.w = x_2116;
            let x_2119 : f32 = u_xlat10.y;
            u_xlat13.z = x_2119;
            let x_2122 : f32 = u_xlat9.z;
            u_xlat13.w = x_2122;
            let x_2124 : vec4<f32> = u_xlat11;
            let x_2126 : vec4<f32> = u_xlat13;
            let x_2128 : vec3<f32> = (vec3<f32>(x_2124.z, x_2124.y, x_2124.w) + vec3<f32>(x_2126.z, x_2126.y, x_2126.w));
            let x_2129 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
            let x_2131 : vec4<f32> = u_xlat10;
            let x_2133 : vec4<f32> = u_xlat14;
            let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.z, x_2131.w) / vec3<f32>(x_2133.z, x_2133.w, x_2133.y));
            let x_2136 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
            let x_2138 : vec4<f32> = u_xlat10;
            let x_2140 : vec3<f32> = (vec3<f32>(x_2138.x, x_2138.y, x_2138.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2141 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
            let x_2143 : vec4<f32> = u_xlat13;
            let x_2145 : vec4<f32> = u_xlat9;
            let x_2147 : vec3<f32> = (vec3<f32>(x_2143.z, x_2143.y, x_2143.w) / vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
            let x_2148 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
            let x_2150 : vec4<f32> = u_xlat11;
            let x_2152 : vec3<f32> = (vec3<f32>(x_2150.x, x_2150.y, x_2150.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2153 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
            let x_2155 : vec4<f32> = u_xlat10;
            let x_2158 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2160 : vec3<f32> = (vec3<f32>(x_2155.y, x_2155.x, x_2155.z) * vec3<f32>(x_2158.x, x_2158.x, x_2158.x));
            let x_2161 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
            let x_2163 : vec4<f32> = u_xlat11;
            let x_2166 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2168 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * vec3<f32>(x_2166.y, x_2166.y, x_2166.y));
            let x_2169 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
            let x_2172 : f32 = u_xlat11.x;
            u_xlat10.w = x_2172;
            let x_2174 : vec4<f32> = u_xlat8;
            let x_2177 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2180 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2174.x, x_2174.y, x_2174.x, x_2174.y) * vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y)) + vec4<f32>(x_2180.y, x_2180.w, x_2180.x, x_2180.w));
            let x_2183 : vec4<f32> = u_xlat8;
            let x_2186 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2189 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2183.x, x_2183.y) * vec2<f32>(x_2186.x, x_2186.y)) + vec2<f32>(x_2189.z, x_2189.w));
            let x_2193 : f32 = u_xlat10.y;
            u_xlat11.w = x_2193;
            let x_2195 : vec4<f32> = u_xlat11;
            let x_2196 : vec2<f32> = vec2<f32>(x_2195.y, x_2195.z);
            let x_2197 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2197.x, x_2196.x, x_2197.z, x_2196.y);
            let x_2199 : vec4<f32> = u_xlat8;
            let x_2202 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2205 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2199.x, x_2199.y, x_2199.x, x_2199.y) * vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.y)) + vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2205.y));
            let x_2208 : vec4<f32> = u_xlat8;
            let x_2211 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2214 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2208.x, x_2208.y, x_2208.x, x_2208.y) * vec4<f32>(x_2211.x, x_2211.y, x_2211.x, x_2211.y)) + vec4<f32>(x_2214.w, x_2214.y, x_2214.w, x_2214.z));
            let x_2217 : vec4<f32> = u_xlat8;
            let x_2220 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2223 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2217.x, x_2217.y, x_2217.x, x_2217.y) * vec4<f32>(x_2220.x, x_2220.y, x_2220.x, x_2220.y)) + vec4<f32>(x_2223.x, x_2223.w, x_2223.z, x_2223.w));
            let x_2226 : vec4<f32> = u_xlat9;
            let x_2228 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2226.x, x_2226.x, x_2226.x, x_2226.y) * vec4<f32>(x_2228.z, x_2228.w, x_2228.y, x_2228.z));
            let x_2231 : vec4<f32> = u_xlat9;
            let x_2233 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2231.y, x_2231.y, x_2231.z, x_2231.z) * x_2233);
            let x_2236 : f32 = u_xlat9.z;
            let x_2238 : f32 = u_xlat14.y;
            u_xlat71 = (x_2236 * x_2238);
            let x_2241 : vec4<f32> = u_xlat12;
            let x_2242 : vec2<f32> = vec2<f32>(x_2241.x, x_2241.y);
            let x_2244 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
            let x_2251 : vec3<f32> = txVec34;
            let x_2253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2251.xy, x_2251.z);
            u_xlat72 = x_2253;
            let x_2255 : vec4<f32> = u_xlat12;
            let x_2256 : vec2<f32> = vec2<f32>(x_2255.z, x_2255.w);
            let x_2258 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
            let x_2266 : vec3<f32> = txVec35;
            let x_2268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2266.xy, x_2266.z);
            u_xlat73 = x_2268;
            let x_2269 : f32 = u_xlat73;
            let x_2271 : f32 = u_xlat15.y;
            u_xlat73 = (x_2269 * x_2271);
            let x_2274 : f32 = u_xlat15.x;
            let x_2275 : f32 = u_xlat72;
            let x_2277 : f32 = u_xlat73;
            u_xlat72 = ((x_2274 * x_2275) + x_2277);
            let x_2280 : vec2<f32> = u_xlat52;
            let x_2282 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2280.x, x_2280.y, x_2282);
            let x_2289 : vec3<f32> = txVec36;
            let x_2291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2289.xy, x_2289.z);
            u_xlat73 = x_2291;
            let x_2293 : f32 = u_xlat15.z;
            let x_2294 : f32 = u_xlat73;
            let x_2296 : f32 = u_xlat72;
            u_xlat72 = ((x_2293 * x_2294) + x_2296);
            let x_2299 : vec4<f32> = u_xlat11;
            let x_2300 : vec2<f32> = vec2<f32>(x_2299.x, x_2299.y);
            let x_2302 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2300.x, x_2300.y, x_2302);
            let x_2309 : vec3<f32> = txVec37;
            let x_2311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2309.xy, x_2309.z);
            u_xlat73 = x_2311;
            let x_2313 : f32 = u_xlat15.w;
            let x_2314 : f32 = u_xlat73;
            let x_2316 : f32 = u_xlat72;
            u_xlat72 = ((x_2313 * x_2314) + x_2316);
            let x_2319 : vec4<f32> = u_xlat13;
            let x_2320 : vec2<f32> = vec2<f32>(x_2319.x, x_2319.y);
            let x_2322 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
            let x_2329 : vec3<f32> = txVec38;
            let x_2331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2329.xy, x_2329.z);
            u_xlat73 = x_2331;
            let x_2333 : f32 = u_xlat16.x;
            let x_2334 : f32 = u_xlat73;
            let x_2336 : f32 = u_xlat72;
            u_xlat72 = ((x_2333 * x_2334) + x_2336);
            let x_2339 : vec4<f32> = u_xlat13;
            let x_2340 : vec2<f32> = vec2<f32>(x_2339.z, x_2339.w);
            let x_2342 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
            let x_2349 : vec3<f32> = txVec39;
            let x_2351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
            u_xlat73 = x_2351;
            let x_2353 : f32 = u_xlat16.y;
            let x_2354 : f32 = u_xlat73;
            let x_2356 : f32 = u_xlat72;
            u_xlat72 = ((x_2353 * x_2354) + x_2356);
            let x_2359 : vec4<f32> = u_xlat11;
            let x_2360 : vec2<f32> = vec2<f32>(x_2359.z, x_2359.w);
            let x_2362 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
            let x_2369 : vec3<f32> = txVec40;
            let x_2371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
            u_xlat73 = x_2371;
            let x_2373 : f32 = u_xlat16.z;
            let x_2374 : f32 = u_xlat73;
            let x_2376 : f32 = u_xlat72;
            u_xlat72 = ((x_2373 * x_2374) + x_2376);
            let x_2379 : vec4<f32> = u_xlat10;
            let x_2380 : vec2<f32> = vec2<f32>(x_2379.x, x_2379.y);
            let x_2382 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
            let x_2389 : vec3<f32> = txVec41;
            let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
            u_xlat73 = x_2391;
            let x_2393 : f32 = u_xlat16.w;
            let x_2394 : f32 = u_xlat73;
            let x_2396 : f32 = u_xlat72;
            u_xlat72 = ((x_2393 * x_2394) + x_2396);
            let x_2399 : vec4<f32> = u_xlat10;
            let x_2400 : vec2<f32> = vec2<f32>(x_2399.z, x_2399.w);
            let x_2402 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2400.x, x_2400.y, x_2402);
            let x_2409 : vec3<f32> = txVec42;
            let x_2411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2409.xy, x_2409.z);
            u_xlat73 = x_2411;
            let x_2412 : f32 = u_xlat71;
            let x_2413 : f32 = u_xlat73;
            let x_2415 : f32 = u_xlat72;
            u_xlat70 = ((x_2412 * x_2413) + x_2415);
          } else {
            let x_2418 : vec4<f32> = u_xlat7;
            let x_2421 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2424 : vec2<f32> = ((vec2<f32>(x_2418.x, x_2418.y) * vec2<f32>(x_2421.z, x_2421.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2425 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec4<f32> = u_xlat8;
            let x_2429 : vec2<f32> = floor(vec2<f32>(x_2427.x, x_2427.y));
            let x_2430 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat7;
            let x_2435 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2438 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(x_2435.z, x_2435.w)) + -(vec2<f32>(x_2438.x, x_2438.y)));
            let x_2442 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2442.x, x_2442.x, x_2442.y, x_2442.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2445 : vec4<f32> = u_xlat9;
            let x_2447 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2445.x, x_2445.x, x_2445.z, x_2445.z) * vec4<f32>(x_2447.x, x_2447.x, x_2447.z, x_2447.z));
            let x_2450 : vec4<f32> = u_xlat10;
            let x_2452 : vec2<f32> = (vec2<f32>(x_2450.y, x_2450.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2453 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2453.x, x_2452.x, x_2453.z, x_2452.y);
            let x_2455 : vec4<f32> = u_xlat10;
            let x_2458 : vec2<f32> = u_xlat52;
            let x_2460 : vec2<f32> = ((vec2<f32>(x_2455.x, x_2455.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2458));
            let x_2461 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2460.x, x_2461.y, x_2460.y, x_2461.w);
            let x_2463 : vec2<f32> = u_xlat52;
            let x_2465 : vec2<f32> = (-(x_2463) + vec2<f32>(1.0f, 1.0f));
            let x_2466 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2465.x, x_2465.y, x_2466.z, x_2466.w);
            let x_2468 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2468, vec2<f32>(0.0f, 0.0f));
            let x_2470 : vec2<f32> = u_xlat54;
            let x_2472 : vec2<f32> = u_xlat54;
            let x_2474 : vec4<f32> = u_xlat10;
            let x_2476 : vec2<f32> = ((-(x_2470) * x_2472) + vec2<f32>(x_2474.x, x_2474.y));
            let x_2477 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2479, vec2<f32>(0.0f, 0.0f));
            let x_2482 : vec2<f32> = u_xlat54;
            let x_2484 : vec2<f32> = u_xlat54;
            let x_2486 : vec4<f32> = u_xlat9;
            let x_2488 : vec2<f32> = ((-(x_2482) * x_2484) + vec2<f32>(x_2486.y, x_2486.w));
            let x_2489 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2488.x, x_2489.y, x_2488.y);
            let x_2491 : vec4<f32> = u_xlat10;
            let x_2493 : vec2<f32> = (vec2<f32>(x_2491.x, x_2491.y) + vec2<f32>(2.0f, 2.0f));
            let x_2494 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
            let x_2496 : vec3<f32> = u_xlat31;
            let x_2498 : vec2<f32> = (vec2<f32>(x_2496.x, x_2496.z) + vec2<f32>(2.0f, 2.0f));
            let x_2499 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2499.x, x_2498.x, x_2499.z, x_2498.y);
            let x_2502 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2502 * 0.08163200318813323975f);
            let x_2505 : vec4<f32> = u_xlat9;
            let x_2507 : vec3<f32> = (vec3<f32>(x_2505.z, x_2505.x, x_2505.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2508 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat10;
            let x_2512 : vec2<f32> = (vec2<f32>(x_2510.x, x_2510.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2513 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
            let x_2516 : f32 = u_xlat13.y;
            u_xlat12.x = x_2516;
            let x_2518 : vec2<f32> = u_xlat52;
            let x_2521 : vec2<f32> = ((vec2<f32>(x_2518.x, x_2518.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2522 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2522.x, x_2521.x, x_2522.z, x_2521.y);
            let x_2524 : vec2<f32> = u_xlat52;
            let x_2527 : vec2<f32> = ((vec2<f32>(x_2524.x, x_2524.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2528 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2527.x, x_2528.y, x_2527.y, x_2528.w);
            let x_2531 : f32 = u_xlat9.x;
            u_xlat10.y = x_2531;
            let x_2534 : f32 = u_xlat11.y;
            u_xlat10.w = x_2534;
            let x_2536 : vec4<f32> = u_xlat10;
            let x_2537 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2536 + x_2537);
            let x_2539 : vec2<f32> = u_xlat52;
            let x_2542 : vec2<f32> = ((vec2<f32>(x_2539.y, x_2539.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2543.x, x_2542.x, x_2543.z, x_2542.y);
            let x_2545 : vec2<f32> = u_xlat52;
            let x_2548 : vec2<f32> = ((vec2<f32>(x_2545.y, x_2545.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2549 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2548.x, x_2549.y, x_2548.y, x_2549.w);
            let x_2552 : f32 = u_xlat9.y;
            u_xlat11.y = x_2552;
            let x_2554 : vec4<f32> = u_xlat11;
            let x_2555 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2554 + x_2555);
            let x_2557 : vec4<f32> = u_xlat10;
            let x_2558 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2557 / x_2558);
            let x_2560 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2560 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2562 : vec4<f32> = u_xlat11;
            let x_2563 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2562 / x_2563);
            let x_2565 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2565 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2567 : vec4<f32> = u_xlat10;
            let x_2570 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2567.w, x_2567.x, x_2567.y, x_2567.z) * vec4<f32>(x_2570.x, x_2570.x, x_2570.x, x_2570.x));
            let x_2573 : vec4<f32> = u_xlat11;
            let x_2576 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2573.x, x_2573.w, x_2573.y, x_2573.z) * vec4<f32>(x_2576.y, x_2576.y, x_2576.y, x_2576.y));
            let x_2579 : vec4<f32> = u_xlat10;
            let x_2580 : vec3<f32> = vec3<f32>(x_2579.y, x_2579.z, x_2579.w);
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2580.x, x_2581.y, x_2580.y, x_2580.z);
            let x_2584 : f32 = u_xlat11.x;
            u_xlat13.y = x_2584;
            let x_2586 : vec4<f32> = u_xlat8;
            let x_2589 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2592 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2586.x, x_2586.y, x_2586.x, x_2586.y) * vec4<f32>(x_2589.x, x_2589.y, x_2589.x, x_2589.y)) + vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2592.y));
            let x_2595 : vec4<f32> = u_xlat8;
            let x_2598 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2595.x, x_2595.y) * vec2<f32>(x_2598.x, x_2598.y)) + vec2<f32>(x_2601.w, x_2601.y));
            let x_2605 : f32 = u_xlat13.y;
            u_xlat10.y = x_2605;
            let x_2608 : f32 = u_xlat11.z;
            u_xlat13.y = x_2608;
            let x_2610 : vec4<f32> = u_xlat8;
            let x_2613 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) * vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y)) + vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2616.y));
            let x_2619 : vec4<f32> = u_xlat8;
            let x_2622 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat13;
            let x_2627 : vec2<f32> = ((vec2<f32>(x_2619.x, x_2619.y) * vec2<f32>(x_2622.x, x_2622.y)) + vec2<f32>(x_2625.w, x_2625.y));
            let x_2628 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2631 : f32 = u_xlat13.y;
            u_xlat10.z = x_2631;
            let x_2633 : vec4<f32> = u_xlat8;
            let x_2636 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2639 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.y) * vec4<f32>(x_2636.x, x_2636.y, x_2636.x, x_2636.y)) + vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.z));
            let x_2643 : f32 = u_xlat11.w;
            u_xlat13.y = x_2643;
            let x_2646 : vec4<f32> = u_xlat8;
            let x_2649 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2652 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.y) * vec4<f32>(x_2649.x, x_2649.y, x_2649.x, x_2649.y)) + vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2652.y));
            let x_2656 : vec4<f32> = u_xlat8;
            let x_2659 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2662 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(x_2659.x, x_2659.y)) + vec2<f32>(x_2662.w, x_2662.y));
            let x_2666 : f32 = u_xlat13.y;
            u_xlat10.w = x_2666;
            let x_2669 : vec4<f32> = u_xlat8;
            let x_2672 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2675 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2669.x, x_2669.y) * vec2<f32>(x_2672.x, x_2672.y)) + vec2<f32>(x_2675.x, x_2675.w));
            let x_2678 : vec4<f32> = u_xlat13;
            let x_2679 : vec3<f32> = vec3<f32>(x_2678.x, x_2678.z, x_2678.w);
            let x_2680 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2679.x, x_2680.y, x_2679.y, x_2679.z);
            let x_2682 : vec4<f32> = u_xlat8;
            let x_2685 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2682.x, x_2682.y, x_2682.x, x_2682.y) * vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y)) + vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2688.y));
            let x_2692 : vec4<f32> = u_xlat8;
            let x_2695 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2698 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2692.x, x_2692.y) * vec2<f32>(x_2695.x, x_2695.y)) + vec2<f32>(x_2698.w, x_2698.y));
            let x_2702 : f32 = u_xlat10.x;
            u_xlat11.x = x_2702;
            let x_2704 : vec4<f32> = u_xlat8;
            let x_2707 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2710 : vec4<f32> = u_xlat11;
            let x_2712 : vec2<f32> = ((vec2<f32>(x_2704.x, x_2704.y) * vec2<f32>(x_2707.x, x_2707.y)) + vec2<f32>(x_2710.x, x_2710.y));
            let x_2713 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
            let x_2716 : vec4<f32> = u_xlat9;
            let x_2718 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2716.x, x_2716.x, x_2716.x, x_2716.x) * x_2718);
            let x_2721 : vec4<f32> = u_xlat9;
            let x_2723 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2721.y, x_2721.y, x_2721.y, x_2721.y) * x_2723);
            let x_2726 : vec4<f32> = u_xlat9;
            let x_2728 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2726.z, x_2726.z, x_2726.z, x_2726.z) * x_2728);
            let x_2730 : vec4<f32> = u_xlat9;
            let x_2732 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2730.w, x_2730.w, x_2730.w, x_2730.w) * x_2732);
            let x_2735 : vec4<f32> = u_xlat14;
            let x_2736 : vec2<f32> = vec2<f32>(x_2735.x, x_2735.y);
            let x_2738 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2736.x, x_2736.y, x_2738);
            let x_2745 : vec3<f32> = txVec43;
            let x_2747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2745.xy, x_2745.z);
            u_xlat71 = x_2747;
            let x_2749 : vec4<f32> = u_xlat14;
            let x_2750 : vec2<f32> = vec2<f32>(x_2749.z, x_2749.w);
            let x_2752 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2759 : vec3<f32> = txVec44;
            let x_2761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
            u_xlat72 = x_2761;
            let x_2762 : f32 = u_xlat72;
            let x_2764 : f32 = u_xlat19.y;
            u_xlat72 = (x_2762 * x_2764);
            let x_2767 : f32 = u_xlat19.x;
            let x_2768 : f32 = u_xlat71;
            let x_2770 : f32 = u_xlat72;
            u_xlat71 = ((x_2767 * x_2768) + x_2770);
            let x_2773 : vec2<f32> = u_xlat52;
            let x_2775 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec45;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat72 = x_2784;
            let x_2786 : f32 = u_xlat19.z;
            let x_2787 : f32 = u_xlat72;
            let x_2789 : f32 = u_xlat71;
            u_xlat71 = ((x_2786 * x_2787) + x_2789);
            let x_2792 : vec4<f32> = u_xlat17;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.x, x_2792.y);
            let x_2795 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec46;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat72 = x_2804;
            let x_2806 : f32 = u_xlat19.w;
            let x_2807 : f32 = u_xlat72;
            let x_2809 : f32 = u_xlat71;
            u_xlat71 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat15;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.x, x_2812.y);
            let x_2815 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec47;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat72 = x_2824;
            let x_2826 : f32 = u_xlat20.x;
            let x_2827 : f32 = u_xlat72;
            let x_2829 : f32 = u_xlat71;
            u_xlat71 = ((x_2826 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat15;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.z, x_2832.w);
            let x_2835 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec48;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat72 = x_2844;
            let x_2846 : f32 = u_xlat20.y;
            let x_2847 : f32 = u_xlat72;
            let x_2849 : f32 = u_xlat71;
            u_xlat71 = ((x_2846 * x_2847) + x_2849);
            let x_2852 : vec4<f32> = u_xlat16;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.x, x_2852.y);
            let x_2855 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec49;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat72 = x_2864;
            let x_2866 : f32 = u_xlat20.z;
            let x_2867 : f32 = u_xlat72;
            let x_2869 : f32 = u_xlat71;
            u_xlat71 = ((x_2866 * x_2867) + x_2869);
            let x_2872 : vec4<f32> = u_xlat17;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.z, x_2872.w);
            let x_2875 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec50;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat72 = x_2884;
            let x_2886 : f32 = u_xlat20.w;
            let x_2887 : f32 = u_xlat72;
            let x_2889 : f32 = u_xlat71;
            u_xlat71 = ((x_2886 * x_2887) + x_2889);
            let x_2892 : vec4<f32> = u_xlat18;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.x, x_2892.y);
            let x_2895 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec51;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat72 = x_2904;
            let x_2906 : f32 = u_xlat21.x;
            let x_2907 : f32 = u_xlat72;
            let x_2909 : f32 = u_xlat71;
            u_xlat71 = ((x_2906 * x_2907) + x_2909);
            let x_2912 : vec4<f32> = u_xlat18;
            let x_2913 : vec2<f32> = vec2<f32>(x_2912.z, x_2912.w);
            let x_2915 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
            let x_2922 : vec3<f32> = txVec52;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat72 = x_2924;
            let x_2926 : f32 = u_xlat21.y;
            let x_2927 : f32 = u_xlat72;
            let x_2929 : f32 = u_xlat71;
            u_xlat71 = ((x_2926 * x_2927) + x_2929);
            let x_2932 : vec2<f32> = u_xlat32;
            let x_2934 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec53;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat72 = x_2943;
            let x_2945 : f32 = u_xlat21.z;
            let x_2946 : f32 = u_xlat72;
            let x_2948 : f32 = u_xlat71;
            u_xlat71 = ((x_2945 * x_2946) + x_2948);
            let x_2951 : vec2<f32> = u_xlat60;
            let x_2953 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec54;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat72 = x_2962;
            let x_2964 : f32 = u_xlat21.w;
            let x_2965 : f32 = u_xlat72;
            let x_2967 : f32 = u_xlat71;
            u_xlat71 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.x, x_2970.y);
            let x_2973 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec55;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat72 = x_2982;
            let x_2984 : f32 = u_xlat9.x;
            let x_2985 : f32 = u_xlat72;
            let x_2987 : f32 = u_xlat71;
            u_xlat71 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.z, x_2990.w);
            let x_2993 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec56;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat72 = x_3002;
            let x_3004 : f32 = u_xlat9.y;
            let x_3005 : f32 = u_xlat72;
            let x_3007 : f32 = u_xlat71;
            u_xlat71 = ((x_3004 * x_3005) + x_3007);
            let x_3010 : vec2<f32> = u_xlat55;
            let x_3012 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec57;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat72 = x_3021;
            let x_3023 : f32 = u_xlat9.z;
            let x_3024 : f32 = u_xlat72;
            let x_3026 : f32 = u_xlat71;
            u_xlat71 = ((x_3023 * x_3024) + x_3026);
            let x_3029 : vec4<f32> = u_xlat8;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec58;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat72 = x_3041;
            let x_3043 : f32 = u_xlat9.w;
            let x_3044 : f32 = u_xlat72;
            let x_3046 : f32 = u_xlat71;
            u_xlat70 = ((x_3043 * x_3044) + x_3046);
          }
        }
      } else {
        let x_3050 : vec4<f32> = u_xlat7;
        let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
        let x_3053 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
        let x_3060 : vec3<f32> = txVec59;
        let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
        u_xlat70 = x_3062;
      }
      let x_3063 : i32 = u_xlati68;
      let x_3065 : f32 = x_240.x_AdditionalShadowParams[x_3063].x;
      u_xlat71 = (1.0f + -(x_3065));
      let x_3068 : f32 = u_xlat70;
      let x_3069 : i32 = u_xlati68;
      let x_3071 : f32 = x_240.x_AdditionalShadowParams[x_3069].x;
      let x_3073 : f32 = u_xlat71;
      u_xlat70 = ((x_3068 * x_3071) + x_3073);
      let x_3076 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3076);
      let x_3080 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3080 >= 1.0f);
      let x_3082 : bool = u_xlatb71;
      let x_3083 : bool = u_xlatb72;
      u_xlatb71 = (x_3082 | x_3083);
      let x_3085 : bool = u_xlatb71;
      let x_3086 : f32 = u_xlat70;
      u_xlat70 = select(x_3086, 1.0f, x_3085);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3089 : f32 = u_xlat70;
    u_xlat71 = (-(x_3089) + 1.0f);
    let x_3092 : f32 = u_xlat66;
    let x_3093 : f32 = u_xlat71;
    let x_3095 : f32 = u_xlat70;
    u_xlat70 = ((x_3092 * x_3093) + x_3095);
    let x_3097 : f32 = u_xlat69;
    let x_3098 : f32 = u_xlat70;
    u_xlat69 = (x_3097 * x_3098);
    let x_3100 : f32 = u_xlat69;
    let x_3102 : i32 = u_xlati68;
    let x_3104 : vec4<f32> = x_1672.x_AdditionalLightsColor[x_3102];
    let x_3106 : vec3<f32> = (vec3<f32>(x_3100, x_3100, x_3100) * vec3<f32>(x_3104.x, x_3104.y, x_3104.z));
    let x_3107 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3107.w);
    let x_3109 : vec4<f32> = u_xlat2;
    let x_3111 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3109.x, x_3109.y, x_3109.z), vec3<f32>(x_3111.x, x_3111.y, x_3111.z));
    let x_3114 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3114, 0.0f, 1.0f);
    let x_3116 : f32 = u_xlat68;
    let x_3118 : vec4<f32> = u_xlat7;
    let x_3120 : vec3<f32> = (vec3<f32>(x_3116, x_3116, x_3116) * vec3<f32>(x_3118.x, x_3118.y, x_3118.z));
    let x_3121 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
    let x_3123 : vec4<f32> = u_xlat6;
    let x_3125 : vec4<f32> = u_xlat1;
    let x_3128 : vec4<f32> = u_xlat5;
    let x_3130 : vec3<f32> = ((vec3<f32>(x_3123.x, x_3123.y, x_3123.z) * vec3<f32>(x_3125.y, x_3125.z, x_3125.w)) + vec3<f32>(x_3128.x, x_3128.y, x_3128.z));
    let x_3131 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);

    continuing {
      let x_3133 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3133 + bitcast<u32>(1i));
    }
  }
  let x_3135 : vec3<f32> = u_xlat3;
  let x_3136 : vec4<f32> = u_xlat1;
  let x_3139 : vec4<f32> = u_xlat4;
  let x_3141 : vec3<f32> = ((x_3135 * vec3<f32>(x_3136.y, x_3136.z, x_3136.w)) + vec3<f32>(x_3139.x, x_3139.y, x_3139.z));
  let x_3142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
  let x_3146 : vec4<f32> = u_xlat5;
  let x_3148 : vec4<f32> = u_xlat1;
  let x_3150 : vec3<f32> = (vec3<f32>(x_3146.x, x_3146.y, x_3146.z) + vec3<f32>(x_3148.x, x_3148.y, x_3148.z));
  let x_3151 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3151.w);
  let x_3154 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3154 == 1.0f);
  let x_3156 : bool = u_xlatb22;
  let x_3157 : bool = u_xlatb44;
  u_xlatb22 = (x_3156 | x_3157);
  let x_3159 : bool = u_xlatb22;
  if (x_3159) {
    let x_3164 : f32 = u_xlat0.x;
    x_3160 = x_3164;
  } else {
    x_3160 = 1.0f;
  }
  let x_3166 : f32 = x_3160;
  SV_Target0.w = x_3166;
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


