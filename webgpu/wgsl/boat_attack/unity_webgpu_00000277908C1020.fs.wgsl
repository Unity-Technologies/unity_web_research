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

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_284 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlati69 : i32;

@group(1) @binding(2) var<uniform> x_514 : UnityPerDraw;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb71 : bool;

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

var<private> u_xlat73 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> u_xlatu72 : u32;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_2060 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb77 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

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
  var x_1834 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2198 : f32;
  var x_2210 : f32;
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
  var x_3702 : f32;
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
  let x_276 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres0;
  let x_289 : vec3<f32> = (x_276 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres1;
  let x_299 : vec3<f32> = (x_293 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres2;
  let x_309 : vec3<f32> = (x_303 + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres3;
  let x_318 : vec3<f32> = (x_313 + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_333 : vec4<f32> = u_xlat6;
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_284.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_348 < x_351);
  let x_354 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_370);
  let x_375 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_375);
  let x_379 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_379);
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(x_384.y, x_384.z, x_384.w));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat4;
  let x_392 : vec3<f32> = max(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_392.x, x_392.y, x_392.z);
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat69 = dot(x_395, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_400 : f32 = u_xlat69;
  u_xlat69 = (-(x_400) + 4.0f);
  let x_405 : f32 = u_xlat69;
  u_xlatu69 = u32(x_405);
  let x_409 : u32 = u_xlatu69;
  u_xlati69 = (bitcast<i32>(x_409) << bitcast<u32>(2i));
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_414 : i32 = u_xlati69;
  let x_417 : i32 = u_xlati69;
  let x_421 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_414 + 1i) / 4i)][((x_417 + 1i) % 4i)];
  let x_423 : vec3<f32> = (vec3<f32>(x_412.y, x_412.y, x_412.y) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : i32 = u_xlati69;
  let x_428 : i32 = u_xlati69;
  let x_431 : vec4<f32> = x_284.x_MainLightWorldToShadow[(x_426 / 4i)][(x_428 % 4i)];
  let x_433 : vec3<f32> = vs_TEXCOORD1;
  let x_436 : vec4<f32> = u_xlat4;
  let x_438 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_433.x, x_433.x, x_433.x)) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : i32 = u_xlati69;
  let x_444 : i32 = u_xlati69;
  let x_448 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_441 + 2i) / 4i)][((x_444 + 2i) % 4i)];
  let x_450 : vec3<f32> = vs_TEXCOORD1;
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : vec3<f32> = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450.z, x_450.z, x_450.z)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : i32 = u_xlati69;
  let x_463 : i32 = u_xlati69;
  let x_467 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_460 + 3i) / 4i)][((x_463 + 3i) % 4i)];
  let x_469 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = vs_TEXCOORD1.y;
  let x_476 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat69 = (x_473 * x_476);
  let x_479 : f32 = x_28.unity_MatrixV[0i].z;
  let x_481 : f32 = vs_TEXCOORD1.x;
  let x_483 : f32 = u_xlat69;
  u_xlat69 = ((x_479 * x_481) + x_483);
  let x_486 : f32 = x_28.unity_MatrixV[2i].z;
  let x_488 : f32 = vs_TEXCOORD1.z;
  let x_490 : f32 = u_xlat69;
  u_xlat69 = ((x_486 * x_488) + x_490);
  let x_492 : f32 = u_xlat69;
  let x_494 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat69 = (x_492 + x_494);
  let x_496 : f32 = u_xlat69;
  let x_500 : f32 = x_28.x_ProjectionParams.y;
  u_xlat69 = (-(x_496) + -(x_500));
  let x_503 : f32 = u_xlat69;
  u_xlat69 = max(x_503, 0.0f);
  let x_505 : f32 = u_xlat69;
  let x_508 : f32 = x_28.unity_FogParams.x;
  u_xlat69 = (x_505 * x_508);
  u_xlat2.w = 1.0f;
  let x_517 : vec4<f32> = x_514.unity_SHAr;
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_517, x_518);
  let x_523 : vec4<f32> = x_514.unity_SHAg;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_514.unity_SHAb;
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_529, x_530);
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_533.y, x_533.z, x_533.z, x_533.x) * vec4<f32>(x_535.x, x_535.y, x_535.z, x_535.z));
  let x_540 : vec4<f32> = x_514.unity_SHBr;
  let x_541 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_540, x_541);
  let x_546 : vec4<f32> = x_514.unity_SHBg;
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_546, x_547);
  let x_552 : vec4<f32> = x_514.unity_SHBb;
  let x_553 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_552, x_553);
  let x_557 : f32 = u_xlat2.y;
  let x_559 : f32 = u_xlat2.y;
  u_xlat1.x = (x_557 * x_559);
  let x_563 : f32 = u_xlat2.x;
  let x_565 : f32 = u_xlat2.x;
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_563 * x_565) + -(x_568));
  let x_574 : vec4<f32> = x_514.unity_SHC;
  let x_576 : vec4<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat7;
  let x_581 : vec3<f32> = ((vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576.x, x_576.x, x_576.x)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat5;
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat5;
  let x_593 : vec3<f32> = max(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_594 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_599 : f32 = x_284.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_599);
  let x_601 : bool = u_xlatb1;
  if (x_601) {
    let x_605 : f32 = x_284.x_MainLightShadowParams.y;
    u_xlatb1 = (x_605 == 1.0f);
    let x_607 : bool = u_xlatb1;
    if (x_607) {
      let x_610 : vec4<f32> = u_xlat4;
      let x_613 : vec4<f32> = x_284.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) + x_613);
      let x_617 : vec4<f32> = u_xlat6;
      let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
      let x_620 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_618.x, x_618.y, x_620);
      let x_632 : vec3<f32> = txVec0;
      let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_632.xy, x_632.z);
      u_xlat7.x = x_634;
      let x_637 : vec4<f32> = u_xlat6;
      let x_638 : vec2<f32> = vec2<f32>(x_637.z, x_637.w);
      let x_640 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_638.x, x_638.y, x_640);
      let x_647 : vec3<f32> = txVec1;
      let x_649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_647.xy, x_647.z);
      u_xlat7.y = x_649;
      let x_651 : vec4<f32> = u_xlat4;
      let x_654 : vec4<f32> = x_284.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) + x_654);
      let x_657 : vec4<f32> = u_xlat6;
      let x_658 : vec2<f32> = vec2<f32>(x_657.x, x_657.y);
      let x_660 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_658.x, x_658.y, x_660);
      let x_667 : vec3<f32> = txVec2;
      let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
      u_xlat7.z = x_669;
      let x_672 : vec4<f32> = u_xlat6;
      let x_673 : vec2<f32> = vec2<f32>(x_672.z, x_672.w);
      let x_675 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_673.x, x_673.y, x_675);
      let x_682 : vec3<f32> = txVec3;
      let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
      u_xlat7.w = x_684;
      let x_686 : vec4<f32> = u_xlat7;
      u_xlat1.x = dot(x_686, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_694 : f32 = x_284.x_MainLightShadowParams.y;
      u_xlatb71 = (x_694 == 2.0f);
      let x_696 : bool = u_xlatb71;
      if (x_696) {
        let x_699 : vec4<f32> = u_xlat4;
        let x_702 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_706 : vec2<f32> = ((vec2<f32>(x_699.x, x_699.y) * vec2<f32>(x_702.z, x_702.w)) + vec2<f32>(0.5f, 0.5f));
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_709 : vec4<f32> = u_xlat6;
        let x_711 : vec2<f32> = floor(vec2<f32>(x_709.x, x_709.y));
        let x_712 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_716 : vec4<f32> = u_xlat4;
        let x_719 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_722 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_719.z, x_719.w)) + -(vec2<f32>(x_722.x, x_722.y)));
        let x_726 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_726.x, x_726.x, x_726.y, x_726.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_731 : vec4<f32> = u_xlat7;
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_731.x, x_731.x, x_731.z, x_731.z) * vec4<f32>(x_733.x, x_733.x, x_733.z, x_733.z));
        let x_736 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = (vec2<f32>(x_736.y, x_736.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_741.y, x_740.y, x_741.w);
        let x_743 : vec4<f32> = u_xlat8;
        let x_746 : vec2<f32> = u_xlat52;
        let x_748 : vec2<f32> = ((vec2<f32>(x_743.x, x_743.z) * vec2<f32>(0.5f, 0.5f)) + -(x_746));
        let x_749 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_749.w);
        let x_752 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_752) + vec2<f32>(1.0f, 1.0f));
        let x_757 : vec2<f32> = u_xlat52;
        let x_759 : vec2<f32> = min(x_757, vec2<f32>(0.0f, 0.0f));
        let x_760 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat9;
        let x_765 : vec4<f32> = u_xlat9;
        let x_768 : vec2<f32> = u_xlat54;
        let x_769 : vec2<f32> = ((-(vec2<f32>(x_762.x, x_762.y)) * vec2<f32>(x_765.x, x_765.y)) + x_768);
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_772 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_772, vec2<f32>(0.0f, 0.0f));
        let x_774 : vec2<f32> = u_xlat52;
        let x_776 : vec2<f32> = u_xlat52;
        let x_778 : vec4<f32> = u_xlat7;
        u_xlat52 = ((-(x_774) * x_776) + vec2<f32>(x_778.y, x_778.w));
        let x_781 : vec4<f32> = u_xlat9;
        let x_783 : vec2<f32> = (vec2<f32>(x_781.x, x_781.y) + vec2<f32>(1.0f, 1.0f));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_786 + vec2<f32>(1.0f, 1.0f));
        let x_789 : vec4<f32> = u_xlat8;
        let x_793 : vec2<f32> = (vec2<f32>(x_789.x, x_789.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_794 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec2<f32> = u_xlat54;
        let x_797 : vec2<f32> = (x_796 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat9;
        let x_802 : vec2<f32> = (vec2<f32>(x_800.x, x_800.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_803 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_806 : vec2<f32> = u_xlat52;
        let x_807 : vec2<f32> = (x_806 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec4<f32> = u_xlat7;
        u_xlat52 = (vec2<f32>(x_810.y, x_810.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_814 : f32 = u_xlat9.x;
        u_xlat10.z = x_814;
        let x_817 : f32 = u_xlat52.x;
        u_xlat10.w = x_817;
        let x_820 : f32 = u_xlat11.x;
        u_xlat8.z = x_820;
        let x_823 : f32 = u_xlat7.x;
        u_xlat8.w = x_823;
        let x_826 : vec4<f32> = u_xlat8;
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_826.z, x_826.w, x_826.x, x_826.z) + vec4<f32>(x_828.z, x_828.w, x_828.x, x_828.z));
        let x_832 : f32 = u_xlat10.y;
        u_xlat9.z = x_832;
        let x_835 : f32 = u_xlat52.y;
        u_xlat9.w = x_835;
        let x_838 : f32 = u_xlat8.y;
        u_xlat11.z = x_838;
        let x_841 : f32 = u_xlat7.z;
        u_xlat11.w = x_841;
        let x_843 : vec4<f32> = u_xlat9;
        let x_845 : vec4<f32> = u_xlat11;
        let x_847 : vec3<f32> = (vec3<f32>(x_843.z, x_843.y, x_843.w) + vec3<f32>(x_845.z, x_845.y, x_845.w));
        let x_848 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat8;
        let x_852 : vec4<f32> = u_xlat12;
        let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.z, x_850.w) / vec3<f32>(x_852.z, x_852.w, x_852.y));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat8;
        let x_863 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_864 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
        let x_866 : vec4<f32> = u_xlat11;
        let x_868 : vec4<f32> = u_xlat7;
        let x_870 : vec3<f32> = (vec3<f32>(x_866.z, x_866.y, x_866.w) / vec3<f32>(x_868.x, x_868.y, x_868.z));
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat9;
        let x_875 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat8;
        let x_881 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_883 : vec3<f32> = (vec3<f32>(x_878.y, x_878.x, x_878.z) * vec3<f32>(x_881.x, x_881.x, x_881.x));
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        let x_889 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_891 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_889.y, x_889.y, x_889.y));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_895 : f32 = u_xlat9.x;
        u_xlat8.w = x_895;
        let x_897 : vec4<f32> = u_xlat6;
        let x_900 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_903 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y) * vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y)) + vec4<f32>(x_903.y, x_903.w, x_903.x, x_903.w));
        let x_906 : vec4<f32> = u_xlat6;
        let x_909 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_906.x, x_906.y) * vec2<f32>(x_909.x, x_909.y)) + vec2<f32>(x_912.z, x_912.w));
        let x_916 : f32 = u_xlat8.y;
        u_xlat9.w = x_916;
        let x_918 : vec4<f32> = u_xlat9;
        let x_919 : vec2<f32> = vec2<f32>(x_918.y, x_918.z);
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_920.x, x_919.x, x_920.z, x_919.y);
        let x_922 : vec4<f32> = u_xlat6;
        let x_925 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.y) * vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y)) + vec4<f32>(x_928.x, x_928.y, x_928.z, x_928.y));
        let x_931 : vec4<f32> = u_xlat6;
        let x_934 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y) * vec4<f32>(x_934.x, x_934.y, x_934.x, x_934.y)) + vec4<f32>(x_937.w, x_937.y, x_937.w, x_937.z));
        let x_940 : vec4<f32> = u_xlat6;
        let x_943 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y) * vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y)) + vec4<f32>(x_946.x, x_946.w, x_946.z, x_946.w));
        let x_950 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_950.x, x_950.x, x_950.x, x_950.y) * vec4<f32>(x_952.z, x_952.w, x_952.y, x_952.z));
        let x_956 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_956.y, x_956.y, x_956.z, x_956.z) * x_958);
        let x_962 : f32 = u_xlat7.z;
        let x_964 : f32 = u_xlat12.y;
        u_xlat71 = (x_962 * x_964);
        let x_967 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
        let x_970 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_978 : vec3<f32> = txVec4;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat72 = x_980;
        let x_982 : vec4<f32> = u_xlat10;
        let x_983 : vec2<f32> = vec2<f32>(x_982.z, x_982.w);
        let x_985 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_993 : vec3<f32> = txVec5;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_993.xy, x_993.z);
        u_xlat73 = x_995;
        let x_996 : f32 = u_xlat73;
        let x_998 : f32 = u_xlat13.y;
        u_xlat73 = (x_996 * x_998);
        let x_1001 : f32 = u_xlat13.x;
        let x_1002 : f32 = u_xlat72;
        let x_1004 : f32 = u_xlat73;
        u_xlat72 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec2<f32> = u_xlat52;
        let x_1009 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
        let x_1016 : vec3<f32> = txVec6;
        let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1016.xy, x_1016.z);
        u_xlat73 = x_1018;
        let x_1020 : f32 = u_xlat13.z;
        let x_1021 : f32 = u_xlat73;
        let x_1023 : f32 = u_xlat72;
        u_xlat72 = ((x_1020 * x_1021) + x_1023);
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
        let x_1029 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec7;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
        u_xlat73 = x_1038;
        let x_1040 : f32 = u_xlat13.w;
        let x_1041 : f32 = u_xlat73;
        let x_1043 : f32 = u_xlat72;
        u_xlat72 = ((x_1040 * x_1041) + x_1043);
        let x_1046 : vec4<f32> = u_xlat11;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec8;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat73 = x_1058;
        let x_1060 : f32 = u_xlat14.x;
        let x_1061 : f32 = u_xlat73;
        let x_1063 : f32 = u_xlat72;
        u_xlat72 = ((x_1060 * x_1061) + x_1063);
        let x_1066 : vec4<f32> = u_xlat11;
        let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
        let x_1069 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
        let x_1076 : vec3<f32> = txVec9;
        let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
        u_xlat73 = x_1078;
        let x_1080 : f32 = u_xlat14.y;
        let x_1081 : f32 = u_xlat73;
        let x_1083 : f32 = u_xlat72;
        u_xlat72 = ((x_1080 * x_1081) + x_1083);
        let x_1086 : vec4<f32> = u_xlat9;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1096 : vec3<f32> = txVec10;
        let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
        u_xlat73 = x_1098;
        let x_1100 : f32 = u_xlat14.z;
        let x_1101 : f32 = u_xlat73;
        let x_1103 : f32 = u_xlat72;
        u_xlat72 = ((x_1100 * x_1101) + x_1103);
        let x_1106 : vec4<f32> = u_xlat8;
        let x_1107 : vec2<f32> = vec2<f32>(x_1106.x, x_1106.y);
        let x_1109 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1107.x, x_1107.y, x_1109);
        let x_1116 : vec3<f32> = txVec11;
        let x_1118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1116.xy, x_1116.z);
        u_xlat73 = x_1118;
        let x_1120 : f32 = u_xlat14.w;
        let x_1121 : f32 = u_xlat73;
        let x_1123 : f32 = u_xlat72;
        u_xlat72 = ((x_1120 * x_1121) + x_1123);
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec12;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat73 = x_1138;
        let x_1139 : f32 = u_xlat71;
        let x_1140 : f32 = u_xlat73;
        let x_1142 : f32 = u_xlat72;
        u_xlat1.x = ((x_1139 * x_1140) + x_1142);
      } else {
        let x_1146 : vec4<f32> = u_xlat4;
        let x_1149 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.z, x_1149.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat6;
        let x_1157 : vec2<f32> = floor(vec2<f32>(x_1155.x, x_1155.y));
        let x_1158 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat4;
        let x_1163 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.z, x_1163.w)) + -(vec2<f32>(x_1166.x, x_1166.y)));
        let x_1170 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_1170.x, x_1170.x, x_1170.y, x_1170.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.z, x_1173.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.z, x_1175.z));
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1178.y, x_1178.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1183.x, x_1182.x, x_1183.z, x_1182.y);
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1188 : vec2<f32> = u_xlat52;
        let x_1190 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1188));
        let x_1191 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1191.w);
        let x_1193 : vec2<f32> = u_xlat52;
        let x_1195 : vec2<f32> = (-(x_1193) + vec2<f32>(1.0f, 1.0f));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1198, vec2<f32>(0.0f, 0.0f));
        let x_1200 : vec2<f32> = u_xlat54;
        let x_1202 : vec2<f32> = u_xlat54;
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = ((-(x_1200) * x_1202) + vec2<f32>(x_1204.x, x_1204.y));
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1209, vec2<f32>(0.0f, 0.0f));
        let x_1212 : vec2<f32> = u_xlat54;
        let x_1214 : vec2<f32> = u_xlat54;
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1218 : vec2<f32> = ((-(x_1212) * x_1214) + vec2<f32>(x_1216.y, x_1216.w));
        let x_1219 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1218.x, x_1219.y, x_1218.y);
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1223 : vec2<f32> = (vec2<f32>(x_1221.x, x_1221.y) + vec2<f32>(2.0f, 2.0f));
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1226 : vec3<f32> = u_xlat30;
        let x_1228 : vec2<f32> = (vec2<f32>(x_1226.x, x_1226.z) + vec2<f32>(2.0f, 2.0f));
        let x_1229 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1232 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1232 * 0.08163200318813323975f);
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1239 : vec3<f32> = (vec3<f32>(x_1236.z, x_1236.x, x_1236.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1249 : f32 = u_xlat11.y;
        u_xlat10.x = x_1249;
        let x_1251 : vec2<f32> = u_xlat52;
        let x_1258 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1259.x, x_1258.x, x_1259.z, x_1258.y);
        let x_1261 : vec2<f32> = u_xlat52;
        let x_1265 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1265.x, x_1266.y, x_1265.y, x_1266.w);
        let x_1269 : f32 = u_xlat7.x;
        u_xlat8.y = x_1269;
        let x_1272 : f32 = u_xlat9.y;
        u_xlat8.w = x_1272;
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1274 + x_1275);
        let x_1277 : vec2<f32> = u_xlat52;
        let x_1280 : vec2<f32> = ((vec2<f32>(x_1277.y, x_1277.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1281.x, x_1280.x, x_1281.z, x_1280.y);
        let x_1283 : vec2<f32> = u_xlat52;
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1283.y, x_1283.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1286.x, x_1287.y, x_1286.y, x_1287.w);
        let x_1290 : f32 = u_xlat7.y;
        u_xlat9.y = x_1290;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1293 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1292 + x_1293);
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1295 / x_1296);
        let x_1298 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1298 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1305 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1304 / x_1305);
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1307 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1312 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1309.w, x_1309.x, x_1309.y, x_1309.z) * vec4<f32>(x_1312.x, x_1312.x, x_1312.x, x_1312.x));
        let x_1315 : vec4<f32> = u_xlat9;
        let x_1318 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1315.x, x_1315.w, x_1315.y, x_1315.z) * vec4<f32>(x_1318.y, x_1318.y, x_1318.y, x_1318.y));
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1322 : vec3<f32> = vec3<f32>(x_1321.y, x_1321.z, x_1321.w);
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1322.z);
        let x_1326 : f32 = u_xlat9.x;
        u_xlat11.y = x_1326;
        let x_1328 : vec4<f32> = u_xlat6;
        let x_1331 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat52 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat11.y;
        u_xlat8.y = x_1347;
        let x_1350 : f32 = u_xlat9.z;
        u_xlat11.y = x_1350;
        let x_1352 : vec4<f32> = u_xlat6;
        let x_1355 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1358.y));
        let x_1361 : vec4<f32> = u_xlat6;
        let x_1364 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(x_1364.x, x_1364.y)) + vec2<f32>(x_1367.w, x_1367.y));
        let x_1370 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1373 : f32 = u_xlat11.y;
        u_xlat8.z = x_1373;
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1379 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1376.x, x_1376.y, x_1376.x, x_1376.y) * vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y)) + vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.z));
        let x_1386 : f32 = u_xlat9.w;
        u_xlat11.y = x_1386;
        let x_1389 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1395 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y) * vec4<f32>(x_1392.x, x_1392.y, x_1392.x, x_1392.y)) + vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1395.y));
        let x_1399 : vec4<f32> = u_xlat6;
        let x_1402 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat11;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1399.x, x_1399.y) * vec2<f32>(x_1402.x, x_1402.y)) + vec2<f32>(x_1405.w, x_1405.y));
        let x_1408 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1407.x, x_1407.y, x_1408.z);
        let x_1411 : f32 = u_xlat11.y;
        u_xlat8.w = x_1411;
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1414.x, x_1414.y) * vec2<f32>(x_1417.x, x_1417.y)) + vec2<f32>(x_1420.x, x_1420.w));
        let x_1423 : vec4<f32> = u_xlat11;
        let x_1424 : vec3<f32> = vec3<f32>(x_1423.x, x_1423.z, x_1423.w);
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1424.x, x_1425.y, x_1424.y, x_1424.z);
        let x_1427 : vec4<f32> = u_xlat6;
        let x_1430 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1433 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1427.x, x_1427.y, x_1427.x, x_1427.y) * vec4<f32>(x_1430.x, x_1430.y, x_1430.x, x_1430.y)) + vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1433.y));
        let x_1437 : vec4<f32> = u_xlat6;
        let x_1440 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat55 = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(x_1440.x, x_1440.y)) + vec2<f32>(x_1443.w, x_1443.y));
        let x_1447 : f32 = u_xlat8.x;
        u_xlat9.x = x_1447;
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1452 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1452.x, x_1452.y)) + vec2<f32>(x_1455.x, x_1455.y));
        let x_1458 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1457.x, x_1457.y, x_1458.z, x_1458.w);
        let x_1461 : vec4<f32> = u_xlat7;
        let x_1463 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1461.x, x_1461.x, x_1461.x, x_1461.x) * x_1463);
        let x_1466 : vec4<f32> = u_xlat7;
        let x_1468 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1466.y, x_1466.y, x_1466.y, x_1466.y) * x_1468);
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1473 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1471.z, x_1471.z, x_1471.z, x_1471.z) * x_1473);
        let x_1475 : vec4<f32> = u_xlat7;
        let x_1477 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1475.w, x_1475.w, x_1475.w, x_1475.w) * x_1477);
        let x_1480 : vec4<f32> = u_xlat12;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec13;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat71 = x_1492;
        let x_1494 : vec4<f32> = u_xlat12;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec14;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat72 = x_1506;
        let x_1507 : f32 = u_xlat72;
        let x_1509 : f32 = u_xlat17.y;
        u_xlat72 = (x_1507 * x_1509);
        let x_1512 : f32 = u_xlat17.x;
        let x_1513 : f32 = u_xlat71;
        let x_1515 : f32 = u_xlat72;
        u_xlat71 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec2<f32> = u_xlat52;
        let x_1520 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec15;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat72 = x_1529;
        let x_1531 : f32 = u_xlat17.z;
        let x_1532 : f32 = u_xlat72;
        let x_1534 : f32 = u_xlat71;
        u_xlat71 = ((x_1531 * x_1532) + x_1534);
        let x_1537 : vec4<f32> = u_xlat15;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.x, x_1537.y);
        let x_1540 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec16;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat72 = x_1549;
        let x_1551 : f32 = u_xlat17.w;
        let x_1552 : f32 = u_xlat72;
        let x_1554 : f32 = u_xlat71;
        u_xlat71 = ((x_1551 * x_1552) + x_1554);
        let x_1557 : vec4<f32> = u_xlat13;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.x, x_1557.y);
        let x_1560 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec17;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat72 = x_1569;
        let x_1571 : f32 = u_xlat18.x;
        let x_1572 : f32 = u_xlat72;
        let x_1574 : f32 = u_xlat71;
        u_xlat71 = ((x_1571 * x_1572) + x_1574);
        let x_1577 : vec4<f32> = u_xlat13;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec18;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat72 = x_1589;
        let x_1591 : f32 = u_xlat18.y;
        let x_1592 : f32 = u_xlat72;
        let x_1594 : f32 = u_xlat71;
        u_xlat71 = ((x_1591 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat14;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec19;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat72 = x_1609;
        let x_1611 : f32 = u_xlat18.z;
        let x_1612 : f32 = u_xlat72;
        let x_1614 : f32 = u_xlat71;
        u_xlat71 = ((x_1611 * x_1612) + x_1614);
        let x_1617 : vec4<f32> = u_xlat15;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.z, x_1617.w);
        let x_1620 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec20;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat72 = x_1629;
        let x_1631 : f32 = u_xlat18.w;
        let x_1632 : f32 = u_xlat72;
        let x_1634 : f32 = u_xlat71;
        u_xlat71 = ((x_1631 * x_1632) + x_1634);
        let x_1637 : vec4<f32> = u_xlat16;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.x, x_1637.y);
        let x_1640 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec21;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat72 = x_1649;
        let x_1651 : f32 = u_xlat19.x;
        let x_1652 : f32 = u_xlat72;
        let x_1654 : f32 = u_xlat71;
        u_xlat71 = ((x_1651 * x_1652) + x_1654);
        let x_1657 : vec4<f32> = u_xlat16;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.z, x_1657.w);
        let x_1660 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec22;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat72 = x_1669;
        let x_1671 : f32 = u_xlat19.y;
        let x_1672 : f32 = u_xlat72;
        let x_1674 : f32 = u_xlat71;
        u_xlat71 = ((x_1671 * x_1672) + x_1674);
        let x_1677 : vec3<f32> = u_xlat31;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.x, x_1677.y);
        let x_1680 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec23;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat72 = x_1689;
        let x_1691 : f32 = u_xlat19.z;
        let x_1692 : f32 = u_xlat72;
        let x_1694 : f32 = u_xlat71;
        u_xlat71 = ((x_1691 * x_1692) + x_1694);
        let x_1697 : vec2<f32> = u_xlat60;
        let x_1699 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec24;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat72 = x_1708;
        let x_1710 : f32 = u_xlat19.w;
        let x_1711 : f32 = u_xlat72;
        let x_1713 : f32 = u_xlat71;
        u_xlat71 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat11;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
        let x_1719 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec25;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat72 = x_1728;
        let x_1730 : f32 = u_xlat7.x;
        let x_1731 : f32 = u_xlat72;
        let x_1733 : f32 = u_xlat71;
        u_xlat71 = ((x_1730 * x_1731) + x_1733);
        let x_1736 : vec4<f32> = u_xlat11;
        let x_1737 : vec2<f32> = vec2<f32>(x_1736.z, x_1736.w);
        let x_1739 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec26;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1746.xy, x_1746.z);
        u_xlat72 = x_1748;
        let x_1750 : f32 = u_xlat7.y;
        let x_1751 : f32 = u_xlat72;
        let x_1753 : f32 = u_xlat71;
        u_xlat71 = ((x_1750 * x_1751) + x_1753);
        let x_1756 : vec2<f32> = u_xlat55;
        let x_1758 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec27;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat72 = x_1767;
        let x_1769 : f32 = u_xlat7.z;
        let x_1770 : f32 = u_xlat72;
        let x_1772 : f32 = u_xlat71;
        u_xlat71 = ((x_1769 * x_1770) + x_1772);
        let x_1775 : vec4<f32> = u_xlat6;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
        let x_1778 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec28;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat72 = x_1787;
        let x_1789 : f32 = u_xlat7.w;
        let x_1790 : f32 = u_xlat72;
        let x_1792 : f32 = u_xlat71;
        u_xlat1.x = ((x_1789 * x_1790) + x_1792);
      }
    }
  } else {
    let x_1797 : vec4<f32> = u_xlat4;
    let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
    let x_1800 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
    let x_1807 : vec3<f32> = txVec29;
    let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
    u_xlat1.x = x_1809;
  }
  let x_1812 : f32 = x_284.x_MainLightShadowParams.x;
  u_xlat71 = (-(x_1812) + 1.0f);
  let x_1816 : f32 = u_xlat1.x;
  let x_1818 : f32 = x_284.x_MainLightShadowParams.x;
  let x_1820 : f32 = u_xlat71;
  u_xlat1.x = ((x_1816 * x_1818) + x_1820);
  let x_1824 : f32 = u_xlat4.z;
  u_xlatb71 = (0.0f >= x_1824);
  let x_1828 : f32 = u_xlat4.z;
  u_xlatb72 = (x_1828 >= 1.0f);
  let x_1830 : bool = u_xlatb71;
  let x_1831 : bool = u_xlatb72;
  u_xlatb71 = (x_1830 | x_1831);
  let x_1833 : bool = u_xlatb71;
  if (x_1833) {
    x_1834 = 1.0f;
  } else {
    let x_1839 : f32 = u_xlat1.x;
    x_1834 = x_1839;
  }
  let x_1840 : f32 = x_1834;
  u_xlat1.x = x_1840;
  let x_1842 : vec3<f32> = vs_TEXCOORD1;
  let x_1845 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1847 : vec3<f32> = (x_1842 + -(x_1845));
  let x_1848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec4<f32> = u_xlat4;
  let x_1852 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : f32 = u_xlat71;
  let x_1857 : f32 = x_284.x_MainLightShadowParams.z;
  let x_1860 : f32 = x_284.x_MainLightShadowParams.w;
  u_xlat72 = ((x_1855 * x_1857) + x_1860);
  let x_1862 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1862, 0.0f, 1.0f);
  let x_1865 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_1865) + 1.0f);
  let x_1869 : f32 = u_xlat72;
  let x_1871 : f32 = u_xlat4.x;
  let x_1874 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1869 * x_1871) + x_1874);
  let x_1878 : f32 = u_xlat1.x;
  let x_1880 : f32 = x_514.unity_LightData.z;
  u_xlat1.x = (x_1878 * x_1880);
  let x_1883 : vec4<f32> = u_xlat1;
  let x_1886 : vec4<f32> = x_28.x_MainLightColor;
  let x_1888 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.x, x_1883.x) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat2;
  let x_1894 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1899 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1899, 0.0f, 1.0f);
  let x_1902 : vec4<f32> = u_xlat1;
  let x_1904 : vec4<f32> = u_xlat4;
  let x_1906 : vec3<f32> = (vec3<f32>(x_1902.x, x_1902.x, x_1902.x) * vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1910 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_1910 * 10.0f) + 1.0f);
  let x_1916 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1916);
  let x_1919 : vec3<f32> = u_xlat3;
  let x_1920 : vec3<f32> = u_xlat23;
  let x_1924 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1926 : vec3<f32> = ((x_1919 * vec3<f32>(x_1920.x, x_1920.x, x_1920.x)) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec4<f32> = u_xlat7;
  let x_1931 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1929.x, x_1929.y, x_1929.z), vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : f32 = u_xlat72;
  u_xlat72 = max(x_1934, 1.17549435e-38f);
  let x_1937 : f32 = u_xlat72;
  u_xlat72 = inverseSqrt(x_1937);
  let x_1939 : f32 = u_xlat72;
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939, x_1939, x_1939) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec4<f32> = u_xlat2;
  let x_1948 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1951, 0.0f, 1.0f);
  let x_1953 : f32 = u_xlat72;
  u_xlat72 = log2(x_1953);
  let x_1956 : f32 = u_xlat1.x;
  let x_1957 : f32 = u_xlat72;
  u_xlat72 = (x_1956 * x_1957);
  let x_1959 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1959);
  let x_1961 : f32 = u_xlat72;
  let x_1964 : vec4<f32> = x_42.x_SpecColor;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1961, x_1961, x_1961) * vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec4<f32> = u_xlat4;
  let x_1971 : vec4<f32> = u_xlat7;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat6;
  let x_1978 : vec4<f32> = u_xlat1;
  let x_1981 : vec4<f32> = u_xlat4;
  let x_1983 : vec3<f32> = ((vec3<f32>(x_1976.x, x_1976.y, x_1976.z) * vec3<f32>(x_1978.y, x_1978.z, x_1978.w)) + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1987 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1989 : f32 = x_514.unity_LightData.y;
  u_xlat72 = min(x_1987, x_1989);
  let x_1992 : f32 = u_xlat72;
  u_xlatu72 = bitcast<u32>(i32(x_1992));
  let x_1995 : f32 = u_xlat71;
  let x_1998 : f32 = x_284.x_AdditionalShadowFadeParams.x;
  let x_2001 : f32 = x_284.x_AdditionalShadowFadeParams.y;
  u_xlat71 = ((x_1995 * x_1998) + x_2001);
  let x_2003 : f32 = u_xlat71;
  u_xlat71 = clamp(x_2003, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2015 : u32 = u_xlatu_loop_1;
    let x_2016 : u32 = u_xlatu72;
    if ((x_2015 < x_2016)) {
    } else {
      break;
    }
    let x_2019 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_2019 >> 2u);
    let x_2022 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_2022 & 3u));
    let x_2026 : u32 = u_xlatu74;
    let x_2029 : vec4<f32> = x_514.unity_LightIndices[bitcast<i32>(x_2026)];
    let x_2039 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2044 : vec4<u32> = indexable[x_2039];
    u_xlat74 = dot(x_2029, bitcast<vec4<f32>>(x_2044));
    let x_2048 : f32 = u_xlat74;
    u_xlati74 = i32(x_2048);
    let x_2050 : vec3<f32> = vs_TEXCOORD1;
    let x_2061 : i32 = u_xlati74;
    let x_2063 : vec4<f32> = x_2060.x_AdditionalLightsPosition[x_2061];
    let x_2066 : i32 = u_xlati74;
    let x_2068 : vec4<f32> = x_2060.x_AdditionalLightsPosition[x_2066];
    let x_2070 : vec3<f32> = ((-(x_2050) * vec3<f32>(x_2063.w, x_2063.w, x_2063.w)) + vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
    let x_2071 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
    let x_2074 : vec4<f32> = u_xlat7;
    let x_2076 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2074.x, x_2074.y, x_2074.z), vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
    let x_2079 : f32 = u_xlat75;
    u_xlat75 = max(x_2079, 0.00006103515625f);
    let x_2082 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_2082);
    let x_2084 : f32 = u_xlat76;
    let x_2086 : vec4<f32> = u_xlat7;
    let x_2088 : vec3<f32> = (vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
    let x_2091 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_2091);
    let x_2093 : f32 = u_xlat75;
    let x_2094 : i32 = u_xlati74;
    let x_2096 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2094].x;
    u_xlat75 = (x_2093 * x_2096);
    let x_2098 : f32 = u_xlat75;
    let x_2100 : f32 = u_xlat75;
    u_xlat75 = ((-(x_2098) * x_2100) + 1.0f);
    let x_2103 : f32 = u_xlat75;
    u_xlat75 = max(x_2103, 0.0f);
    let x_2105 : f32 = u_xlat75;
    let x_2106 : f32 = u_xlat75;
    u_xlat75 = (x_2105 * x_2106);
    let x_2108 : f32 = u_xlat75;
    let x_2109 : f32 = u_xlat76;
    u_xlat75 = (x_2108 * x_2109);
    let x_2111 : i32 = u_xlati74;
    let x_2113 : vec4<f32> = x_2060.x_AdditionalLightsSpotDir[x_2111];
    let x_2115 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : f32 = u_xlat76;
    let x_2119 : i32 = u_xlati74;
    let x_2121 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2119].z;
    let x_2123 : i32 = u_xlati74;
    let x_2125 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2123].w;
    u_xlat76 = ((x_2118 * x_2121) + x_2125);
    let x_2127 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2127, 0.0f, 1.0f);
    let x_2129 : f32 = u_xlat76;
    let x_2130 : f32 = u_xlat76;
    u_xlat76 = (x_2129 * x_2130);
    let x_2132 : f32 = u_xlat75;
    let x_2133 : f32 = u_xlat76;
    u_xlat75 = (x_2132 * x_2133);
    let x_2137 : i32 = u_xlati74;
    let x_2139 : f32 = x_284.x_AdditionalShadowParams[x_2137].w;
    u_xlati76 = i32(x_2139);
    let x_2144 : i32 = u_xlati76;
    u_xlatb8.x = (x_2144 >= 0i);
    let x_2148 : bool = u_xlatb8.x;
    if (x_2148) {
      let x_2152 : i32 = u_xlati74;
      let x_2154 : f32 = x_284.x_AdditionalShadowParams[x_2152].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2154, x_2154, x_2154, x_2154))));
      let x_2160 : bool = u_xlatb8.x;
      if (x_2160) {
        let x_2163 : vec4<f32> = u_xlat7;
        let x_2166 : vec4<f32> = u_xlat7;
        let x_2169 : vec4<bool> = (abs(vec4<f32>(x_2163.z, x_2163.z, x_2163.y, x_2163.z)) >= abs(vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.x)));
        u_xlatb8 = vec3<bool>(x_2169.x, x_2169.y, x_2169.z);
        let x_2172 : bool = u_xlatb8.y;
        let x_2174 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2172 & x_2174);
        let x_2178 : vec4<f32> = u_xlat7;
        let x_2181 : vec4<bool> = (-(vec4<f32>(x_2178.z, x_2178.y, x_2178.x, x_2178.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2181.x, x_2181.y, x_2181.z);
        let x_2184 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2184);
        let x_2189 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2189);
        let x_2193 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2193);
        let x_2197 : bool = u_xlatb8.z;
        if (x_2197) {
          let x_2202 : f32 = u_xlat31.z;
          x_2198 = x_2202;
        } else {
          let x_2205 : f32 = u_xlat9.x;
          x_2198 = x_2205;
        }
        let x_2206 : f32 = x_2198;
        u_xlat54.x = x_2206;
        let x_2209 : bool = u_xlatb8.x;
        if (x_2209) {
          let x_2214 : f32 = u_xlat31.x;
          x_2210 = x_2214;
        } else {
          let x_2217 : f32 = u_xlat54.x;
          x_2210 = x_2217;
        }
        let x_2218 : f32 = x_2210;
        u_xlat8.x = x_2218;
        let x_2220 : i32 = u_xlati74;
        let x_2222 : f32 = x_284.x_AdditionalShadowParams[x_2220].w;
        u_xlat31.x = trunc(x_2222);
        let x_2226 : f32 = u_xlat8.x;
        let x_2228 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2226 + x_2228);
        let x_2232 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2232);
      }
      let x_2234 : i32 = u_xlati76;
      u_xlati76 = (x_2234 << bitcast<u32>(2i));
      let x_2236 : vec3<f32> = vs_TEXCOORD1;
      let x_2239 : i32 = u_xlati76;
      let x_2242 : i32 = u_xlati76;
      let x_2246 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2239 + 1i) / 4i)][((x_2242 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2236.y, x_2236.y, x_2236.y, x_2236.y) * x_2246);
      let x_2248 : i32 = u_xlati76;
      let x_2250 : i32 = u_xlati76;
      let x_2253 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[(x_2248 / 4i)][(x_2250 % 4i)];
      let x_2254 : vec3<f32> = vs_TEXCOORD1;
      let x_2257 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2253 * vec4<f32>(x_2254.x, x_2254.x, x_2254.x, x_2254.x)) + x_2257);
      let x_2259 : i32 = u_xlati76;
      let x_2262 : i32 = u_xlati76;
      let x_2266 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2259 + 2i) / 4i)][((x_2262 + 2i) % 4i)];
      let x_2267 : vec3<f32> = vs_TEXCOORD1;
      let x_2270 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2266 * vec4<f32>(x_2267.z, x_2267.z, x_2267.z, x_2267.z)) + x_2270);
      let x_2272 : vec4<f32> = u_xlat8;
      let x_2273 : i32 = u_xlati76;
      let x_2276 : i32 = u_xlati76;
      let x_2280 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2273 + 3i) / 4i)][((x_2276 + 3i) % 4i)];
      u_xlat8 = (x_2272 + x_2280);
      let x_2282 : vec4<f32> = u_xlat8;
      let x_2284 : vec4<f32> = u_xlat8;
      let x_2286 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) / vec3<f32>(x_2284.w, x_2284.w, x_2284.w));
      let x_2287 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
      let x_2290 : i32 = u_xlati74;
      let x_2292 : f32 = x_284.x_AdditionalShadowParams[x_2290].y;
      u_xlatb76 = (0.0f < x_2292);
      let x_2294 : bool = u_xlatb76;
      if (x_2294) {
        let x_2297 : i32 = u_xlati74;
        let x_2299 : f32 = x_284.x_AdditionalShadowParams[x_2297].y;
        u_xlatb76 = (1.0f == x_2299);
        let x_2301 : bool = u_xlatb76;
        if (x_2301) {
          let x_2304 : vec4<f32> = u_xlat8;
          let x_2308 : vec4<f32> = x_284.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y) + x_2308);
          let x_2311 : vec4<f32> = u_xlat9;
          let x_2312 : vec2<f32> = vec2<f32>(x_2311.x, x_2311.y);
          let x_2314 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2312.x, x_2312.y, x_2314);
          let x_2322 : vec3<f32> = txVec30;
          let x_2324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2322.xy, x_2322.z);
          u_xlat10.x = x_2324;
          let x_2327 : vec4<f32> = u_xlat9;
          let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
          let x_2330 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
          let x_2337 : vec3<f32> = txVec31;
          let x_2339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
          u_xlat10.y = x_2339;
          let x_2341 : vec4<f32> = u_xlat8;
          let x_2345 : vec4<f32> = x_284.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y) + x_2345);
          let x_2348 : vec4<f32> = u_xlat9;
          let x_2349 : vec2<f32> = vec2<f32>(x_2348.x, x_2348.y);
          let x_2351 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
          let x_2358 : vec3<f32> = txVec32;
          let x_2360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
          u_xlat10.z = x_2360;
          let x_2363 : vec4<f32> = u_xlat9;
          let x_2364 : vec2<f32> = vec2<f32>(x_2363.z, x_2363.w);
          let x_2366 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
          let x_2373 : vec3<f32> = txVec33;
          let x_2375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2373.xy, x_2373.z);
          u_xlat10.w = x_2375;
          let x_2377 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2377, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2381 : i32 = u_xlati74;
          let x_2383 : f32 = x_284.x_AdditionalShadowParams[x_2381].y;
          u_xlatb77 = (2.0f == x_2383);
          let x_2385 : bool = u_xlatb77;
          if (x_2385) {
            let x_2388 : vec4<f32> = u_xlat8;
            let x_2392 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2395 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.y) * vec2<f32>(x_2392.z, x_2392.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2396 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2398 : vec4<f32> = u_xlat9;
            let x_2400 : vec2<f32> = floor(vec2<f32>(x_2398.x, x_2398.y));
            let x_2401 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat8;
            let x_2406 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2409 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2403.x, x_2403.y) * vec2<f32>(x_2406.z, x_2406.w)) + -(vec2<f32>(x_2409.x, x_2409.y)));
            let x_2413 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2413.x, x_2413.x, x_2413.y, x_2413.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2416 : vec4<f32> = u_xlat10;
            let x_2418 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2416.x, x_2416.x, x_2416.z, x_2416.z) * vec4<f32>(x_2418.x, x_2418.x, x_2418.z, x_2418.z));
            let x_2421 : vec4<f32> = u_xlat11;
            let x_2423 : vec2<f32> = (vec2<f32>(x_2421.y, x_2421.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2424 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2423.x, x_2424.y, x_2423.y, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat11;
            let x_2429 : vec2<f32> = u_xlat55;
            let x_2431 : vec2<f32> = ((vec2<f32>(x_2426.x, x_2426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2429));
            let x_2432 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2435 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2435) + vec2<f32>(1.0f, 1.0f));
            let x_2438 : vec2<f32> = u_xlat55;
            let x_2439 : vec2<f32> = min(x_2438, vec2<f32>(0.0f, 0.0f));
            let x_2440 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
            let x_2442 : vec4<f32> = u_xlat12;
            let x_2445 : vec4<f32> = u_xlat12;
            let x_2448 : vec2<f32> = u_xlat57;
            let x_2449 : vec2<f32> = ((-(vec2<f32>(x_2442.x, x_2442.y)) * vec2<f32>(x_2445.x, x_2445.y)) + x_2448);
            let x_2450 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2452, vec2<f32>(0.0f, 0.0f));
            let x_2454 : vec2<f32> = u_xlat55;
            let x_2456 : vec2<f32> = u_xlat55;
            let x_2458 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2454) * x_2456) + vec2<f32>(x_2458.y, x_2458.w));
            let x_2461 : vec4<f32> = u_xlat12;
            let x_2463 : vec2<f32> = (vec2<f32>(x_2461.x, x_2461.y) + vec2<f32>(1.0f, 1.0f));
            let x_2464 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2466 + vec2<f32>(1.0f, 1.0f));
            let x_2468 : vec4<f32> = u_xlat11;
            let x_2470 : vec2<f32> = (vec2<f32>(x_2468.x, x_2468.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2471 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2470.x, x_2470.y, x_2471.z, x_2471.w);
            let x_2473 : vec2<f32> = u_xlat57;
            let x_2474 : vec2<f32> = (x_2473 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2475 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2474.x, x_2474.y, x_2475.z, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat12;
            let x_2479 : vec2<f32> = (vec2<f32>(x_2477.x, x_2477.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2480 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2479.x, x_2479.y, x_2480.z, x_2480.w);
            let x_2482 : vec2<f32> = u_xlat55;
            let x_2483 : vec2<f32> = (x_2482 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2484 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2483.x, x_2483.y, x_2484.z, x_2484.w);
            let x_2486 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2486.y, x_2486.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : f32 = u_xlat12.x;
            u_xlat13.z = x_2490;
            let x_2493 : f32 = u_xlat55.x;
            u_xlat13.w = x_2493;
            let x_2496 : f32 = u_xlat14.x;
            u_xlat11.z = x_2496;
            let x_2499 : f32 = u_xlat10.x;
            u_xlat11.w = x_2499;
            let x_2501 : vec4<f32> = u_xlat11;
            let x_2503 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2501.z, x_2501.w, x_2501.x, x_2501.z) + vec4<f32>(x_2503.z, x_2503.w, x_2503.x, x_2503.z));
            let x_2507 : f32 = u_xlat13.y;
            u_xlat12.z = x_2507;
            let x_2510 : f32 = u_xlat55.y;
            u_xlat12.w = x_2510;
            let x_2513 : f32 = u_xlat11.y;
            u_xlat14.z = x_2513;
            let x_2516 : f32 = u_xlat10.z;
            u_xlat14.w = x_2516;
            let x_2518 : vec4<f32> = u_xlat12;
            let x_2520 : vec4<f32> = u_xlat14;
            let x_2522 : vec3<f32> = (vec3<f32>(x_2518.z, x_2518.y, x_2518.w) + vec3<f32>(x_2520.z, x_2520.y, x_2520.w));
            let x_2523 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2527 : vec4<f32> = u_xlat15;
            let x_2529 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.z, x_2525.w) / vec3<f32>(x_2527.z, x_2527.w, x_2527.y));
            let x_2530 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
            let x_2532 : vec4<f32> = u_xlat11;
            let x_2534 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.y, x_2532.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2535 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
            let x_2537 : vec4<f32> = u_xlat14;
            let x_2539 : vec4<f32> = u_xlat10;
            let x_2541 : vec3<f32> = (vec3<f32>(x_2537.z, x_2537.y, x_2537.w) / vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
            let x_2542 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
            let x_2544 : vec4<f32> = u_xlat12;
            let x_2546 : vec3<f32> = (vec3<f32>(x_2544.x, x_2544.y, x_2544.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2547 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2552 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2554 : vec3<f32> = (vec3<f32>(x_2549.y, x_2549.x, x_2549.z) * vec3<f32>(x_2552.x, x_2552.x, x_2552.x));
            let x_2555 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat12;
            let x_2560 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.y, x_2557.z) * vec3<f32>(x_2560.y, x_2560.y, x_2560.y));
            let x_2563 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2566 : f32 = u_xlat12.x;
            u_xlat11.w = x_2566;
            let x_2568 : vec4<f32> = u_xlat9;
            let x_2571 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.y, x_2574.w, x_2574.x, x_2574.w));
            let x_2577 : vec4<f32> = u_xlat9;
            let x_2580 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2583 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2580.x, x_2580.y)) + vec2<f32>(x_2583.z, x_2583.w));
            let x_2587 : f32 = u_xlat11.y;
            u_xlat12.w = x_2587;
            let x_2589 : vec4<f32> = u_xlat12;
            let x_2590 : vec2<f32> = vec2<f32>(x_2589.y, x_2589.z);
            let x_2591 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2591.x, x_2590.x, x_2591.z, x_2590.y);
            let x_2593 : vec4<f32> = u_xlat9;
            let x_2596 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2599 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y) * vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y)) + vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2599.y));
            let x_2602 : vec4<f32> = u_xlat9;
            let x_2605 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2608 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y) * vec4<f32>(x_2605.x, x_2605.y, x_2605.x, x_2605.y)) + vec4<f32>(x_2608.w, x_2608.y, x_2608.w, x_2608.z));
            let x_2611 : vec4<f32> = u_xlat9;
            let x_2614 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2617 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y) * vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y)) + vec4<f32>(x_2617.x, x_2617.w, x_2617.z, x_2617.w));
            let x_2620 : vec4<f32> = u_xlat10;
            let x_2622 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2620.x, x_2620.x, x_2620.x, x_2620.y) * vec4<f32>(x_2622.z, x_2622.w, x_2622.y, x_2622.z));
            let x_2625 : vec4<f32> = u_xlat10;
            let x_2627 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2625.y, x_2625.y, x_2625.z, x_2625.z) * x_2627);
            let x_2631 : f32 = u_xlat10.z;
            let x_2633 : f32 = u_xlat15.y;
            u_xlat77 = (x_2631 * x_2633);
            let x_2636 : vec4<f32> = u_xlat13;
            let x_2637 : vec2<f32> = vec2<f32>(x_2636.x, x_2636.y);
            let x_2639 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2637.x, x_2637.y, x_2639);
            let x_2646 : vec3<f32> = txVec34;
            let x_2648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2646.xy, x_2646.z);
            u_xlat9.x = x_2648;
            let x_2651 : vec4<f32> = u_xlat13;
            let x_2652 : vec2<f32> = vec2<f32>(x_2651.z, x_2651.w);
            let x_2654 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2652.x, x_2652.y, x_2654);
            let x_2662 : vec3<f32> = txVec35;
            let x_2664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2662.xy, x_2662.z);
            u_xlat32 = x_2664;
            let x_2665 : f32 = u_xlat32;
            let x_2667 : f32 = u_xlat16.y;
            u_xlat32 = (x_2665 * x_2667);
            let x_2670 : f32 = u_xlat16.x;
            let x_2672 : f32 = u_xlat9.x;
            let x_2674 : f32 = u_xlat32;
            u_xlat9.x = ((x_2670 * x_2672) + x_2674);
            let x_2678 : vec2<f32> = u_xlat55;
            let x_2680 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec36;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat32 = x_2689;
            let x_2691 : f32 = u_xlat16.z;
            let x_2692 : f32 = u_xlat32;
            let x_2695 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2691 * x_2692) + x_2695);
            let x_2699 : vec4<f32> = u_xlat12;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.x, x_2699.y);
            let x_2702 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec37;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat32 = x_2711;
            let x_2713 : f32 = u_xlat16.w;
            let x_2714 : f32 = u_xlat32;
            let x_2717 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2713 * x_2714) + x_2717);
            let x_2721 : vec4<f32> = u_xlat14;
            let x_2722 : vec2<f32> = vec2<f32>(x_2721.x, x_2721.y);
            let x_2724 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2722.x, x_2722.y, x_2724);
            let x_2731 : vec3<f32> = txVec38;
            let x_2733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
            u_xlat32 = x_2733;
            let x_2735 : f32 = u_xlat17.x;
            let x_2736 : f32 = u_xlat32;
            let x_2739 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2735 * x_2736) + x_2739);
            let x_2743 : vec4<f32> = u_xlat14;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.z, x_2743.w);
            let x_2746 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec39;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat32 = x_2755;
            let x_2757 : f32 = u_xlat17.y;
            let x_2758 : f32 = u_xlat32;
            let x_2761 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2757 * x_2758) + x_2761);
            let x_2765 : vec4<f32> = u_xlat12;
            let x_2766 : vec2<f32> = vec2<f32>(x_2765.z, x_2765.w);
            let x_2768 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
            let x_2775 : vec3<f32> = txVec40;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat32 = x_2777;
            let x_2779 : f32 = u_xlat17.z;
            let x_2780 : f32 = u_xlat32;
            let x_2783 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2779 * x_2780) + x_2783);
            let x_2787 : vec4<f32> = u_xlat11;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec41;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat32 = x_2799;
            let x_2801 : f32 = u_xlat17.w;
            let x_2802 : f32 = u_xlat32;
            let x_2805 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2801 * x_2802) + x_2805);
            let x_2809 : vec4<f32> = u_xlat11;
            let x_2810 : vec2<f32> = vec2<f32>(x_2809.z, x_2809.w);
            let x_2812 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
            let x_2819 : vec3<f32> = txVec42;
            let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
            u_xlat32 = x_2821;
            let x_2822 : f32 = u_xlat77;
            let x_2823 : f32 = u_xlat32;
            let x_2826 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2822 * x_2823) + x_2826);
          } else {
            let x_2829 : vec4<f32> = u_xlat8;
            let x_2832 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2835 : vec2<f32> = ((vec2<f32>(x_2829.x, x_2829.y) * vec2<f32>(x_2832.z, x_2832.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2836 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2838 : vec4<f32> = u_xlat9;
            let x_2840 : vec2<f32> = floor(vec2<f32>(x_2838.x, x_2838.y));
            let x_2841 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2840.x, x_2840.y, x_2841.z, x_2841.w);
            let x_2843 : vec4<f32> = u_xlat8;
            let x_2846 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2849 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2843.x, x_2843.y) * vec2<f32>(x_2846.z, x_2846.w)) + -(vec2<f32>(x_2849.x, x_2849.y)));
            let x_2853 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2853.x, x_2853.x, x_2853.y, x_2853.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2856 : vec4<f32> = u_xlat10;
            let x_2858 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2856.x, x_2856.x, x_2856.z, x_2856.z) * vec4<f32>(x_2858.x, x_2858.x, x_2858.z, x_2858.z));
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2863 : vec2<f32> = (vec2<f32>(x_2861.y, x_2861.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2864 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2864.x, x_2863.x, x_2864.z, x_2863.y);
            let x_2866 : vec4<f32> = u_xlat11;
            let x_2869 : vec2<f32> = u_xlat55;
            let x_2871 : vec2<f32> = ((vec2<f32>(x_2866.x, x_2866.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2869));
            let x_2872 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2871.x, x_2872.y, x_2871.y, x_2872.w);
            let x_2874 : vec2<f32> = u_xlat55;
            let x_2876 : vec2<f32> = (-(x_2874) + vec2<f32>(1.0f, 1.0f));
            let x_2877 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2876.x, x_2876.y, x_2877.z, x_2877.w);
            let x_2879 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2879, vec2<f32>(0.0f, 0.0f));
            let x_2881 : vec2<f32> = u_xlat57;
            let x_2883 : vec2<f32> = u_xlat57;
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2887 : vec2<f32> = ((-(x_2881) * x_2883) + vec2<f32>(x_2885.x, x_2885.y));
            let x_2888 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2887.x, x_2887.y, x_2888.z, x_2888.w);
            let x_2890 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2890, vec2<f32>(0.0f, 0.0f));
            let x_2893 : vec2<f32> = u_xlat57;
            let x_2895 : vec2<f32> = u_xlat57;
            let x_2897 : vec4<f32> = u_xlat10;
            let x_2899 : vec2<f32> = ((-(x_2893) * x_2895) + vec2<f32>(x_2897.y, x_2897.w));
            let x_2900 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2899.x, x_2900.y, x_2899.y);
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2904 : vec2<f32> = (vec2<f32>(x_2902.x, x_2902.y) + vec2<f32>(2.0f, 2.0f));
            let x_2905 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec3<f32> = u_xlat33;
            let x_2909 : vec2<f32> = (vec2<f32>(x_2907.x, x_2907.z) + vec2<f32>(2.0f, 2.0f));
            let x_2910 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2910.x, x_2909.x, x_2910.z, x_2909.y);
            let x_2913 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2913 * 0.08163200318813323975f);
            let x_2916 : vec4<f32> = u_xlat10;
            let x_2918 : vec3<f32> = (vec3<f32>(x_2916.z, x_2916.x, x_2916.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat11;
            let x_2923 : vec2<f32> = (vec2<f32>(x_2921.x, x_2921.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2924 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2927 : f32 = u_xlat14.y;
            u_xlat13.x = x_2927;
            let x_2929 : vec2<f32> = u_xlat55;
            let x_2932 : vec2<f32> = ((vec2<f32>(x_2929.x, x_2929.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2933 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2933.x, x_2932.x, x_2933.z, x_2932.y);
            let x_2935 : vec2<f32> = u_xlat55;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2935.x, x_2935.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2939 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2938.x, x_2939.y, x_2938.y, x_2939.w);
            let x_2942 : f32 = u_xlat10.x;
            u_xlat11.y = x_2942;
            let x_2945 : f32 = u_xlat12.y;
            u_xlat11.w = x_2945;
            let x_2947 : vec4<f32> = u_xlat11;
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2947 + x_2948);
            let x_2950 : vec2<f32> = u_xlat55;
            let x_2953 : vec2<f32> = ((vec2<f32>(x_2950.y, x_2950.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2954 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2954.x, x_2953.x, x_2954.z, x_2953.y);
            let x_2956 : vec2<f32> = u_xlat55;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2956.y, x_2956.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2960 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2959.x, x_2960.y, x_2959.y, x_2960.w);
            let x_2963 : f32 = u_xlat10.y;
            u_xlat12.y = x_2963;
            let x_2965 : vec4<f32> = u_xlat12;
            let x_2966 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2965 + x_2966);
            let x_2968 : vec4<f32> = u_xlat11;
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2968 / x_2969);
            let x_2971 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2971 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2973 : vec4<f32> = u_xlat12;
            let x_2974 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2973 / x_2974);
            let x_2976 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2976 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2978 : vec4<f32> = u_xlat11;
            let x_2981 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2978.w, x_2978.x, x_2978.y, x_2978.z) * vec4<f32>(x_2981.x, x_2981.x, x_2981.x, x_2981.x));
            let x_2984 : vec4<f32> = u_xlat12;
            let x_2987 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2984.x, x_2984.w, x_2984.y, x_2984.z) * vec4<f32>(x_2987.y, x_2987.y, x_2987.y, x_2987.y));
            let x_2990 : vec4<f32> = u_xlat11;
            let x_2991 : vec3<f32> = vec3<f32>(x_2990.y, x_2990.z, x_2990.w);
            let x_2992 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2991.x, x_2992.y, x_2991.y, x_2991.z);
            let x_2995 : f32 = u_xlat12.x;
            u_xlat14.y = x_2995;
            let x_2997 : vec4<f32> = u_xlat9;
            let x_3000 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y) * vec4<f32>(x_3000.x, x_3000.y, x_3000.x, x_3000.y)) + vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3003.y));
            let x_3006 : vec4<f32> = u_xlat9;
            let x_3009 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_3006.x, x_3006.y) * vec2<f32>(x_3009.x, x_3009.y)) + vec2<f32>(x_3012.w, x_3012.y));
            let x_3016 : f32 = u_xlat14.y;
            u_xlat11.y = x_3016;
            let x_3019 : f32 = u_xlat12.z;
            u_xlat14.y = x_3019;
            let x_3021 : vec4<f32> = u_xlat9;
            let x_3024 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y) * vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y)) + vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3027.y));
            let x_3030 : vec4<f32> = u_xlat9;
            let x_3033 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3038 : vec2<f32> = ((vec2<f32>(x_3030.x, x_3030.y) * vec2<f32>(x_3033.x, x_3033.y)) + vec2<f32>(x_3036.w, x_3036.y));
            let x_3039 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3042 : f32 = u_xlat14.y;
            u_xlat11.z = x_3042;
            let x_3044 : vec4<f32> = u_xlat9;
            let x_3047 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3050 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3044.x, x_3044.y, x_3044.x, x_3044.y) * vec4<f32>(x_3047.x, x_3047.y, x_3047.x, x_3047.y)) + vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.z));
            let x_3054 : f32 = u_xlat12.w;
            u_xlat14.y = x_3054;
            let x_3056 : vec4<f32> = u_xlat9;
            let x_3059 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y) * vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y)) + vec4<f32>(x_3062.x, x_3062.y, x_3062.z, x_3062.y));
            let x_3066 : vec4<f32> = u_xlat9;
            let x_3069 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3069.x, x_3069.y)) + vec2<f32>(x_3072.w, x_3072.y));
            let x_3076 : f32 = u_xlat14.y;
            u_xlat11.w = x_3076;
            let x_3079 : vec4<f32> = u_xlat9;
            let x_3082 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3079.x, x_3079.y) * vec2<f32>(x_3082.x, x_3082.y)) + vec2<f32>(x_3085.x, x_3085.w));
            let x_3088 : vec4<f32> = u_xlat14;
            let x_3089 : vec3<f32> = vec3<f32>(x_3088.x, x_3088.z, x_3088.w);
            let x_3090 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3089.x, x_3090.y, x_3089.y, x_3089.z);
            let x_3092 : vec4<f32> = u_xlat9;
            let x_3095 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y) * vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y)) + vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3098.y));
            let x_3102 : vec4<f32> = u_xlat9;
            let x_3105 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3102.x, x_3102.y) * vec2<f32>(x_3105.x, x_3105.y)) + vec2<f32>(x_3108.w, x_3108.y));
            let x_3112 : f32 = u_xlat11.x;
            u_xlat12.x = x_3112;
            let x_3114 : vec4<f32> = u_xlat9;
            let x_3117 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3114.x, x_3114.y) * vec2<f32>(x_3117.x, x_3117.y)) + vec2<f32>(x_3120.x, x_3120.y));
            let x_3123 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3122.x, x_3122.y, x_3123.z, x_3123.w);
            let x_3126 : vec4<f32> = u_xlat10;
            let x_3128 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3126.x, x_3126.x, x_3126.x, x_3126.x) * x_3128);
            let x_3131 : vec4<f32> = u_xlat10;
            let x_3133 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3131.y, x_3131.y, x_3131.y, x_3131.y) * x_3133);
            let x_3136 : vec4<f32> = u_xlat10;
            let x_3138 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3136.z, x_3136.z, x_3136.z, x_3136.z) * x_3138);
            let x_3140 : vec4<f32> = u_xlat10;
            let x_3142 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3140.w, x_3140.w, x_3140.w, x_3140.w) * x_3142);
            let x_3145 : vec4<f32> = u_xlat15;
            let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
            let x_3148 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec43;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat77 = x_3157;
            let x_3159 : vec4<f32> = u_xlat15;
            let x_3160 : vec2<f32> = vec2<f32>(x_3159.z, x_3159.w);
            let x_3162 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3160.x, x_3160.y, x_3162);
            let x_3169 : vec3<f32> = txVec44;
            let x_3171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
            u_xlat11.x = x_3171;
            let x_3174 : f32 = u_xlat11.x;
            let x_3176 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3174 * x_3176);
            let x_3180 : f32 = u_xlat20.x;
            let x_3181 : f32 = u_xlat77;
            let x_3184 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3180 * x_3181) + x_3184);
            let x_3187 : vec2<f32> = u_xlat55;
            let x_3189 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec45;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat55.x = x_3198;
            let x_3201 : f32 = u_xlat20.z;
            let x_3203 : f32 = u_xlat55.x;
            let x_3205 : f32 = u_xlat77;
            u_xlat77 = ((x_3201 * x_3203) + x_3205);
            let x_3208 : vec4<f32> = u_xlat18;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec46;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat55.x = x_3220;
            let x_3223 : f32 = u_xlat20.w;
            let x_3225 : f32 = u_xlat55.x;
            let x_3227 : f32 = u_xlat77;
            u_xlat77 = ((x_3223 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat16;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
            let x_3233 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec47;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat55.x = x_3242;
            let x_3245 : f32 = u_xlat21.x;
            let x_3247 : f32 = u_xlat55.x;
            let x_3249 : f32 = u_xlat77;
            u_xlat77 = ((x_3245 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat16;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
            let x_3255 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec48;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat55.x = x_3264;
            let x_3267 : f32 = u_xlat21.y;
            let x_3269 : f32 = u_xlat55.x;
            let x_3271 : f32 = u_xlat77;
            u_xlat77 = ((x_3267 * x_3269) + x_3271);
            let x_3274 : vec4<f32> = u_xlat17;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.x, x_3274.y);
            let x_3277 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec49;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat55.x = x_3286;
            let x_3289 : f32 = u_xlat21.z;
            let x_3291 : f32 = u_xlat55.x;
            let x_3293 : f32 = u_xlat77;
            u_xlat77 = ((x_3289 * x_3291) + x_3293);
            let x_3296 : vec4<f32> = u_xlat18;
            let x_3297 : vec2<f32> = vec2<f32>(x_3296.z, x_3296.w);
            let x_3299 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
            let x_3306 : vec3<f32> = txVec50;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat55.x = x_3308;
            let x_3311 : f32 = u_xlat21.w;
            let x_3313 : f32 = u_xlat55.x;
            let x_3315 : f32 = u_xlat77;
            u_xlat77 = ((x_3311 * x_3313) + x_3315);
            let x_3318 : vec4<f32> = u_xlat19;
            let x_3319 : vec2<f32> = vec2<f32>(x_3318.x, x_3318.y);
            let x_3321 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec51;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat55.x = x_3330;
            let x_3333 : f32 = u_xlat22.x;
            let x_3335 : f32 = u_xlat55.x;
            let x_3337 : f32 = u_xlat77;
            u_xlat77 = ((x_3333 * x_3335) + x_3337);
            let x_3340 : vec4<f32> = u_xlat19;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.z, x_3340.w);
            let x_3343 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec52;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat55.x = x_3352;
            let x_3355 : f32 = u_xlat22.y;
            let x_3357 : f32 = u_xlat55.x;
            let x_3359 : f32 = u_xlat77;
            u_xlat77 = ((x_3355 * x_3357) + x_3359);
            let x_3362 : vec2<f32> = u_xlat34;
            let x_3364 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec53;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat55.x = x_3373;
            let x_3376 : f32 = u_xlat22.z;
            let x_3378 : f32 = u_xlat55.x;
            let x_3380 : f32 = u_xlat77;
            u_xlat77 = ((x_3376 * x_3378) + x_3380);
            let x_3383 : vec2<f32> = u_xlat63;
            let x_3385 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec54;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat55.x = x_3394;
            let x_3397 : f32 = u_xlat22.w;
            let x_3399 : f32 = u_xlat55.x;
            let x_3401 : f32 = u_xlat77;
            u_xlat77 = ((x_3397 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat14;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
            let x_3407 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec55;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat55.x = x_3416;
            let x_3419 : f32 = u_xlat10.x;
            let x_3421 : f32 = u_xlat55.x;
            let x_3423 : f32 = u_xlat77;
            u_xlat77 = ((x_3419 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat14;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.z, x_3426.w);
            let x_3429 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec56;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat55.x = x_3438;
            let x_3441 : f32 = u_xlat10.y;
            let x_3443 : f32 = u_xlat55.x;
            let x_3445 : f32 = u_xlat77;
            u_xlat77 = ((x_3441 * x_3443) + x_3445);
            let x_3448 : vec2<f32> = u_xlat58;
            let x_3450 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec57;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat55.x = x_3459;
            let x_3462 : f32 = u_xlat10.z;
            let x_3464 : f32 = u_xlat55.x;
            let x_3466 : f32 = u_xlat77;
            u_xlat77 = ((x_3462 * x_3464) + x_3466);
            let x_3469 : vec4<f32> = u_xlat9;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.x, x_3469.y);
            let x_3472 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec58;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat9.x = x_3481;
            let x_3484 : f32 = u_xlat10.w;
            let x_3486 : f32 = u_xlat9.x;
            let x_3488 : f32 = u_xlat77;
            u_xlat76 = ((x_3484 * x_3486) + x_3488);
          }
        }
      } else {
        let x_3492 : vec4<f32> = u_xlat8;
        let x_3493 : vec2<f32> = vec2<f32>(x_3492.x, x_3492.y);
        let x_3495 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3493.x, x_3493.y, x_3495);
        let x_3502 : vec3<f32> = txVec59;
        let x_3504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3502.xy, x_3502.z);
        u_xlat76 = x_3504;
      }
      let x_3505 : i32 = u_xlati74;
      let x_3507 : f32 = x_284.x_AdditionalShadowParams[x_3505].x;
      u_xlat8.x = (1.0f + -(x_3507));
      let x_3511 : f32 = u_xlat76;
      let x_3512 : i32 = u_xlati74;
      let x_3514 : f32 = x_284.x_AdditionalShadowParams[x_3512].x;
      let x_3517 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3511 * x_3514) + x_3517);
      let x_3520 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3520);
      let x_3525 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3525 >= 1.0f);
      let x_3527 : bool = u_xlatb31;
      let x_3529 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3527 | x_3529);
      let x_3533 : bool = u_xlatb8.x;
      let x_3534 : f32 = u_xlat76;
      u_xlat76 = select(x_3534, 1.0f, x_3533);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3537 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3537) + 1.0f);
    let x_3541 : f32 = u_xlat71;
    let x_3543 : f32 = u_xlat8.x;
    let x_3545 : f32 = u_xlat76;
    u_xlat76 = ((x_3541 * x_3543) + x_3545);
    let x_3547 : f32 = u_xlat75;
    let x_3548 : f32 = u_xlat76;
    u_xlat75 = (x_3547 * x_3548);
    let x_3550 : f32 = u_xlat75;
    let x_3552 : i32 = u_xlati74;
    let x_3554 : vec4<f32> = x_2060.x_AdditionalLightsColor[x_3552];
    let x_3556 : vec3<f32> = (vec3<f32>(x_3550, x_3550, x_3550) * vec3<f32>(x_3554.x, x_3554.y, x_3554.z));
    let x_3557 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
    let x_3559 : vec4<f32> = u_xlat2;
    let x_3561 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), vec3<f32>(x_3561.x, x_3561.y, x_3561.z));
    let x_3564 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3564, 0.0f, 1.0f);
    let x_3566 : f32 = u_xlat74;
    let x_3568 : vec4<f32> = u_xlat8;
    let x_3570 : vec3<f32> = (vec3<f32>(x_3566, x_3566, x_3566) * vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
    let x_3571 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3570.x, x_3570.y, x_3570.z, x_3571.w);
    let x_3573 : vec3<f32> = u_xlat3;
    let x_3574 : vec3<f32> = u_xlat23;
    let x_3577 : vec4<f32> = u_xlat7;
    let x_3579 : vec3<f32> = ((x_3573 * vec3<f32>(x_3574.x, x_3574.x, x_3574.x)) + vec3<f32>(x_3577.x, x_3577.y, x_3577.z));
    let x_3580 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3580.w);
    let x_3582 : vec4<f32> = u_xlat7;
    let x_3584 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3582.x, x_3582.y, x_3582.z), vec3<f32>(x_3584.x, x_3584.y, x_3584.z));
    let x_3587 : f32 = u_xlat74;
    u_xlat74 = max(x_3587, 1.17549435e-38f);
    let x_3589 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3589);
    let x_3591 : f32 = u_xlat74;
    let x_3593 : vec4<f32> = u_xlat7;
    let x_3595 : vec3<f32> = (vec3<f32>(x_3591, x_3591, x_3591) * vec3<f32>(x_3593.x, x_3593.y, x_3593.z));
    let x_3596 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3595.x, x_3595.y, x_3595.z, x_3596.w);
    let x_3598 : vec4<f32> = u_xlat2;
    let x_3600 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3598.x, x_3598.y, x_3598.z), vec3<f32>(x_3600.x, x_3600.y, x_3600.z));
    let x_3603 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3603, 0.0f, 1.0f);
    let x_3605 : f32 = u_xlat74;
    u_xlat74 = log2(x_3605);
    let x_3608 : f32 = u_xlat1.x;
    let x_3609 : f32 = u_xlat74;
    u_xlat74 = (x_3608 * x_3609);
    let x_3611 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3611);
    let x_3613 : f32 = u_xlat74;
    let x_3616 : vec4<f32> = x_42.x_SpecColor;
    let x_3618 : vec3<f32> = (vec3<f32>(x_3613, x_3613, x_3613) * vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
    let x_3619 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3618.x, x_3618.y, x_3618.z, x_3619.w);
    let x_3621 : vec4<f32> = u_xlat7;
    let x_3623 : vec4<f32> = u_xlat8;
    let x_3625 : vec3<f32> = (vec3<f32>(x_3621.x, x_3621.y, x_3621.z) * vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
    let x_3626 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
    let x_3628 : vec4<f32> = u_xlat9;
    let x_3630 : vec4<f32> = u_xlat1;
    let x_3633 : vec4<f32> = u_xlat7;
    let x_3635 : vec3<f32> = ((vec3<f32>(x_3628.x, x_3628.y, x_3628.z) * vec3<f32>(x_3630.y, x_3630.z, x_3630.w)) + vec3<f32>(x_3633.x, x_3633.y, x_3633.z));
    let x_3636 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3635.x, x_3635.y, x_3635.z, x_3636.w);
    let x_3638 : vec4<f32> = u_xlat6;
    let x_3640 : vec4<f32> = u_xlat7;
    let x_3642 : vec3<f32> = (vec3<f32>(x_3638.x, x_3638.y, x_3638.z) + vec3<f32>(x_3640.x, x_3640.y, x_3640.z));
    let x_3643 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3642.x, x_3642.y, x_3642.z, x_3643.w);

    continuing {
      let x_3645 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3645 + bitcast<u32>(1i));
    }
  }
  let x_3647 : vec4<f32> = u_xlat5;
  let x_3649 : vec4<f32> = u_xlat1;
  let x_3652 : vec4<f32> = u_xlat4;
  let x_3654 : vec3<f32> = ((vec3<f32>(x_3647.x, x_3647.y, x_3647.z) * vec3<f32>(x_3649.y, x_3649.z, x_3649.w)) + vec3<f32>(x_3652.x, x_3652.y, x_3652.z));
  let x_3655 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3654.x, x_3654.y, x_3654.z, x_3655.w);
  let x_3657 : vec4<f32> = u_xlat6;
  let x_3659 : vec4<f32> = u_xlat1;
  let x_3661 : vec3<f32> = (vec3<f32>(x_3657.x, x_3657.y, x_3657.z) + vec3<f32>(x_3659.x, x_3659.y, x_3659.z));
  let x_3662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3661.x, x_3661.y, x_3661.z, x_3662.w);
  let x_3664 : f32 = u_xlat69;
  let x_3665 : f32 = u_xlat69;
  u_xlat23.x = (x_3664 * -(x_3665));
  let x_3670 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_3670);
  let x_3673 : vec4<f32> = u_xlat1;
  let x_3676 : vec4<f32> = x_28.unity_FogColor;
  let x_3679 : vec3<f32> = (vec3<f32>(x_3673.x, x_3673.y, x_3673.z) + -(vec3<f32>(x_3676.x, x_3676.y, x_3676.z)));
  let x_3680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3679.x, x_3679.y, x_3679.z, x_3680.w);
  let x_3684 : vec3<f32> = u_xlat23;
  let x_3686 : vec4<f32> = u_xlat1;
  let x_3690 : vec4<f32> = x_28.unity_FogColor;
  let x_3692 : vec3<f32> = ((vec3<f32>(x_3684.x, x_3684.x, x_3684.x) * vec3<f32>(x_3686.x, x_3686.y, x_3686.z)) + vec3<f32>(x_3690.x, x_3690.y, x_3690.z));
  let x_3693 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3692.x, x_3692.y, x_3692.z, x_3693.w);
  let x_3696 : f32 = x_42.x_Surface;
  u_xlatb23 = (x_3696 == 1.0f);
  let x_3698 : bool = u_xlatb23;
  let x_3699 : bool = u_xlatb46;
  u_xlatb23 = (x_3698 | x_3699);
  let x_3701 : bool = u_xlatb23;
  if (x_3701) {
    let x_3706 : f32 = u_xlat0.x;
    x_3702 = x_3706;
  } else {
    x_3702 = 1.0f;
  }
  let x_3708 : f32 = x_3702;
  SV_Target0.w = x_3708;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


