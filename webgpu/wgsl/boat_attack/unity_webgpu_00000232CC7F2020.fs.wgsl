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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_320 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb1 : bool;

@group(1) @binding(4) var<uniform> x_407 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb71 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> u_xlatu72 : u32;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_1870 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb77 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu73 : u32;

var<private> u_xlatb74 : bool;

fn main_1() {
  var x_61 : f32;
  var x_119 : f32;
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
  var x_1643 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2012 : f32;
  var x_2024 : f32;
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
  var x_3517 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_74 : f32 = u_xlat0.w;
  let x_76 : f32 = x_42.x_BaseColor.w;
  let x_79 : f32 = x_42.x_Cutoff;
  u_xlat23.x = ((x_74 * x_76) + -(x_79));
  let x_85 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_85);
  let x_89 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_89);
  let x_91 : f32 = u_xlat69;
  let x_93 : f32 = u_xlat46;
  u_xlat46 = (abs(x_91) + abs(x_93));
  let x_96 : f32 = u_xlat46;
  u_xlat46 = max(x_96, 0.00009999999747378752f);
  let x_100 : f32 = u_xlat23.x;
  let x_101 : f32 = u_xlat46;
  u_xlat23.x = (x_100 / x_101);
  let x_105 : f32 = u_xlat23.x;
  u_xlat23.x = (x_105 + 0.5f);
  let x_110 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_110, 0.0f, 1.0f);
  let x_116 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb46;
  if (x_118) {
    let x_123 : f32 = u_xlat23.x;
    x_119 = x_123;
  } else {
    let x_126 : f32 = u_xlat0.x;
    x_119 = x_126;
  }
  let x_127 : f32 = x_119;
  u_xlat0.x = x_127;
  let x_130 : f32 = u_xlat0.x;
  u_xlat23.x = (x_130 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat23.x;
  u_xlatb23 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb23;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_152 : vec2<f32> = vs_TEXCOORD0;
  let x_154 : f32 = x_28.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_152, x_154);
  let x_156 : vec3<f32> = vec3<f32>(x_155.x, x_155.y, x_155.w);
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat2.x;
  let x_163 : f32 = u_xlat2.z;
  u_xlat2.x = (x_160 * x_163);
  let x_166 : vec4<f32> = u_xlat2;
  let x_173 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_174 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_173.x, x_174.y, x_173.y);
  let x_176 : vec3<f32> = u_xlat23;
  let x_178 : vec3<f32> = u_xlat23;
  u_xlat1.x = dot(vec2<f32>(x_176.x, x_176.z), vec2<f32>(x_178.x, x_178.z));
  let x_183 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_183, 1.0f);
  let x_187 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_187) + 1.0f);
  let x_192 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_192);
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_196, 0.0000000000000001f);
  let x_200 : vec3<f32> = u_xlat23;
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  let x_206 : vec3<f32> = (vec3<f32>(x_200.z, x_200.z, x_200.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat23;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.x, x_220.x) * vec3<f32>(x_223.x, x_223.y, x_223.z)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat23.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat23;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_251;
  let x_254 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_254;
  let x_258 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_258;
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat23.x = dot(x_260, x_261);
  let x_265 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_265, 0.00006103515625f);
  let x_270 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_270);
  let x_276 : f32 = vs_TEXCOORD1.y;
  let x_279 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat69 = (x_276 * x_279);
  let x_282 : f32 = x_28.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD1.x;
  let x_286 : f32 = u_xlat69;
  u_xlat69 = ((x_282 * x_284) + x_286);
  let x_290 : f32 = x_28.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_TEXCOORD1.z;
  let x_294 : f32 = u_xlat69;
  u_xlat69 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat69;
  let x_299 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat69 = (x_296 + x_299);
  let x_301 : f32 = u_xlat69;
  let x_305 : f32 = x_28.x_ProjectionParams.y;
  u_xlat69 = (-(x_301) + -(x_305));
  let x_308 : f32 = u_xlat69;
  u_xlat69 = max(x_308, 0.0f);
  let x_310 : f32 = u_xlat69;
  let x_313 : f32 = x_28.unity_FogParams.x;
  u_xlat69 = (x_310 * x_313);
  u_xlat2.w = 1.0f;
  let x_323 : vec4<f32> = x_320.unity_SHAr;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_320.unity_SHAg;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_320.unity_SHAb;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_335, x_336);
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_340.y, x_340.z, x_340.z, x_340.x) * vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.z));
  let x_348 : vec4<f32> = x_320.unity_SHBr;
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_320.unity_SHBg;
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_320.unity_SHBb;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_360, x_361);
  let x_365 : f32 = u_xlat2.y;
  let x_367 : f32 = u_xlat2.y;
  u_xlat1.x = (x_365 * x_367);
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat2.x;
  let x_376 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_371 * x_373) + -(x_376));
  let x_382 : vec4<f32> = x_320.unity_SHC;
  let x_384 : vec4<f32> = u_xlat1;
  let x_387 : vec4<f32> = u_xlat6;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384.x, x_384.x, x_384.x)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec3<f32> = u_xlat4;
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_392 + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_396, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_410 : f32 = x_407.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_410);
  let x_412 : bool = u_xlatb1;
  if (x_412) {
    let x_416 : f32 = x_407.x_MainLightShadowParams.y;
    u_xlatb1 = (x_416 == 1.0f);
    let x_418 : bool = u_xlatb1;
    if (x_418) {
      let x_422 : vec4<f32> = vs_TEXCOORD6;
      let x_425 : vec4<f32> = x_407.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y) + x_425);
      let x_429 : vec4<f32> = u_xlat5;
      let x_430 : vec2<f32> = vec2<f32>(x_429.x, x_429.y);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_430.x, x_430.y, x_432);
      let x_444 : vec3<f32> = txVec0;
      let x_446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_444.xy, x_444.z);
      u_xlat6.x = x_446;
      let x_449 : vec4<f32> = u_xlat5;
      let x_450 : vec2<f32> = vec2<f32>(x_449.z, x_449.w);
      let x_452 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_450.x, x_450.y, x_452);
      let x_459 : vec3<f32> = txVec1;
      let x_461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_459.xy, x_459.z);
      u_xlat6.y = x_461;
      let x_463 : vec4<f32> = vs_TEXCOORD6;
      let x_466 : vec4<f32> = x_407.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_463.x, x_463.y, x_463.x, x_463.y) + x_466);
      let x_469 : vec4<f32> = u_xlat5;
      let x_470 : vec2<f32> = vec2<f32>(x_469.x, x_469.y);
      let x_472 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_470.x, x_470.y, x_472);
      let x_479 : vec3<f32> = txVec2;
      let x_481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_479.xy, x_479.z);
      u_xlat6.z = x_481;
      let x_484 : vec4<f32> = u_xlat5;
      let x_485 : vec2<f32> = vec2<f32>(x_484.z, x_484.w);
      let x_487 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_485.x, x_485.y, x_487);
      let x_494 : vec3<f32> = txVec3;
      let x_496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_494.xy, x_494.z);
      u_xlat6.w = x_496;
      let x_498 : vec4<f32> = u_xlat6;
      u_xlat1.x = dot(x_498, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_506 : f32 = x_407.x_MainLightShadowParams.y;
      u_xlatb71 = (x_506 == 2.0f);
      let x_508 : bool = u_xlatb71;
      if (x_508) {
        let x_511 : vec4<f32> = vs_TEXCOORD6;
        let x_514 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_518 : vec2<f32> = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_514.z, x_514.w)) + vec2<f32>(0.5f, 0.5f));
        let x_519 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec4<f32> = u_xlat5;
        let x_523 : vec2<f32> = floor(vec2<f32>(x_521.x, x_521.y));
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
        let x_528 : vec4<f32> = vs_TEXCOORD6;
        let x_531 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_534 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(x_531.z, x_531.w)) + -(vec2<f32>(x_534.x, x_534.y)));
        let x_538 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_538.x, x_538.x, x_538.y, x_538.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_543 : vec4<f32> = u_xlat6;
        let x_545 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_543.x, x_543.x, x_543.z, x_543.z) * vec4<f32>(x_545.x, x_545.x, x_545.z, x_545.z));
        let x_548 : vec4<f32> = u_xlat7;
        let x_552 : vec2<f32> = (vec2<f32>(x_548.y, x_548.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_553.y, x_552.y, x_553.w);
        let x_555 : vec4<f32> = u_xlat7;
        let x_558 : vec2<f32> = u_xlat51;
        let x_560 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.z) * vec2<f32>(0.5f, 0.5f)) + -(x_558));
        let x_561 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_564 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_564) + vec2<f32>(1.0f, 1.0f));
        let x_569 : vec2<f32> = u_xlat51;
        let x_571 : vec2<f32> = min(x_569, vec2<f32>(0.0f, 0.0f));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat8;
        let x_577 : vec4<f32> = u_xlat8;
        let x_580 : vec2<f32> = u_xlat53;
        let x_581 : vec2<f32> = ((-(vec2<f32>(x_574.x, x_574.y)) * vec2<f32>(x_577.x, x_577.y)) + x_580);
        let x_582 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_584 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_584, vec2<f32>(0.0f, 0.0f));
        let x_586 : vec2<f32> = u_xlat51;
        let x_588 : vec2<f32> = u_xlat51;
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_586) * x_588) + vec2<f32>(x_590.y, x_590.w));
        let x_593 : vec4<f32> = u_xlat8;
        let x_595 : vec2<f32> = (vec2<f32>(x_593.x, x_593.y) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_598 + vec2<f32>(1.0f, 1.0f));
        let x_601 : vec4<f32> = u_xlat7;
        let x_605 : vec2<f32> = (vec2<f32>(x_601.x, x_601.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec2<f32> = u_xlat53;
        let x_609 : vec2<f32> = (x_608 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat8;
        let x_614 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_618 : vec2<f32> = u_xlat51;
        let x_619 : vec2<f32> = (x_618 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_622 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_622.y, x_622.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_626 : f32 = u_xlat8.x;
        u_xlat9.z = x_626;
        let x_629 : f32 = u_xlat51.x;
        u_xlat9.w = x_629;
        let x_632 : f32 = u_xlat10.x;
        u_xlat7.z = x_632;
        let x_635 : f32 = u_xlat6.x;
        u_xlat7.w = x_635;
        let x_638 : vec4<f32> = u_xlat7;
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_638.z, x_638.w, x_638.x, x_638.z) + vec4<f32>(x_640.z, x_640.w, x_640.x, x_640.z));
        let x_644 : f32 = u_xlat9.y;
        u_xlat8.z = x_644;
        let x_647 : f32 = u_xlat51.y;
        u_xlat8.w = x_647;
        let x_650 : f32 = u_xlat7.y;
        u_xlat10.z = x_650;
        let x_653 : f32 = u_xlat6.z;
        u_xlat10.w = x_653;
        let x_655 : vec4<f32> = u_xlat8;
        let x_657 : vec4<f32> = u_xlat10;
        let x_659 : vec3<f32> = (vec3<f32>(x_655.z, x_655.y, x_655.w) + vec3<f32>(x_657.z, x_657.y, x_657.w));
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat7;
        let x_664 : vec4<f32> = u_xlat11;
        let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.z, x_662.w) / vec3<f32>(x_664.z, x_664.w, x_664.y));
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat7;
        let x_675 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat10;
        let x_680 : vec4<f32> = u_xlat6;
        let x_682 : vec3<f32> = (vec3<f32>(x_678.z, x_678.y, x_678.w) / vec3<f32>(x_680.x, x_680.y, x_680.z));
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat7;
        let x_693 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_695 : vec3<f32> = (vec3<f32>(x_690.y, x_690.x, x_690.z) * vec3<f32>(x_693.x, x_693.x, x_693.x));
        let x_696 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat8;
        let x_701 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_703 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_701.y, x_701.y, x_701.y));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_707 : f32 = u_xlat8.x;
        u_xlat7.w = x_707;
        let x_709 : vec4<f32> = u_xlat5;
        let x_712 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y) * vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y)) + vec4<f32>(x_715.y, x_715.w, x_715.x, x_715.w));
        let x_718 : vec4<f32> = u_xlat5;
        let x_721 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_718.x, x_718.y) * vec2<f32>(x_721.x, x_721.y)) + vec2<f32>(x_724.z, x_724.w));
        let x_728 : f32 = u_xlat7.y;
        u_xlat8.w = x_728;
        let x_730 : vec4<f32> = u_xlat8;
        let x_731 : vec2<f32> = vec2<f32>(x_730.y, x_730.z);
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_731.x, x_732.z, x_731.y);
        let x_734 : vec4<f32> = u_xlat5;
        let x_737 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_740 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y) * vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y)) + vec4<f32>(x_740.x, x_740.y, x_740.z, x_740.y));
        let x_743 : vec4<f32> = u_xlat5;
        let x_746 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_749 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_743.x, x_743.y, x_743.x, x_743.y) * vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y)) + vec4<f32>(x_749.w, x_749.y, x_749.w, x_749.z));
        let x_752 : vec4<f32> = u_xlat5;
        let x_755 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.x, x_758.w, x_758.z, x_758.w));
        let x_762 : vec4<f32> = u_xlat6;
        let x_764 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_762.x, x_762.x, x_762.x, x_762.y) * vec4<f32>(x_764.z, x_764.w, x_764.y, x_764.z));
        let x_768 : vec4<f32> = u_xlat6;
        let x_770 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_768.y, x_768.y, x_768.z, x_768.z) * x_770);
        let x_774 : f32 = u_xlat6.z;
        let x_776 : f32 = u_xlat11.y;
        u_xlat71 = (x_774 * x_776);
        let x_779 : vec4<f32> = u_xlat9;
        let x_780 : vec2<f32> = vec2<f32>(x_779.x, x_779.y);
        let x_782 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_790 : vec3<f32> = txVec4;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_790.xy, x_790.z);
        u_xlat72 = x_792;
        let x_794 : vec4<f32> = u_xlat9;
        let x_795 : vec2<f32> = vec2<f32>(x_794.z, x_794.w);
        let x_797 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_805 : vec3<f32> = txVec5;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat73 = x_807;
        let x_808 : f32 = u_xlat73;
        let x_810 : f32 = u_xlat12.y;
        u_xlat73 = (x_808 * x_810);
        let x_813 : f32 = u_xlat12.x;
        let x_814 : f32 = u_xlat72;
        let x_816 : f32 = u_xlat73;
        u_xlat72 = ((x_813 * x_814) + x_816);
        let x_819 : vec2<f32> = u_xlat51;
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec6;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_828.xy, x_828.z);
        u_xlat73 = x_830;
        let x_832 : f32 = u_xlat12.z;
        let x_833 : f32 = u_xlat73;
        let x_835 : f32 = u_xlat72;
        u_xlat72 = ((x_832 * x_833) + x_835);
        let x_838 : vec4<f32> = u_xlat8;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_848 : vec3<f32> = txVec7;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat73 = x_850;
        let x_852 : f32 = u_xlat12.w;
        let x_853 : f32 = u_xlat73;
        let x_855 : f32 = u_xlat72;
        u_xlat72 = ((x_852 * x_853) + x_855);
        let x_858 : vec4<f32> = u_xlat10;
        let x_859 : vec2<f32> = vec2<f32>(x_858.x, x_858.y);
        let x_861 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_868 : vec3<f32> = txVec8;
        let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
        u_xlat73 = x_870;
        let x_872 : f32 = u_xlat13.x;
        let x_873 : f32 = u_xlat73;
        let x_875 : f32 = u_xlat72;
        u_xlat72 = ((x_872 * x_873) + x_875);
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
        let x_881 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec9;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat73 = x_890;
        let x_892 : f32 = u_xlat13.y;
        let x_893 : f32 = u_xlat73;
        let x_895 : f32 = u_xlat72;
        u_xlat72 = ((x_892 * x_893) + x_895);
        let x_898 : vec4<f32> = u_xlat8;
        let x_899 : vec2<f32> = vec2<f32>(x_898.z, x_898.w);
        let x_901 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec10;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat73 = x_910;
        let x_912 : f32 = u_xlat13.z;
        let x_913 : f32 = u_xlat73;
        let x_915 : f32 = u_xlat72;
        u_xlat72 = ((x_912 * x_913) + x_915);
        let x_918 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = vec2<f32>(x_918.x, x_918.y);
        let x_921 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec11;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_928.xy, x_928.z);
        u_xlat73 = x_930;
        let x_932 : f32 = u_xlat13.w;
        let x_933 : f32 = u_xlat73;
        let x_935 : f32 = u_xlat72;
        u_xlat72 = ((x_932 * x_933) + x_935);
        let x_938 : vec4<f32> = u_xlat7;
        let x_939 : vec2<f32> = vec2<f32>(x_938.z, x_938.w);
        let x_941 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec12;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_948.xy, x_948.z);
        u_xlat73 = x_950;
        let x_951 : f32 = u_xlat71;
        let x_952 : f32 = u_xlat73;
        let x_954 : f32 = u_xlat72;
        u_xlat1.x = ((x_951 * x_952) + x_954);
      } else {
        let x_958 : vec4<f32> = vs_TEXCOORD6;
        let x_961 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_964 : vec2<f32> = ((vec2<f32>(x_958.x, x_958.y) * vec2<f32>(x_961.z, x_961.w)) + vec2<f32>(0.5f, 0.5f));
        let x_965 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
        let x_967 : vec4<f32> = u_xlat5;
        let x_969 : vec2<f32> = floor(vec2<f32>(x_967.x, x_967.y));
        let x_970 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : vec4<f32> = vs_TEXCOORD6;
        let x_975 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_972.x, x_972.y) * vec2<f32>(x_975.z, x_975.w)) + -(vec2<f32>(x_978.x, x_978.y)));
        let x_982 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_982.x, x_982.x, x_982.y, x_982.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_985 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_985.x, x_985.x, x_985.z, x_985.z) * vec4<f32>(x_987.x, x_987.x, x_987.z, x_987.z));
        let x_990 : vec4<f32> = u_xlat7;
        let x_994 : vec2<f32> = (vec2<f32>(x_990.y, x_990.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_997 : vec4<f32> = u_xlat7;
        let x_1000 : vec2<f32> = u_xlat51;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1000));
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1002.x, x_1003.y, x_1002.y, x_1003.w);
        let x_1005 : vec2<f32> = u_xlat51;
        let x_1007 : vec2<f32> = (-(x_1005) + vec2<f32>(1.0f, 1.0f));
        let x_1008 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1010, vec2<f32>(0.0f, 0.0f));
        let x_1012 : vec2<f32> = u_xlat53;
        let x_1014 : vec2<f32> = u_xlat53;
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1018 : vec2<f32> = ((-(x_1012) * x_1014) + vec2<f32>(x_1016.x, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1021, vec2<f32>(0.0f, 0.0f));
        let x_1024 : vec2<f32> = u_xlat53;
        let x_1026 : vec2<f32> = u_xlat53;
        let x_1028 : vec4<f32> = u_xlat6;
        let x_1030 : vec2<f32> = ((-(x_1024) * x_1026) + vec2<f32>(x_1028.y, x_1028.w));
        let x_1031 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1030.x, x_1031.y, x_1030.y);
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1035 : vec2<f32> = (vec2<f32>(x_1033.x, x_1033.y) + vec2<f32>(2.0f, 2.0f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1038 : vec3<f32> = u_xlat29;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1038.x, x_1038.z) + vec2<f32>(2.0f, 2.0f));
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1041.x, x_1040.x, x_1041.z, x_1040.y);
        let x_1044 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1044 * 0.08163200318813323975f);
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1051 : vec3<f32> = (vec3<f32>(x_1048.z, x_1048.x, x_1048.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1052 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1057 : vec2<f32> = (vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1058 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1061 : f32 = u_xlat10.y;
        u_xlat9.x = x_1061;
        let x_1063 : vec2<f32> = u_xlat51;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1070.x, x_1071.z, x_1070.y);
        let x_1073 : vec2<f32> = u_xlat51;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1078.w);
        let x_1081 : f32 = u_xlat6.x;
        u_xlat7.y = x_1081;
        let x_1084 : f32 = u_xlat8.y;
        u_xlat7.w = x_1084;
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1086 + x_1087);
        let x_1089 : vec2<f32> = u_xlat51;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1092.x, x_1093.z, x_1092.y);
        let x_1095 : vec2<f32> = u_xlat51;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1095.y, x_1095.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1099.w);
        let x_1102 : f32 = u_xlat6.y;
        u_xlat8.y = x_1102;
        let x_1104 : vec4<f32> = u_xlat8;
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1104 + x_1105);
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1107 / x_1108);
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1110 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1117 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1116 / x_1117);
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1119 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1121.w, x_1121.x, x_1121.y, x_1121.z) * vec4<f32>(x_1124.x, x_1124.x, x_1124.x, x_1124.x));
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1130 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1127.x, x_1127.w, x_1127.y, x_1127.z) * vec4<f32>(x_1130.y, x_1130.y, x_1130.y, x_1130.y));
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1134 : vec3<f32> = vec3<f32>(x_1133.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1134.x, x_1135.y, x_1134.y, x_1134.z);
        let x_1138 : f32 = u_xlat8.x;
        u_xlat10.y = x_1138;
        let x_1140 : vec4<f32> = u_xlat5;
        let x_1143 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) * vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y)) + vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat5;
        let x_1152 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(x_1155.w, x_1155.y));
        let x_1159 : f32 = u_xlat10.y;
        u_xlat7.y = x_1159;
        let x_1162 : f32 = u_xlat8.z;
        u_xlat10.y = x_1162;
        let x_1164 : vec4<f32> = u_xlat5;
        let x_1167 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1170.y));
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1176 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat10;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.w, x_1179.y));
        let x_1182 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1185 : f32 = u_xlat10.y;
        u_xlat7.z = x_1185;
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1191 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y) * vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y)) + vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.z));
        let x_1198 : f32 = u_xlat8.w;
        u_xlat10.y = x_1198;
        let x_1201 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y) * vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y)) + vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1207.y));
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.w, x_1217.y));
        let x_1221 : f32 = u_xlat10.y;
        u_xlat7.w = x_1221;
        let x_1224 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.x, x_1230.w));
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1234 : vec3<f32> = vec3<f32>(x_1233.x, x_1233.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1234.x, x_1235.y, x_1234.y, x_1234.z);
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) * vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y)) + vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1243.y));
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.w, x_1253.y));
        let x_1257 : f32 = u_xlat7.x;
        u_xlat8.x = x_1257;
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1262 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat8;
        let x_1267 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1265.x, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x) * x_1273);
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1276.y, x_1276.y, x_1276.y, x_1276.y) * x_1278);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1281.z, x_1281.z, x_1281.z, x_1281.z) * x_1283);
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1285.w, x_1285.w, x_1285.w, x_1285.w) * x_1287);
        let x_1290 : vec4<f32> = u_xlat11;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec13;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat71 = x_1302;
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec14;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat72 = x_1316;
        let x_1317 : f32 = u_xlat72;
        let x_1319 : f32 = u_xlat16.y;
        u_xlat72 = (x_1317 * x_1319);
        let x_1322 : f32 = u_xlat16.x;
        let x_1323 : f32 = u_xlat71;
        let x_1325 : f32 = u_xlat72;
        u_xlat71 = ((x_1322 * x_1323) + x_1325);
        let x_1328 : vec2<f32> = u_xlat51;
        let x_1330 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec15;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat72 = x_1339;
        let x_1341 : f32 = u_xlat16.z;
        let x_1342 : f32 = u_xlat72;
        let x_1344 : f32 = u_xlat71;
        u_xlat71 = ((x_1341 * x_1342) + x_1344);
        let x_1347 : vec4<f32> = u_xlat14;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.x, x_1347.y);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec16;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat72 = x_1359;
        let x_1361 : f32 = u_xlat16.w;
        let x_1362 : f32 = u_xlat72;
        let x_1364 : f32 = u_xlat71;
        u_xlat71 = ((x_1361 * x_1362) + x_1364);
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec17;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat72 = x_1379;
        let x_1381 : f32 = u_xlat17.x;
        let x_1382 : f32 = u_xlat72;
        let x_1384 : f32 = u_xlat71;
        u_xlat71 = ((x_1381 * x_1382) + x_1384);
        let x_1387 : vec4<f32> = u_xlat12;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.z, x_1387.w);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec18;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat72 = x_1399;
        let x_1401 : f32 = u_xlat17.y;
        let x_1402 : f32 = u_xlat72;
        let x_1404 : f32 = u_xlat71;
        u_xlat71 = ((x_1401 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat13;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec19;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat72 = x_1419;
        let x_1421 : f32 = u_xlat17.z;
        let x_1422 : f32 = u_xlat72;
        let x_1424 : f32 = u_xlat71;
        u_xlat71 = ((x_1421 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat14;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec20;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat72 = x_1439;
        let x_1441 : f32 = u_xlat17.w;
        let x_1442 : f32 = u_xlat72;
        let x_1444 : f32 = u_xlat71;
        u_xlat71 = ((x_1441 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat15;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.x, x_1447.y);
        let x_1450 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec21;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat72 = x_1459;
        let x_1461 : f32 = u_xlat18.x;
        let x_1462 : f32 = u_xlat72;
        let x_1464 : f32 = u_xlat71;
        u_xlat71 = ((x_1461 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec22;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat72 = x_1479;
        let x_1481 : f32 = u_xlat18.y;
        let x_1482 : f32 = u_xlat72;
        let x_1484 : f32 = u_xlat71;
        u_xlat71 = ((x_1481 * x_1482) + x_1484);
        let x_1487 : vec2<f32> = u_xlat30;
        let x_1489 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec23;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat72 = x_1498;
        let x_1500 : f32 = u_xlat18.z;
        let x_1501 : f32 = u_xlat72;
        let x_1503 : f32 = u_xlat71;
        u_xlat71 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec2<f32> = u_xlat59;
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec24;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat72 = x_1517;
        let x_1519 : f32 = u_xlat18.w;
        let x_1520 : f32 = u_xlat72;
        let x_1522 : f32 = u_xlat71;
        u_xlat71 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat10;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec25;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat72 = x_1537;
        let x_1539 : f32 = u_xlat6.x;
        let x_1540 : f32 = u_xlat72;
        let x_1542 : f32 = u_xlat71;
        u_xlat71 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat10;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec26;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat72 = x_1557;
        let x_1559 : f32 = u_xlat6.y;
        let x_1560 : f32 = u_xlat72;
        let x_1562 : f32 = u_xlat71;
        u_xlat71 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec2<f32> = u_xlat54;
        let x_1567 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec27;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat72 = x_1576;
        let x_1578 : f32 = u_xlat6.z;
        let x_1579 : f32 = u_xlat72;
        let x_1581 : f32 = u_xlat71;
        u_xlat71 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat5;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec28;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat72 = x_1596;
        let x_1598 : f32 = u_xlat6.w;
        let x_1599 : f32 = u_xlat72;
        let x_1601 : f32 = u_xlat71;
        u_xlat1.x = ((x_1598 * x_1599) + x_1601);
      }
    }
  } else {
    let x_1606 : vec4<f32> = vs_TEXCOORD6;
    let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
    let x_1609 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
    let x_1616 : vec3<f32> = txVec29;
    let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
    u_xlat1.x = x_1618;
  }
  let x_1621 : f32 = x_407.x_MainLightShadowParams.x;
  u_xlat71 = (-(x_1621) + 1.0f);
  let x_1625 : f32 = u_xlat1.x;
  let x_1627 : f32 = x_407.x_MainLightShadowParams.x;
  let x_1629 : f32 = u_xlat71;
  u_xlat1.x = ((x_1625 * x_1627) + x_1629);
  let x_1633 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (0.0f >= x_1633);
  let x_1637 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (x_1637 >= 1.0f);
  let x_1639 : bool = u_xlatb71;
  let x_1640 : bool = u_xlatb72;
  u_xlatb71 = (x_1639 | x_1640);
  let x_1642 : bool = u_xlatb71;
  if (x_1642) {
    x_1643 = 1.0f;
  } else {
    let x_1648 : f32 = u_xlat1.x;
    x_1643 = x_1648;
  }
  let x_1649 : f32 = x_1643;
  u_xlat1.x = x_1649;
  let x_1651 : vec3<f32> = vs_TEXCOORD1;
  let x_1655 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1657 : vec3<f32> = (x_1651 + -(x_1655));
  let x_1658 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : vec4<f32> = u_xlat5;
  let x_1662 : vec4<f32> = u_xlat5;
  u_xlat71 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : f32 = u_xlat71;
  let x_1667 : f32 = x_407.x_MainLightShadowParams.z;
  let x_1670 : f32 = x_407.x_MainLightShadowParams.w;
  u_xlat72 = ((x_1665 * x_1667) + x_1670);
  let x_1672 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1672, 0.0f, 1.0f);
  let x_1675 : f32 = u_xlat1.x;
  u_xlat73 = (-(x_1675) + 1.0f);
  let x_1678 : f32 = u_xlat72;
  let x_1679 : f32 = u_xlat73;
  let x_1682 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1678 * x_1679) + x_1682);
  let x_1686 : f32 = u_xlat1.x;
  let x_1688 : f32 = x_320.unity_LightData.z;
  u_xlat1.x = (x_1686 * x_1688);
  let x_1691 : vec4<f32> = u_xlat1;
  let x_1694 : vec4<f32> = x_28.x_MainLightColor;
  let x_1696 : vec3<f32> = (vec3<f32>(x_1691.x, x_1691.x, x_1691.x) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1699 : vec4<f32> = u_xlat2;
  let x_1702 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1699.x, x_1699.y, x_1699.z), vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1707 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1707, 0.0f, 1.0f);
  let x_1710 : vec4<f32> = u_xlat1;
  let x_1712 : vec4<f32> = u_xlat5;
  let x_1714 : vec3<f32> = (vec3<f32>(x_1710.x, x_1710.x, x_1710.x) * vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1718 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_1718 * 10.0f) + 1.0f);
  let x_1724 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1724);
  let x_1727 : vec3<f32> = u_xlat3;
  let x_1728 : vec3<f32> = u_xlat23;
  let x_1732 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1734 : vec3<f32> = ((x_1727 * vec3<f32>(x_1728.x, x_1728.x, x_1728.x)) + vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1737 : vec4<f32> = u_xlat7;
  let x_1739 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.z), vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : f32 = u_xlat72;
  u_xlat72 = max(x_1742, 1.17549435e-38f);
  let x_1745 : f32 = u_xlat72;
  u_xlat72 = inverseSqrt(x_1745);
  let x_1747 : f32 = u_xlat72;
  let x_1749 : vec4<f32> = u_xlat7;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1747, x_1747, x_1747) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : vec4<f32> = u_xlat2;
  let x_1756 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1754.x, x_1754.y, x_1754.z), vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1759, 0.0f, 1.0f);
  let x_1761 : f32 = u_xlat72;
  u_xlat72 = log2(x_1761);
  let x_1764 : f32 = u_xlat1.x;
  let x_1765 : f32 = u_xlat72;
  u_xlat72 = (x_1764 * x_1765);
  let x_1767 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1767);
  let x_1769 : f32 = u_xlat72;
  let x_1772 : vec4<f32> = x_42.x_SpecColor;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
  let x_1775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec4<f32> = u_xlat5;
  let x_1779 : vec4<f32> = u_xlat7;
  let x_1781 : vec3<f32> = (vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat6;
  let x_1786 : vec4<f32> = u_xlat1;
  let x_1789 : vec4<f32> = u_xlat5;
  let x_1791 : vec3<f32> = ((vec3<f32>(x_1784.x, x_1784.y, x_1784.z) * vec3<f32>(x_1786.y, x_1786.z, x_1786.w)) + vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1792 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
  let x_1795 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1797 : f32 = x_320.unity_LightData.y;
  u_xlat72 = min(x_1795, x_1797);
  let x_1801 : f32 = u_xlat72;
  u_xlatu72 = bitcast<u32>(i32(x_1801));
  let x_1804 : f32 = u_xlat71;
  let x_1807 : f32 = x_407.x_AdditionalShadowFadeParams.x;
  let x_1810 : f32 = x_407.x_AdditionalShadowFadeParams.y;
  u_xlat71 = ((x_1804 * x_1807) + x_1810);
  let x_1812 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1812, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1824 : u32 = u_xlatu_loop_1;
    let x_1825 : u32 = u_xlatu72;
    if ((x_1824 < x_1825)) {
    } else {
      break;
    }
    let x_1828 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1828 >> 2u);
    let x_1832 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1832 & 3u));
    let x_1836 : u32 = u_xlatu74;
    let x_1839 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_1836)];
    let x_1849 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1854 : vec4<u32> = indexable[x_1849];
    u_xlat74 = dot(x_1839, bitcast<vec4<f32>>(x_1854));
    let x_1858 : f32 = u_xlat74;
    u_xlati74 = i32(x_1858);
    let x_1860 : vec3<f32> = vs_TEXCOORD1;
    let x_1871 : i32 = u_xlati74;
    let x_1873 : vec4<f32> = x_1870.x_AdditionalLightsPosition[x_1871];
    let x_1876 : i32 = u_xlati74;
    let x_1878 : vec4<f32> = x_1870.x_AdditionalLightsPosition[x_1876];
    let x_1880 : vec3<f32> = ((-(x_1860) * vec3<f32>(x_1873.w, x_1873.w, x_1873.w)) + vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
    let x_1881 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
    let x_1884 : vec4<f32> = u_xlat7;
    let x_1886 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
    let x_1889 : f32 = u_xlat75;
    u_xlat75 = max(x_1889, 0.00006103515625f);
    let x_1892 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_1892);
    let x_1894 : f32 = u_xlat76;
    let x_1896 : vec4<f32> = u_xlat7;
    let x_1898 : vec3<f32> = (vec3<f32>(x_1894, x_1894, x_1894) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
    let x_1901 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_1901);
    let x_1903 : f32 = u_xlat75;
    let x_1904 : i32 = u_xlati74;
    let x_1906 : f32 = x_1870.x_AdditionalLightsAttenuation[x_1904].x;
    u_xlat75 = (x_1903 * x_1906);
    let x_1908 : f32 = u_xlat75;
    let x_1910 : f32 = u_xlat75;
    u_xlat75 = ((-(x_1908) * x_1910) + 1.0f);
    let x_1913 : f32 = u_xlat75;
    u_xlat75 = max(x_1913, 0.0f);
    let x_1915 : f32 = u_xlat75;
    let x_1916 : f32 = u_xlat75;
    u_xlat75 = (x_1915 * x_1916);
    let x_1918 : f32 = u_xlat75;
    let x_1919 : f32 = u_xlat76;
    u_xlat75 = (x_1918 * x_1919);
    let x_1921 : i32 = u_xlati74;
    let x_1923 : vec4<f32> = x_1870.x_AdditionalLightsSpotDir[x_1921];
    let x_1925 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1923.x, x_1923.y, x_1923.z), vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
    let x_1928 : f32 = u_xlat76;
    let x_1929 : i32 = u_xlati74;
    let x_1931 : f32 = x_1870.x_AdditionalLightsAttenuation[x_1929].z;
    let x_1933 : i32 = u_xlati74;
    let x_1935 : f32 = x_1870.x_AdditionalLightsAttenuation[x_1933].w;
    u_xlat76 = ((x_1928 * x_1931) + x_1935);
    let x_1937 : f32 = u_xlat76;
    u_xlat76 = clamp(x_1937, 0.0f, 1.0f);
    let x_1939 : f32 = u_xlat76;
    let x_1940 : f32 = u_xlat76;
    u_xlat76 = (x_1939 * x_1940);
    let x_1942 : f32 = u_xlat75;
    let x_1943 : f32 = u_xlat76;
    u_xlat75 = (x_1942 * x_1943);
    let x_1947 : i32 = u_xlati74;
    let x_1949 : f32 = x_407.x_AdditionalShadowParams[x_1947].w;
    u_xlati76 = i32(x_1949);
    let x_1954 : i32 = u_xlati76;
    u_xlatb8.x = (x_1954 >= 0i);
    let x_1958 : bool = u_xlatb8.x;
    if (x_1958) {
      let x_1962 : i32 = u_xlati74;
      let x_1964 : f32 = x_407.x_AdditionalShadowParams[x_1962].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1964, x_1964, x_1964, x_1964))));
      let x_1971 : bool = u_xlatb8.x;
      if (x_1971) {
        let x_1974 : vec4<f32> = u_xlat7;
        let x_1977 : vec4<f32> = u_xlat7;
        let x_1980 : vec4<bool> = (abs(vec4<f32>(x_1974.z, x_1974.z, x_1974.y, x_1974.z)) >= abs(vec4<f32>(x_1977.x, x_1977.y, x_1977.x, x_1977.x)));
        u_xlatb8 = vec3<bool>(x_1980.x, x_1980.y, x_1980.z);
        let x_1983 : bool = u_xlatb8.y;
        let x_1985 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_1983 & x_1985);
        let x_1989 : vec4<f32> = u_xlat7;
        let x_1992 : vec4<bool> = (-(vec4<f32>(x_1989.z, x_1989.y, x_1989.x, x_1989.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_1992.x, x_1992.y, x_1992.z);
        let x_1996 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_1996);
        let x_2002 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2002);
        let x_2007 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2007);
        let x_2011 : bool = u_xlatb8.z;
        if (x_2011) {
          let x_2016 : f32 = u_xlat31.z;
          x_2012 = x_2016;
        } else {
          let x_2019 : f32 = u_xlat9.x;
          x_2012 = x_2019;
        }
        let x_2020 : f32 = x_2012;
        u_xlat54.x = x_2020;
        let x_2023 : bool = u_xlatb8.x;
        if (x_2023) {
          let x_2028 : f32 = u_xlat31.x;
          x_2024 = x_2028;
        } else {
          let x_2031 : f32 = u_xlat54.x;
          x_2024 = x_2031;
        }
        let x_2032 : f32 = x_2024;
        u_xlat8.x = x_2032;
        let x_2034 : i32 = u_xlati74;
        let x_2036 : f32 = x_407.x_AdditionalShadowParams[x_2034].w;
        u_xlat31.x = trunc(x_2036);
        let x_2040 : f32 = u_xlat8.x;
        let x_2042 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2040 + x_2042);
        let x_2046 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2046);
      }
      let x_2048 : i32 = u_xlati76;
      u_xlati76 = (x_2048 << bitcast<u32>(2i));
      let x_2050 : vec3<f32> = vs_TEXCOORD1;
      let x_2053 : i32 = u_xlati76;
      let x_2056 : i32 = u_xlati76;
      let x_2060 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2053 + 1i) / 4i)][((x_2056 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2050.y, x_2050.y, x_2050.y, x_2050.y) * x_2060);
      let x_2062 : i32 = u_xlati76;
      let x_2064 : i32 = u_xlati76;
      let x_2067 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[(x_2062 / 4i)][(x_2064 % 4i)];
      let x_2068 : vec3<f32> = vs_TEXCOORD1;
      let x_2071 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2067 * vec4<f32>(x_2068.x, x_2068.x, x_2068.x, x_2068.x)) + x_2071);
      let x_2073 : i32 = u_xlati76;
      let x_2076 : i32 = u_xlati76;
      let x_2080 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2073 + 2i) / 4i)][((x_2076 + 2i) % 4i)];
      let x_2081 : vec3<f32> = vs_TEXCOORD1;
      let x_2084 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2080 * vec4<f32>(x_2081.z, x_2081.z, x_2081.z, x_2081.z)) + x_2084);
      let x_2086 : vec4<f32> = u_xlat8;
      let x_2087 : i32 = u_xlati76;
      let x_2090 : i32 = u_xlati76;
      let x_2094 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2087 + 3i) / 4i)][((x_2090 + 3i) % 4i)];
      u_xlat8 = (x_2086 + x_2094);
      let x_2096 : vec4<f32> = u_xlat8;
      let x_2098 : vec4<f32> = u_xlat8;
      let x_2100 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.y, x_2096.z) / vec3<f32>(x_2098.w, x_2098.w, x_2098.w));
      let x_2101 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
      let x_2104 : i32 = u_xlati74;
      let x_2106 : f32 = x_407.x_AdditionalShadowParams[x_2104].y;
      u_xlatb76 = (0.0f < x_2106);
      let x_2108 : bool = u_xlatb76;
      if (x_2108) {
        let x_2111 : i32 = u_xlati74;
        let x_2113 : f32 = x_407.x_AdditionalShadowParams[x_2111].y;
        u_xlatb76 = (1.0f == x_2113);
        let x_2115 : bool = u_xlatb76;
        if (x_2115) {
          let x_2118 : vec4<f32> = u_xlat8;
          let x_2122 : vec4<f32> = x_407.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2118.x, x_2118.y, x_2118.x, x_2118.y) + x_2122);
          let x_2125 : vec4<f32> = u_xlat9;
          let x_2126 : vec2<f32> = vec2<f32>(x_2125.x, x_2125.y);
          let x_2128 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2126.x, x_2126.y, x_2128);
          let x_2136 : vec3<f32> = txVec30;
          let x_2138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2136.xy, x_2136.z);
          u_xlat10.x = x_2138;
          let x_2141 : vec4<f32> = u_xlat9;
          let x_2142 : vec2<f32> = vec2<f32>(x_2141.z, x_2141.w);
          let x_2144 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
          let x_2151 : vec3<f32> = txVec31;
          let x_2153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2151.xy, x_2151.z);
          u_xlat10.y = x_2153;
          let x_2155 : vec4<f32> = u_xlat8;
          let x_2159 : vec4<f32> = x_407.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.y) + x_2159);
          let x_2162 : vec4<f32> = u_xlat9;
          let x_2163 : vec2<f32> = vec2<f32>(x_2162.x, x_2162.y);
          let x_2165 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
          let x_2172 : vec3<f32> = txVec32;
          let x_2174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2172.xy, x_2172.z);
          u_xlat10.z = x_2174;
          let x_2177 : vec4<f32> = u_xlat9;
          let x_2178 : vec2<f32> = vec2<f32>(x_2177.z, x_2177.w);
          let x_2180 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
          let x_2187 : vec3<f32> = txVec33;
          let x_2189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
          u_xlat10.w = x_2189;
          let x_2191 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2191, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2195 : i32 = u_xlati74;
          let x_2197 : f32 = x_407.x_AdditionalShadowParams[x_2195].y;
          u_xlatb77 = (2.0f == x_2197);
          let x_2199 : bool = u_xlatb77;
          if (x_2199) {
            let x_2202 : vec4<f32> = u_xlat8;
            let x_2206 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2209 : vec2<f32> = ((vec2<f32>(x_2202.x, x_2202.y) * vec2<f32>(x_2206.z, x_2206.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2210 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
            let x_2212 : vec4<f32> = u_xlat9;
            let x_2214 : vec2<f32> = floor(vec2<f32>(x_2212.x, x_2212.y));
            let x_2215 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
            let x_2218 : vec4<f32> = u_xlat8;
            let x_2221 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2224 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2218.x, x_2218.y) * vec2<f32>(x_2221.z, x_2221.w)) + -(vec2<f32>(x_2224.x, x_2224.y)));
            let x_2228 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2228.x, x_2228.x, x_2228.y, x_2228.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2231 : vec4<f32> = u_xlat10;
            let x_2233 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2231.x, x_2231.x, x_2231.z, x_2231.z) * vec4<f32>(x_2233.x, x_2233.x, x_2233.z, x_2233.z));
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2238 : vec2<f32> = (vec2<f32>(x_2236.y, x_2236.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2239 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2238.x, x_2239.y, x_2238.y, x_2239.w);
            let x_2241 : vec4<f32> = u_xlat11;
            let x_2244 : vec2<f32> = u_xlat55;
            let x_2246 : vec2<f32> = ((vec2<f32>(x_2241.x, x_2241.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2244));
            let x_2247 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2250 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2250) + vec2<f32>(1.0f, 1.0f));
            let x_2253 : vec2<f32> = u_xlat55;
            let x_2254 : vec2<f32> = min(x_2253, vec2<f32>(0.0f, 0.0f));
            let x_2255 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
            let x_2257 : vec4<f32> = u_xlat12;
            let x_2260 : vec4<f32> = u_xlat12;
            let x_2263 : vec2<f32> = u_xlat57;
            let x_2264 : vec2<f32> = ((-(vec2<f32>(x_2257.x, x_2257.y)) * vec2<f32>(x_2260.x, x_2260.y)) + x_2263);
            let x_2265 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
            let x_2267 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2267, vec2<f32>(0.0f, 0.0f));
            let x_2269 : vec2<f32> = u_xlat55;
            let x_2271 : vec2<f32> = u_xlat55;
            let x_2273 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2269) * x_2271) + vec2<f32>(x_2273.y, x_2273.w));
            let x_2276 : vec4<f32> = u_xlat12;
            let x_2278 : vec2<f32> = (vec2<f32>(x_2276.x, x_2276.y) + vec2<f32>(1.0f, 1.0f));
            let x_2279 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2278.x, x_2278.y, x_2279.z, x_2279.w);
            let x_2281 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2281 + vec2<f32>(1.0f, 1.0f));
            let x_2283 : vec4<f32> = u_xlat11;
            let x_2285 : vec2<f32> = (vec2<f32>(x_2283.x, x_2283.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2286 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
            let x_2288 : vec2<f32> = u_xlat57;
            let x_2289 : vec2<f32> = (x_2288 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2290 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2289.x, x_2289.y, x_2290.z, x_2290.w);
            let x_2292 : vec4<f32> = u_xlat12;
            let x_2294 : vec2<f32> = (vec2<f32>(x_2292.x, x_2292.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2294.x, x_2294.y, x_2295.z, x_2295.w);
            let x_2297 : vec2<f32> = u_xlat55;
            let x_2298 : vec2<f32> = (x_2297 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2299 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2301.y, x_2301.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2305 : f32 = u_xlat12.x;
            u_xlat13.z = x_2305;
            let x_2308 : f32 = u_xlat55.x;
            u_xlat13.w = x_2308;
            let x_2311 : f32 = u_xlat14.x;
            u_xlat11.z = x_2311;
            let x_2314 : f32 = u_xlat10.x;
            u_xlat11.w = x_2314;
            let x_2316 : vec4<f32> = u_xlat11;
            let x_2318 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2316.z, x_2316.w, x_2316.x, x_2316.z) + vec4<f32>(x_2318.z, x_2318.w, x_2318.x, x_2318.z));
            let x_2322 : f32 = u_xlat13.y;
            u_xlat12.z = x_2322;
            let x_2325 : f32 = u_xlat55.y;
            u_xlat12.w = x_2325;
            let x_2328 : f32 = u_xlat11.y;
            u_xlat14.z = x_2328;
            let x_2331 : f32 = u_xlat10.z;
            u_xlat14.w = x_2331;
            let x_2333 : vec4<f32> = u_xlat12;
            let x_2335 : vec4<f32> = u_xlat14;
            let x_2337 : vec3<f32> = (vec3<f32>(x_2333.z, x_2333.y, x_2333.w) + vec3<f32>(x_2335.z, x_2335.y, x_2335.w));
            let x_2338 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
            let x_2340 : vec4<f32> = u_xlat11;
            let x_2342 : vec4<f32> = u_xlat15;
            let x_2344 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.z, x_2340.w) / vec3<f32>(x_2342.z, x_2342.w, x_2342.y));
            let x_2345 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
            let x_2347 : vec4<f32> = u_xlat11;
            let x_2349 : vec3<f32> = (vec3<f32>(x_2347.x, x_2347.y, x_2347.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2350 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
            let x_2352 : vec4<f32> = u_xlat14;
            let x_2354 : vec4<f32> = u_xlat10;
            let x_2356 : vec3<f32> = (vec3<f32>(x_2352.z, x_2352.y, x_2352.w) / vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
            let x_2357 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
            let x_2359 : vec4<f32> = u_xlat12;
            let x_2361 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.y, x_2359.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2362 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat11;
            let x_2367 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2369 : vec3<f32> = (vec3<f32>(x_2364.y, x_2364.x, x_2364.z) * vec3<f32>(x_2367.x, x_2367.x, x_2367.x));
            let x_2370 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
            let x_2372 : vec4<f32> = u_xlat12;
            let x_2375 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2377 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) * vec3<f32>(x_2375.y, x_2375.y, x_2375.y));
            let x_2378 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
            let x_2381 : f32 = u_xlat12.x;
            u_xlat11.w = x_2381;
            let x_2383 : vec4<f32> = u_xlat9;
            let x_2386 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2389 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y) * vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y)) + vec4<f32>(x_2389.y, x_2389.w, x_2389.x, x_2389.w));
            let x_2392 : vec4<f32> = u_xlat9;
            let x_2395 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2398 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(x_2395.x, x_2395.y)) + vec2<f32>(x_2398.z, x_2398.w));
            let x_2402 : f32 = u_xlat11.y;
            u_xlat12.w = x_2402;
            let x_2404 : vec4<f32> = u_xlat12;
            let x_2405 : vec2<f32> = vec2<f32>(x_2404.y, x_2404.z);
            let x_2406 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2406.x, x_2405.x, x_2406.z, x_2405.y);
            let x_2408 : vec4<f32> = u_xlat9;
            let x_2411 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2414 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2408.x, x_2408.y, x_2408.x, x_2408.y) * vec4<f32>(x_2411.x, x_2411.y, x_2411.x, x_2411.y)) + vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2414.y));
            let x_2417 : vec4<f32> = u_xlat9;
            let x_2420 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2423 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2417.x, x_2417.y, x_2417.x, x_2417.y) * vec4<f32>(x_2420.x, x_2420.y, x_2420.x, x_2420.y)) + vec4<f32>(x_2423.w, x_2423.y, x_2423.w, x_2423.z));
            let x_2426 : vec4<f32> = u_xlat9;
            let x_2429 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2432 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2426.x, x_2426.y, x_2426.x, x_2426.y) * vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y)) + vec4<f32>(x_2432.x, x_2432.w, x_2432.z, x_2432.w));
            let x_2435 : vec4<f32> = u_xlat10;
            let x_2437 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.x, x_2435.y) * vec4<f32>(x_2437.z, x_2437.w, x_2437.y, x_2437.z));
            let x_2440 : vec4<f32> = u_xlat10;
            let x_2442 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2440.y, x_2440.y, x_2440.z, x_2440.z) * x_2442);
            let x_2446 : f32 = u_xlat10.z;
            let x_2448 : f32 = u_xlat15.y;
            u_xlat77 = (x_2446 * x_2448);
            let x_2451 : vec4<f32> = u_xlat13;
            let x_2452 : vec2<f32> = vec2<f32>(x_2451.x, x_2451.y);
            let x_2454 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2452.x, x_2452.y, x_2454);
            let x_2461 : vec3<f32> = txVec34;
            let x_2463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2461.xy, x_2461.z);
            u_xlat9.x = x_2463;
            let x_2466 : vec4<f32> = u_xlat13;
            let x_2467 : vec2<f32> = vec2<f32>(x_2466.z, x_2466.w);
            let x_2469 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2467.x, x_2467.y, x_2469);
            let x_2477 : vec3<f32> = txVec35;
            let x_2479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
            u_xlat32 = x_2479;
            let x_2480 : f32 = u_xlat32;
            let x_2482 : f32 = u_xlat16.y;
            u_xlat32 = (x_2480 * x_2482);
            let x_2485 : f32 = u_xlat16.x;
            let x_2487 : f32 = u_xlat9.x;
            let x_2489 : f32 = u_xlat32;
            u_xlat9.x = ((x_2485 * x_2487) + x_2489);
            let x_2493 : vec2<f32> = u_xlat55;
            let x_2495 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
            let x_2502 : vec3<f32> = txVec36;
            let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
            u_xlat32 = x_2504;
            let x_2506 : f32 = u_xlat16.z;
            let x_2507 : f32 = u_xlat32;
            let x_2510 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2506 * x_2507) + x_2510);
            let x_2514 : vec4<f32> = u_xlat12;
            let x_2515 : vec2<f32> = vec2<f32>(x_2514.x, x_2514.y);
            let x_2517 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2515.x, x_2515.y, x_2517);
            let x_2524 : vec3<f32> = txVec37;
            let x_2526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2524.xy, x_2524.z);
            u_xlat32 = x_2526;
            let x_2528 : f32 = u_xlat16.w;
            let x_2529 : f32 = u_xlat32;
            let x_2532 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2528 * x_2529) + x_2532);
            let x_2536 : vec4<f32> = u_xlat14;
            let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
            let x_2539 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
            let x_2546 : vec3<f32> = txVec38;
            let x_2548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
            u_xlat32 = x_2548;
            let x_2550 : f32 = u_xlat17.x;
            let x_2551 : f32 = u_xlat32;
            let x_2554 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2550 * x_2551) + x_2554);
            let x_2558 : vec4<f32> = u_xlat14;
            let x_2559 : vec2<f32> = vec2<f32>(x_2558.z, x_2558.w);
            let x_2561 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2559.x, x_2559.y, x_2561);
            let x_2568 : vec3<f32> = txVec39;
            let x_2570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2568.xy, x_2568.z);
            u_xlat32 = x_2570;
            let x_2572 : f32 = u_xlat17.y;
            let x_2573 : f32 = u_xlat32;
            let x_2576 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2572 * x_2573) + x_2576);
            let x_2580 : vec4<f32> = u_xlat12;
            let x_2581 : vec2<f32> = vec2<f32>(x_2580.z, x_2580.w);
            let x_2583 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
            let x_2590 : vec3<f32> = txVec40;
            let x_2592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
            u_xlat32 = x_2592;
            let x_2594 : f32 = u_xlat17.z;
            let x_2595 : f32 = u_xlat32;
            let x_2598 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2594 * x_2595) + x_2598);
            let x_2602 : vec4<f32> = u_xlat11;
            let x_2603 : vec2<f32> = vec2<f32>(x_2602.x, x_2602.y);
            let x_2605 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2603.x, x_2603.y, x_2605);
            let x_2612 : vec3<f32> = txVec41;
            let x_2614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2612.xy, x_2612.z);
            u_xlat32 = x_2614;
            let x_2616 : f32 = u_xlat17.w;
            let x_2617 : f32 = u_xlat32;
            let x_2620 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2616 * x_2617) + x_2620);
            let x_2624 : vec4<f32> = u_xlat11;
            let x_2625 : vec2<f32> = vec2<f32>(x_2624.z, x_2624.w);
            let x_2627 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2625.x, x_2625.y, x_2627);
            let x_2634 : vec3<f32> = txVec42;
            let x_2636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2634.xy, x_2634.z);
            u_xlat32 = x_2636;
            let x_2637 : f32 = u_xlat77;
            let x_2638 : f32 = u_xlat32;
            let x_2641 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2637 * x_2638) + x_2641);
          } else {
            let x_2644 : vec4<f32> = u_xlat8;
            let x_2647 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2650 : vec2<f32> = ((vec2<f32>(x_2644.x, x_2644.y) * vec2<f32>(x_2647.z, x_2647.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2651 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2650.x, x_2650.y, x_2651.z, x_2651.w);
            let x_2653 : vec4<f32> = u_xlat9;
            let x_2655 : vec2<f32> = floor(vec2<f32>(x_2653.x, x_2653.y));
            let x_2656 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec4<f32> = u_xlat8;
            let x_2661 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2664 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2658.x, x_2658.y) * vec2<f32>(x_2661.z, x_2661.w)) + -(vec2<f32>(x_2664.x, x_2664.y)));
            let x_2668 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2668.x, x_2668.x, x_2668.y, x_2668.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2671 : vec4<f32> = u_xlat10;
            let x_2673 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2671.x, x_2671.x, x_2671.z, x_2671.z) * vec4<f32>(x_2673.x, x_2673.x, x_2673.z, x_2673.z));
            let x_2676 : vec4<f32> = u_xlat11;
            let x_2678 : vec2<f32> = (vec2<f32>(x_2676.y, x_2676.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2679 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2679.x, x_2678.x, x_2679.z, x_2678.y);
            let x_2681 : vec4<f32> = u_xlat11;
            let x_2684 : vec2<f32> = u_xlat55;
            let x_2686 : vec2<f32> = ((vec2<f32>(x_2681.x, x_2681.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2684));
            let x_2687 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2686.x, x_2687.y, x_2686.y, x_2687.w);
            let x_2689 : vec2<f32> = u_xlat55;
            let x_2691 : vec2<f32> = (-(x_2689) + vec2<f32>(1.0f, 1.0f));
            let x_2692 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2691.x, x_2691.y, x_2692.z, x_2692.w);
            let x_2694 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2694, vec2<f32>(0.0f, 0.0f));
            let x_2696 : vec2<f32> = u_xlat57;
            let x_2698 : vec2<f32> = u_xlat57;
            let x_2700 : vec4<f32> = u_xlat11;
            let x_2702 : vec2<f32> = ((-(x_2696) * x_2698) + vec2<f32>(x_2700.x, x_2700.y));
            let x_2703 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2702.x, x_2702.y, x_2703.z, x_2703.w);
            let x_2705 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2705, vec2<f32>(0.0f, 0.0f));
            let x_2708 : vec2<f32> = u_xlat57;
            let x_2710 : vec2<f32> = u_xlat57;
            let x_2712 : vec4<f32> = u_xlat10;
            let x_2714 : vec2<f32> = ((-(x_2708) * x_2710) + vec2<f32>(x_2712.y, x_2712.w));
            let x_2715 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2714.x, x_2715.y, x_2714.y);
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2719 : vec2<f32> = (vec2<f32>(x_2717.x, x_2717.y) + vec2<f32>(2.0f, 2.0f));
            let x_2720 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2719.x, x_2719.y, x_2720.z, x_2720.w);
            let x_2722 : vec3<f32> = u_xlat33;
            let x_2724 : vec2<f32> = (vec2<f32>(x_2722.x, x_2722.z) + vec2<f32>(2.0f, 2.0f));
            let x_2725 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2725.x, x_2724.x, x_2725.z, x_2724.y);
            let x_2728 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2728 * 0.08163200318813323975f);
            let x_2731 : vec4<f32> = u_xlat10;
            let x_2733 : vec3<f32> = (vec3<f32>(x_2731.z, x_2731.x, x_2731.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2734 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
            let x_2736 : vec4<f32> = u_xlat11;
            let x_2738 : vec2<f32> = (vec2<f32>(x_2736.x, x_2736.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2739 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat14.y;
            u_xlat13.x = x_2742;
            let x_2744 : vec2<f32> = u_xlat55;
            let x_2747 : vec2<f32> = ((vec2<f32>(x_2744.x, x_2744.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2748 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2748.x, x_2747.x, x_2748.z, x_2747.y);
            let x_2750 : vec2<f32> = u_xlat55;
            let x_2753 : vec2<f32> = ((vec2<f32>(x_2750.x, x_2750.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2754 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2753.x, x_2754.y, x_2753.y, x_2754.w);
            let x_2757 : f32 = u_xlat10.x;
            u_xlat11.y = x_2757;
            let x_2760 : f32 = u_xlat12.y;
            u_xlat11.w = x_2760;
            let x_2762 : vec4<f32> = u_xlat11;
            let x_2763 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2762 + x_2763);
            let x_2765 : vec2<f32> = u_xlat55;
            let x_2768 : vec2<f32> = ((vec2<f32>(x_2765.y, x_2765.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2769 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2769.x, x_2768.x, x_2769.z, x_2768.y);
            let x_2771 : vec2<f32> = u_xlat55;
            let x_2774 : vec2<f32> = ((vec2<f32>(x_2771.y, x_2771.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2774.x, x_2775.y, x_2774.y, x_2775.w);
            let x_2778 : f32 = u_xlat10.y;
            u_xlat12.y = x_2778;
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2781 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2780 + x_2781);
            let x_2783 : vec4<f32> = u_xlat11;
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2783 / x_2784);
            let x_2786 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2786 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2788 : vec4<f32> = u_xlat12;
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2788 / x_2789);
            let x_2791 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2791 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2793 : vec4<f32> = u_xlat11;
            let x_2796 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2793.w, x_2793.x, x_2793.y, x_2793.z) * vec4<f32>(x_2796.x, x_2796.x, x_2796.x, x_2796.x));
            let x_2799 : vec4<f32> = u_xlat12;
            let x_2802 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2799.x, x_2799.w, x_2799.y, x_2799.z) * vec4<f32>(x_2802.y, x_2802.y, x_2802.y, x_2802.y));
            let x_2805 : vec4<f32> = u_xlat11;
            let x_2806 : vec3<f32> = vec3<f32>(x_2805.y, x_2805.z, x_2805.w);
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2806.x, x_2807.y, x_2806.y, x_2806.z);
            let x_2810 : f32 = u_xlat12.x;
            u_xlat14.y = x_2810;
            let x_2812 : vec4<f32> = u_xlat9;
            let x_2815 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2818 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y) * vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y)) + vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2818.y));
            let x_2821 : vec4<f32> = u_xlat9;
            let x_2824 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2821.x, x_2821.y) * vec2<f32>(x_2824.x, x_2824.y)) + vec2<f32>(x_2827.w, x_2827.y));
            let x_2831 : f32 = u_xlat14.y;
            u_xlat11.y = x_2831;
            let x_2834 : f32 = u_xlat12.z;
            u_xlat14.y = x_2834;
            let x_2836 : vec4<f32> = u_xlat9;
            let x_2839 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2842 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2836.x, x_2836.y, x_2836.x, x_2836.y) * vec4<f32>(x_2839.x, x_2839.y, x_2839.x, x_2839.y)) + vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2842.y));
            let x_2845 : vec4<f32> = u_xlat9;
            let x_2848 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = ((vec2<f32>(x_2845.x, x_2845.y) * vec2<f32>(x_2848.x, x_2848.y)) + vec2<f32>(x_2851.w, x_2851.y));
            let x_2854 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2857 : f32 = u_xlat14.y;
            u_xlat11.z = x_2857;
            let x_2859 : vec4<f32> = u_xlat9;
            let x_2862 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2865 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2859.x, x_2859.y, x_2859.x, x_2859.y) * vec4<f32>(x_2862.x, x_2862.y, x_2862.x, x_2862.y)) + vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.z));
            let x_2869 : f32 = u_xlat12.w;
            u_xlat14.y = x_2869;
            let x_2872 : vec4<f32> = u_xlat9;
            let x_2875 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y) * vec4<f32>(x_2875.x, x_2875.y, x_2875.x, x_2875.y)) + vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2878.y));
            let x_2882 : vec4<f32> = u_xlat9;
            let x_2885 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2888 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2882.x, x_2882.y) * vec2<f32>(x_2885.x, x_2885.y)) + vec2<f32>(x_2888.w, x_2888.y));
            let x_2892 : f32 = u_xlat14.y;
            u_xlat11.w = x_2892;
            let x_2895 : vec4<f32> = u_xlat9;
            let x_2898 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2901 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2895.x, x_2895.y) * vec2<f32>(x_2898.x, x_2898.y)) + vec2<f32>(x_2901.x, x_2901.w));
            let x_2904 : vec4<f32> = u_xlat14;
            let x_2905 : vec3<f32> = vec3<f32>(x_2904.x, x_2904.z, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2905.x, x_2906.y, x_2905.y, x_2905.z);
            let x_2908 : vec4<f32> = u_xlat9;
            let x_2911 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2914 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2908.x, x_2908.y, x_2908.x, x_2908.y) * vec4<f32>(x_2911.x, x_2911.y, x_2911.x, x_2911.y)) + vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2914.y));
            let x_2918 : vec4<f32> = u_xlat9;
            let x_2921 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2924 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2918.x, x_2918.y) * vec2<f32>(x_2921.x, x_2921.y)) + vec2<f32>(x_2924.w, x_2924.y));
            let x_2928 : f32 = u_xlat11.x;
            u_xlat12.x = x_2928;
            let x_2930 : vec4<f32> = u_xlat9;
            let x_2933 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2936 : vec4<f32> = u_xlat12;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2933.x, x_2933.y)) + vec2<f32>(x_2936.x, x_2936.y));
            let x_2939 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2938.x, x_2938.y, x_2939.z, x_2939.w);
            let x_2942 : vec4<f32> = u_xlat10;
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2942.x, x_2942.x, x_2942.x, x_2942.x) * x_2944);
            let x_2947 : vec4<f32> = u_xlat10;
            let x_2949 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2947.y, x_2947.y, x_2947.y, x_2947.y) * x_2949);
            let x_2952 : vec4<f32> = u_xlat10;
            let x_2954 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2952.z, x_2952.z, x_2952.z, x_2952.z) * x_2954);
            let x_2956 : vec4<f32> = u_xlat10;
            let x_2958 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2956.w, x_2956.w, x_2956.w, x_2956.w) * x_2958);
            let x_2961 : vec4<f32> = u_xlat15;
            let x_2962 : vec2<f32> = vec2<f32>(x_2961.x, x_2961.y);
            let x_2964 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
            let x_2971 : vec3<f32> = txVec43;
            let x_2973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
            u_xlat77 = x_2973;
            let x_2975 : vec4<f32> = u_xlat15;
            let x_2976 : vec2<f32> = vec2<f32>(x_2975.z, x_2975.w);
            let x_2978 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
            let x_2985 : vec3<f32> = txVec44;
            let x_2987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
            u_xlat11.x = x_2987;
            let x_2990 : f32 = u_xlat11.x;
            let x_2992 : f32 = u_xlat20.y;
            u_xlat11.x = (x_2990 * x_2992);
            let x_2996 : f32 = u_xlat20.x;
            let x_2997 : f32 = u_xlat77;
            let x_3000 : f32 = u_xlat11.x;
            u_xlat77 = ((x_2996 * x_2997) + x_3000);
            let x_3003 : vec2<f32> = u_xlat55;
            let x_3005 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec45;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat55.x = x_3014;
            let x_3017 : f32 = u_xlat20.z;
            let x_3019 : f32 = u_xlat55.x;
            let x_3021 : f32 = u_xlat77;
            u_xlat77 = ((x_3017 * x_3019) + x_3021);
            let x_3024 : vec4<f32> = u_xlat18;
            let x_3025 : vec2<f32> = vec2<f32>(x_3024.x, x_3024.y);
            let x_3027 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
            let x_3034 : vec3<f32> = txVec46;
            let x_3036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
            u_xlat55.x = x_3036;
            let x_3039 : f32 = u_xlat20.w;
            let x_3041 : f32 = u_xlat55.x;
            let x_3043 : f32 = u_xlat77;
            u_xlat77 = ((x_3039 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat16;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.x, x_3046.y);
            let x_3049 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec47;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat55.x = x_3058;
            let x_3061 : f32 = u_xlat21.x;
            let x_3063 : f32 = u_xlat55.x;
            let x_3065 : f32 = u_xlat77;
            u_xlat77 = ((x_3061 * x_3063) + x_3065);
            let x_3068 : vec4<f32> = u_xlat16;
            let x_3069 : vec2<f32> = vec2<f32>(x_3068.z, x_3068.w);
            let x_3071 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
            let x_3078 : vec3<f32> = txVec48;
            let x_3080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
            u_xlat55.x = x_3080;
            let x_3083 : f32 = u_xlat21.y;
            let x_3085 : f32 = u_xlat55.x;
            let x_3087 : f32 = u_xlat77;
            u_xlat77 = ((x_3083 * x_3085) + x_3087);
            let x_3090 : vec4<f32> = u_xlat17;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
            let x_3093 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec49;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat55.x = x_3102;
            let x_3105 : f32 = u_xlat21.z;
            let x_3107 : f32 = u_xlat55.x;
            let x_3109 : f32 = u_xlat77;
            u_xlat77 = ((x_3105 * x_3107) + x_3109);
            let x_3112 : vec4<f32> = u_xlat18;
            let x_3113 : vec2<f32> = vec2<f32>(x_3112.z, x_3112.w);
            let x_3115 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
            let x_3122 : vec3<f32> = txVec50;
            let x_3124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
            u_xlat55.x = x_3124;
            let x_3127 : f32 = u_xlat21.w;
            let x_3129 : f32 = u_xlat55.x;
            let x_3131 : f32 = u_xlat77;
            u_xlat77 = ((x_3127 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat19;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
            let x_3137 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec51;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat55.x = x_3146;
            let x_3149 : f32 = u_xlat22.x;
            let x_3151 : f32 = u_xlat55.x;
            let x_3153 : f32 = u_xlat77;
            u_xlat77 = ((x_3149 * x_3151) + x_3153);
            let x_3156 : vec4<f32> = u_xlat19;
            let x_3157 : vec2<f32> = vec2<f32>(x_3156.z, x_3156.w);
            let x_3159 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec52;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat55.x = x_3168;
            let x_3171 : f32 = u_xlat22.y;
            let x_3173 : f32 = u_xlat55.x;
            let x_3175 : f32 = u_xlat77;
            u_xlat77 = ((x_3171 * x_3173) + x_3175);
            let x_3178 : vec2<f32> = u_xlat34;
            let x_3180 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec53;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat55.x = x_3189;
            let x_3192 : f32 = u_xlat22.z;
            let x_3194 : f32 = u_xlat55.x;
            let x_3196 : f32 = u_xlat77;
            u_xlat77 = ((x_3192 * x_3194) + x_3196);
            let x_3199 : vec2<f32> = u_xlat63;
            let x_3201 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec54;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat55.x = x_3210;
            let x_3213 : f32 = u_xlat22.w;
            let x_3215 : f32 = u_xlat55.x;
            let x_3217 : f32 = u_xlat77;
            u_xlat77 = ((x_3213 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat14;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec55;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat55.x = x_3232;
            let x_3235 : f32 = u_xlat10.x;
            let x_3237 : f32 = u_xlat55.x;
            let x_3239 : f32 = u_xlat77;
            u_xlat77 = ((x_3235 * x_3237) + x_3239);
            let x_3242 : vec4<f32> = u_xlat14;
            let x_3243 : vec2<f32> = vec2<f32>(x_3242.z, x_3242.w);
            let x_3245 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3243.x, x_3243.y, x_3245);
            let x_3252 : vec3<f32> = txVec56;
            let x_3254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3252.xy, x_3252.z);
            u_xlat55.x = x_3254;
            let x_3257 : f32 = u_xlat10.y;
            let x_3259 : f32 = u_xlat55.x;
            let x_3261 : f32 = u_xlat77;
            u_xlat77 = ((x_3257 * x_3259) + x_3261);
            let x_3264 : vec2<f32> = u_xlat58;
            let x_3266 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec57;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat55.x = x_3275;
            let x_3278 : f32 = u_xlat10.z;
            let x_3280 : f32 = u_xlat55.x;
            let x_3282 : f32 = u_xlat77;
            u_xlat77 = ((x_3278 * x_3280) + x_3282);
            let x_3285 : vec4<f32> = u_xlat9;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.x, x_3285.y);
            let x_3288 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec58;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat9.x = x_3297;
            let x_3300 : f32 = u_xlat10.w;
            let x_3302 : f32 = u_xlat9.x;
            let x_3304 : f32 = u_xlat77;
            u_xlat76 = ((x_3300 * x_3302) + x_3304);
          }
        }
      } else {
        let x_3308 : vec4<f32> = u_xlat8;
        let x_3309 : vec2<f32> = vec2<f32>(x_3308.x, x_3308.y);
        let x_3311 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
        let x_3318 : vec3<f32> = txVec59;
        let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
        u_xlat76 = x_3320;
      }
      let x_3321 : i32 = u_xlati74;
      let x_3323 : f32 = x_407.x_AdditionalShadowParams[x_3321].x;
      u_xlat8.x = (1.0f + -(x_3323));
      let x_3327 : f32 = u_xlat76;
      let x_3328 : i32 = u_xlati74;
      let x_3330 : f32 = x_407.x_AdditionalShadowParams[x_3328].x;
      let x_3333 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3327 * x_3330) + x_3333);
      let x_3336 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3336);
      let x_3341 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3341 >= 1.0f);
      let x_3343 : bool = u_xlatb31;
      let x_3345 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3343 | x_3345);
      let x_3349 : bool = u_xlatb8.x;
      let x_3350 : f32 = u_xlat76;
      u_xlat76 = select(x_3350, 1.0f, x_3349);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3353 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3353) + 1.0f);
    let x_3357 : f32 = u_xlat71;
    let x_3359 : f32 = u_xlat8.x;
    let x_3361 : f32 = u_xlat76;
    u_xlat76 = ((x_3357 * x_3359) + x_3361);
    let x_3363 : f32 = u_xlat75;
    let x_3364 : f32 = u_xlat76;
    u_xlat75 = (x_3363 * x_3364);
    let x_3366 : f32 = u_xlat75;
    let x_3368 : i32 = u_xlati74;
    let x_3370 : vec4<f32> = x_1870.x_AdditionalLightsColor[x_3368];
    let x_3372 : vec3<f32> = (vec3<f32>(x_3366, x_3366, x_3366) * vec3<f32>(x_3370.x, x_3370.y, x_3370.z));
    let x_3373 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3372.x, x_3372.y, x_3372.z, x_3373.w);
    let x_3375 : vec4<f32> = u_xlat2;
    let x_3377 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3375.x, x_3375.y, x_3375.z), vec3<f32>(x_3377.x, x_3377.y, x_3377.z));
    let x_3380 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3380, 0.0f, 1.0f);
    let x_3382 : f32 = u_xlat74;
    let x_3384 : vec4<f32> = u_xlat8;
    let x_3386 : vec3<f32> = (vec3<f32>(x_3382, x_3382, x_3382) * vec3<f32>(x_3384.x, x_3384.y, x_3384.z));
    let x_3387 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3386.x, x_3386.y, x_3386.z, x_3387.w);
    let x_3389 : vec3<f32> = u_xlat3;
    let x_3390 : vec3<f32> = u_xlat23;
    let x_3393 : vec4<f32> = u_xlat7;
    let x_3395 : vec3<f32> = ((x_3389 * vec3<f32>(x_3390.x, x_3390.x, x_3390.x)) + vec3<f32>(x_3393.x, x_3393.y, x_3393.z));
    let x_3396 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3396.w);
    let x_3398 : vec4<f32> = u_xlat7;
    let x_3400 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3398.x, x_3398.y, x_3398.z), vec3<f32>(x_3400.x, x_3400.y, x_3400.z));
    let x_3403 : f32 = u_xlat74;
    u_xlat74 = max(x_3403, 1.17549435e-38f);
    let x_3405 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3405);
    let x_3407 : f32 = u_xlat74;
    let x_3409 : vec4<f32> = u_xlat7;
    let x_3411 : vec3<f32> = (vec3<f32>(x_3407, x_3407, x_3407) * vec3<f32>(x_3409.x, x_3409.y, x_3409.z));
    let x_3412 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3411.x, x_3411.y, x_3411.z, x_3412.w);
    let x_3414 : vec4<f32> = u_xlat2;
    let x_3416 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3414.x, x_3414.y, x_3414.z), vec3<f32>(x_3416.x, x_3416.y, x_3416.z));
    let x_3419 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3419, 0.0f, 1.0f);
    let x_3421 : f32 = u_xlat74;
    u_xlat74 = log2(x_3421);
    let x_3424 : f32 = u_xlat1.x;
    let x_3425 : f32 = u_xlat74;
    u_xlat74 = (x_3424 * x_3425);
    let x_3427 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3427);
    let x_3429 : f32 = u_xlat74;
    let x_3432 : vec4<f32> = x_42.x_SpecColor;
    let x_3434 : vec3<f32> = (vec3<f32>(x_3429, x_3429, x_3429) * vec3<f32>(x_3432.x, x_3432.y, x_3432.z));
    let x_3435 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3435.w);
    let x_3437 : vec4<f32> = u_xlat7;
    let x_3439 : vec4<f32> = u_xlat8;
    let x_3441 : vec3<f32> = (vec3<f32>(x_3437.x, x_3437.y, x_3437.z) * vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
    let x_3442 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
    let x_3444 : vec4<f32> = u_xlat9;
    let x_3446 : vec4<f32> = u_xlat1;
    let x_3449 : vec4<f32> = u_xlat7;
    let x_3451 : vec3<f32> = ((vec3<f32>(x_3444.x, x_3444.y, x_3444.z) * vec3<f32>(x_3446.y, x_3446.z, x_3446.w)) + vec3<f32>(x_3449.x, x_3449.y, x_3449.z));
    let x_3452 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3451.x, x_3451.y, x_3451.z, x_3452.w);
    let x_3454 : vec4<f32> = u_xlat6;
    let x_3456 : vec4<f32> = u_xlat7;
    let x_3458 : vec3<f32> = (vec3<f32>(x_3454.x, x_3454.y, x_3454.z) + vec3<f32>(x_3456.x, x_3456.y, x_3456.z));
    let x_3459 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3458.x, x_3458.y, x_3458.z, x_3459.w);

    continuing {
      let x_3461 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3461 + bitcast<u32>(1i));
    }
  }
  let x_3463 : vec3<f32> = u_xlat4;
  let x_3464 : vec4<f32> = u_xlat1;
  let x_3467 : vec4<f32> = u_xlat5;
  let x_3469 : vec3<f32> = ((x_3463 * vec3<f32>(x_3464.y, x_3464.z, x_3464.w)) + vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
  let x_3470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);
  let x_3472 : vec4<f32> = u_xlat6;
  let x_3474 : vec4<f32> = u_xlat1;
  let x_3476 : vec3<f32> = (vec3<f32>(x_3472.x, x_3472.y, x_3472.z) + vec3<f32>(x_3474.x, x_3474.y, x_3474.z));
  let x_3477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3476.x, x_3476.y, x_3476.z, x_3477.w);
  let x_3479 : f32 = u_xlat69;
  let x_3480 : f32 = u_xlat69;
  u_xlat23.x = (x_3479 * -(x_3480));
  let x_3485 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_3485);
  let x_3488 : vec4<f32> = u_xlat1;
  let x_3491 : vec4<f32> = x_28.unity_FogColor;
  let x_3494 : vec3<f32> = (vec3<f32>(x_3488.x, x_3488.y, x_3488.z) + -(vec3<f32>(x_3491.x, x_3491.y, x_3491.z)));
  let x_3495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3495.w);
  let x_3499 : vec3<f32> = u_xlat23;
  let x_3501 : vec4<f32> = u_xlat1;
  let x_3505 : vec4<f32> = x_28.unity_FogColor;
  let x_3507 : vec3<f32> = ((vec3<f32>(x_3499.x, x_3499.x, x_3499.x) * vec3<f32>(x_3501.x, x_3501.y, x_3501.z)) + vec3<f32>(x_3505.x, x_3505.y, x_3505.z));
  let x_3508 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3508.w);
  let x_3511 : f32 = x_42.x_Surface;
  u_xlatb23 = (x_3511 == 1.0f);
  let x_3513 : bool = u_xlatb23;
  let x_3514 : bool = u_xlatb46;
  u_xlatb23 = (x_3513 | x_3514);
  let x_3516 : bool = u_xlatb23;
  if (x_3516) {
    let x_3521 : f32 = u_xlat0.x;
    x_3517 = x_3521;
  } else {
    x_3517 = 1.0f;
  }
  let x_3523 : f32 = x_3517;
  SV_Target0.w = x_3523;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


