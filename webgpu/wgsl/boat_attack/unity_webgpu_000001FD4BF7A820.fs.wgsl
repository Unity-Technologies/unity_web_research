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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb25 : bool;

@group(1) @binding(2) var<uniform> x_237 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_343 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlati69 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb69 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb71 : bool;

var<private> u_xlatu71 : u32;

var<private> u_xlatu73 : u32;

var<private> u_xlati74 : i32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

@group(1) @binding(1) var<uniform> x_2054 : AdditionalLights;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu72 : u32;

var<private> u_xlatb73 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_243 : f32;
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
  var x_2190 : f32;
  var x_2201 : f32;
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
  var x_3618 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat23.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat69;
  let x_107 : f32 = u_xlat46;
  u_xlat46 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat46;
  u_xlat46 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat23.x;
  let x_115 : f32 = u_xlat46;
  u_xlat23.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat23.x;
  u_xlat23.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb46;
  if (x_131) {
    let x_136 : f32 = u_xlat23.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat23.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat23.x;
  u_xlatb23 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb23;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat23;
  let x_189 : vec3<f32> = u_xlat23;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 0.0000000000000001f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_240 : f32 = x_237.unity_LODFade.x;
  u_xlatb25 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb25;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_237.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat23;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat23;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = vs_TEXCOORD2;
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_291.x, x_291.y, x_291.z)) + x_294);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat23.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_301);
  let x_304 : vec3<f32> = u_xlat23;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_304.x, x_304.x, x_304.x) * x_306);
  let x_310 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_310;
  let x_313 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_313;
  let x_317 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_317;
  let x_319 : vec3<f32> = u_xlat3;
  let x_320 : vec3<f32> = u_xlat3;
  u_xlat23.x = dot(x_319, x_320);
  let x_324 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_324, 0.00006103515625f);
  let x_329 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_329);
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_345 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres0;
  let x_348 : vec3<f32> = (x_335 + -(vec3<f32>(x_345.x, x_345.y, x_345.z)));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec3<f32> = vs_TEXCOORD1;
  let x_354 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres1;
  let x_357 : vec3<f32> = (x_352 + -(vec3<f32>(x_354.x, x_354.y, x_354.z)));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres2;
  let x_367 : vec3<f32> = (x_361 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_373 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres3;
  let x_376 : vec3<f32> = (x_371 + -(vec3<f32>(x_373.x, x_373.y, x_373.z)));
  let x_377 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_397 : vec4<f32> = u_xlat7;
  let x_399 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_406 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = x_343.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_406 < x_409);
  let x_412 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_420);
  let x_424 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_424);
  let x_428 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_428);
  let x_433 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_433);
  let x_437 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_437);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec4<f32> = u_xlat5;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) + vec3<f32>(x_442.y, x_442.z, x_442.w));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat4;
  let x_450 : vec3<f32> = max(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_450.x, x_450.y, x_450.z);
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat69 = dot(x_453, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_458 : f32 = u_xlat69;
  u_xlat69 = (-(x_458) + 4.0f);
  let x_463 : f32 = u_xlat69;
  u_xlatu69 = u32(x_463);
  let x_467 : u32 = u_xlatu69;
  u_xlati69 = (bitcast<i32>(x_467) << bitcast<u32>(2i));
  let x_470 : vec3<f32> = vs_TEXCOORD1;
  let x_472 : i32 = u_xlati69;
  let x_475 : i32 = u_xlati69;
  let x_479 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_472 + 1i) / 4i)][((x_475 + 1i) % 4i)];
  let x_481 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : i32 = u_xlati69;
  let x_486 : i32 = u_xlati69;
  let x_489 : vec4<f32> = x_343.x_MainLightWorldToShadow[(x_484 / 4i)][(x_486 % 4i)];
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.x, x_491.x, x_491.x)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : i32 = u_xlati69;
  let x_502 : i32 = u_xlati69;
  let x_506 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_499 + 2i) / 4i)][((x_502 + 2i) % 4i)];
  let x_508 : vec3<f32> = vs_TEXCOORD1;
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.z, x_508.z, x_508.z)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : i32 = u_xlati69;
  let x_521 : i32 = u_xlati69;
  let x_525 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_518 + 3i) / 4i)][((x_521 + 3i) % 4i)];
  let x_527 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) + vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_536 : vec2<f32> = vs_TEXCOORD7;
  let x_538 : f32 = x_44.x_GlobalMipBias.x;
  let x_539 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_536, x_538);
  u_xlat5 = x_539;
  let x_544 : vec2<f32> = vs_TEXCOORD7;
  let x_546 : f32 = x_44.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_544, x_546);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.z);
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat5;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_556 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec3<f32> = u_xlat2;
  let x_559 : vec4<f32> = u_xlat5;
  u_xlat69 = dot(x_558, vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : f32 = u_xlat69;
  u_xlat69 = (x_562 + 0.5f);
  let x_564 : f32 = u_xlat69;
  let x_566 : vec4<f32> = u_xlat6;
  let x_568 : vec3<f32> = (vec3<f32>(x_564, x_564, x_564) * vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = u_xlat5.w;
  u_xlat69 = max(x_572, 0.00009999999747378752f);
  let x_574 : vec4<f32> = u_xlat5;
  let x_576 : f32 = u_xlat69;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) / vec3<f32>(x_576, x_576, x_576));
  let x_579 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_584 : f32 = x_343.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_584);
  let x_586 : bool = u_xlatb69;
  if (x_586) {
    let x_590 : f32 = x_343.x_MainLightShadowParams.y;
    u_xlatb69 = (x_590 == 1.0f);
    let x_592 : bool = u_xlatb69;
    if (x_592) {
      let x_595 : vec4<f32> = u_xlat4;
      let x_598 : vec4<f32> = x_343.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y) + x_598);
      let x_602 : vec4<f32> = u_xlat6;
      let x_603 : vec2<f32> = vec2<f32>(x_602.x, x_602.y);
      let x_605 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_603.x, x_603.y, x_605);
      let x_617 : vec3<f32> = txVec0;
      let x_619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_617.xy, x_617.z);
      u_xlat7.x = x_619;
      let x_622 : vec4<f32> = u_xlat6;
      let x_623 : vec2<f32> = vec2<f32>(x_622.z, x_622.w);
      let x_625 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_623.x, x_623.y, x_625);
      let x_632 : vec3<f32> = txVec1;
      let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_632.xy, x_632.z);
      u_xlat7.y = x_634;
      let x_636 : vec4<f32> = u_xlat4;
      let x_640 : vec4<f32> = x_343.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y) + x_640);
      let x_643 : vec4<f32> = u_xlat6;
      let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
      let x_646 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_644.x, x_644.y, x_646);
      let x_653 : vec3<f32> = txVec2;
      let x_655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_653.xy, x_653.z);
      u_xlat7.z = x_655;
      let x_658 : vec4<f32> = u_xlat6;
      let x_659 : vec2<f32> = vec2<f32>(x_658.z, x_658.w);
      let x_661 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_659.x, x_659.y, x_661);
      let x_668 : vec3<f32> = txVec3;
      let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_668.xy, x_668.z);
      u_xlat7.w = x_670;
      let x_672 : vec4<f32> = u_xlat7;
      u_xlat69 = dot(x_672, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_679 : f32 = x_343.x_MainLightShadowParams.y;
      u_xlatb1 = (x_679 == 2.0f);
      let x_681 : bool = u_xlatb1;
      if (x_681) {
        let x_684 : vec4<f32> = u_xlat4;
        let x_688 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_692 : vec2<f32> = ((vec2<f32>(x_684.x, x_684.y) * vec2<f32>(x_688.z, x_688.w)) + vec2<f32>(0.5f, 0.5f));
        let x_693 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat6;
        let x_697 : vec2<f32> = floor(vec2<f32>(x_695.x, x_695.y));
        let x_698 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_702 : vec4<f32> = u_xlat4;
        let x_705 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_702.x, x_702.y) * vec2<f32>(x_705.z, x_705.w)) + -(vec2<f32>(x_708.x, x_708.y)));
        let x_712 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_712.x, x_712.x, x_712.y, x_712.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_717 : vec4<f32> = u_xlat7;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_717.x, x_717.x, x_717.z, x_717.z) * vec4<f32>(x_719.x, x_719.x, x_719.z, x_719.z));
        let x_722 : vec4<f32> = u_xlat8;
        let x_726 : vec2<f32> = (vec2<f32>(x_722.y, x_722.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_727.y, x_726.y, x_727.w);
        let x_729 : vec4<f32> = u_xlat8;
        let x_732 : vec2<f32> = u_xlat52;
        let x_734 : vec2<f32> = ((vec2<f32>(x_729.x, x_729.z) * vec2<f32>(0.5f, 0.5f)) + -(x_732));
        let x_735 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_738 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_738) + vec2<f32>(1.0f, 1.0f));
        let x_743 : vec2<f32> = u_xlat52;
        let x_745 : vec2<f32> = min(x_743, vec2<f32>(0.0f, 0.0f));
        let x_746 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat9;
        let x_751 : vec4<f32> = u_xlat9;
        let x_754 : vec2<f32> = u_xlat54;
        let x_755 : vec2<f32> = ((-(vec2<f32>(x_748.x, x_748.y)) * vec2<f32>(x_751.x, x_751.y)) + x_754);
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_758 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_758, vec2<f32>(0.0f, 0.0f));
        let x_760 : vec2<f32> = u_xlat52;
        let x_762 : vec2<f32> = u_xlat52;
        let x_764 : vec4<f32> = u_xlat7;
        u_xlat52 = ((-(x_760) * x_762) + vec2<f32>(x_764.y, x_764.w));
        let x_767 : vec4<f32> = u_xlat9;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) + vec2<f32>(1.0f, 1.0f));
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_772 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_772 + vec2<f32>(1.0f, 1.0f));
        let x_775 : vec4<f32> = u_xlat8;
        let x_779 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_780 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec2<f32> = u_xlat54;
        let x_783 : vec2<f32> = (x_782 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_784 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = (vec2<f32>(x_786.x, x_786.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_792 : vec2<f32> = u_xlat52;
        let x_793 : vec2<f32> = (x_792 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat52 = (vec2<f32>(x_796.y, x_796.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_800 : f32 = u_xlat9.x;
        u_xlat10.z = x_800;
        let x_803 : f32 = u_xlat52.x;
        u_xlat10.w = x_803;
        let x_806 : f32 = u_xlat11.x;
        u_xlat8.z = x_806;
        let x_809 : f32 = u_xlat7.x;
        u_xlat8.w = x_809;
        let x_812 : vec4<f32> = u_xlat8;
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_812.z, x_812.w, x_812.x, x_812.z) + vec4<f32>(x_814.z, x_814.w, x_814.x, x_814.z));
        let x_818 : f32 = u_xlat10.y;
        u_xlat9.z = x_818;
        let x_821 : f32 = u_xlat52.y;
        u_xlat9.w = x_821;
        let x_824 : f32 = u_xlat8.y;
        u_xlat11.z = x_824;
        let x_827 : f32 = u_xlat7.z;
        u_xlat11.w = x_827;
        let x_829 : vec4<f32> = u_xlat9;
        let x_831 : vec4<f32> = u_xlat11;
        let x_833 : vec3<f32> = (vec3<f32>(x_829.z, x_829.y, x_829.w) + vec3<f32>(x_831.z, x_831.y, x_831.w));
        let x_834 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
        let x_836 : vec4<f32> = u_xlat8;
        let x_838 : vec4<f32> = u_xlat12;
        let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.z, x_836.w) / vec3<f32>(x_838.z, x_838.w, x_838.y));
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat8;
        let x_848 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat11;
        let x_853 : vec4<f32> = u_xlat7;
        let x_855 : vec3<f32> = (vec3<f32>(x_851.z, x_851.y, x_851.w) / vec3<f32>(x_853.x, x_853.y, x_853.z));
        let x_856 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat9;
        let x_860 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_861 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
        let x_863 : vec4<f32> = u_xlat8;
        let x_866 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_868 : vec3<f32> = (vec3<f32>(x_863.y, x_863.x, x_863.z) * vec3<f32>(x_866.x, x_866.x, x_866.x));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_874 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_876 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_874.y, x_874.y, x_874.y));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_880 : f32 = u_xlat9.x;
        u_xlat8.w = x_880;
        let x_882 : vec4<f32> = u_xlat6;
        let x_885 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y) * vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y)) + vec4<f32>(x_888.y, x_888.w, x_888.x, x_888.w));
        let x_891 : vec4<f32> = u_xlat6;
        let x_894 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_894.x, x_894.y)) + vec2<f32>(x_897.z, x_897.w));
        let x_901 : f32 = u_xlat8.y;
        u_xlat9.w = x_901;
        let x_903 : vec4<f32> = u_xlat9;
        let x_904 : vec2<f32> = vec2<f32>(x_903.y, x_903.z);
        let x_905 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_905.x, x_904.x, x_905.z, x_904.y);
        let x_907 : vec4<f32> = u_xlat6;
        let x_910 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_913 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) * vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y)) + vec4<f32>(x_913.x, x_913.y, x_913.z, x_913.y));
        let x_916 : vec4<f32> = u_xlat6;
        let x_919 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y) * vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y)) + vec4<f32>(x_922.w, x_922.y, x_922.w, x_922.z));
        let x_925 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y) * vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y)) + vec4<f32>(x_931.x, x_931.w, x_931.z, x_931.w));
        let x_935 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.y) * vec4<f32>(x_937.z, x_937.w, x_937.y, x_937.z));
        let x_941 : vec4<f32> = u_xlat7;
        let x_943 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_941.y, x_941.y, x_941.z, x_941.z) * x_943);
        let x_946 : f32 = u_xlat7.z;
        let x_948 : f32 = u_xlat12.y;
        u_xlat1.x = (x_946 * x_948);
        let x_952 : vec4<f32> = u_xlat10;
        let x_953 : vec2<f32> = vec2<f32>(x_952.x, x_952.y);
        let x_955 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_963 : vec3<f32> = txVec4;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat71 = x_965;
        let x_967 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = vec2<f32>(x_967.z, x_967.w);
        let x_970 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_978 : vec3<f32> = txVec5;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat72 = x_980;
        let x_981 : f32 = u_xlat72;
        let x_983 : f32 = u_xlat13.y;
        u_xlat72 = (x_981 * x_983);
        let x_986 : f32 = u_xlat13.x;
        let x_987 : f32 = u_xlat71;
        let x_989 : f32 = u_xlat72;
        u_xlat71 = ((x_986 * x_987) + x_989);
        let x_992 : vec2<f32> = u_xlat52;
        let x_994 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec6;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
        u_xlat72 = x_1003;
        let x_1005 : f32 = u_xlat13.z;
        let x_1006 : f32 = u_xlat72;
        let x_1008 : f32 = u_xlat71;
        u_xlat71 = ((x_1005 * x_1006) + x_1008);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
        let x_1014 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1021 : vec3<f32> = txVec7;
        let x_1023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1021.xy, x_1021.z);
        u_xlat72 = x_1023;
        let x_1025 : f32 = u_xlat13.w;
        let x_1026 : f32 = u_xlat72;
        let x_1028 : f32 = u_xlat71;
        u_xlat71 = ((x_1025 * x_1026) + x_1028);
        let x_1031 : vec4<f32> = u_xlat11;
        let x_1032 : vec2<f32> = vec2<f32>(x_1031.x, x_1031.y);
        let x_1034 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
        let x_1041 : vec3<f32> = txVec8;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
        u_xlat72 = x_1043;
        let x_1045 : f32 = u_xlat14.x;
        let x_1046 : f32 = u_xlat72;
        let x_1048 : f32 = u_xlat71;
        u_xlat71 = ((x_1045 * x_1046) + x_1048);
        let x_1051 : vec4<f32> = u_xlat11;
        let x_1052 : vec2<f32> = vec2<f32>(x_1051.z, x_1051.w);
        let x_1054 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
        let x_1061 : vec3<f32> = txVec9;
        let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1061.xy, x_1061.z);
        u_xlat72 = x_1063;
        let x_1065 : f32 = u_xlat14.y;
        let x_1066 : f32 = u_xlat72;
        let x_1068 : f32 = u_xlat71;
        u_xlat71 = ((x_1065 * x_1066) + x_1068);
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1072 : vec2<f32> = vec2<f32>(x_1071.z, x_1071.w);
        let x_1074 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1081 : vec3<f32> = txVec10;
        let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1081.xy, x_1081.z);
        u_xlat72 = x_1083;
        let x_1085 : f32 = u_xlat14.z;
        let x_1086 : f32 = u_xlat72;
        let x_1088 : f32 = u_xlat71;
        u_xlat71 = ((x_1085 * x_1086) + x_1088);
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1092 : vec2<f32> = vec2<f32>(x_1091.x, x_1091.y);
        let x_1094 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
        let x_1101 : vec3<f32> = txVec11;
        let x_1103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1101.xy, x_1101.z);
        u_xlat72 = x_1103;
        let x_1105 : f32 = u_xlat14.w;
        let x_1106 : f32 = u_xlat72;
        let x_1108 : f32 = u_xlat71;
        u_xlat71 = ((x_1105 * x_1106) + x_1108);
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1112 : vec2<f32> = vec2<f32>(x_1111.z, x_1111.w);
        let x_1114 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1112.x, x_1112.y, x_1114);
        let x_1121 : vec3<f32> = txVec12;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1121.xy, x_1121.z);
        u_xlat72 = x_1123;
        let x_1125 : f32 = u_xlat1.x;
        let x_1126 : f32 = u_xlat72;
        let x_1128 : f32 = u_xlat71;
        u_xlat69 = ((x_1125 * x_1126) + x_1128);
      } else {
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1137 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.z, x_1134.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat6;
        let x_1142 : vec2<f32> = floor(vec2<f32>(x_1140.x, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.z, x_1148.w)) + -(vec2<f32>(x_1151.x, x_1151.y)));
        let x_1155 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.y, x_1155.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1158.x, x_1158.x, x_1158.z, x_1158.z) * vec4<f32>(x_1160.x, x_1160.x, x_1160.z, x_1160.z));
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1163.y, x_1163.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1173 : vec2<f32> = u_xlat52;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1170.x, x_1170.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1173));
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat52;
        let x_1180 : vec2<f32> = (-(x_1178) + vec2<f32>(1.0f, 1.0f));
        let x_1181 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1180.x, x_1180.y, x_1181.z, x_1181.w);
        let x_1183 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1183, vec2<f32>(0.0f, 0.0f));
        let x_1185 : vec2<f32> = u_xlat54;
        let x_1187 : vec2<f32> = u_xlat54;
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1191 : vec2<f32> = ((-(x_1185) * x_1187) + vec2<f32>(x_1189.x, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1194, vec2<f32>(0.0f, 0.0f));
        let x_1197 : vec2<f32> = u_xlat54;
        let x_1199 : vec2<f32> = u_xlat54;
        let x_1201 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = ((-(x_1197) * x_1199) + vec2<f32>(x_1201.y, x_1201.w));
        let x_1204 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1203.x, x_1204.y, x_1203.y);
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.y) + vec2<f32>(2.0f, 2.0f));
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec3<f32> = u_xlat30;
        let x_1213 : vec2<f32> = (vec2<f32>(x_1211.x, x_1211.z) + vec2<f32>(2.0f, 2.0f));
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1214.x, x_1213.x, x_1214.z, x_1213.y);
        let x_1217 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1217 * 0.08163200318813323975f);
        let x_1221 : vec4<f32> = u_xlat7;
        let x_1224 : vec3<f32> = (vec3<f32>(x_1221.z, x_1221.x, x_1221.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1225 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat8;
        let x_1230 : vec2<f32> = (vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1231 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
        let x_1234 : f32 = u_xlat11.y;
        u_xlat10.x = x_1234;
        let x_1236 : vec2<f32> = u_xlat52;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1236.x, x_1236.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1244.x, x_1243.x, x_1244.z, x_1243.y);
        let x_1246 : vec2<f32> = u_xlat52;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1246.x, x_1246.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1250.x, x_1251.y, x_1250.y, x_1251.w);
        let x_1254 : f32 = u_xlat7.x;
        u_xlat8.y = x_1254;
        let x_1257 : f32 = u_xlat9.y;
        u_xlat8.w = x_1257;
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1259 + x_1260);
        let x_1262 : vec2<f32> = u_xlat52;
        let x_1265 : vec2<f32> = ((vec2<f32>(x_1262.y, x_1262.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1266 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1266.x, x_1265.x, x_1266.z, x_1265.y);
        let x_1268 : vec2<f32> = u_xlat52;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1268.y, x_1268.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1272.w);
        let x_1275 : f32 = u_xlat7.y;
        u_xlat9.y = x_1275;
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1277 + x_1278);
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1290 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1289 / x_1290);
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1292 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1297 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1294.w, x_1294.x, x_1294.y, x_1294.z) * vec4<f32>(x_1297.x, x_1297.x, x_1297.x, x_1297.x));
        let x_1300 : vec4<f32> = u_xlat9;
        let x_1303 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1300.x, x_1300.w, x_1300.y, x_1300.z) * vec4<f32>(x_1303.y, x_1303.y, x_1303.y, x_1303.y));
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1307 : vec3<f32> = vec3<f32>(x_1306.y, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1307.x, x_1308.y, x_1307.y, x_1307.z);
        let x_1311 : f32 = u_xlat9.x;
        u_xlat11.y = x_1311;
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        u_xlat52 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1332 : f32 = u_xlat11.y;
        u_xlat8.y = x_1332;
        let x_1335 : f32 = u_xlat9.z;
        u_xlat11.y = x_1335;
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1343.y));
        let x_1346 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat11;
        let x_1354 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.x, x_1349.y)) + vec2<f32>(x_1352.w, x_1352.y));
        let x_1355 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1358 : f32 = u_xlat11.y;
        u_xlat8.z = x_1358;
        let x_1361 : vec4<f32> = u_xlat6;
        let x_1364 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1367 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y) * vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y)) + vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.z));
        let x_1371 : f32 = u_xlat9.w;
        u_xlat11.y = x_1371;
        let x_1374 : vec4<f32> = u_xlat6;
        let x_1377 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1380 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y) * vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y)) + vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1380.y));
        let x_1384 : vec4<f32> = u_xlat6;
        let x_1387 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat31 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.w, x_1390.y));
        let x_1394 : f32 = u_xlat11.y;
        u_xlat8.w = x_1394;
        let x_1397 : vec4<f32> = u_xlat6;
        let x_1400 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1400.x, x_1400.y)) + vec2<f32>(x_1403.x, x_1403.w));
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1407 : vec3<f32> = vec3<f32>(x_1406.x, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1407.z);
        let x_1410 : vec4<f32> = u_xlat6;
        let x_1413 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y) * vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y)) + vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1416.y));
        let x_1420 : vec4<f32> = u_xlat6;
        let x_1423 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat55 = ((vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.w, x_1426.y));
        let x_1430 : f32 = u_xlat8.x;
        u_xlat9.x = x_1430;
        let x_1432 : vec4<f32> = u_xlat6;
        let x_1435 : vec4<f32> = x_343.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1435.x, x_1435.y)) + vec2<f32>(x_1438.x, x_1438.y));
        let x_1441 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1440.x, x_1440.y, x_1441.z, x_1441.w);
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1444.x, x_1444.x, x_1444.x, x_1444.x) * x_1446);
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1449.y, x_1449.y, x_1449.y, x_1449.y) * x_1451);
        let x_1454 : vec4<f32> = u_xlat7;
        let x_1456 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1454.z, x_1454.z, x_1454.z, x_1454.z) * x_1456);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1460 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1458.w, x_1458.w, x_1458.w, x_1458.w) * x_1460);
        let x_1463 : vec4<f32> = u_xlat12;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec13;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat1.x = x_1475;
        let x_1478 : vec4<f32> = u_xlat12;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec14;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat71 = x_1490;
        let x_1491 : f32 = u_xlat71;
        let x_1493 : f32 = u_xlat17.y;
        u_xlat71 = (x_1491 * x_1493);
        let x_1496 : f32 = u_xlat17.x;
        let x_1498 : f32 = u_xlat1.x;
        let x_1500 : f32 = u_xlat71;
        u_xlat1.x = ((x_1496 * x_1498) + x_1500);
        let x_1504 : vec2<f32> = u_xlat52;
        let x_1506 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec15;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat71 = x_1515;
        let x_1517 : f32 = u_xlat17.z;
        let x_1518 : f32 = u_xlat71;
        let x_1521 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1517 * x_1518) + x_1521);
        let x_1525 : vec4<f32> = u_xlat15;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec16;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat71 = x_1537;
        let x_1539 : f32 = u_xlat17.w;
        let x_1540 : f32 = u_xlat71;
        let x_1543 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1539 * x_1540) + x_1543);
        let x_1547 : vec4<f32> = u_xlat13;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.x, x_1547.y);
        let x_1550 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec17;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat71 = x_1559;
        let x_1561 : f32 = u_xlat18.x;
        let x_1562 : f32 = u_xlat71;
        let x_1565 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1561 * x_1562) + x_1565);
        let x_1569 : vec4<f32> = u_xlat13;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.z, x_1569.w);
        let x_1572 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec18;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat71 = x_1581;
        let x_1583 : f32 = u_xlat18.y;
        let x_1584 : f32 = u_xlat71;
        let x_1587 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1583 * x_1584) + x_1587);
        let x_1591 : vec4<f32> = u_xlat14;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec19;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat71 = x_1603;
        let x_1605 : f32 = u_xlat18.z;
        let x_1606 : f32 = u_xlat71;
        let x_1609 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1605 * x_1606) + x_1609);
        let x_1613 : vec4<f32> = u_xlat15;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec20;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat71 = x_1625;
        let x_1627 : f32 = u_xlat18.w;
        let x_1628 : f32 = u_xlat71;
        let x_1631 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1627 * x_1628) + x_1631);
        let x_1635 : vec4<f32> = u_xlat16;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.x, x_1635.y);
        let x_1638 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec21;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat71 = x_1647;
        let x_1649 : f32 = u_xlat19.x;
        let x_1650 : f32 = u_xlat71;
        let x_1653 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1649 * x_1650) + x_1653);
        let x_1657 : vec4<f32> = u_xlat16;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.z, x_1657.w);
        let x_1660 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec22;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat71 = x_1669;
        let x_1671 : f32 = u_xlat19.y;
        let x_1672 : f32 = u_xlat71;
        let x_1675 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec2<f32> = u_xlat31;
        let x_1681 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec23;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat71 = x_1690;
        let x_1692 : f32 = u_xlat19.z;
        let x_1693 : f32 = u_xlat71;
        let x_1696 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1692 * x_1693) + x_1696);
        let x_1700 : vec2<f32> = u_xlat60;
        let x_1702 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec24;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat71 = x_1711;
        let x_1713 : f32 = u_xlat19.w;
        let x_1714 : f32 = u_xlat71;
        let x_1717 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1713 * x_1714) + x_1717);
        let x_1721 : vec4<f32> = u_xlat11;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec25;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat71 = x_1733;
        let x_1735 : f32 = u_xlat7.x;
        let x_1736 : f32 = u_xlat71;
        let x_1739 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1735 * x_1736) + x_1739);
        let x_1743 : vec4<f32> = u_xlat11;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.z, x_1743.w);
        let x_1746 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec26;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat71 = x_1755;
        let x_1757 : f32 = u_xlat7.y;
        let x_1758 : f32 = u_xlat71;
        let x_1761 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1757 * x_1758) + x_1761);
        let x_1765 : vec2<f32> = u_xlat55;
        let x_1767 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
        let x_1774 : vec3<f32> = txVec27;
        let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1774.xy, x_1774.z);
        u_xlat71 = x_1776;
        let x_1778 : f32 = u_xlat7.z;
        let x_1779 : f32 = u_xlat71;
        let x_1782 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1778 * x_1779) + x_1782);
        let x_1786 : vec4<f32> = u_xlat6;
        let x_1787 : vec2<f32> = vec2<f32>(x_1786.x, x_1786.y);
        let x_1789 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1787.x, x_1787.y, x_1789);
        let x_1796 : vec3<f32> = txVec28;
        let x_1798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1796.xy, x_1796.z);
        u_xlat71 = x_1798;
        let x_1800 : f32 = u_xlat7.w;
        let x_1801 : f32 = u_xlat71;
        let x_1804 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1800 * x_1801) + x_1804);
      }
    }
  } else {
    let x_1808 : vec4<f32> = u_xlat4;
    let x_1809 : vec2<f32> = vec2<f32>(x_1808.x, x_1808.y);
    let x_1811 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
    let x_1818 : vec3<f32> = txVec29;
    let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1818.xy, x_1818.z);
    u_xlat69 = x_1820;
  }
  let x_1822 : f32 = x_343.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1822) + 1.0f);
  let x_1826 : f32 = u_xlat69;
  let x_1828 : f32 = x_343.x_MainLightShadowParams.x;
  let x_1831 : f32 = u_xlat1.x;
  u_xlat69 = ((x_1826 * x_1828) + x_1831);
  let x_1834 : f32 = u_xlat4.z;
  u_xlatb1 = (0.0f >= x_1834);
  let x_1838 : f32 = u_xlat4.z;
  u_xlatb71 = (x_1838 >= 1.0f);
  let x_1840 : bool = u_xlatb1;
  let x_1841 : bool = u_xlatb71;
  u_xlatb1 = (x_1840 | x_1841);
  let x_1843 : bool = u_xlatb1;
  let x_1844 : f32 = u_xlat69;
  u_xlat69 = select(x_1844, 1.0f, x_1843);
  let x_1846 : vec3<f32> = vs_TEXCOORD1;
  let x_1849 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1851 : vec3<f32> = (x_1846 + -(x_1849));
  let x_1852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
  let x_1854 : vec4<f32> = u_xlat4;
  let x_1856 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1854.x, x_1854.y, x_1854.z), vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
  let x_1861 : f32 = u_xlat1.x;
  let x_1863 : f32 = x_343.x_MainLightShadowParams.z;
  let x_1866 : f32 = x_343.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1861 * x_1863) + x_1866);
  let x_1868 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1868, 0.0f, 1.0f);
  let x_1870 : f32 = u_xlat69;
  u_xlat72 = (-(x_1870) + 1.0f);
  let x_1873 : f32 = u_xlat71;
  let x_1874 : f32 = u_xlat72;
  let x_1876 : f32 = u_xlat69;
  u_xlat69 = ((x_1873 * x_1874) + x_1876);
  let x_1878 : f32 = u_xlat69;
  let x_1880 : f32 = x_237.unity_LightData.z;
  u_xlat69 = (x_1878 * x_1880);
  let x_1882 : f32 = u_xlat69;
  let x_1885 : vec4<f32> = x_44.x_MainLightColor;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec3<f32> = u_xlat2;
  let x_1892 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(x_1890, vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
  let x_1895 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1895, 0.0f, 1.0f);
  let x_1897 : f32 = u_xlat69;
  let x_1899 : vec4<f32> = u_xlat4;
  let x_1901 : vec3<f32> = (vec3<f32>(x_1897, x_1897, x_1897) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
  let x_1905 : f32 = x_57.x_SpecColor.w;
  u_xlat69 = ((x_1905 * 10.0f) + 1.0f);
  let x_1909 : f32 = u_xlat69;
  u_xlat69 = exp2(x_1909);
  let x_1911 : vec3<f32> = u_xlat3;
  let x_1912 : vec3<f32> = u_xlat23;
  let x_1916 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1918 : vec3<f32> = ((x_1911 * vec3<f32>(x_1912.x, x_1912.x, x_1912.x)) + vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1921 : vec4<f32> = u_xlat7;
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(vec3<f32>(x_1921.x, x_1921.y, x_1921.z), vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : f32 = u_xlat71;
  u_xlat71 = max(x_1926, 1.17549435e-38f);
  let x_1929 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_1929);
  let x_1931 : f32 = u_xlat71;
  let x_1933 : vec4<f32> = u_xlat7;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931, x_1931, x_1931) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : vec3<f32> = u_xlat2;
  let x_1939 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(x_1938, vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
  let x_1942 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1942, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat71;
  u_xlat71 = log2(x_1944);
  let x_1946 : f32 = u_xlat69;
  let x_1947 : f32 = u_xlat71;
  u_xlat71 = (x_1946 * x_1947);
  let x_1949 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1949);
  let x_1951 : f32 = u_xlat71;
  let x_1954 : vec4<f32> = x_57.x_SpecColor;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1951, x_1951, x_1951) * vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1959 : vec4<f32> = u_xlat4;
  let x_1961 : vec4<f32> = u_xlat7;
  let x_1963 : vec3<f32> = (vec3<f32>(x_1959.x, x_1959.y, x_1959.z) * vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1964.w);
  let x_1966 : vec4<f32> = u_xlat6;
  let x_1968 : vec4<f32> = u_xlat1;
  let x_1971 : vec4<f32> = u_xlat4;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1966.x, x_1966.y, x_1966.z) * vec3<f32>(x_1968.y, x_1968.z, x_1968.w)) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1977 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1979 : f32 = x_237.unity_LightData.y;
  u_xlat71 = min(x_1977, x_1979);
  let x_1982 : f32 = u_xlat71;
  u_xlatu71 = bitcast<u32>(i32(x_1982));
  let x_1986 : f32 = u_xlat1.x;
  let x_1989 : f32 = x_343.x_AdditionalShadowFadeParams.x;
  let x_1992 : f32 = x_343.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1986 * x_1989) + x_1992);
  let x_1996 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1996, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2009 : u32 = u_xlatu_loop_1;
    let x_2010 : u32 = u_xlatu71;
    if ((x_2009 < x_2010)) {
    } else {
      break;
    }
    let x_2013 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2013 >> 2u);
    let x_2016 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2016 & 3u));
    let x_2020 : u32 = u_xlatu73;
    let x_2023 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_2020)];
    let x_2033 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2038 : vec4<u32> = indexable[x_2033];
    u_xlat73 = dot(x_2023, bitcast<vec4<f32>>(x_2038));
    let x_2042 : f32 = u_xlat73;
    u_xlati73 = i32(x_2042);
    let x_2044 : vec3<f32> = vs_TEXCOORD1;
    let x_2055 : i32 = u_xlati73;
    let x_2057 : vec4<f32> = x_2054.x_AdditionalLightsPosition[x_2055];
    let x_2060 : i32 = u_xlati73;
    let x_2062 : vec4<f32> = x_2054.x_AdditionalLightsPosition[x_2060];
    let x_2064 : vec3<f32> = ((-(x_2044) * vec3<f32>(x_2057.w, x_2057.w, x_2057.w)) + vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
    let x_2065 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
    let x_2068 : vec4<f32> = u_xlat7;
    let x_2070 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_2068.x, x_2068.y, x_2068.z), vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : f32 = u_xlat74;
    u_xlat74 = max(x_2073, 0.00006103515625f);
    let x_2076 : f32 = u_xlat74;
    u_xlat75 = inverseSqrt(x_2076);
    let x_2078 : f32 = u_xlat75;
    let x_2080 : vec4<f32> = u_xlat7;
    let x_2082 : vec3<f32> = (vec3<f32>(x_2078, x_2078, x_2078) * vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
    let x_2085 : f32 = u_xlat74;
    u_xlat75 = (1.0f / x_2085);
    let x_2087 : f32 = u_xlat74;
    let x_2088 : i32 = u_xlati73;
    let x_2090 : f32 = x_2054.x_AdditionalLightsAttenuation[x_2088].x;
    u_xlat74 = (x_2087 * x_2090);
    let x_2092 : f32 = u_xlat74;
    let x_2094 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2092) * x_2094) + 1.0f);
    let x_2097 : f32 = u_xlat74;
    u_xlat74 = max(x_2097, 0.0f);
    let x_2099 : f32 = u_xlat74;
    let x_2100 : f32 = u_xlat74;
    u_xlat74 = (x_2099 * x_2100);
    let x_2102 : f32 = u_xlat74;
    let x_2103 : f32 = u_xlat75;
    u_xlat74 = (x_2102 * x_2103);
    let x_2105 : i32 = u_xlati73;
    let x_2107 : vec4<f32> = x_2054.x_AdditionalLightsSpotDir[x_2105];
    let x_2109 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : f32 = u_xlat75;
    let x_2113 : i32 = u_xlati73;
    let x_2115 : f32 = x_2054.x_AdditionalLightsAttenuation[x_2113].z;
    let x_2117 : i32 = u_xlati73;
    let x_2119 : f32 = x_2054.x_AdditionalLightsAttenuation[x_2117].w;
    u_xlat75 = ((x_2112 * x_2115) + x_2119);
    let x_2121 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2121, 0.0f, 1.0f);
    let x_2123 : f32 = u_xlat75;
    let x_2124 : f32 = u_xlat75;
    u_xlat75 = (x_2123 * x_2124);
    let x_2126 : f32 = u_xlat74;
    let x_2127 : f32 = u_xlat75;
    u_xlat74 = (x_2126 * x_2127);
    let x_2131 : i32 = u_xlati73;
    let x_2133 : f32 = x_343.x_AdditionalShadowParams[x_2131].w;
    u_xlati75 = i32(x_2133);
    let x_2136 : i32 = u_xlati75;
    u_xlatb76 = (x_2136 >= 0i);
    let x_2138 : bool = u_xlatb76;
    if (x_2138) {
      let x_2142 : i32 = u_xlati73;
      let x_2144 : f32 = x_343.x_AdditionalShadowParams[x_2142].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2144, x_2144, x_2144, x_2144))));
      let x_2148 : bool = u_xlatb76;
      if (x_2148) {
        let x_2152 : vec4<f32> = u_xlat7;
        let x_2155 : vec4<f32> = u_xlat7;
        let x_2158 : vec4<bool> = (abs(vec4<f32>(x_2152.z, x_2152.z, x_2152.y, x_2152.z)) >= abs(vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.x)));
        let x_2160 : vec3<bool> = vec3<bool>(x_2158.x, x_2158.y, x_2158.z);
        let x_2161 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
        let x_2164 : bool = u_xlatb8.y;
        let x_2166 : bool = u_xlatb8.x;
        u_xlatb76 = (x_2164 & x_2166);
        let x_2168 : vec4<f32> = u_xlat7;
        let x_2171 : vec4<bool> = (-(vec4<f32>(x_2168.z, x_2168.y, x_2168.z, x_2168.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2172 : vec3<bool> = vec3<bool>(x_2171.x, x_2171.y, x_2171.w);
        let x_2173 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2172.x, x_2172.y, x_2173.z, x_2172.z);
        let x_2176 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2176);
        let x_2181 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2181);
        let x_2186 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_2186);
        let x_2189 : bool = u_xlatb8.z;
        if (x_2189) {
          let x_2194 : f32 = u_xlat8.y;
          x_2190 = x_2194;
        } else {
          let x_2196 : f32 = u_xlat77;
          x_2190 = x_2196;
        }
        let x_2197 : f32 = x_2190;
        u_xlat31.x = x_2197;
        let x_2200 : bool = u_xlatb76;
        if (x_2200) {
          let x_2205 : f32 = u_xlat8.x;
          x_2201 = x_2205;
        } else {
          let x_2208 : f32 = u_xlat31.x;
          x_2201 = x_2208;
        }
        let x_2209 : f32 = x_2201;
        u_xlat76 = x_2209;
        let x_2210 : i32 = u_xlati73;
        let x_2212 : f32 = x_343.x_AdditionalShadowParams[x_2210].w;
        u_xlat8.x = trunc(x_2212);
        let x_2215 : f32 = u_xlat76;
        let x_2217 : f32 = u_xlat8.x;
        u_xlat76 = (x_2215 + x_2217);
        let x_2219 : f32 = u_xlat76;
        u_xlati75 = i32(x_2219);
      }
      let x_2221 : i32 = u_xlati75;
      u_xlati75 = (x_2221 << bitcast<u32>(2i));
      let x_2223 : vec3<f32> = vs_TEXCOORD1;
      let x_2226 : i32 = u_xlati75;
      let x_2229 : i32 = u_xlati75;
      let x_2233 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_2226 + 1i) / 4i)][((x_2229 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2223.y, x_2223.y, x_2223.y, x_2223.y) * x_2233);
      let x_2235 : i32 = u_xlati75;
      let x_2237 : i32 = u_xlati75;
      let x_2240 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[(x_2235 / 4i)][(x_2237 % 4i)];
      let x_2241 : vec3<f32> = vs_TEXCOORD1;
      let x_2244 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2240 * vec4<f32>(x_2241.x, x_2241.x, x_2241.x, x_2241.x)) + x_2244);
      let x_2246 : i32 = u_xlati75;
      let x_2249 : i32 = u_xlati75;
      let x_2253 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_2246 + 2i) / 4i)][((x_2249 + 2i) % 4i)];
      let x_2254 : vec3<f32> = vs_TEXCOORD1;
      let x_2257 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2253 * vec4<f32>(x_2254.z, x_2254.z, x_2254.z, x_2254.z)) + x_2257);
      let x_2259 : vec4<f32> = u_xlat8;
      let x_2260 : i32 = u_xlati75;
      let x_2263 : i32 = u_xlati75;
      let x_2267 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_2260 + 3i) / 4i)][((x_2263 + 3i) % 4i)];
      u_xlat8 = (x_2259 + x_2267);
      let x_2269 : vec4<f32> = u_xlat8;
      let x_2271 : vec4<f32> = u_xlat8;
      let x_2273 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.y, x_2269.z) / vec3<f32>(x_2271.w, x_2271.w, x_2271.w));
      let x_2274 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
      let x_2277 : i32 = u_xlati73;
      let x_2279 : f32 = x_343.x_AdditionalShadowParams[x_2277].y;
      u_xlatb75 = (0.0f < x_2279);
      let x_2281 : bool = u_xlatb75;
      if (x_2281) {
        let x_2284 : i32 = u_xlati73;
        let x_2286 : f32 = x_343.x_AdditionalShadowParams[x_2284].y;
        u_xlatb75 = (1.0f == x_2286);
        let x_2288 : bool = u_xlatb75;
        if (x_2288) {
          let x_2291 : vec4<f32> = u_xlat8;
          let x_2295 : vec4<f32> = x_343.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2291.x, x_2291.y, x_2291.x, x_2291.y) + x_2295);
          let x_2298 : vec4<f32> = u_xlat9;
          let x_2299 : vec2<f32> = vec2<f32>(x_2298.x, x_2298.y);
          let x_2301 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2299.x, x_2299.y, x_2301);
          let x_2309 : vec3<f32> = txVec30;
          let x_2311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2309.xy, x_2309.z);
          u_xlat10.x = x_2311;
          let x_2314 : vec4<f32> = u_xlat9;
          let x_2315 : vec2<f32> = vec2<f32>(x_2314.z, x_2314.w);
          let x_2317 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2315.x, x_2315.y, x_2317);
          let x_2324 : vec3<f32> = txVec31;
          let x_2326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
          u_xlat10.y = x_2326;
          let x_2328 : vec4<f32> = u_xlat8;
          let x_2332 : vec4<f32> = x_343.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) + x_2332);
          let x_2335 : vec4<f32> = u_xlat9;
          let x_2336 : vec2<f32> = vec2<f32>(x_2335.x, x_2335.y);
          let x_2338 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2336.x, x_2336.y, x_2338);
          let x_2345 : vec3<f32> = txVec32;
          let x_2347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2345.xy, x_2345.z);
          u_xlat10.z = x_2347;
          let x_2350 : vec4<f32> = u_xlat9;
          let x_2351 : vec2<f32> = vec2<f32>(x_2350.z, x_2350.w);
          let x_2353 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
          let x_2360 : vec3<f32> = txVec33;
          let x_2362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
          u_xlat10.w = x_2362;
          let x_2364 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2364, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2367 : i32 = u_xlati73;
          let x_2369 : f32 = x_343.x_AdditionalShadowParams[x_2367].y;
          u_xlatb76 = (2.0f == x_2369);
          let x_2371 : bool = u_xlatb76;
          if (x_2371) {
            let x_2374 : vec4<f32> = u_xlat8;
            let x_2378 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2381 : vec2<f32> = ((vec2<f32>(x_2374.x, x_2374.y) * vec2<f32>(x_2378.z, x_2378.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2382 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat9;
            let x_2386 : vec2<f32> = floor(vec2<f32>(x_2384.x, x_2384.y));
            let x_2387 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2387.z, x_2387.w);
            let x_2389 : vec4<f32> = u_xlat8;
            let x_2392 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2395 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(x_2392.z, x_2392.w)) + -(vec2<f32>(x_2395.x, x_2395.y)));
            let x_2399 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2399.x, x_2399.x, x_2399.y, x_2399.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2402 : vec4<f32> = u_xlat10;
            let x_2404 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2402.x, x_2402.x, x_2402.z, x_2402.z) * vec4<f32>(x_2404.x, x_2404.x, x_2404.z, x_2404.z));
            let x_2407 : vec4<f32> = u_xlat11;
            let x_2409 : vec2<f32> = (vec2<f32>(x_2407.y, x_2407.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2410 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2409.x, x_2410.y, x_2409.y, x_2410.w);
            let x_2412 : vec4<f32> = u_xlat11;
            let x_2415 : vec2<f32> = u_xlat55;
            let x_2417 : vec2<f32> = ((vec2<f32>(x_2412.x, x_2412.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2415));
            let x_2418 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2421 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2421) + vec2<f32>(1.0f, 1.0f));
            let x_2424 : vec2<f32> = u_xlat55;
            let x_2425 : vec2<f32> = min(x_2424, vec2<f32>(0.0f, 0.0f));
            let x_2426 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2425.x, x_2425.y, x_2426.z, x_2426.w);
            let x_2428 : vec4<f32> = u_xlat12;
            let x_2431 : vec4<f32> = u_xlat12;
            let x_2434 : vec2<f32> = u_xlat57;
            let x_2435 : vec2<f32> = ((-(vec2<f32>(x_2428.x, x_2428.y)) * vec2<f32>(x_2431.x, x_2431.y)) + x_2434);
            let x_2436 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2435.x, x_2435.y, x_2436.z, x_2436.w);
            let x_2438 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2438, vec2<f32>(0.0f, 0.0f));
            let x_2440 : vec2<f32> = u_xlat55;
            let x_2442 : vec2<f32> = u_xlat55;
            let x_2444 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2440) * x_2442) + vec2<f32>(x_2444.y, x_2444.w));
            let x_2447 : vec4<f32> = u_xlat12;
            let x_2449 : vec2<f32> = (vec2<f32>(x_2447.x, x_2447.y) + vec2<f32>(1.0f, 1.0f));
            let x_2450 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2452 + vec2<f32>(1.0f, 1.0f));
            let x_2454 : vec4<f32> = u_xlat11;
            let x_2456 : vec2<f32> = (vec2<f32>(x_2454.x, x_2454.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2457 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
            let x_2459 : vec2<f32> = u_xlat57;
            let x_2460 : vec2<f32> = (x_2459 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2461 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
            let x_2463 : vec4<f32> = u_xlat12;
            let x_2465 : vec2<f32> = (vec2<f32>(x_2463.x, x_2463.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2466 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2465.x, x_2465.y, x_2466.z, x_2466.w);
            let x_2468 : vec2<f32> = u_xlat55;
            let x_2469 : vec2<f32> = (x_2468 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2470 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2472.y, x_2472.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2476 : f32 = u_xlat12.x;
            u_xlat13.z = x_2476;
            let x_2479 : f32 = u_xlat55.x;
            u_xlat13.w = x_2479;
            let x_2482 : f32 = u_xlat14.x;
            u_xlat11.z = x_2482;
            let x_2485 : f32 = u_xlat10.x;
            u_xlat11.w = x_2485;
            let x_2487 : vec4<f32> = u_xlat11;
            let x_2489 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2487.z, x_2487.w, x_2487.x, x_2487.z) + vec4<f32>(x_2489.z, x_2489.w, x_2489.x, x_2489.z));
            let x_2493 : f32 = u_xlat13.y;
            u_xlat12.z = x_2493;
            let x_2496 : f32 = u_xlat55.y;
            u_xlat12.w = x_2496;
            let x_2499 : f32 = u_xlat11.y;
            u_xlat14.z = x_2499;
            let x_2502 : f32 = u_xlat10.z;
            u_xlat14.w = x_2502;
            let x_2504 : vec4<f32> = u_xlat12;
            let x_2506 : vec4<f32> = u_xlat14;
            let x_2508 : vec3<f32> = (vec3<f32>(x_2504.z, x_2504.y, x_2504.w) + vec3<f32>(x_2506.z, x_2506.y, x_2506.w));
            let x_2509 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
            let x_2511 : vec4<f32> = u_xlat11;
            let x_2513 : vec4<f32> = u_xlat15;
            let x_2515 : vec3<f32> = (vec3<f32>(x_2511.x, x_2511.z, x_2511.w) / vec3<f32>(x_2513.z, x_2513.w, x_2513.y));
            let x_2516 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
            let x_2518 : vec4<f32> = u_xlat11;
            let x_2520 : vec3<f32> = (vec3<f32>(x_2518.x, x_2518.y, x_2518.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2521 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
            let x_2523 : vec4<f32> = u_xlat14;
            let x_2525 : vec4<f32> = u_xlat10;
            let x_2527 : vec3<f32> = (vec3<f32>(x_2523.z, x_2523.y, x_2523.w) / vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
            let x_2528 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
            let x_2530 : vec4<f32> = u_xlat12;
            let x_2532 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2533 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2532.x, x_2532.y, x_2532.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat11;
            let x_2538 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2535.y, x_2535.x, x_2535.z) * vec3<f32>(x_2538.x, x_2538.x, x_2538.x));
            let x_2541 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat12;
            let x_2546 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2548 : vec3<f32> = (vec3<f32>(x_2543.x, x_2543.y, x_2543.z) * vec3<f32>(x_2546.y, x_2546.y, x_2546.y));
            let x_2549 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
            let x_2552 : f32 = u_xlat12.x;
            u_xlat11.w = x_2552;
            let x_2554 : vec4<f32> = u_xlat9;
            let x_2557 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2560 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y) * vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y)) + vec4<f32>(x_2560.y, x_2560.w, x_2560.x, x_2560.w));
            let x_2563 : vec4<f32> = u_xlat9;
            let x_2566 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2569 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2563.x, x_2563.y) * vec2<f32>(x_2566.x, x_2566.y)) + vec2<f32>(x_2569.z, x_2569.w));
            let x_2573 : f32 = u_xlat11.y;
            u_xlat12.w = x_2573;
            let x_2575 : vec4<f32> = u_xlat12;
            let x_2576 : vec2<f32> = vec2<f32>(x_2575.y, x_2575.z);
            let x_2577 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2577.x, x_2576.x, x_2577.z, x_2576.y);
            let x_2579 : vec4<f32> = u_xlat9;
            let x_2582 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2585 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) * vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y)) + vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat9;
            let x_2591 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2594 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y) * vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y)) + vec4<f32>(x_2594.w, x_2594.y, x_2594.w, x_2594.z));
            let x_2597 : vec4<f32> = u_xlat9;
            let x_2600 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2603 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2597.x, x_2597.y, x_2597.x, x_2597.y) * vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y)) + vec4<f32>(x_2603.x, x_2603.w, x_2603.z, x_2603.w));
            let x_2606 : vec4<f32> = u_xlat10;
            let x_2608 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2606.x, x_2606.x, x_2606.x, x_2606.y) * vec4<f32>(x_2608.z, x_2608.w, x_2608.y, x_2608.z));
            let x_2611 : vec4<f32> = u_xlat10;
            let x_2613 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2611.y, x_2611.y, x_2611.z, x_2611.z) * x_2613);
            let x_2616 : f32 = u_xlat10.z;
            let x_2618 : f32 = u_xlat15.y;
            u_xlat76 = (x_2616 * x_2618);
            let x_2621 : vec4<f32> = u_xlat13;
            let x_2622 : vec2<f32> = vec2<f32>(x_2621.x, x_2621.y);
            let x_2624 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2622.x, x_2622.y, x_2624);
            let x_2631 : vec3<f32> = txVec34;
            let x_2633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2631.xy, x_2631.z);
            u_xlat77 = x_2633;
            let x_2635 : vec4<f32> = u_xlat13;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec35;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat9.x = x_2647;
            let x_2650 : f32 = u_xlat9.x;
            let x_2652 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2650 * x_2652);
            let x_2656 : f32 = u_xlat16.x;
            let x_2657 : f32 = u_xlat77;
            let x_2660 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2656 * x_2657) + x_2660);
            let x_2663 : vec2<f32> = u_xlat55;
            let x_2665 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2663.x, x_2663.y, x_2665);
            let x_2672 : vec3<f32> = txVec36;
            let x_2674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2672.xy, x_2672.z);
            u_xlat9.x = x_2674;
            let x_2677 : f32 = u_xlat16.z;
            let x_2679 : f32 = u_xlat9.x;
            let x_2681 : f32 = u_xlat77;
            u_xlat77 = ((x_2677 * x_2679) + x_2681);
            let x_2684 : vec4<f32> = u_xlat12;
            let x_2685 : vec2<f32> = vec2<f32>(x_2684.x, x_2684.y);
            let x_2687 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec37;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat9.x = x_2696;
            let x_2699 : f32 = u_xlat16.w;
            let x_2701 : f32 = u_xlat9.x;
            let x_2703 : f32 = u_xlat77;
            u_xlat77 = ((x_2699 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat14;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.x, x_2706.y);
            let x_2709 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec38;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat9.x = x_2718;
            let x_2721 : f32 = u_xlat17.x;
            let x_2723 : f32 = u_xlat9.x;
            let x_2725 : f32 = u_xlat77;
            u_xlat77 = ((x_2721 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat14;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.z, x_2728.w);
            let x_2731 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec39;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat9.x = x_2740;
            let x_2743 : f32 = u_xlat17.y;
            let x_2745 : f32 = u_xlat9.x;
            let x_2747 : f32 = u_xlat77;
            u_xlat77 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat12;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.z, x_2750.w);
            let x_2753 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec40;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat9.x = x_2762;
            let x_2765 : f32 = u_xlat17.z;
            let x_2767 : f32 = u_xlat9.x;
            let x_2769 : f32 = u_xlat77;
            u_xlat77 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
            let x_2775 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec41;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat9.x = x_2784;
            let x_2787 : f32 = u_xlat17.w;
            let x_2789 : f32 = u_xlat9.x;
            let x_2791 : f32 = u_xlat77;
            u_xlat77 = ((x_2787 * x_2789) + x_2791);
            let x_2794 : vec4<f32> = u_xlat11;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.z, x_2794.w);
            let x_2797 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2804 : vec3<f32> = txVec42;
            let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
            u_xlat9.x = x_2806;
            let x_2808 : f32 = u_xlat76;
            let x_2810 : f32 = u_xlat9.x;
            let x_2812 : f32 = u_xlat77;
            u_xlat75 = ((x_2808 * x_2810) + x_2812);
          } else {
            let x_2815 : vec4<f32> = u_xlat8;
            let x_2818 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2821 : vec2<f32> = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2818.z, x_2818.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2822 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2821.x, x_2821.y, x_2822.z, x_2822.w);
            let x_2824 : vec4<f32> = u_xlat9;
            let x_2826 : vec2<f32> = floor(vec2<f32>(x_2824.x, x_2824.y));
            let x_2827 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
            let x_2829 : vec4<f32> = u_xlat8;
            let x_2832 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2835 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2829.x, x_2829.y) * vec2<f32>(x_2832.z, x_2832.w)) + -(vec2<f32>(x_2835.x, x_2835.y)));
            let x_2839 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2839.x, x_2839.x, x_2839.y, x_2839.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2842 : vec4<f32> = u_xlat10;
            let x_2844 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2842.x, x_2842.x, x_2842.z, x_2842.z) * vec4<f32>(x_2844.x, x_2844.x, x_2844.z, x_2844.z));
            let x_2847 : vec4<f32> = u_xlat11;
            let x_2849 : vec2<f32> = (vec2<f32>(x_2847.y, x_2847.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2850 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2850.x, x_2849.x, x_2850.z, x_2849.y);
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2855 : vec2<f32> = u_xlat55;
            let x_2857 : vec2<f32> = ((vec2<f32>(x_2852.x, x_2852.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2855));
            let x_2858 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2857.x, x_2858.y, x_2857.y, x_2858.w);
            let x_2860 : vec2<f32> = u_xlat55;
            let x_2862 : vec2<f32> = (-(x_2860) + vec2<f32>(1.0f, 1.0f));
            let x_2863 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2865, vec2<f32>(0.0f, 0.0f));
            let x_2867 : vec2<f32> = u_xlat57;
            let x_2869 : vec2<f32> = u_xlat57;
            let x_2871 : vec4<f32> = u_xlat11;
            let x_2873 : vec2<f32> = ((-(x_2867) * x_2869) + vec2<f32>(x_2871.x, x_2871.y));
            let x_2874 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2873.x, x_2873.y, x_2874.z, x_2874.w);
            let x_2876 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2876, vec2<f32>(0.0f, 0.0f));
            let x_2879 : vec2<f32> = u_xlat57;
            let x_2881 : vec2<f32> = u_xlat57;
            let x_2883 : vec4<f32> = u_xlat10;
            let x_2885 : vec2<f32> = ((-(x_2879) * x_2881) + vec2<f32>(x_2883.y, x_2883.w));
            let x_2886 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2885.x, x_2886.y, x_2885.y);
            let x_2888 : vec4<f32> = u_xlat11;
            let x_2890 : vec2<f32> = (vec2<f32>(x_2888.x, x_2888.y) + vec2<f32>(2.0f, 2.0f));
            let x_2891 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec3<f32> = u_xlat33;
            let x_2895 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.z) + vec2<f32>(2.0f, 2.0f));
            let x_2896 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2896.x, x_2895.x, x_2896.z, x_2895.y);
            let x_2899 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2899 * 0.08163200318813323975f);
            let x_2902 : vec4<f32> = u_xlat10;
            let x_2904 : vec3<f32> = (vec3<f32>(x_2902.z, x_2902.x, x_2902.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2905 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
            let x_2907 : vec4<f32> = u_xlat11;
            let x_2909 : vec2<f32> = (vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2910 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2913 : f32 = u_xlat14.y;
            u_xlat13.x = x_2913;
            let x_2915 : vec2<f32> = u_xlat55;
            let x_2918 : vec2<f32> = ((vec2<f32>(x_2915.x, x_2915.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2919 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2919.x, x_2918.x, x_2919.z, x_2918.y);
            let x_2921 : vec2<f32> = u_xlat55;
            let x_2924 : vec2<f32> = ((vec2<f32>(x_2921.x, x_2921.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2925 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2924.x, x_2925.y, x_2924.y, x_2925.w);
            let x_2928 : f32 = u_xlat10.x;
            u_xlat11.y = x_2928;
            let x_2931 : f32 = u_xlat12.y;
            u_xlat11.w = x_2931;
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2934 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2933 + x_2934);
            let x_2936 : vec2<f32> = u_xlat55;
            let x_2939 : vec2<f32> = ((vec2<f32>(x_2936.y, x_2936.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2940 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2940.x, x_2939.x, x_2940.z, x_2939.y);
            let x_2942 : vec2<f32> = u_xlat55;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2942.y, x_2942.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2945.x, x_2946.y, x_2945.y, x_2946.w);
            let x_2949 : f32 = u_xlat10.y;
            u_xlat12.y = x_2949;
            let x_2951 : vec4<f32> = u_xlat12;
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2951 + x_2952);
            let x_2954 : vec4<f32> = u_xlat11;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2954 / x_2955);
            let x_2957 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2957 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2960 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2959 / x_2960);
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2962 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2964 : vec4<f32> = u_xlat11;
            let x_2967 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2964.w, x_2964.x, x_2964.y, x_2964.z) * vec4<f32>(x_2967.x, x_2967.x, x_2967.x, x_2967.x));
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2973 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2970.x, x_2970.w, x_2970.y, x_2970.z) * vec4<f32>(x_2973.y, x_2973.y, x_2973.y, x_2973.y));
            let x_2976 : vec4<f32> = u_xlat11;
            let x_2977 : vec3<f32> = vec3<f32>(x_2976.y, x_2976.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2977.x, x_2978.y, x_2977.y, x_2977.z);
            let x_2981 : f32 = u_xlat12.x;
            u_xlat14.y = x_2981;
            let x_2983 : vec4<f32> = u_xlat9;
            let x_2986 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2989 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y) * vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.y)) + vec4<f32>(x_2989.x, x_2989.y, x_2989.z, x_2989.y));
            let x_2992 : vec4<f32> = u_xlat9;
            let x_2995 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2992.x, x_2992.y) * vec2<f32>(x_2995.x, x_2995.y)) + vec2<f32>(x_2998.w, x_2998.y));
            let x_3002 : f32 = u_xlat14.y;
            u_xlat11.y = x_3002;
            let x_3005 : f32 = u_xlat12.z;
            u_xlat14.y = x_3005;
            let x_3007 : vec4<f32> = u_xlat9;
            let x_3010 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y) * vec4<f32>(x_3010.x, x_3010.y, x_3010.x, x_3010.y)) + vec4<f32>(x_3013.x, x_3013.y, x_3013.z, x_3013.y));
            let x_3016 : vec4<f32> = u_xlat9;
            let x_3019 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3024 : vec2<f32> = ((vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(x_3019.x, x_3019.y)) + vec2<f32>(x_3022.w, x_3022.y));
            let x_3025 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3028 : f32 = u_xlat14.y;
            u_xlat11.z = x_3028;
            let x_3030 : vec4<f32> = u_xlat9;
            let x_3033 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y) * vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y)) + vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.z));
            let x_3040 : f32 = u_xlat12.w;
            u_xlat14.y = x_3040;
            let x_3042 : vec4<f32> = u_xlat9;
            let x_3045 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3048 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3042.x, x_3042.y, x_3042.x, x_3042.y) * vec4<f32>(x_3045.x, x_3045.y, x_3045.x, x_3045.y)) + vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3048.y));
            let x_3052 : vec4<f32> = u_xlat9;
            let x_3055 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3052.x, x_3052.y) * vec2<f32>(x_3055.x, x_3055.y)) + vec2<f32>(x_3058.w, x_3058.y));
            let x_3062 : f32 = u_xlat14.y;
            u_xlat11.w = x_3062;
            let x_3065 : vec4<f32> = u_xlat9;
            let x_3068 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3065.x, x_3065.y) * vec2<f32>(x_3068.x, x_3068.y)) + vec2<f32>(x_3071.x, x_3071.w));
            let x_3074 : vec4<f32> = u_xlat14;
            let x_3075 : vec3<f32> = vec3<f32>(x_3074.x, x_3074.z, x_3074.w);
            let x_3076 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3075.x, x_3076.y, x_3075.y, x_3075.z);
            let x_3078 : vec4<f32> = u_xlat9;
            let x_3081 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y) * vec4<f32>(x_3081.x, x_3081.y, x_3081.x, x_3081.y)) + vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3084.y));
            let x_3088 : vec4<f32> = u_xlat9;
            let x_3091 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3091.x, x_3091.y)) + vec2<f32>(x_3094.w, x_3094.y));
            let x_3098 : f32 = u_xlat11.x;
            u_xlat12.x = x_3098;
            let x_3100 : vec4<f32> = u_xlat9;
            let x_3103 : vec4<f32> = x_343.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3108 : vec2<f32> = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3103.x, x_3103.y)) + vec2<f32>(x_3106.x, x_3106.y));
            let x_3109 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
            let x_3112 : vec4<f32> = u_xlat10;
            let x_3114 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3112.x, x_3112.x, x_3112.x, x_3112.x) * x_3114);
            let x_3117 : vec4<f32> = u_xlat10;
            let x_3119 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3117.y, x_3117.y, x_3117.y, x_3117.y) * x_3119);
            let x_3122 : vec4<f32> = u_xlat10;
            let x_3124 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3122.z, x_3122.z, x_3122.z, x_3122.z) * x_3124);
            let x_3126 : vec4<f32> = u_xlat10;
            let x_3128 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3126.w, x_3126.w, x_3126.w, x_3126.w) * x_3128);
            let x_3131 : vec4<f32> = u_xlat15;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.x, x_3131.y);
            let x_3134 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
            let x_3141 : vec3<f32> = txVec43;
            let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
            u_xlat76 = x_3143;
            let x_3145 : vec4<f32> = u_xlat15;
            let x_3146 : vec2<f32> = vec2<f32>(x_3145.z, x_3145.w);
            let x_3148 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec44;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat77 = x_3157;
            let x_3158 : f32 = u_xlat77;
            let x_3160 : f32 = u_xlat20.y;
            u_xlat77 = (x_3158 * x_3160);
            let x_3163 : f32 = u_xlat20.x;
            let x_3164 : f32 = u_xlat76;
            let x_3166 : f32 = u_xlat77;
            u_xlat76 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec2<f32> = u_xlat55;
            let x_3171 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec45;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat77 = x_3180;
            let x_3182 : f32 = u_xlat20.z;
            let x_3183 : f32 = u_xlat77;
            let x_3185 : f32 = u_xlat76;
            u_xlat76 = ((x_3182 * x_3183) + x_3185);
            let x_3188 : vec4<f32> = u_xlat18;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.x, x_3188.y);
            let x_3191 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec46;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat77 = x_3200;
            let x_3202 : f32 = u_xlat20.w;
            let x_3203 : f32 = u_xlat77;
            let x_3205 : f32 = u_xlat76;
            u_xlat76 = ((x_3202 * x_3203) + x_3205);
            let x_3208 : vec4<f32> = u_xlat16;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec47;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat77 = x_3220;
            let x_3222 : f32 = u_xlat21.x;
            let x_3223 : f32 = u_xlat77;
            let x_3225 : f32 = u_xlat76;
            u_xlat76 = ((x_3222 * x_3223) + x_3225);
            let x_3228 : vec4<f32> = u_xlat16;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.z, x_3228.w);
            let x_3231 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec48;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat77 = x_3240;
            let x_3242 : f32 = u_xlat21.y;
            let x_3243 : f32 = u_xlat77;
            let x_3245 : f32 = u_xlat76;
            u_xlat76 = ((x_3242 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat17;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec49;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat77 = x_3260;
            let x_3262 : f32 = u_xlat21.z;
            let x_3263 : f32 = u_xlat77;
            let x_3265 : f32 = u_xlat76;
            u_xlat76 = ((x_3262 * x_3263) + x_3265);
            let x_3268 : vec4<f32> = u_xlat18;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.z, x_3268.w);
            let x_3271 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3278 : vec3<f32> = txVec50;
            let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
            u_xlat77 = x_3280;
            let x_3282 : f32 = u_xlat21.w;
            let x_3283 : f32 = u_xlat77;
            let x_3285 : f32 = u_xlat76;
            u_xlat76 = ((x_3282 * x_3283) + x_3285);
            let x_3288 : vec4<f32> = u_xlat19;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.x, x_3288.y);
            let x_3291 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec51;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat77 = x_3300;
            let x_3302 : f32 = u_xlat22.x;
            let x_3303 : f32 = u_xlat77;
            let x_3305 : f32 = u_xlat76;
            u_xlat76 = ((x_3302 * x_3303) + x_3305);
            let x_3308 : vec4<f32> = u_xlat19;
            let x_3309 : vec2<f32> = vec2<f32>(x_3308.z, x_3308.w);
            let x_3311 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3318 : vec3<f32> = txVec52;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat77 = x_3320;
            let x_3322 : f32 = u_xlat22.y;
            let x_3323 : f32 = u_xlat77;
            let x_3325 : f32 = u_xlat76;
            u_xlat76 = ((x_3322 * x_3323) + x_3325);
            let x_3328 : vec2<f32> = u_xlat34;
            let x_3330 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec53;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat77 = x_3339;
            let x_3341 : f32 = u_xlat22.z;
            let x_3342 : f32 = u_xlat77;
            let x_3344 : f32 = u_xlat76;
            u_xlat76 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec2<f32> = u_xlat63;
            let x_3349 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec54;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat77 = x_3358;
            let x_3360 : f32 = u_xlat22.w;
            let x_3361 : f32 = u_xlat77;
            let x_3363 : f32 = u_xlat76;
            u_xlat76 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec4<f32> = u_xlat14;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.x, x_3366.y);
            let x_3369 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec55;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat77 = x_3378;
            let x_3380 : f32 = u_xlat10.x;
            let x_3381 : f32 = u_xlat77;
            let x_3383 : f32 = u_xlat76;
            u_xlat76 = ((x_3380 * x_3381) + x_3383);
            let x_3386 : vec4<f32> = u_xlat14;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.z, x_3386.w);
            let x_3389 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec56;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat77 = x_3398;
            let x_3400 : f32 = u_xlat10.y;
            let x_3401 : f32 = u_xlat77;
            let x_3403 : f32 = u_xlat76;
            u_xlat76 = ((x_3400 * x_3401) + x_3403);
            let x_3406 : vec2<f32> = u_xlat58;
            let x_3408 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec57;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat77 = x_3417;
            let x_3419 : f32 = u_xlat10.z;
            let x_3420 : f32 = u_xlat77;
            let x_3422 : f32 = u_xlat76;
            u_xlat76 = ((x_3419 * x_3420) + x_3422);
            let x_3425 : vec4<f32> = u_xlat9;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
            let x_3428 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec58;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat77 = x_3437;
            let x_3439 : f32 = u_xlat10.w;
            let x_3440 : f32 = u_xlat77;
            let x_3442 : f32 = u_xlat76;
            u_xlat75 = ((x_3439 * x_3440) + x_3442);
          }
        }
      } else {
        let x_3446 : vec4<f32> = u_xlat8;
        let x_3447 : vec2<f32> = vec2<f32>(x_3446.x, x_3446.y);
        let x_3449 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
        let x_3456 : vec3<f32> = txVec59;
        let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
        u_xlat75 = x_3458;
      }
      let x_3459 : i32 = u_xlati73;
      let x_3461 : f32 = x_343.x_AdditionalShadowParams[x_3459].x;
      u_xlat76 = (1.0f + -(x_3461));
      let x_3464 : f32 = u_xlat75;
      let x_3465 : i32 = u_xlati73;
      let x_3467 : f32 = x_343.x_AdditionalShadowParams[x_3465].x;
      let x_3469 : f32 = u_xlat76;
      u_xlat75 = ((x_3464 * x_3467) + x_3469);
      let x_3472 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3472);
      let x_3475 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3475 >= 1.0f);
      let x_3478 : bool = u_xlatb76;
      let x_3480 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3478 | x_3480);
      let x_3482 : bool = u_xlatb76;
      let x_3483 : f32 = u_xlat75;
      u_xlat75 = select(x_3483, 1.0f, x_3482);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3486 : f32 = u_xlat75;
    u_xlat76 = (-(x_3486) + 1.0f);
    let x_3490 : f32 = u_xlat1.x;
    let x_3491 : f32 = u_xlat76;
    let x_3493 : f32 = u_xlat75;
    u_xlat75 = ((x_3490 * x_3491) + x_3493);
    let x_3495 : f32 = u_xlat74;
    let x_3496 : f32 = u_xlat75;
    u_xlat74 = (x_3495 * x_3496);
    let x_3498 : f32 = u_xlat74;
    let x_3500 : i32 = u_xlati73;
    let x_3502 : vec4<f32> = x_2054.x_AdditionalLightsColor[x_3500];
    let x_3504 : vec3<f32> = (vec3<f32>(x_3498, x_3498, x_3498) * vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
    let x_3505 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
    let x_3507 : vec3<f32> = u_xlat2;
    let x_3508 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(x_3507, vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
    let x_3511 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3511, 0.0f, 1.0f);
    let x_3513 : f32 = u_xlat73;
    let x_3515 : vec4<f32> = u_xlat8;
    let x_3517 : vec3<f32> = (vec3<f32>(x_3513, x_3513, x_3513) * vec3<f32>(x_3515.x, x_3515.y, x_3515.z));
    let x_3518 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3517.x, x_3517.y, x_3517.z, x_3518.w);
    let x_3520 : vec3<f32> = u_xlat3;
    let x_3521 : vec3<f32> = u_xlat23;
    let x_3524 : vec4<f32> = u_xlat7;
    let x_3526 : vec3<f32> = ((x_3520 * vec3<f32>(x_3521.x, x_3521.x, x_3521.x)) + vec3<f32>(x_3524.x, x_3524.y, x_3524.z));
    let x_3527 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3526.x, x_3526.y, x_3526.z, x_3527.w);
    let x_3529 : vec4<f32> = u_xlat7;
    let x_3531 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3529.x, x_3529.y, x_3529.z), vec3<f32>(x_3531.x, x_3531.y, x_3531.z));
    let x_3534 : f32 = u_xlat73;
    u_xlat73 = max(x_3534, 1.17549435e-38f);
    let x_3536 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3536);
    let x_3538 : f32 = u_xlat73;
    let x_3540 : vec4<f32> = u_xlat7;
    let x_3542 : vec3<f32> = (vec3<f32>(x_3538, x_3538, x_3538) * vec3<f32>(x_3540.x, x_3540.y, x_3540.z));
    let x_3543 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3542.x, x_3542.y, x_3542.z, x_3543.w);
    let x_3545 : vec3<f32> = u_xlat2;
    let x_3546 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(x_3545, vec3<f32>(x_3546.x, x_3546.y, x_3546.z));
    let x_3549 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3549, 0.0f, 1.0f);
    let x_3551 : f32 = u_xlat73;
    u_xlat73 = log2(x_3551);
    let x_3553 : f32 = u_xlat69;
    let x_3554 : f32 = u_xlat73;
    u_xlat73 = (x_3553 * x_3554);
    let x_3556 : f32 = u_xlat73;
    u_xlat73 = exp2(x_3556);
    let x_3558 : f32 = u_xlat73;
    let x_3561 : vec4<f32> = x_57.x_SpecColor;
    let x_3563 : vec3<f32> = (vec3<f32>(x_3558, x_3558, x_3558) * vec3<f32>(x_3561.x, x_3561.y, x_3561.z));
    let x_3564 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3563.x, x_3563.y, x_3563.z, x_3564.w);
    let x_3566 : vec4<f32> = u_xlat7;
    let x_3568 : vec4<f32> = u_xlat8;
    let x_3570 : vec3<f32> = (vec3<f32>(x_3566.x, x_3566.y, x_3566.z) * vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
    let x_3571 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3570.x, x_3570.y, x_3570.z, x_3571.w);
    let x_3573 : vec4<f32> = u_xlat9;
    let x_3575 : vec4<f32> = u_xlat1;
    let x_3578 : vec4<f32> = u_xlat7;
    let x_3580 : vec3<f32> = ((vec3<f32>(x_3573.x, x_3573.y, x_3573.z) * vec3<f32>(x_3575.y, x_3575.z, x_3575.w)) + vec3<f32>(x_3578.x, x_3578.y, x_3578.z));
    let x_3581 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3580.x, x_3580.y, x_3580.z, x_3581.w);
    let x_3583 : vec4<f32> = u_xlat6;
    let x_3585 : vec4<f32> = u_xlat7;
    let x_3587 : vec3<f32> = (vec3<f32>(x_3583.x, x_3583.y, x_3583.z) + vec3<f32>(x_3585.x, x_3585.y, x_3585.z));
    let x_3588 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);

    continuing {
      let x_3590 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3590 + bitcast<u32>(1i));
    }
  }
  let x_3592 : vec4<f32> = u_xlat5;
  let x_3594 : vec4<f32> = u_xlat1;
  let x_3597 : vec4<f32> = u_xlat4;
  let x_3599 : vec3<f32> = ((vec3<f32>(x_3592.x, x_3592.y, x_3592.z) * vec3<f32>(x_3594.y, x_3594.z, x_3594.w)) + vec3<f32>(x_3597.x, x_3597.y, x_3597.z));
  let x_3600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3599.x, x_3599.y, x_3599.z, x_3600.w);
  let x_3604 : vec4<f32> = u_xlat6;
  let x_3606 : vec4<f32> = u_xlat1;
  let x_3608 : vec3<f32> = (vec3<f32>(x_3604.x, x_3604.y, x_3604.z) + vec3<f32>(x_3606.x, x_3606.y, x_3606.z));
  let x_3609 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3608.x, x_3608.y, x_3608.z, x_3609.w);
  let x_3612 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3612 == 1.0f);
  let x_3614 : bool = u_xlatb23;
  let x_3615 : bool = u_xlatb46;
  u_xlatb23 = (x_3614 | x_3615);
  let x_3617 : bool = u_xlatb23;
  if (x_3617) {
    let x_3622 : f32 = u_xlat0.x;
    x_3618 = x_3622;
  } else {
    x_3618 = 1.0f;
  }
  let x_3624 : f32 = x_3618;
  SV_Target0.w = x_3624;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


