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

@group(1) @binding(1) var<uniform> x_1679 : AdditionalLights;

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
  var x_1820 : f32;
  var x_1830 : f32;
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
  var x_3174 : f32;
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
  let x_1597 : vec4<f32> = u_xlat0;
  let x_1599 : vec4<f32> = u_xlat4;
  let x_1601 : vec3<f32> = (vec3<f32>(x_1597.x, x_1597.x, x_1597.x) * vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
  let x_1605 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1607 : f32 = x_156.unity_LightData.y;
  u_xlat22 = min(x_1605, x_1607);
  let x_1611 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1611));
  let x_1614 : f32 = u_xlat66;
  let x_1617 : f32 = x_240.x_AdditionalShadowFadeParams.x;
  let x_1620 : f32 = x_240.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1614 * x_1617) + x_1620);
  let x_1622 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1622, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1634 : u32 = u_xlatu_loop_1;
    let x_1635 : u32 = u_xlatu22;
    if ((x_1634 < x_1635)) {
    } else {
      break;
    }
    let x_1638 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1638 >> 2u);
    let x_1642 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1642 & 3u));
    let x_1645 : u32 = u_xlatu68;
    let x_1648 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_1645)];
    let x_1658 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1663 : vec4<u32> = indexable[x_1658];
    u_xlat68 = dot(x_1648, bitcast<vec4<f32>>(x_1663));
    let x_1667 : f32 = u_xlat68;
    u_xlati68 = i32(x_1667);
    let x_1669 : vec3<f32> = vs_TEXCOORD1;
    let x_1680 : i32 = u_xlati68;
    let x_1682 : vec4<f32> = x_1679.x_AdditionalLightsPosition[x_1680];
    let x_1685 : i32 = u_xlati68;
    let x_1687 : vec4<f32> = x_1679.x_AdditionalLightsPosition[x_1685];
    let x_1689 : vec3<f32> = ((-(x_1669) * vec3<f32>(x_1682.w, x_1682.w, x_1682.w)) + vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
    let x_1690 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
    let x_1693 : vec4<f32> = u_xlat6;
    let x_1695 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1693.x, x_1693.y, x_1693.z), vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
    let x_1698 : f32 = u_xlat69;
    u_xlat69 = max(x_1698, 0.00006103515625f);
    let x_1702 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1702);
    let x_1704 : f32 = u_xlat70;
    let x_1706 : vec4<f32> = u_xlat6;
    let x_1708 : vec3<f32> = (vec3<f32>(x_1704, x_1704, x_1704) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
    let x_1709 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
    let x_1711 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1711);
    let x_1713 : f32 = u_xlat69;
    let x_1714 : i32 = u_xlati68;
    let x_1716 : f32 = x_1679.x_AdditionalLightsAttenuation[x_1714].x;
    u_xlat69 = (x_1713 * x_1716);
    let x_1718 : f32 = u_xlat69;
    let x_1720 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1718) * x_1720) + 1.0f);
    let x_1723 : f32 = u_xlat69;
    u_xlat69 = max(x_1723, 0.0f);
    let x_1725 : f32 = u_xlat69;
    let x_1726 : f32 = u_xlat69;
    u_xlat69 = (x_1725 * x_1726);
    let x_1728 : f32 = u_xlat69;
    let x_1729 : f32 = u_xlat70;
    u_xlat69 = (x_1728 * x_1729);
    let x_1731 : i32 = u_xlati68;
    let x_1733 : vec4<f32> = x_1679.x_AdditionalLightsSpotDir[x_1731];
    let x_1735 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1733.x, x_1733.y, x_1733.z), vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1738 : f32 = u_xlat70;
    let x_1739 : i32 = u_xlati68;
    let x_1741 : f32 = x_1679.x_AdditionalLightsAttenuation[x_1739].z;
    let x_1743 : i32 = u_xlati68;
    let x_1745 : f32 = x_1679.x_AdditionalLightsAttenuation[x_1743].w;
    u_xlat70 = ((x_1738 * x_1741) + x_1745);
    let x_1747 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1747, 0.0f, 1.0f);
    let x_1749 : f32 = u_xlat70;
    let x_1750 : f32 = u_xlat70;
    u_xlat70 = (x_1749 * x_1750);
    let x_1752 : f32 = u_xlat69;
    let x_1753 : f32 = u_xlat70;
    u_xlat69 = (x_1752 * x_1753);
    let x_1757 : i32 = u_xlati68;
    let x_1759 : f32 = x_240.x_AdditionalShadowParams[x_1757].w;
    u_xlati70 = i32(x_1759);
    let x_1762 : i32 = u_xlati70;
    u_xlatb71 = (x_1762 >= 0i);
    let x_1764 : bool = u_xlatb71;
    if (x_1764) {
      let x_1768 : i32 = u_xlati68;
      let x_1770 : f32 = x_240.x_AdditionalShadowParams[x_1768].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1770, x_1770, x_1770, x_1770))));
      let x_1775 : bool = u_xlatb71;
      if (x_1775) {
        let x_1780 : vec4<f32> = u_xlat6;
        let x_1783 : vec4<f32> = u_xlat6;
        let x_1786 : vec4<bool> = (abs(vec4<f32>(x_1780.z, x_1780.z, x_1780.y, x_1780.z)) >= abs(vec4<f32>(x_1783.x, x_1783.y, x_1783.x, x_1783.x)));
        let x_1788 : vec3<bool> = vec3<bool>(x_1786.x, x_1786.y, x_1786.z);
        let x_1789 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
        let x_1792 : bool = u_xlatb7.y;
        let x_1794 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1792 & x_1794);
        let x_1796 : vec4<f32> = u_xlat6;
        let x_1799 : vec4<bool> = (-(vec4<f32>(x_1796.z, x_1796.y, x_1796.z, x_1796.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1800 : vec3<bool> = vec3<bool>(x_1799.x, x_1799.y, x_1799.w);
        let x_1801 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1800.x, x_1800.y, x_1801.z, x_1800.z);
        let x_1804 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1804);
        let x_1810 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1810);
        let x_1816 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1816);
        let x_1819 : bool = u_xlatb7.z;
        if (x_1819) {
          let x_1824 : f32 = u_xlat7.y;
          x_1820 = x_1824;
        } else {
          let x_1826 : f32 = u_xlat72;
          x_1820 = x_1826;
        }
        let x_1827 : f32 = x_1820;
        u_xlat72 = x_1827;
        let x_1829 : bool = u_xlatb71;
        if (x_1829) {
          let x_1834 : f32 = u_xlat7.x;
          x_1830 = x_1834;
        } else {
          let x_1836 : f32 = u_xlat72;
          x_1830 = x_1836;
        }
        let x_1837 : f32 = x_1830;
        u_xlat71 = x_1837;
        let x_1838 : i32 = u_xlati68;
        let x_1840 : f32 = x_240.x_AdditionalShadowParams[x_1838].w;
        u_xlat72 = trunc(x_1840);
        let x_1842 : f32 = u_xlat71;
        let x_1843 : f32 = u_xlat72;
        u_xlat71 = (x_1842 + x_1843);
        let x_1845 : f32 = u_xlat71;
        u_xlati70 = i32(x_1845);
      }
      let x_1847 : i32 = u_xlati70;
      u_xlati70 = (x_1847 << bitcast<u32>(2i));
      let x_1849 : vec3<f32> = vs_TEXCOORD1;
      let x_1852 : i32 = u_xlati70;
      let x_1855 : i32 = u_xlati70;
      let x_1859 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1852 + 1i) / 4i)][((x_1855 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1849.y, x_1849.y, x_1849.y, x_1849.y) * x_1859);
      let x_1861 : i32 = u_xlati70;
      let x_1863 : i32 = u_xlati70;
      let x_1866 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[(x_1861 / 4i)][(x_1863 % 4i)];
      let x_1867 : vec3<f32> = vs_TEXCOORD1;
      let x_1870 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1866 * vec4<f32>(x_1867.x, x_1867.x, x_1867.x, x_1867.x)) + x_1870);
      let x_1872 : i32 = u_xlati70;
      let x_1875 : i32 = u_xlati70;
      let x_1879 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1872 + 2i) / 4i)][((x_1875 + 2i) % 4i)];
      let x_1880 : vec3<f32> = vs_TEXCOORD1;
      let x_1883 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1879 * vec4<f32>(x_1880.z, x_1880.z, x_1880.z, x_1880.z)) + x_1883);
      let x_1885 : vec4<f32> = u_xlat7;
      let x_1886 : i32 = u_xlati70;
      let x_1889 : i32 = u_xlati70;
      let x_1893 : vec4<f32> = x_240.x_AdditionalLightsWorldToShadow[((x_1886 + 3i) / 4i)][((x_1889 + 3i) % 4i)];
      u_xlat7 = (x_1885 + x_1893);
      let x_1895 : vec4<f32> = u_xlat7;
      let x_1897 : vec4<f32> = u_xlat7;
      let x_1899 : vec3<f32> = (vec3<f32>(x_1895.x, x_1895.y, x_1895.z) / vec3<f32>(x_1897.w, x_1897.w, x_1897.w));
      let x_1900 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
      let x_1903 : i32 = u_xlati68;
      let x_1905 : f32 = x_240.x_AdditionalShadowParams[x_1903].y;
      u_xlatb70 = (0.0f < x_1905);
      let x_1907 : bool = u_xlatb70;
      if (x_1907) {
        let x_1910 : i32 = u_xlati68;
        let x_1912 : f32 = x_240.x_AdditionalShadowParams[x_1910].y;
        u_xlatb70 = (1.0f == x_1912);
        let x_1914 : bool = u_xlatb70;
        if (x_1914) {
          let x_1917 : vec4<f32> = u_xlat7;
          let x_1921 : vec4<f32> = x_240.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1917.x, x_1917.y, x_1917.x, x_1917.y) + x_1921);
          let x_1924 : vec4<f32> = u_xlat8;
          let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
          let x_1927 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
          let x_1935 : vec3<f32> = txVec30;
          let x_1937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1935.xy, x_1935.z);
          u_xlat9.x = x_1937;
          let x_1940 : vec4<f32> = u_xlat8;
          let x_1941 : vec2<f32> = vec2<f32>(x_1940.z, x_1940.w);
          let x_1943 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
          let x_1950 : vec3<f32> = txVec31;
          let x_1952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
          u_xlat9.y = x_1952;
          let x_1954 : vec4<f32> = u_xlat7;
          let x_1958 : vec4<f32> = x_240.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1954.x, x_1954.y, x_1954.x, x_1954.y) + x_1958);
          let x_1961 : vec4<f32> = u_xlat8;
          let x_1962 : vec2<f32> = vec2<f32>(x_1961.x, x_1961.y);
          let x_1964 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
          let x_1971 : vec3<f32> = txVec32;
          let x_1973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
          u_xlat9.z = x_1973;
          let x_1976 : vec4<f32> = u_xlat8;
          let x_1977 : vec2<f32> = vec2<f32>(x_1976.z, x_1976.w);
          let x_1979 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
          let x_1986 : vec3<f32> = txVec33;
          let x_1988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1986.xy, x_1986.z);
          u_xlat9.w = x_1988;
          let x_1990 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1990, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1993 : i32 = u_xlati68;
          let x_1995 : f32 = x_240.x_AdditionalShadowParams[x_1993].y;
          u_xlatb71 = (2.0f == x_1995);
          let x_1997 : bool = u_xlatb71;
          if (x_1997) {
            let x_2000 : vec4<f32> = u_xlat7;
            let x_2004 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2007 : vec2<f32> = ((vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(x_2004.z, x_2004.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2008 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
            let x_2010 : vec4<f32> = u_xlat8;
            let x_2012 : vec2<f32> = floor(vec2<f32>(x_2010.x, x_2010.y));
            let x_2013 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2012.x, x_2012.y, x_2013.z, x_2013.w);
            let x_2016 : vec4<f32> = u_xlat7;
            let x_2019 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2022 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2016.x, x_2016.y) * vec2<f32>(x_2019.z, x_2019.w)) + -(vec2<f32>(x_2022.x, x_2022.y)));
            let x_2026 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2026.x, x_2026.x, x_2026.y, x_2026.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2029 : vec4<f32> = u_xlat9;
            let x_2031 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2029.x, x_2029.x, x_2029.z, x_2029.z) * vec4<f32>(x_2031.x, x_2031.x, x_2031.z, x_2031.z));
            let x_2034 : vec4<f32> = u_xlat10;
            let x_2036 : vec2<f32> = (vec2<f32>(x_2034.y, x_2034.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2037 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2036.x, x_2037.y, x_2036.y, x_2037.w);
            let x_2039 : vec4<f32> = u_xlat10;
            let x_2042 : vec2<f32> = u_xlat52;
            let x_2044 : vec2<f32> = ((vec2<f32>(x_2039.x, x_2039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2042));
            let x_2045 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2044.x, x_2044.y, x_2045.z, x_2045.w);
            let x_2048 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2048) + vec2<f32>(1.0f, 1.0f));
            let x_2051 : vec2<f32> = u_xlat52;
            let x_2052 : vec2<f32> = min(x_2051, vec2<f32>(0.0f, 0.0f));
            let x_2053 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2052.x, x_2052.y, x_2053.z, x_2053.w);
            let x_2055 : vec4<f32> = u_xlat11;
            let x_2058 : vec4<f32> = u_xlat11;
            let x_2061 : vec2<f32> = u_xlat54;
            let x_2062 : vec2<f32> = ((-(vec2<f32>(x_2055.x, x_2055.y)) * vec2<f32>(x_2058.x, x_2058.y)) + x_2061);
            let x_2063 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2062.x, x_2062.y, x_2063.z, x_2063.w);
            let x_2065 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2065, vec2<f32>(0.0f, 0.0f));
            let x_2067 : vec2<f32> = u_xlat52;
            let x_2069 : vec2<f32> = u_xlat52;
            let x_2071 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2067) * x_2069) + vec2<f32>(x_2071.y, x_2071.w));
            let x_2074 : vec4<f32> = u_xlat11;
            let x_2076 : vec2<f32> = (vec2<f32>(x_2074.x, x_2074.y) + vec2<f32>(1.0f, 1.0f));
            let x_2077 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
            let x_2079 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2079 + vec2<f32>(1.0f, 1.0f));
            let x_2081 : vec4<f32> = u_xlat10;
            let x_2083 : vec2<f32> = (vec2<f32>(x_2081.x, x_2081.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2084 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2083.x, x_2083.y, x_2084.z, x_2084.w);
            let x_2086 : vec2<f32> = u_xlat54;
            let x_2087 : vec2<f32> = (x_2086 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2088 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2087.x, x_2087.y, x_2088.z, x_2088.w);
            let x_2090 : vec4<f32> = u_xlat11;
            let x_2092 : vec2<f32> = (vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2093 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2092.x, x_2092.y, x_2093.z, x_2093.w);
            let x_2095 : vec2<f32> = u_xlat52;
            let x_2096 : vec2<f32> = (x_2095 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2097 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2096.x, x_2096.y, x_2097.z, x_2097.w);
            let x_2099 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2099.y, x_2099.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2103 : f32 = u_xlat11.x;
            u_xlat12.z = x_2103;
            let x_2106 : f32 = u_xlat52.x;
            u_xlat12.w = x_2106;
            let x_2109 : f32 = u_xlat13.x;
            u_xlat10.z = x_2109;
            let x_2112 : f32 = u_xlat9.x;
            u_xlat10.w = x_2112;
            let x_2114 : vec4<f32> = u_xlat10;
            let x_2116 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2114.z, x_2114.w, x_2114.x, x_2114.z) + vec4<f32>(x_2116.z, x_2116.w, x_2116.x, x_2116.z));
            let x_2120 : f32 = u_xlat12.y;
            u_xlat11.z = x_2120;
            let x_2123 : f32 = u_xlat52.y;
            u_xlat11.w = x_2123;
            let x_2126 : f32 = u_xlat10.y;
            u_xlat13.z = x_2126;
            let x_2129 : f32 = u_xlat9.z;
            u_xlat13.w = x_2129;
            let x_2131 : vec4<f32> = u_xlat11;
            let x_2133 : vec4<f32> = u_xlat13;
            let x_2135 : vec3<f32> = (vec3<f32>(x_2131.z, x_2131.y, x_2131.w) + vec3<f32>(x_2133.z, x_2133.y, x_2133.w));
            let x_2136 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
            let x_2138 : vec4<f32> = u_xlat10;
            let x_2140 : vec4<f32> = u_xlat14;
            let x_2142 : vec3<f32> = (vec3<f32>(x_2138.x, x_2138.z, x_2138.w) / vec3<f32>(x_2140.z, x_2140.w, x_2140.y));
            let x_2143 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
            let x_2145 : vec4<f32> = u_xlat10;
            let x_2147 : vec3<f32> = (vec3<f32>(x_2145.x, x_2145.y, x_2145.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2148 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
            let x_2150 : vec4<f32> = u_xlat13;
            let x_2152 : vec4<f32> = u_xlat9;
            let x_2154 : vec3<f32> = (vec3<f32>(x_2150.z, x_2150.y, x_2150.w) / vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
            let x_2155 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
            let x_2157 : vec4<f32> = u_xlat11;
            let x_2159 : vec3<f32> = (vec3<f32>(x_2157.x, x_2157.y, x_2157.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2160 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
            let x_2162 : vec4<f32> = u_xlat10;
            let x_2165 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2167 : vec3<f32> = (vec3<f32>(x_2162.y, x_2162.x, x_2162.z) * vec3<f32>(x_2165.x, x_2165.x, x_2165.x));
            let x_2168 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
            let x_2170 : vec4<f32> = u_xlat11;
            let x_2173 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2175 : vec3<f32> = (vec3<f32>(x_2170.x, x_2170.y, x_2170.z) * vec3<f32>(x_2173.y, x_2173.y, x_2173.y));
            let x_2176 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
            let x_2179 : f32 = u_xlat11.x;
            u_xlat10.w = x_2179;
            let x_2181 : vec4<f32> = u_xlat8;
            let x_2184 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2187 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.y) * vec4<f32>(x_2184.x, x_2184.y, x_2184.x, x_2184.y)) + vec4<f32>(x_2187.y, x_2187.w, x_2187.x, x_2187.w));
            let x_2190 : vec4<f32> = u_xlat8;
            let x_2193 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2196 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2190.x, x_2190.y) * vec2<f32>(x_2193.x, x_2193.y)) + vec2<f32>(x_2196.z, x_2196.w));
            let x_2200 : f32 = u_xlat10.y;
            u_xlat11.w = x_2200;
            let x_2202 : vec4<f32> = u_xlat11;
            let x_2203 : vec2<f32> = vec2<f32>(x_2202.y, x_2202.z);
            let x_2204 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2204.x, x_2203.x, x_2204.z, x_2203.y);
            let x_2206 : vec4<f32> = u_xlat8;
            let x_2209 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2212 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2206.x, x_2206.y, x_2206.x, x_2206.y) * vec4<f32>(x_2209.x, x_2209.y, x_2209.x, x_2209.y)) + vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2212.y));
            let x_2215 : vec4<f32> = u_xlat8;
            let x_2218 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2221 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2215.x, x_2215.y, x_2215.x, x_2215.y) * vec4<f32>(x_2218.x, x_2218.y, x_2218.x, x_2218.y)) + vec4<f32>(x_2221.w, x_2221.y, x_2221.w, x_2221.z));
            let x_2224 : vec4<f32> = u_xlat8;
            let x_2227 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2230 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2224.x, x_2224.y, x_2224.x, x_2224.y) * vec4<f32>(x_2227.x, x_2227.y, x_2227.x, x_2227.y)) + vec4<f32>(x_2230.x, x_2230.w, x_2230.z, x_2230.w));
            let x_2233 : vec4<f32> = u_xlat9;
            let x_2235 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2233.x, x_2233.x, x_2233.x, x_2233.y) * vec4<f32>(x_2235.z, x_2235.w, x_2235.y, x_2235.z));
            let x_2238 : vec4<f32> = u_xlat9;
            let x_2240 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2238.y, x_2238.y, x_2238.z, x_2238.z) * x_2240);
            let x_2243 : f32 = u_xlat9.z;
            let x_2245 : f32 = u_xlat14.y;
            u_xlat71 = (x_2243 * x_2245);
            let x_2248 : vec4<f32> = u_xlat12;
            let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
            let x_2251 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
            let x_2258 : vec3<f32> = txVec34;
            let x_2260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
            u_xlat72 = x_2260;
            let x_2262 : vec4<f32> = u_xlat12;
            let x_2263 : vec2<f32> = vec2<f32>(x_2262.z, x_2262.w);
            let x_2265 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
            let x_2273 : vec3<f32> = txVec35;
            let x_2275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
            u_xlat73 = x_2275;
            let x_2276 : f32 = u_xlat73;
            let x_2278 : f32 = u_xlat15.y;
            u_xlat73 = (x_2276 * x_2278);
            let x_2281 : f32 = u_xlat15.x;
            let x_2282 : f32 = u_xlat72;
            let x_2284 : f32 = u_xlat73;
            u_xlat72 = ((x_2281 * x_2282) + x_2284);
            let x_2287 : vec2<f32> = u_xlat52;
            let x_2289 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
            let x_2296 : vec3<f32> = txVec36;
            let x_2298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
            u_xlat73 = x_2298;
            let x_2300 : f32 = u_xlat15.z;
            let x_2301 : f32 = u_xlat73;
            let x_2303 : f32 = u_xlat72;
            u_xlat72 = ((x_2300 * x_2301) + x_2303);
            let x_2306 : vec4<f32> = u_xlat11;
            let x_2307 : vec2<f32> = vec2<f32>(x_2306.x, x_2306.y);
            let x_2309 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2307.x, x_2307.y, x_2309);
            let x_2316 : vec3<f32> = txVec37;
            let x_2318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
            u_xlat73 = x_2318;
            let x_2320 : f32 = u_xlat15.w;
            let x_2321 : f32 = u_xlat73;
            let x_2323 : f32 = u_xlat72;
            u_xlat72 = ((x_2320 * x_2321) + x_2323);
            let x_2326 : vec4<f32> = u_xlat13;
            let x_2327 : vec2<f32> = vec2<f32>(x_2326.x, x_2326.y);
            let x_2329 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
            let x_2336 : vec3<f32> = txVec38;
            let x_2338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2336.xy, x_2336.z);
            u_xlat73 = x_2338;
            let x_2340 : f32 = u_xlat16.x;
            let x_2341 : f32 = u_xlat73;
            let x_2343 : f32 = u_xlat72;
            u_xlat72 = ((x_2340 * x_2341) + x_2343);
            let x_2346 : vec4<f32> = u_xlat13;
            let x_2347 : vec2<f32> = vec2<f32>(x_2346.z, x_2346.w);
            let x_2349 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
            let x_2356 : vec3<f32> = txVec39;
            let x_2358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2356.xy, x_2356.z);
            u_xlat73 = x_2358;
            let x_2360 : f32 = u_xlat16.y;
            let x_2361 : f32 = u_xlat73;
            let x_2363 : f32 = u_xlat72;
            u_xlat72 = ((x_2360 * x_2361) + x_2363);
            let x_2366 : vec4<f32> = u_xlat11;
            let x_2367 : vec2<f32> = vec2<f32>(x_2366.z, x_2366.w);
            let x_2369 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
            let x_2376 : vec3<f32> = txVec40;
            let x_2378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2376.xy, x_2376.z);
            u_xlat73 = x_2378;
            let x_2380 : f32 = u_xlat16.z;
            let x_2381 : f32 = u_xlat73;
            let x_2383 : f32 = u_xlat72;
            u_xlat72 = ((x_2380 * x_2381) + x_2383);
            let x_2386 : vec4<f32> = u_xlat10;
            let x_2387 : vec2<f32> = vec2<f32>(x_2386.x, x_2386.y);
            let x_2389 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2387.x, x_2387.y, x_2389);
            let x_2396 : vec3<f32> = txVec41;
            let x_2398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2396.xy, x_2396.z);
            u_xlat73 = x_2398;
            let x_2400 : f32 = u_xlat16.w;
            let x_2401 : f32 = u_xlat73;
            let x_2403 : f32 = u_xlat72;
            u_xlat72 = ((x_2400 * x_2401) + x_2403);
            let x_2406 : vec4<f32> = u_xlat10;
            let x_2407 : vec2<f32> = vec2<f32>(x_2406.z, x_2406.w);
            let x_2409 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2407.x, x_2407.y, x_2409);
            let x_2416 : vec3<f32> = txVec42;
            let x_2418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2416.xy, x_2416.z);
            u_xlat73 = x_2418;
            let x_2419 : f32 = u_xlat71;
            let x_2420 : f32 = u_xlat73;
            let x_2422 : f32 = u_xlat72;
            u_xlat70 = ((x_2419 * x_2420) + x_2422);
          } else {
            let x_2425 : vec4<f32> = u_xlat7;
            let x_2428 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2431 : vec2<f32> = ((vec2<f32>(x_2425.x, x_2425.y) * vec2<f32>(x_2428.z, x_2428.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2432 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2434 : vec4<f32> = u_xlat8;
            let x_2436 : vec2<f32> = floor(vec2<f32>(x_2434.x, x_2434.y));
            let x_2437 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2436.x, x_2436.y, x_2437.z, x_2437.w);
            let x_2439 : vec4<f32> = u_xlat7;
            let x_2442 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2445 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2439.x, x_2439.y) * vec2<f32>(x_2442.z, x_2442.w)) + -(vec2<f32>(x_2445.x, x_2445.y)));
            let x_2449 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2449.x, x_2449.x, x_2449.y, x_2449.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2452 : vec4<f32> = u_xlat9;
            let x_2454 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2452.x, x_2452.x, x_2452.z, x_2452.z) * vec4<f32>(x_2454.x, x_2454.x, x_2454.z, x_2454.z));
            let x_2457 : vec4<f32> = u_xlat10;
            let x_2459 : vec2<f32> = (vec2<f32>(x_2457.y, x_2457.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2460.x, x_2459.x, x_2460.z, x_2459.y);
            let x_2462 : vec4<f32> = u_xlat10;
            let x_2465 : vec2<f32> = u_xlat52;
            let x_2467 : vec2<f32> = ((vec2<f32>(x_2462.x, x_2462.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2465));
            let x_2468 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2467.x, x_2468.y, x_2467.y, x_2468.w);
            let x_2470 : vec2<f32> = u_xlat52;
            let x_2472 : vec2<f32> = (-(x_2470) + vec2<f32>(1.0f, 1.0f));
            let x_2473 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
            let x_2475 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2475, vec2<f32>(0.0f, 0.0f));
            let x_2477 : vec2<f32> = u_xlat54;
            let x_2479 : vec2<f32> = u_xlat54;
            let x_2481 : vec4<f32> = u_xlat10;
            let x_2483 : vec2<f32> = ((-(x_2477) * x_2479) + vec2<f32>(x_2481.x, x_2481.y));
            let x_2484 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2483.x, x_2483.y, x_2484.z, x_2484.w);
            let x_2486 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2486, vec2<f32>(0.0f, 0.0f));
            let x_2489 : vec2<f32> = u_xlat54;
            let x_2491 : vec2<f32> = u_xlat54;
            let x_2493 : vec4<f32> = u_xlat9;
            let x_2495 : vec2<f32> = ((-(x_2489) * x_2491) + vec2<f32>(x_2493.y, x_2493.w));
            let x_2496 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2495.x, x_2496.y, x_2495.y);
            let x_2498 : vec4<f32> = u_xlat10;
            let x_2500 : vec2<f32> = (vec2<f32>(x_2498.x, x_2498.y) + vec2<f32>(2.0f, 2.0f));
            let x_2501 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
            let x_2503 : vec3<f32> = u_xlat31;
            let x_2505 : vec2<f32> = (vec2<f32>(x_2503.x, x_2503.z) + vec2<f32>(2.0f, 2.0f));
            let x_2506 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2506.x, x_2505.x, x_2506.z, x_2505.y);
            let x_2509 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2509 * 0.08163200318813323975f);
            let x_2512 : vec4<f32> = u_xlat9;
            let x_2514 : vec3<f32> = (vec3<f32>(x_2512.z, x_2512.x, x_2512.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2515 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat10;
            let x_2519 : vec2<f32> = (vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2520 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2523 : f32 = u_xlat13.y;
            u_xlat12.x = x_2523;
            let x_2525 : vec2<f32> = u_xlat52;
            let x_2528 : vec2<f32> = ((vec2<f32>(x_2525.x, x_2525.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2529 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2529.x, x_2528.x, x_2529.z, x_2528.y);
            let x_2531 : vec2<f32> = u_xlat52;
            let x_2534 : vec2<f32> = ((vec2<f32>(x_2531.x, x_2531.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2535 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2534.x, x_2535.y, x_2534.y, x_2535.w);
            let x_2538 : f32 = u_xlat9.x;
            u_xlat10.y = x_2538;
            let x_2541 : f32 = u_xlat11.y;
            u_xlat10.w = x_2541;
            let x_2543 : vec4<f32> = u_xlat10;
            let x_2544 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2543 + x_2544);
            let x_2546 : vec2<f32> = u_xlat52;
            let x_2549 : vec2<f32> = ((vec2<f32>(x_2546.y, x_2546.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2550 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2550.x, x_2549.x, x_2550.z, x_2549.y);
            let x_2552 : vec2<f32> = u_xlat52;
            let x_2555 : vec2<f32> = ((vec2<f32>(x_2552.y, x_2552.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2556 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2555.x, x_2556.y, x_2555.y, x_2556.w);
            let x_2559 : f32 = u_xlat9.y;
            u_xlat11.y = x_2559;
            let x_2561 : vec4<f32> = u_xlat11;
            let x_2562 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2561 + x_2562);
            let x_2564 : vec4<f32> = u_xlat10;
            let x_2565 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2564 / x_2565);
            let x_2567 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2567 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2569 : vec4<f32> = u_xlat11;
            let x_2570 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2569 / x_2570);
            let x_2572 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2572 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2574 : vec4<f32> = u_xlat10;
            let x_2577 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2574.w, x_2574.x, x_2574.y, x_2574.z) * vec4<f32>(x_2577.x, x_2577.x, x_2577.x, x_2577.x));
            let x_2580 : vec4<f32> = u_xlat11;
            let x_2583 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2580.x, x_2580.w, x_2580.y, x_2580.z) * vec4<f32>(x_2583.y, x_2583.y, x_2583.y, x_2583.y));
            let x_2586 : vec4<f32> = u_xlat10;
            let x_2587 : vec3<f32> = vec3<f32>(x_2586.y, x_2586.z, x_2586.w);
            let x_2588 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2587.x, x_2588.y, x_2587.y, x_2587.z);
            let x_2591 : f32 = u_xlat11.x;
            u_xlat13.y = x_2591;
            let x_2593 : vec4<f32> = u_xlat8;
            let x_2596 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2599 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y) * vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y)) + vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2599.y));
            let x_2602 : vec4<f32> = u_xlat8;
            let x_2605 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2608 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2602.x, x_2602.y) * vec2<f32>(x_2605.x, x_2605.y)) + vec2<f32>(x_2608.w, x_2608.y));
            let x_2612 : f32 = u_xlat13.y;
            u_xlat10.y = x_2612;
            let x_2615 : f32 = u_xlat11.z;
            u_xlat13.y = x_2615;
            let x_2617 : vec4<f32> = u_xlat8;
            let x_2620 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2623.y));
            let x_2626 : vec4<f32> = u_xlat8;
            let x_2629 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat13;
            let x_2634 : vec2<f32> = ((vec2<f32>(x_2626.x, x_2626.y) * vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(x_2632.w, x_2632.y));
            let x_2635 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2634.x, x_2634.y, x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat13.y;
            u_xlat10.z = x_2638;
            let x_2640 : vec4<f32> = u_xlat8;
            let x_2643 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2646 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y) * vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y)) + vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.z));
            let x_2650 : f32 = u_xlat11.w;
            u_xlat13.y = x_2650;
            let x_2653 : vec4<f32> = u_xlat8;
            let x_2656 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2659 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2653.x, x_2653.y, x_2653.x, x_2653.y) * vec4<f32>(x_2656.x, x_2656.y, x_2656.x, x_2656.y)) + vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2659.y));
            let x_2663 : vec4<f32> = u_xlat8;
            let x_2666 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2669 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2663.x, x_2663.y) * vec2<f32>(x_2666.x, x_2666.y)) + vec2<f32>(x_2669.w, x_2669.y));
            let x_2673 : f32 = u_xlat13.y;
            u_xlat10.w = x_2673;
            let x_2676 : vec4<f32> = u_xlat8;
            let x_2679 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2682 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2676.x, x_2676.y) * vec2<f32>(x_2679.x, x_2679.y)) + vec2<f32>(x_2682.x, x_2682.w));
            let x_2685 : vec4<f32> = u_xlat13;
            let x_2686 : vec3<f32> = vec3<f32>(x_2685.x, x_2685.z, x_2685.w);
            let x_2687 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2686.x, x_2687.y, x_2686.y, x_2686.z);
            let x_2689 : vec4<f32> = u_xlat8;
            let x_2692 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y) * vec4<f32>(x_2692.x, x_2692.y, x_2692.x, x_2692.y)) + vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2695.y));
            let x_2699 : vec4<f32> = u_xlat8;
            let x_2702 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2699.x, x_2699.y) * vec2<f32>(x_2702.x, x_2702.y)) + vec2<f32>(x_2705.w, x_2705.y));
            let x_2709 : f32 = u_xlat10.x;
            u_xlat11.x = x_2709;
            let x_2711 : vec4<f32> = u_xlat8;
            let x_2714 : vec4<f32> = x_240.x_AdditionalShadowmapSize;
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2719 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.y) * vec2<f32>(x_2714.x, x_2714.y)) + vec2<f32>(x_2717.x, x_2717.y));
            let x_2720 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2719.x, x_2719.y, x_2720.z, x_2720.w);
            let x_2723 : vec4<f32> = u_xlat9;
            let x_2725 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2723.x, x_2723.x, x_2723.x, x_2723.x) * x_2725);
            let x_2728 : vec4<f32> = u_xlat9;
            let x_2730 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2728.y, x_2728.y, x_2728.y, x_2728.y) * x_2730);
            let x_2733 : vec4<f32> = u_xlat9;
            let x_2735 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2733.z, x_2733.z, x_2733.z, x_2733.z) * x_2735);
            let x_2737 : vec4<f32> = u_xlat9;
            let x_2739 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2737.w, x_2737.w, x_2737.w, x_2737.w) * x_2739);
            let x_2742 : vec4<f32> = u_xlat14;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.x, x_2742.y);
            let x_2745 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
            let x_2752 : vec3<f32> = txVec43;
            let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
            u_xlat71 = x_2754;
            let x_2756 : vec4<f32> = u_xlat14;
            let x_2757 : vec2<f32> = vec2<f32>(x_2756.z, x_2756.w);
            let x_2759 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
            let x_2766 : vec3<f32> = txVec44;
            let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
            u_xlat72 = x_2768;
            let x_2769 : f32 = u_xlat72;
            let x_2771 : f32 = u_xlat19.y;
            u_xlat72 = (x_2769 * x_2771);
            let x_2774 : f32 = u_xlat19.x;
            let x_2775 : f32 = u_xlat71;
            let x_2777 : f32 = u_xlat72;
            u_xlat71 = ((x_2774 * x_2775) + x_2777);
            let x_2780 : vec2<f32> = u_xlat52;
            let x_2782 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2780.x, x_2780.y, x_2782);
            let x_2789 : vec3<f32> = txVec45;
            let x_2791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2789.xy, x_2789.z);
            u_xlat72 = x_2791;
            let x_2793 : f32 = u_xlat19.z;
            let x_2794 : f32 = u_xlat72;
            let x_2796 : f32 = u_xlat71;
            u_xlat71 = ((x_2793 * x_2794) + x_2796);
            let x_2799 : vec4<f32> = u_xlat17;
            let x_2800 : vec2<f32> = vec2<f32>(x_2799.x, x_2799.y);
            let x_2802 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2800.x, x_2800.y, x_2802);
            let x_2809 : vec3<f32> = txVec46;
            let x_2811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2809.xy, x_2809.z);
            u_xlat72 = x_2811;
            let x_2813 : f32 = u_xlat19.w;
            let x_2814 : f32 = u_xlat72;
            let x_2816 : f32 = u_xlat71;
            u_xlat71 = ((x_2813 * x_2814) + x_2816);
            let x_2819 : vec4<f32> = u_xlat15;
            let x_2820 : vec2<f32> = vec2<f32>(x_2819.x, x_2819.y);
            let x_2822 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
            let x_2829 : vec3<f32> = txVec47;
            let x_2831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2829.xy, x_2829.z);
            u_xlat72 = x_2831;
            let x_2833 : f32 = u_xlat20.x;
            let x_2834 : f32 = u_xlat72;
            let x_2836 : f32 = u_xlat71;
            u_xlat71 = ((x_2833 * x_2834) + x_2836);
            let x_2839 : vec4<f32> = u_xlat15;
            let x_2840 : vec2<f32> = vec2<f32>(x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec48;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat72 = x_2851;
            let x_2853 : f32 = u_xlat20.y;
            let x_2854 : f32 = u_xlat72;
            let x_2856 : f32 = u_xlat71;
            u_xlat71 = ((x_2853 * x_2854) + x_2856);
            let x_2859 : vec4<f32> = u_xlat16;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.x, x_2859.y);
            let x_2862 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec49;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat72 = x_2871;
            let x_2873 : f32 = u_xlat20.z;
            let x_2874 : f32 = u_xlat72;
            let x_2876 : f32 = u_xlat71;
            u_xlat71 = ((x_2873 * x_2874) + x_2876);
            let x_2879 : vec4<f32> = u_xlat17;
            let x_2880 : vec2<f32> = vec2<f32>(x_2879.z, x_2879.w);
            let x_2882 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec50;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat72 = x_2891;
            let x_2893 : f32 = u_xlat20.w;
            let x_2894 : f32 = u_xlat72;
            let x_2896 : f32 = u_xlat71;
            u_xlat71 = ((x_2893 * x_2894) + x_2896);
            let x_2899 : vec4<f32> = u_xlat18;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
            let x_2902 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2909 : vec3<f32> = txVec51;
            let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
            u_xlat72 = x_2911;
            let x_2913 : f32 = u_xlat21.x;
            let x_2914 : f32 = u_xlat72;
            let x_2916 : f32 = u_xlat71;
            u_xlat71 = ((x_2913 * x_2914) + x_2916);
            let x_2919 : vec4<f32> = u_xlat18;
            let x_2920 : vec2<f32> = vec2<f32>(x_2919.z, x_2919.w);
            let x_2922 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
            let x_2929 : vec3<f32> = txVec52;
            let x_2931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
            u_xlat72 = x_2931;
            let x_2933 : f32 = u_xlat21.y;
            let x_2934 : f32 = u_xlat72;
            let x_2936 : f32 = u_xlat71;
            u_xlat71 = ((x_2933 * x_2934) + x_2936);
            let x_2939 : vec2<f32> = u_xlat32;
            let x_2941 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec53;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat72 = x_2950;
            let x_2952 : f32 = u_xlat21.z;
            let x_2953 : f32 = u_xlat72;
            let x_2955 : f32 = u_xlat71;
            u_xlat71 = ((x_2952 * x_2953) + x_2955);
            let x_2958 : vec2<f32> = u_xlat60;
            let x_2960 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec54;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat72 = x_2969;
            let x_2971 : f32 = u_xlat21.w;
            let x_2972 : f32 = u_xlat72;
            let x_2974 : f32 = u_xlat71;
            u_xlat71 = ((x_2971 * x_2972) + x_2974);
            let x_2977 : vec4<f32> = u_xlat13;
            let x_2978 : vec2<f32> = vec2<f32>(x_2977.x, x_2977.y);
            let x_2980 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
            let x_2987 : vec3<f32> = txVec55;
            let x_2989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
            u_xlat72 = x_2989;
            let x_2991 : f32 = u_xlat9.x;
            let x_2992 : f32 = u_xlat72;
            let x_2994 : f32 = u_xlat71;
            u_xlat71 = ((x_2991 * x_2992) + x_2994);
            let x_2997 : vec4<f32> = u_xlat13;
            let x_2998 : vec2<f32> = vec2<f32>(x_2997.z, x_2997.w);
            let x_3000 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
            let x_3007 : vec3<f32> = txVec56;
            let x_3009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
            u_xlat72 = x_3009;
            let x_3011 : f32 = u_xlat9.y;
            let x_3012 : f32 = u_xlat72;
            let x_3014 : f32 = u_xlat71;
            u_xlat71 = ((x_3011 * x_3012) + x_3014);
            let x_3017 : vec2<f32> = u_xlat55;
            let x_3019 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec57;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat72 = x_3028;
            let x_3030 : f32 = u_xlat9.z;
            let x_3031 : f32 = u_xlat72;
            let x_3033 : f32 = u_xlat71;
            u_xlat71 = ((x_3030 * x_3031) + x_3033);
            let x_3036 : vec4<f32> = u_xlat8;
            let x_3037 : vec2<f32> = vec2<f32>(x_3036.x, x_3036.y);
            let x_3039 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3037.x, x_3037.y, x_3039);
            let x_3046 : vec3<f32> = txVec58;
            let x_3048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3046.xy, x_3046.z);
            u_xlat72 = x_3048;
            let x_3050 : f32 = u_xlat9.w;
            let x_3051 : f32 = u_xlat72;
            let x_3053 : f32 = u_xlat71;
            u_xlat70 = ((x_3050 * x_3051) + x_3053);
          }
        }
      } else {
        let x_3057 : vec4<f32> = u_xlat7;
        let x_3058 : vec2<f32> = vec2<f32>(x_3057.x, x_3057.y);
        let x_3060 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3058.x, x_3058.y, x_3060);
        let x_3067 : vec3<f32> = txVec59;
        let x_3069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3067.xy, x_3067.z);
        u_xlat70 = x_3069;
      }
      let x_3070 : i32 = u_xlati68;
      let x_3072 : f32 = x_240.x_AdditionalShadowParams[x_3070].x;
      u_xlat71 = (1.0f + -(x_3072));
      let x_3075 : f32 = u_xlat70;
      let x_3076 : i32 = u_xlati68;
      let x_3078 : f32 = x_240.x_AdditionalShadowParams[x_3076].x;
      let x_3080 : f32 = u_xlat71;
      u_xlat70 = ((x_3075 * x_3078) + x_3080);
      let x_3083 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3083);
      let x_3087 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3087 >= 1.0f);
      let x_3089 : bool = u_xlatb71;
      let x_3090 : bool = u_xlatb72;
      u_xlatb71 = (x_3089 | x_3090);
      let x_3092 : bool = u_xlatb71;
      let x_3093 : f32 = u_xlat70;
      u_xlat70 = select(x_3093, 1.0f, x_3092);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3096 : f32 = u_xlat70;
    u_xlat71 = (-(x_3096) + 1.0f);
    let x_3099 : f32 = u_xlat66;
    let x_3100 : f32 = u_xlat71;
    let x_3102 : f32 = u_xlat70;
    u_xlat70 = ((x_3099 * x_3100) + x_3102);
    let x_3104 : f32 = u_xlat69;
    let x_3105 : f32 = u_xlat70;
    u_xlat69 = (x_3104 * x_3105);
    let x_3107 : f32 = u_xlat69;
    let x_3109 : i32 = u_xlati68;
    let x_3111 : vec4<f32> = x_1679.x_AdditionalLightsColor[x_3109];
    let x_3113 : vec3<f32> = (vec3<f32>(x_3107, x_3107, x_3107) * vec3<f32>(x_3111.x, x_3111.y, x_3111.z));
    let x_3114 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3113.x, x_3113.y, x_3113.z, x_3114.w);
    let x_3116 : vec4<f32> = u_xlat2;
    let x_3118 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3116.x, x_3116.y, x_3116.z), vec3<f32>(x_3118.x, x_3118.y, x_3118.z));
    let x_3121 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3121, 0.0f, 1.0f);
    let x_3123 : f32 = u_xlat68;
    let x_3125 : vec4<f32> = u_xlat7;
    let x_3127 : vec3<f32> = (vec3<f32>(x_3123, x_3123, x_3123) * vec3<f32>(x_3125.x, x_3125.y, x_3125.z));
    let x_3128 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
    let x_3130 : vec4<f32> = u_xlat1;
    let x_3132 : vec4<f32> = u_xlat6;
    let x_3134 : vec3<f32> = (vec3<f32>(x_3130.y, x_3130.z, x_3130.w) * vec3<f32>(x_3132.x, x_3132.y, x_3132.z));
    let x_3135 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
    let x_3137 : vec4<f32> = u_xlat6;
    let x_3139 : vec4<f32> = u_xlat0;
    let x_3142 : vec4<f32> = u_xlat5;
    let x_3144 : vec3<f32> = ((vec3<f32>(x_3137.x, x_3137.y, x_3137.z) * vec3<f32>(x_3139.x, x_3139.x, x_3139.x)) + vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
    let x_3145 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);

    continuing {
      let x_3147 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3147 + bitcast<u32>(1i));
    }
  }
  let x_3149 : vec3<f32> = u_xlat3;
  let x_3150 : vec4<f32> = u_xlat1;
  let x_3153 : vec4<f32> = u_xlat4;
  let x_3155 : vec3<f32> = ((x_3149 * vec3<f32>(x_3150.y, x_3150.z, x_3150.w)) + vec3<f32>(x_3153.x, x_3153.y, x_3153.z));
  let x_3156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
  let x_3160 : vec4<f32> = u_xlat5;
  let x_3162 : vec4<f32> = u_xlat1;
  let x_3164 : vec3<f32> = (vec3<f32>(x_3160.x, x_3160.y, x_3160.z) + vec3<f32>(x_3162.x, x_3162.y, x_3162.z));
  let x_3165 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3164.x, x_3164.y, x_3164.z, x_3165.w);
  let x_3168 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3168 == 1.0f);
  let x_3170 : bool = u_xlatb22;
  let x_3171 : bool = u_xlatb44;
  u_xlatb22 = (x_3170 | x_3171);
  let x_3173 : bool = u_xlatb22;
  if (x_3173) {
    let x_3178 : f32 = u_xlat0.x;
    x_3174 = x_3178;
  } else {
    x_3174 = 1.0f;
  }
  let x_3180 : f32 = x_3174;
  SV_Target0.w = x_3180;
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


