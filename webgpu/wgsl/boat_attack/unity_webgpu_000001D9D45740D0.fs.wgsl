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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

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

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_278 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb69 : bool;

@group(1) @binding(4) var<uniform> x_362 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

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

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb71 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatu73 : u32;

var<private> u_xlati74 : i32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

@group(1) @binding(1) var<uniform> x_1847 : AdditionalLights;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu72 : u32;

var<private> u_xlatb73 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
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
  var x_1988 : f32;
  var x_1998 : f32;
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
  var x_3417 : f32;
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
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_41.x_BaseColor.w;
  let x_78 : f32 = x_41.x_Cutoff;
  u_xlat23.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat69;
  let x_92 : f32 = u_xlat46;
  u_xlat46 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat46;
  u_xlat46 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat23.x;
  let x_100 : f32 = u_xlat46;
  u_xlat23.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat23.x;
  u_xlat23.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb46;
  if (x_117) {
    let x_122 : f32 = u_xlat23.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat23.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat23.x;
  u_xlatb23 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb23;
  if (((select(0i, 1i, x_137) * -1i) != 0i)) {
    discard;
  }
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  let x_153 : f32 = x_27.x_GlobalMipBias.x;
  let x_154 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_151, x_153);
  let x_155 : vec3<f32> = vec3<f32>(x_154.x, x_154.y, x_154.w);
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : f32 = u_xlat2.x;
  let x_162 : f32 = u_xlat2.z;
  u_xlat2.x = (x_159 * x_162);
  let x_165 : vec4<f32> = u_xlat2;
  let x_172 : vec2<f32> = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_173 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_172.x, x_173.y, x_172.y);
  let x_175 : vec3<f32> = u_xlat23;
  let x_177 : vec3<f32> = u_xlat23;
  u_xlat1.x = dot(vec2<f32>(x_175.x, x_175.z), vec2<f32>(x_177.x, x_177.z));
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_195, 0.0000000000000001f);
  let x_199 : vec3<f32> = u_xlat23;
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec3<f32> = (vec3<f32>(x_199.z, x_199.z, x_199.z) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec3<f32> = u_xlat23;
  let x_211 : vec4<f32> = vs_TEXCOORD3;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.x, x_208.x) * vec3<f32>(x_211.x, x_211.y, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = vs_TEXCOORD2;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat23.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat23;
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_250 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_250;
  let x_253 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_253;
  let x_257 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_257;
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : vec3<f32> = u_xlat3;
  u_xlat23.x = dot(x_259, x_260);
  let x_264 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_264, 0.00006103515625f);
  let x_269 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_269);
  u_xlat2.w = 1.0f;
  let x_281 : vec4<f32> = x_278.unity_SHAr;
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_281, x_282);
  let x_287 : vec4<f32> = x_278.unity_SHAg;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_287, x_288);
  let x_293 : vec4<f32> = x_278.unity_SHAb;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_293, x_294);
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_298.y, x_298.z, x_298.z, x_298.x) * vec4<f32>(x_300.x, x_300.y, x_300.z, x_300.z));
  let x_306 : vec4<f32> = x_278.unity_SHBr;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_278.unity_SHBg;
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_312, x_313);
  let x_318 : vec4<f32> = x_278.unity_SHBb;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_318, x_319);
  let x_323 : f32 = u_xlat2.y;
  let x_325 : f32 = u_xlat2.y;
  u_xlat69 = (x_323 * x_325);
  let x_328 : f32 = u_xlat2.x;
  let x_330 : f32 = u_xlat2.x;
  let x_332 : f32 = u_xlat69;
  u_xlat69 = ((x_328 * x_330) + -(x_332));
  let x_337 : vec4<f32> = x_278.unity_SHC;
  let x_339 : f32 = u_xlat69;
  let x_342 : vec4<f32> = u_xlat6;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339, x_339, x_339)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec3<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_347 + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_351, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_365 : f32 = x_362.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_365);
  let x_367 : bool = u_xlatb69;
  if (x_367) {
    let x_371 : f32 = x_362.x_MainLightShadowParams.y;
    u_xlatb69 = (x_371 == 1.0f);
    let x_373 : bool = u_xlatb69;
    if (x_373) {
      let x_377 : vec4<f32> = vs_TEXCOORD6;
      let x_381 : vec4<f32> = x_362.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_377.x, x_377.y, x_377.x, x_377.y) + x_381);
      let x_385 : vec4<f32> = u_xlat5;
      let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
      let x_388 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_386.x, x_386.y, x_388);
      let x_400 : vec3<f32> = txVec0;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
      u_xlat6.x = x_402;
      let x_405 : vec4<f32> = u_xlat5;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec1;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_415.xy, x_415.z);
      u_xlat6.y = x_417;
      let x_419 : vec4<f32> = vs_TEXCOORD6;
      let x_423 : vec4<f32> = x_362.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_419.x, x_419.y, x_419.x, x_419.y) + x_423);
      let x_426 : vec4<f32> = u_xlat5;
      let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
      let x_429 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_427.x, x_427.y, x_429);
      let x_436 : vec3<f32> = txVec2;
      let x_438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_436.xy, x_436.z);
      u_xlat6.z = x_438;
      let x_441 : vec4<f32> = u_xlat5;
      let x_442 : vec2<f32> = vec2<f32>(x_441.z, x_441.w);
      let x_444 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_442.x, x_442.y, x_444);
      let x_451 : vec3<f32> = txVec3;
      let x_453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_451.xy, x_451.z);
      u_xlat6.w = x_453;
      let x_455 : vec4<f32> = u_xlat6;
      u_xlat69 = dot(x_455, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_462 : f32 = x_362.x_MainLightShadowParams.y;
      u_xlatb1 = (x_462 == 2.0f);
      let x_464 : bool = u_xlatb1;
      if (x_464) {
        let x_467 : vec4<f32> = vs_TEXCOORD6;
        let x_471 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_475 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_471.z, x_471.w)) + vec2<f32>(0.5f, 0.5f));
        let x_476 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat5;
        let x_480 : vec2<f32> = floor(vec2<f32>(x_478.x, x_478.y));
        let x_481 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_485 : vec4<f32> = vs_TEXCOORD6;
        let x_488 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_491 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(x_488.z, x_488.w)) + -(vec2<f32>(x_491.x, x_491.y)));
        let x_495 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_495.x, x_495.x, x_495.y, x_495.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_500 : vec4<f32> = u_xlat6;
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_500.x, x_500.x, x_500.z, x_500.z) * vec4<f32>(x_502.x, x_502.x, x_502.z, x_502.z));
        let x_505 : vec4<f32> = u_xlat7;
        let x_509 : vec2<f32> = (vec2<f32>(x_505.y, x_505.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_509.x, x_510.y, x_509.y, x_510.w);
        let x_512 : vec4<f32> = u_xlat7;
        let x_515 : vec2<f32> = u_xlat51;
        let x_517 : vec2<f32> = ((vec2<f32>(x_512.x, x_512.z) * vec2<f32>(0.5f, 0.5f)) + -(x_515));
        let x_518 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_521 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_521) + vec2<f32>(1.0f, 1.0f));
        let x_526 : vec2<f32> = u_xlat51;
        let x_528 : vec2<f32> = min(x_526, vec2<f32>(0.0f, 0.0f));
        let x_529 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat8;
        let x_534 : vec4<f32> = u_xlat8;
        let x_537 : vec2<f32> = u_xlat53;
        let x_538 : vec2<f32> = ((-(vec2<f32>(x_531.x, x_531.y)) * vec2<f32>(x_534.x, x_534.y)) + x_537);
        let x_539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_541, vec2<f32>(0.0f, 0.0f));
        let x_543 : vec2<f32> = u_xlat51;
        let x_545 : vec2<f32> = u_xlat51;
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_543) * x_545) + vec2<f32>(x_547.y, x_547.w));
        let x_550 : vec4<f32> = u_xlat8;
        let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) + vec2<f32>(1.0f, 1.0f));
        let x_553 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_555 + vec2<f32>(1.0f, 1.0f));
        let x_558 : vec4<f32> = u_xlat7;
        let x_562 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_563 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_565 : vec2<f32> = u_xlat53;
        let x_566 : vec2<f32> = (x_565 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_567 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat8;
        let x_571 : vec2<f32> = (vec2<f32>(x_569.x, x_569.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec2<f32> = u_xlat51;
        let x_576 : vec2<f32> = (x_575 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_577 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_583 : f32 = u_xlat8.x;
        u_xlat9.z = x_583;
        let x_586 : f32 = u_xlat51.x;
        u_xlat9.w = x_586;
        let x_589 : f32 = u_xlat10.x;
        u_xlat7.z = x_589;
        let x_592 : f32 = u_xlat6.x;
        u_xlat7.w = x_592;
        let x_595 : vec4<f32> = u_xlat7;
        let x_597 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_595.z, x_595.w, x_595.x, x_595.z) + vec4<f32>(x_597.z, x_597.w, x_597.x, x_597.z));
        let x_601 : f32 = u_xlat9.y;
        u_xlat8.z = x_601;
        let x_604 : f32 = u_xlat51.y;
        u_xlat8.w = x_604;
        let x_607 : f32 = u_xlat7.y;
        u_xlat10.z = x_607;
        let x_610 : f32 = u_xlat6.z;
        u_xlat10.w = x_610;
        let x_612 : vec4<f32> = u_xlat8;
        let x_614 : vec4<f32> = u_xlat10;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.z, x_612.y, x_612.w) + vec3<f32>(x_614.z, x_614.y, x_614.w));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = u_xlat11;
        let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.z, x_619.w) / vec3<f32>(x_621.z, x_621.w, x_621.y));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat7;
        let x_632 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat10;
        let x_637 : vec4<f32> = u_xlat6;
        let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.y, x_635.w) / vec3<f32>(x_637.x, x_637.y, x_637.z));
        let x_640 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat7;
        let x_650 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_652 : vec3<f32> = (vec3<f32>(x_647.y, x_647.x, x_647.z) * vec3<f32>(x_650.x, x_650.x, x_650.x));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_658 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_660 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_658.y, x_658.y, x_658.y));
        let x_661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_664 : f32 = u_xlat8.x;
        u_xlat7.w = x_664;
        let x_666 : vec4<f32> = u_xlat5;
        let x_669 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) * vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y)) + vec4<f32>(x_672.y, x_672.w, x_672.x, x_672.w));
        let x_675 : vec4<f32> = u_xlat5;
        let x_678 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_675.x, x_675.y) * vec2<f32>(x_678.x, x_678.y)) + vec2<f32>(x_681.z, x_681.w));
        let x_685 : f32 = u_xlat7.y;
        u_xlat8.w = x_685;
        let x_687 : vec4<f32> = u_xlat8;
        let x_688 : vec2<f32> = vec2<f32>(x_687.y, x_687.z);
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_689.x, x_688.x, x_689.z, x_688.y);
        let x_691 : vec4<f32> = u_xlat5;
        let x_694 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y) * vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y)) + vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.y));
        let x_700 : vec4<f32> = u_xlat5;
        let x_703 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_700.x, x_700.y, x_700.x, x_700.y) * vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.y)) + vec4<f32>(x_706.w, x_706.y, x_706.w, x_706.z));
        let x_709 : vec4<f32> = u_xlat5;
        let x_712 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y) * vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y)) + vec4<f32>(x_715.x, x_715.w, x_715.z, x_715.w));
        let x_719 : vec4<f32> = u_xlat6;
        let x_721 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_719.x, x_719.x, x_719.x, x_719.y) * vec4<f32>(x_721.z, x_721.w, x_721.y, x_721.z));
        let x_725 : vec4<f32> = u_xlat6;
        let x_727 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_725.y, x_725.y, x_725.z, x_725.z) * x_727);
        let x_730 : f32 = u_xlat6.z;
        let x_732 : f32 = u_xlat11.y;
        u_xlat1.x = (x_730 * x_732);
        let x_736 : vec4<f32> = u_xlat9;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_747 : vec3<f32> = txVec4;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat71 = x_749;
        let x_751 : vec4<f32> = u_xlat9;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_762 : vec3<f32> = txVec5;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat72 = x_764;
        let x_765 : f32 = u_xlat72;
        let x_767 : f32 = u_xlat12.y;
        u_xlat72 = (x_765 * x_767);
        let x_770 : f32 = u_xlat12.x;
        let x_771 : f32 = u_xlat71;
        let x_773 : f32 = u_xlat72;
        u_xlat71 = ((x_770 * x_771) + x_773);
        let x_776 : vec2<f32> = u_xlat51;
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec6;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
        u_xlat72 = x_787;
        let x_789 : f32 = u_xlat12.z;
        let x_790 : f32 = u_xlat72;
        let x_792 : f32 = u_xlat71;
        u_xlat71 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec7;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat72 = x_807;
        let x_809 : f32 = u_xlat12.w;
        let x_810 : f32 = u_xlat72;
        let x_812 : f32 = u_xlat71;
        u_xlat71 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat10;
        let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec8;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat72 = x_827;
        let x_829 : f32 = u_xlat13.x;
        let x_830 : f32 = u_xlat72;
        let x_832 : f32 = u_xlat71;
        u_xlat71 = ((x_829 * x_830) + x_832);
        let x_835 : vec4<f32> = u_xlat10;
        let x_836 : vec2<f32> = vec2<f32>(x_835.z, x_835.w);
        let x_838 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_836.x, x_836.y, x_838);
        let x_845 : vec3<f32> = txVec9;
        let x_847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_845.xy, x_845.z);
        u_xlat72 = x_847;
        let x_849 : f32 = u_xlat13.y;
        let x_850 : f32 = u_xlat72;
        let x_852 : f32 = u_xlat71;
        u_xlat71 = ((x_849 * x_850) + x_852);
        let x_855 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = vec2<f32>(x_855.z, x_855.w);
        let x_858 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec10;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_865.xy, x_865.z);
        u_xlat72 = x_867;
        let x_869 : f32 = u_xlat13.z;
        let x_870 : f32 = u_xlat72;
        let x_872 : f32 = u_xlat71;
        u_xlat71 = ((x_869 * x_870) + x_872);
        let x_875 : vec4<f32> = u_xlat7;
        let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
        let x_878 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec11;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_885.xy, x_885.z);
        u_xlat72 = x_887;
        let x_889 : f32 = u_xlat13.w;
        let x_890 : f32 = u_xlat72;
        let x_892 : f32 = u_xlat71;
        u_xlat71 = ((x_889 * x_890) + x_892);
        let x_895 : vec4<f32> = u_xlat7;
        let x_896 : vec2<f32> = vec2<f32>(x_895.z, x_895.w);
        let x_898 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec12;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_905.xy, x_905.z);
        u_xlat72 = x_907;
        let x_909 : f32 = u_xlat1.x;
        let x_910 : f32 = u_xlat72;
        let x_912 : f32 = u_xlat71;
        u_xlat69 = ((x_909 * x_910) + x_912);
      } else {
        let x_915 : vec4<f32> = vs_TEXCOORD6;
        let x_918 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_921 : vec2<f32> = ((vec2<f32>(x_915.x, x_915.y) * vec2<f32>(x_918.z, x_918.w)) + vec2<f32>(0.5f, 0.5f));
        let x_922 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat5;
        let x_926 : vec2<f32> = floor(vec2<f32>(x_924.x, x_924.y));
        let x_927 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = vs_TEXCOORD6;
        let x_932 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + -(vec2<f32>(x_935.x, x_935.y)));
        let x_939 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_939.x, x_939.x, x_939.y, x_939.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_942 : vec4<f32> = u_xlat6;
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_942.x, x_942.x, x_942.z, x_942.z) * vec4<f32>(x_944.x, x_944.x, x_944.z, x_944.z));
        let x_947 : vec4<f32> = u_xlat7;
        let x_951 : vec2<f32> = (vec2<f32>(x_947.y, x_947.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_951.x, x_952.z, x_951.y);
        let x_954 : vec4<f32> = u_xlat7;
        let x_957 : vec2<f32> = u_xlat51;
        let x_959 : vec2<f32> = ((vec2<f32>(x_954.x, x_954.z) * vec2<f32>(0.5f, 0.5f)) + -(x_957));
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_960.w);
        let x_962 : vec2<f32> = u_xlat51;
        let x_964 : vec2<f32> = (-(x_962) + vec2<f32>(1.0f, 1.0f));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
        let x_967 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_967, vec2<f32>(0.0f, 0.0f));
        let x_969 : vec2<f32> = u_xlat53;
        let x_971 : vec2<f32> = u_xlat53;
        let x_973 : vec4<f32> = u_xlat7;
        let x_975 : vec2<f32> = ((-(x_969) * x_971) + vec2<f32>(x_973.x, x_973.y));
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_978, vec2<f32>(0.0f, 0.0f));
        let x_981 : vec2<f32> = u_xlat53;
        let x_983 : vec2<f32> = u_xlat53;
        let x_985 : vec4<f32> = u_xlat6;
        let x_987 : vec2<f32> = ((-(x_981) * x_983) + vec2<f32>(x_985.y, x_985.w));
        let x_988 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_987.x, x_988.y, x_987.y);
        let x_990 : vec4<f32> = u_xlat7;
        let x_992 : vec2<f32> = (vec2<f32>(x_990.x, x_990.y) + vec2<f32>(2.0f, 2.0f));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec3<f32> = u_xlat29;
        let x_997 : vec2<f32> = (vec2<f32>(x_995.x, x_995.z) + vec2<f32>(2.0f, 2.0f));
        let x_998 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1001 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1001 * 0.08163200318813323975f);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1005.z, x_1005.x, x_1005.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1009 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1014 : vec2<f32> = (vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1018 : f32 = u_xlat10.y;
        u_xlat9.x = x_1018;
        let x_1020 : vec2<f32> = u_xlat51;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1028 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1027.x, x_1028.z, x_1027.y);
        let x_1030 : vec2<f32> = u_xlat51;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1034.x, x_1035.y, x_1034.y, x_1035.w);
        let x_1038 : f32 = u_xlat6.x;
        u_xlat7.y = x_1038;
        let x_1041 : f32 = u_xlat8.y;
        u_xlat7.w = x_1041;
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1043 + x_1044);
        let x_1046 : vec2<f32> = u_xlat51;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1046.y, x_1046.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1050 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1049.x, x_1050.z, x_1049.y);
        let x_1052 : vec2<f32> = u_xlat51;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1052.y, x_1052.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1055.x, x_1056.y, x_1055.y, x_1056.w);
        let x_1059 : f32 = u_xlat6.y;
        u_xlat8.y = x_1059;
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1061 + x_1062);
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1064 / x_1065);
        let x_1067 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1067 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1074 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1073 / x_1074);
        let x_1076 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1076 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1081 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1078.w, x_1078.x, x_1078.y, x_1078.z) * vec4<f32>(x_1081.x, x_1081.x, x_1081.x, x_1081.x));
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1087 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1084.x, x_1084.w, x_1084.y, x_1084.z) * vec4<f32>(x_1087.y, x_1087.y, x_1087.y, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1091 : vec3<f32> = vec3<f32>(x_1090.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1091.z);
        let x_1095 : f32 = u_xlat8.x;
        u_xlat10.y = x_1095;
        let x_1097 : vec4<f32> = u_xlat5;
        let x_1100 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat5;
        let x_1109 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.w, x_1112.y));
        let x_1116 : f32 = u_xlat10.y;
        u_xlat7.y = x_1116;
        let x_1119 : f32 = u_xlat8.z;
        u_xlat10.y = x_1119;
        let x_1121 : vec4<f32> = u_xlat5;
        let x_1124 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1127.y));
        let x_1130 : vec4<f32> = u_xlat5;
        let x_1133 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat10;
        let x_1138 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.w, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1142 : f32 = u_xlat10.y;
        u_xlat7.z = x_1142;
        let x_1145 : vec4<f32> = u_xlat5;
        let x_1148 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.z));
        let x_1155 : f32 = u_xlat8.w;
        u_xlat10.y = x_1155;
        let x_1158 : vec4<f32> = u_xlat5;
        let x_1161 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y) * vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y)) + vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1164.y));
        let x_1168 : vec4<f32> = u_xlat5;
        let x_1171 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.w, x_1174.y));
        let x_1178 : f32 = u_xlat10.y;
        u_xlat7.w = x_1178;
        let x_1181 : vec4<f32> = u_xlat5;
        let x_1184 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.x, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1191 : vec3<f32> = vec3<f32>(x_1190.x, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1191.x, x_1192.y, x_1191.y, x_1191.z);
        let x_1194 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.y));
        let x_1204 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1214 : f32 = u_xlat7.x;
        u_xlat8.x = x_1214;
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1219 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.x, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1228.x, x_1228.x, x_1228.x, x_1228.x) * x_1230);
        let x_1233 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1233.y, x_1233.y, x_1233.y, x_1233.y) * x_1235);
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1238.z, x_1238.z, x_1238.z, x_1238.z) * x_1240);
        let x_1242 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1242.w, x_1242.w, x_1242.w, x_1242.w) * x_1244);
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1248 : vec2<f32> = vec2<f32>(x_1247.x, x_1247.y);
        let x_1250 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1248.x, x_1248.y, x_1250);
        let x_1257 : vec3<f32> = txVec13;
        let x_1259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1257.xy, x_1257.z);
        u_xlat1.x = x_1259;
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec14;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat71 = x_1274;
        let x_1275 : f32 = u_xlat71;
        let x_1277 : f32 = u_xlat16.y;
        u_xlat71 = (x_1275 * x_1277);
        let x_1280 : f32 = u_xlat16.x;
        let x_1282 : f32 = u_xlat1.x;
        let x_1284 : f32 = u_xlat71;
        u_xlat1.x = ((x_1280 * x_1282) + x_1284);
        let x_1288 : vec2<f32> = u_xlat51;
        let x_1290 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1297 : vec3<f32> = txVec15;
        let x_1299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1297.xy, x_1297.z);
        u_xlat71 = x_1299;
        let x_1301 : f32 = u_xlat16.z;
        let x_1302 : f32 = u_xlat71;
        let x_1305 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1301 * x_1302) + x_1305);
        let x_1309 : vec4<f32> = u_xlat14;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.x, x_1309.y);
        let x_1312 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec16;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat71 = x_1321;
        let x_1323 : f32 = u_xlat16.w;
        let x_1324 : f32 = u_xlat71;
        let x_1327 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1323 * x_1324) + x_1327);
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.x, x_1331.y);
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec17;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat71 = x_1343;
        let x_1345 : f32 = u_xlat17.x;
        let x_1346 : f32 = u_xlat71;
        let x_1349 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1345 * x_1346) + x_1349);
        let x_1353 : vec4<f32> = u_xlat12;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.z, x_1353.w);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec18;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat71 = x_1365;
        let x_1367 : f32 = u_xlat17.y;
        let x_1368 : f32 = u_xlat71;
        let x_1371 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1367 * x_1368) + x_1371);
        let x_1375 : vec4<f32> = u_xlat13;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.x, x_1375.y);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec19;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat71 = x_1387;
        let x_1389 : f32 = u_xlat17.z;
        let x_1390 : f32 = u_xlat71;
        let x_1393 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1389 * x_1390) + x_1393);
        let x_1397 : vec4<f32> = u_xlat14;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec20;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat71 = x_1409;
        let x_1411 : f32 = u_xlat17.w;
        let x_1412 : f32 = u_xlat71;
        let x_1415 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1411 * x_1412) + x_1415);
        let x_1419 : vec4<f32> = u_xlat15;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec21;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat71 = x_1431;
        let x_1433 : f32 = u_xlat18.x;
        let x_1434 : f32 = u_xlat71;
        let x_1437 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1433 * x_1434) + x_1437);
        let x_1441 : vec4<f32> = u_xlat15;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec22;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat71 = x_1453;
        let x_1455 : f32 = u_xlat18.y;
        let x_1456 : f32 = u_xlat71;
        let x_1459 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1455 * x_1456) + x_1459);
        let x_1463 : vec2<f32> = u_xlat30;
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec23;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat71 = x_1474;
        let x_1476 : f32 = u_xlat18.z;
        let x_1477 : f32 = u_xlat71;
        let x_1480 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec2<f32> = u_xlat59;
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec24;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat71 = x_1495;
        let x_1497 : f32 = u_xlat18.w;
        let x_1498 : f32 = u_xlat71;
        let x_1501 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1497 * x_1498) + x_1501);
        let x_1505 : vec4<f32> = u_xlat10;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec25;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat71 = x_1517;
        let x_1519 : f32 = u_xlat6.x;
        let x_1520 : f32 = u_xlat71;
        let x_1523 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1519 * x_1520) + x_1523);
        let x_1527 : vec4<f32> = u_xlat10;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec26;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat71 = x_1539;
        let x_1541 : f32 = u_xlat6.y;
        let x_1542 : f32 = u_xlat71;
        let x_1545 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1541 * x_1542) + x_1545);
        let x_1549 : vec2<f32> = u_xlat54;
        let x_1551 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec27;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat71 = x_1560;
        let x_1562 : f32 = u_xlat6.z;
        let x_1563 : f32 = u_xlat71;
        let x_1566 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat5;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec28;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat71 = x_1582;
        let x_1584 : f32 = u_xlat6.w;
        let x_1585 : f32 = u_xlat71;
        let x_1588 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1584 * x_1585) + x_1588);
      }
    }
  } else {
    let x_1592 : vec4<f32> = vs_TEXCOORD6;
    let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
    let x_1595 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
    let x_1602 : vec3<f32> = txVec29;
    let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
    u_xlat69 = x_1604;
  }
  let x_1606 : f32 = x_362.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1606) + 1.0f);
  let x_1610 : f32 = u_xlat69;
  let x_1612 : f32 = x_362.x_MainLightShadowParams.x;
  let x_1615 : f32 = u_xlat1.x;
  u_xlat69 = ((x_1610 * x_1612) + x_1615);
  let x_1618 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1618);
  let x_1622 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (x_1622 >= 1.0f);
  let x_1624 : bool = u_xlatb1;
  let x_1625 : bool = u_xlatb71;
  u_xlatb1 = (x_1624 | x_1625);
  let x_1627 : bool = u_xlatb1;
  let x_1628 : f32 = u_xlat69;
  u_xlat69 = select(x_1628, 1.0f, x_1627);
  let x_1632 : vec3<f32> = vs_TEXCOORD1;
  let x_1636 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1638 : vec3<f32> = (x_1632 + -(x_1636));
  let x_1639 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1641 : vec4<f32> = u_xlat5;
  let x_1643 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1641.x, x_1641.y, x_1641.z), vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
  let x_1648 : f32 = u_xlat1.x;
  let x_1650 : f32 = x_362.x_MainLightShadowParams.z;
  let x_1653 : f32 = x_362.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1648 * x_1650) + x_1653);
  let x_1655 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1655, 0.0f, 1.0f);
  let x_1657 : f32 = u_xlat69;
  u_xlat72 = (-(x_1657) + 1.0f);
  let x_1660 : f32 = u_xlat71;
  let x_1661 : f32 = u_xlat72;
  let x_1663 : f32 = u_xlat69;
  u_xlat69 = ((x_1660 * x_1661) + x_1663);
  let x_1665 : f32 = u_xlat69;
  let x_1667 : f32 = x_278.unity_LightData.z;
  u_xlat69 = (x_1665 * x_1667);
  let x_1669 : f32 = u_xlat69;
  let x_1673 : vec4<f32> = x_27.x_MainLightColor;
  let x_1675 : vec3<f32> = (vec3<f32>(x_1669, x_1669, x_1669) * vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1676 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
  let x_1678 : vec4<f32> = u_xlat2;
  let x_1682 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1678.x, x_1678.y, x_1678.z), vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
  let x_1685 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1685, 0.0f, 1.0f);
  let x_1687 : f32 = u_xlat69;
  let x_1689 : vec4<f32> = u_xlat5;
  let x_1691 : vec3<f32> = (vec3<f32>(x_1687, x_1687, x_1687) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
  let x_1692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1695 : f32 = x_41.x_SpecColor.w;
  u_xlat69 = ((x_1695 * 10.0f) + 1.0f);
  let x_1699 : f32 = u_xlat69;
  u_xlat69 = exp2(x_1699);
  let x_1701 : vec3<f32> = u_xlat3;
  let x_1702 : vec3<f32> = u_xlat23;
  let x_1706 : vec4<f32> = x_27.x_MainLightPosition;
  let x_1708 : vec3<f32> = ((x_1701 * vec3<f32>(x_1702.x, x_1702.x, x_1702.x)) + vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1711 : vec4<f32> = u_xlat7;
  let x_1713 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(vec3<f32>(x_1711.x, x_1711.y, x_1711.z), vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : f32 = u_xlat71;
  u_xlat71 = max(x_1716, 1.17549435e-38f);
  let x_1719 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_1719);
  let x_1721 : f32 = u_xlat71;
  let x_1723 : vec4<f32> = u_xlat7;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1721, x_1721, x_1721) * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1728 : vec4<f32> = u_xlat2;
  let x_1730 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(vec3<f32>(x_1728.x, x_1728.y, x_1728.z), vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1733, 0.0f, 1.0f);
  let x_1735 : f32 = u_xlat71;
  u_xlat71 = log2(x_1735);
  let x_1737 : f32 = u_xlat69;
  let x_1738 : f32 = u_xlat71;
  u_xlat71 = (x_1737 * x_1738);
  let x_1740 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1740);
  let x_1742 : f32 = u_xlat71;
  let x_1745 : vec4<f32> = x_41.x_SpecColor;
  let x_1747 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1750 : vec4<f32> = u_xlat5;
  let x_1752 : vec4<f32> = u_xlat7;
  let x_1754 : vec3<f32> = (vec3<f32>(x_1750.x, x_1750.y, x_1750.z) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
  let x_1757 : vec4<f32> = u_xlat6;
  let x_1759 : vec4<f32> = u_xlat1;
  let x_1762 : vec4<f32> = u_xlat5;
  let x_1764 : vec3<f32> = ((vec3<f32>(x_1757.x, x_1757.y, x_1757.z) * vec3<f32>(x_1759.y, x_1759.z, x_1759.w)) + vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1768 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1770 : f32 = x_278.unity_LightData.y;
  u_xlat71 = min(x_1768, x_1770);
  let x_1774 : f32 = u_xlat71;
  u_xlatu71 = bitcast<u32>(i32(x_1774));
  let x_1778 : f32 = u_xlat1.x;
  let x_1781 : f32 = x_362.x_AdditionalShadowFadeParams.x;
  let x_1784 : f32 = x_362.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1778 * x_1781) + x_1784);
  let x_1788 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1788, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1801 : u32 = u_xlatu_loop_1;
    let x_1802 : u32 = u_xlatu71;
    if ((x_1801 < x_1802)) {
    } else {
      break;
    }
    let x_1805 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_1805 >> 2u);
    let x_1809 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_1809 & 3u));
    let x_1813 : u32 = u_xlatu73;
    let x_1816 : vec4<f32> = x_278.unity_LightIndices[bitcast<i32>(x_1813)];
    let x_1826 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1831 : vec4<u32> = indexable[x_1826];
    u_xlat73 = dot(x_1816, bitcast<vec4<f32>>(x_1831));
    let x_1835 : f32 = u_xlat73;
    u_xlati73 = i32(x_1835);
    let x_1837 : vec3<f32> = vs_TEXCOORD1;
    let x_1848 : i32 = u_xlati73;
    let x_1850 : vec4<f32> = x_1847.x_AdditionalLightsPosition[x_1848];
    let x_1853 : i32 = u_xlati73;
    let x_1855 : vec4<f32> = x_1847.x_AdditionalLightsPosition[x_1853];
    let x_1857 : vec3<f32> = ((-(x_1837) * vec3<f32>(x_1850.w, x_1850.w, x_1850.w)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
    let x_1861 : vec4<f32> = u_xlat7;
    let x_1863 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_1861.x, x_1861.y, x_1861.z), vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
    let x_1866 : f32 = u_xlat74;
    u_xlat74 = max(x_1866, 0.00006103515625f);
    let x_1869 : f32 = u_xlat74;
    u_xlat75 = inverseSqrt(x_1869);
    let x_1871 : f32 = u_xlat75;
    let x_1873 : vec4<f32> = u_xlat7;
    let x_1875 : vec3<f32> = (vec3<f32>(x_1871, x_1871, x_1871) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : f32 = u_xlat74;
    u_xlat75 = (1.0f / x_1878);
    let x_1880 : f32 = u_xlat74;
    let x_1881 : i32 = u_xlati73;
    let x_1883 : f32 = x_1847.x_AdditionalLightsAttenuation[x_1881].x;
    u_xlat74 = (x_1880 * x_1883);
    let x_1885 : f32 = u_xlat74;
    let x_1887 : f32 = u_xlat74;
    u_xlat74 = ((-(x_1885) * x_1887) + 1.0f);
    let x_1890 : f32 = u_xlat74;
    u_xlat74 = max(x_1890, 0.0f);
    let x_1892 : f32 = u_xlat74;
    let x_1893 : f32 = u_xlat74;
    u_xlat74 = (x_1892 * x_1893);
    let x_1895 : f32 = u_xlat74;
    let x_1896 : f32 = u_xlat75;
    u_xlat74 = (x_1895 * x_1896);
    let x_1898 : i32 = u_xlati73;
    let x_1900 : vec4<f32> = x_1847.x_AdditionalLightsSpotDir[x_1898];
    let x_1902 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1900.x, x_1900.y, x_1900.z), vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1905 : f32 = u_xlat75;
    let x_1906 : i32 = u_xlati73;
    let x_1908 : f32 = x_1847.x_AdditionalLightsAttenuation[x_1906].z;
    let x_1910 : i32 = u_xlati73;
    let x_1912 : f32 = x_1847.x_AdditionalLightsAttenuation[x_1910].w;
    u_xlat75 = ((x_1905 * x_1908) + x_1912);
    let x_1914 : f32 = u_xlat75;
    u_xlat75 = clamp(x_1914, 0.0f, 1.0f);
    let x_1916 : f32 = u_xlat75;
    let x_1917 : f32 = u_xlat75;
    u_xlat75 = (x_1916 * x_1917);
    let x_1919 : f32 = u_xlat74;
    let x_1920 : f32 = u_xlat75;
    u_xlat74 = (x_1919 * x_1920);
    let x_1924 : i32 = u_xlati73;
    let x_1926 : f32 = x_362.x_AdditionalShadowParams[x_1924].w;
    u_xlati75 = i32(x_1926);
    let x_1929 : i32 = u_xlati75;
    u_xlatb76 = (x_1929 >= 0i);
    let x_1931 : bool = u_xlatb76;
    if (x_1931) {
      let x_1935 : i32 = u_xlati73;
      let x_1937 : f32 = x_362.x_AdditionalShadowParams[x_1935].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1937, x_1937, x_1937, x_1937))));
      let x_1942 : bool = u_xlatb76;
      if (x_1942) {
        let x_1947 : vec4<f32> = u_xlat7;
        let x_1950 : vec4<f32> = u_xlat7;
        let x_1953 : vec4<bool> = (abs(vec4<f32>(x_1947.z, x_1947.z, x_1947.y, x_1947.z)) >= abs(vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.x)));
        let x_1955 : vec3<bool> = vec3<bool>(x_1953.x, x_1953.y, x_1953.z);
        let x_1956 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
        let x_1959 : bool = u_xlatb8.y;
        let x_1961 : bool = u_xlatb8.x;
        u_xlatb76 = (x_1959 & x_1961);
        let x_1963 : vec4<f32> = u_xlat7;
        let x_1966 : vec4<bool> = (-(vec4<f32>(x_1963.z, x_1963.y, x_1963.z, x_1963.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1967 : vec3<bool> = vec3<bool>(x_1966.x, x_1966.y, x_1966.w);
        let x_1968 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1967.x, x_1967.y, x_1968.z, x_1967.z);
        let x_1971 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1971);
        let x_1977 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1977);
        let x_1983 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_1983);
        let x_1987 : bool = u_xlatb8.z;
        if (x_1987) {
          let x_1992 : f32 = u_xlat8.y;
          x_1988 = x_1992;
        } else {
          let x_1994 : f32 = u_xlat77;
          x_1988 = x_1994;
        }
        let x_1995 : f32 = x_1988;
        u_xlat31 = x_1995;
        let x_1997 : bool = u_xlatb76;
        if (x_1997) {
          let x_2002 : f32 = u_xlat8.x;
          x_1998 = x_2002;
        } else {
          let x_2004 : f32 = u_xlat31;
          x_1998 = x_2004;
        }
        let x_2005 : f32 = x_1998;
        u_xlat76 = x_2005;
        let x_2006 : i32 = u_xlati73;
        let x_2008 : f32 = x_362.x_AdditionalShadowParams[x_2006].w;
        u_xlat8.x = trunc(x_2008);
        let x_2011 : f32 = u_xlat76;
        let x_2013 : f32 = u_xlat8.x;
        u_xlat76 = (x_2011 + x_2013);
        let x_2015 : f32 = u_xlat76;
        u_xlati75 = i32(x_2015);
      }
      let x_2017 : i32 = u_xlati75;
      u_xlati75 = (x_2017 << bitcast<u32>(2i));
      let x_2019 : vec3<f32> = vs_TEXCOORD1;
      let x_2022 : i32 = u_xlati75;
      let x_2025 : i32 = u_xlati75;
      let x_2029 : vec4<f32> = x_362.x_AdditionalLightsWorldToShadow[((x_2022 + 1i) / 4i)][((x_2025 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2019.y, x_2019.y, x_2019.y, x_2019.y) * x_2029);
      let x_2031 : i32 = u_xlati75;
      let x_2033 : i32 = u_xlati75;
      let x_2036 : vec4<f32> = x_362.x_AdditionalLightsWorldToShadow[(x_2031 / 4i)][(x_2033 % 4i)];
      let x_2037 : vec3<f32> = vs_TEXCOORD1;
      let x_2040 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2036 * vec4<f32>(x_2037.x, x_2037.x, x_2037.x, x_2037.x)) + x_2040);
      let x_2042 : i32 = u_xlati75;
      let x_2045 : i32 = u_xlati75;
      let x_2049 : vec4<f32> = x_362.x_AdditionalLightsWorldToShadow[((x_2042 + 2i) / 4i)][((x_2045 + 2i) % 4i)];
      let x_2050 : vec3<f32> = vs_TEXCOORD1;
      let x_2053 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2049 * vec4<f32>(x_2050.z, x_2050.z, x_2050.z, x_2050.z)) + x_2053);
      let x_2055 : vec4<f32> = u_xlat8;
      let x_2056 : i32 = u_xlati75;
      let x_2059 : i32 = u_xlati75;
      let x_2063 : vec4<f32> = x_362.x_AdditionalLightsWorldToShadow[((x_2056 + 3i) / 4i)][((x_2059 + 3i) % 4i)];
      u_xlat8 = (x_2055 + x_2063);
      let x_2065 : vec4<f32> = u_xlat8;
      let x_2067 : vec4<f32> = u_xlat8;
      let x_2069 : vec3<f32> = (vec3<f32>(x_2065.x, x_2065.y, x_2065.z) / vec3<f32>(x_2067.w, x_2067.w, x_2067.w));
      let x_2070 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
      let x_2073 : i32 = u_xlati73;
      let x_2075 : f32 = x_362.x_AdditionalShadowParams[x_2073].y;
      u_xlatb75 = (0.0f < x_2075);
      let x_2077 : bool = u_xlatb75;
      if (x_2077) {
        let x_2080 : i32 = u_xlati73;
        let x_2082 : f32 = x_362.x_AdditionalShadowParams[x_2080].y;
        u_xlatb75 = (1.0f == x_2082);
        let x_2084 : bool = u_xlatb75;
        if (x_2084) {
          let x_2087 : vec4<f32> = u_xlat8;
          let x_2091 : vec4<f32> = x_362.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2087.x, x_2087.y, x_2087.x, x_2087.y) + x_2091);
          let x_2094 : vec4<f32> = u_xlat9;
          let x_2095 : vec2<f32> = vec2<f32>(x_2094.x, x_2094.y);
          let x_2097 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
          let x_2105 : vec3<f32> = txVec30;
          let x_2107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2105.xy, x_2105.z);
          u_xlat10.x = x_2107;
          let x_2110 : vec4<f32> = u_xlat9;
          let x_2111 : vec2<f32> = vec2<f32>(x_2110.z, x_2110.w);
          let x_2113 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
          let x_2120 : vec3<f32> = txVec31;
          let x_2122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
          u_xlat10.y = x_2122;
          let x_2124 : vec4<f32> = u_xlat8;
          let x_2128 : vec4<f32> = x_362.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2124.x, x_2124.y, x_2124.x, x_2124.y) + x_2128);
          let x_2131 : vec4<f32> = u_xlat9;
          let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
          let x_2134 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
          let x_2141 : vec3<f32> = txVec32;
          let x_2143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
          u_xlat10.z = x_2143;
          let x_2146 : vec4<f32> = u_xlat9;
          let x_2147 : vec2<f32> = vec2<f32>(x_2146.z, x_2146.w);
          let x_2149 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2147.x, x_2147.y, x_2149);
          let x_2156 : vec3<f32> = txVec33;
          let x_2158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2156.xy, x_2156.z);
          u_xlat10.w = x_2158;
          let x_2160 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2160, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2163 : i32 = u_xlati73;
          let x_2165 : f32 = x_362.x_AdditionalShadowParams[x_2163].y;
          u_xlatb76 = (2.0f == x_2165);
          let x_2167 : bool = u_xlatb76;
          if (x_2167) {
            let x_2170 : vec4<f32> = u_xlat8;
            let x_2174 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2177 : vec2<f32> = ((vec2<f32>(x_2170.x, x_2170.y) * vec2<f32>(x_2174.z, x_2174.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2178 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
            let x_2180 : vec4<f32> = u_xlat9;
            let x_2182 : vec2<f32> = floor(vec2<f32>(x_2180.x, x_2180.y));
            let x_2183 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
            let x_2186 : vec4<f32> = u_xlat8;
            let x_2189 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2192 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2186.x, x_2186.y) * vec2<f32>(x_2189.z, x_2189.w)) + -(vec2<f32>(x_2192.x, x_2192.y)));
            let x_2196 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2196.x, x_2196.x, x_2196.y, x_2196.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2199 : vec4<f32> = u_xlat10;
            let x_2201 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2199.x, x_2199.x, x_2199.z, x_2199.z) * vec4<f32>(x_2201.x, x_2201.x, x_2201.z, x_2201.z));
            let x_2204 : vec4<f32> = u_xlat11;
            let x_2206 : vec2<f32> = (vec2<f32>(x_2204.y, x_2204.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2207 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2206.x, x_2207.y, x_2206.y, x_2207.w);
            let x_2209 : vec4<f32> = u_xlat11;
            let x_2212 : vec2<f32> = u_xlat55;
            let x_2214 : vec2<f32> = ((vec2<f32>(x_2209.x, x_2209.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2212));
            let x_2215 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
            let x_2218 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2218) + vec2<f32>(1.0f, 1.0f));
            let x_2221 : vec2<f32> = u_xlat55;
            let x_2222 : vec2<f32> = min(x_2221, vec2<f32>(0.0f, 0.0f));
            let x_2223 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat12;
            let x_2228 : vec4<f32> = u_xlat12;
            let x_2231 : vec2<f32> = u_xlat57;
            let x_2232 : vec2<f32> = ((-(vec2<f32>(x_2225.x, x_2225.y)) * vec2<f32>(x_2228.x, x_2228.y)) + x_2231);
            let x_2233 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
            let x_2235 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2235, vec2<f32>(0.0f, 0.0f));
            let x_2237 : vec2<f32> = u_xlat55;
            let x_2239 : vec2<f32> = u_xlat55;
            let x_2241 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2237) * x_2239) + vec2<f32>(x_2241.y, x_2241.w));
            let x_2244 : vec4<f32> = u_xlat12;
            let x_2246 : vec2<f32> = (vec2<f32>(x_2244.x, x_2244.y) + vec2<f32>(1.0f, 1.0f));
            let x_2247 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2249 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2249 + vec2<f32>(1.0f, 1.0f));
            let x_2251 : vec4<f32> = u_xlat11;
            let x_2253 : vec2<f32> = (vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
            let x_2256 : vec2<f32> = u_xlat57;
            let x_2257 : vec2<f32> = (x_2256 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2258 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2257.x, x_2257.y, x_2258.z, x_2258.w);
            let x_2260 : vec4<f32> = u_xlat12;
            let x_2262 : vec2<f32> = (vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2263 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
            let x_2265 : vec2<f32> = u_xlat55;
            let x_2266 : vec2<f32> = (x_2265 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2266.x, x_2266.y, x_2267.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2269.y, x_2269.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2273 : f32 = u_xlat12.x;
            u_xlat13.z = x_2273;
            let x_2276 : f32 = u_xlat55.x;
            u_xlat13.w = x_2276;
            let x_2279 : f32 = u_xlat14.x;
            u_xlat11.z = x_2279;
            let x_2282 : f32 = u_xlat10.x;
            u_xlat11.w = x_2282;
            let x_2284 : vec4<f32> = u_xlat11;
            let x_2286 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2284.z, x_2284.w, x_2284.x, x_2284.z) + vec4<f32>(x_2286.z, x_2286.w, x_2286.x, x_2286.z));
            let x_2290 : f32 = u_xlat13.y;
            u_xlat12.z = x_2290;
            let x_2293 : f32 = u_xlat55.y;
            u_xlat12.w = x_2293;
            let x_2296 : f32 = u_xlat11.y;
            u_xlat14.z = x_2296;
            let x_2299 : f32 = u_xlat10.z;
            u_xlat14.w = x_2299;
            let x_2301 : vec4<f32> = u_xlat12;
            let x_2303 : vec4<f32> = u_xlat14;
            let x_2305 : vec3<f32> = (vec3<f32>(x_2301.z, x_2301.y, x_2301.w) + vec3<f32>(x_2303.z, x_2303.y, x_2303.w));
            let x_2306 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
            let x_2308 : vec4<f32> = u_xlat11;
            let x_2310 : vec4<f32> = u_xlat15;
            let x_2312 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.z, x_2308.w) / vec3<f32>(x_2310.z, x_2310.w, x_2310.y));
            let x_2313 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
            let x_2315 : vec4<f32> = u_xlat11;
            let x_2317 : vec3<f32> = (vec3<f32>(x_2315.x, x_2315.y, x_2315.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2318 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
            let x_2320 : vec4<f32> = u_xlat14;
            let x_2322 : vec4<f32> = u_xlat10;
            let x_2324 : vec3<f32> = (vec3<f32>(x_2320.z, x_2320.y, x_2320.w) / vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
            let x_2325 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
            let x_2327 : vec4<f32> = u_xlat12;
            let x_2329 : vec3<f32> = (vec3<f32>(x_2327.x, x_2327.y, x_2327.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2330 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
            let x_2332 : vec4<f32> = u_xlat11;
            let x_2335 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2337 : vec3<f32> = (vec3<f32>(x_2332.y, x_2332.x, x_2332.z) * vec3<f32>(x_2335.x, x_2335.x, x_2335.x));
            let x_2338 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
            let x_2340 : vec4<f32> = u_xlat12;
            let x_2343 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2345 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.y, x_2340.z) * vec3<f32>(x_2343.y, x_2343.y, x_2343.y));
            let x_2346 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
            let x_2349 : f32 = u_xlat12.x;
            u_xlat11.w = x_2349;
            let x_2351 : vec4<f32> = u_xlat9;
            let x_2354 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2357 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2351.x, x_2351.y, x_2351.x, x_2351.y) * vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y)) + vec4<f32>(x_2357.y, x_2357.w, x_2357.x, x_2357.w));
            let x_2360 : vec4<f32> = u_xlat9;
            let x_2363 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2360.x, x_2360.y) * vec2<f32>(x_2363.x, x_2363.y)) + vec2<f32>(x_2366.z, x_2366.w));
            let x_2370 : f32 = u_xlat11.y;
            u_xlat12.w = x_2370;
            let x_2372 : vec4<f32> = u_xlat12;
            let x_2373 : vec2<f32> = vec2<f32>(x_2372.y, x_2372.z);
            let x_2374 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2374.x, x_2373.x, x_2374.z, x_2373.y);
            let x_2376 : vec4<f32> = u_xlat9;
            let x_2379 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2382 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2376.x, x_2376.y, x_2376.x, x_2376.y) * vec4<f32>(x_2379.x, x_2379.y, x_2379.x, x_2379.y)) + vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2382.y));
            let x_2385 : vec4<f32> = u_xlat9;
            let x_2388 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2391 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2385.x, x_2385.y, x_2385.x, x_2385.y) * vec4<f32>(x_2388.x, x_2388.y, x_2388.x, x_2388.y)) + vec4<f32>(x_2391.w, x_2391.y, x_2391.w, x_2391.z));
            let x_2394 : vec4<f32> = u_xlat9;
            let x_2397 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2400 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y) * vec4<f32>(x_2397.x, x_2397.y, x_2397.x, x_2397.y)) + vec4<f32>(x_2400.x, x_2400.w, x_2400.z, x_2400.w));
            let x_2403 : vec4<f32> = u_xlat10;
            let x_2405 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2403.x, x_2403.x, x_2403.x, x_2403.y) * vec4<f32>(x_2405.z, x_2405.w, x_2405.y, x_2405.z));
            let x_2408 : vec4<f32> = u_xlat10;
            let x_2410 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2408.y, x_2408.y, x_2408.z, x_2408.z) * x_2410);
            let x_2413 : f32 = u_xlat10.z;
            let x_2415 : f32 = u_xlat15.y;
            u_xlat76 = (x_2413 * x_2415);
            let x_2418 : vec4<f32> = u_xlat13;
            let x_2419 : vec2<f32> = vec2<f32>(x_2418.x, x_2418.y);
            let x_2421 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2419.x, x_2419.y, x_2421);
            let x_2428 : vec3<f32> = txVec34;
            let x_2430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2428.xy, x_2428.z);
            u_xlat77 = x_2430;
            let x_2432 : vec4<f32> = u_xlat13;
            let x_2433 : vec2<f32> = vec2<f32>(x_2432.z, x_2432.w);
            let x_2435 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
            let x_2442 : vec3<f32> = txVec35;
            let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
            u_xlat9.x = x_2444;
            let x_2447 : f32 = u_xlat9.x;
            let x_2449 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2447 * x_2449);
            let x_2453 : f32 = u_xlat16.x;
            let x_2454 : f32 = u_xlat77;
            let x_2457 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2453 * x_2454) + x_2457);
            let x_2460 : vec2<f32> = u_xlat55;
            let x_2462 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
            let x_2469 : vec3<f32> = txVec36;
            let x_2471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2469.xy, x_2469.z);
            u_xlat9.x = x_2471;
            let x_2474 : f32 = u_xlat16.z;
            let x_2476 : f32 = u_xlat9.x;
            let x_2478 : f32 = u_xlat77;
            u_xlat77 = ((x_2474 * x_2476) + x_2478);
            let x_2481 : vec4<f32> = u_xlat12;
            let x_2482 : vec2<f32> = vec2<f32>(x_2481.x, x_2481.y);
            let x_2484 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2482.x, x_2482.y, x_2484);
            let x_2491 : vec3<f32> = txVec37;
            let x_2493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2491.xy, x_2491.z);
            u_xlat9.x = x_2493;
            let x_2496 : f32 = u_xlat16.w;
            let x_2498 : f32 = u_xlat9.x;
            let x_2500 : f32 = u_xlat77;
            u_xlat77 = ((x_2496 * x_2498) + x_2500);
            let x_2503 : vec4<f32> = u_xlat14;
            let x_2504 : vec2<f32> = vec2<f32>(x_2503.x, x_2503.y);
            let x_2506 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec38;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat9.x = x_2515;
            let x_2518 : f32 = u_xlat17.x;
            let x_2520 : f32 = u_xlat9.x;
            let x_2522 : f32 = u_xlat77;
            u_xlat77 = ((x_2518 * x_2520) + x_2522);
            let x_2525 : vec4<f32> = u_xlat14;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.z, x_2525.w);
            let x_2528 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec39;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat9.x = x_2537;
            let x_2540 : f32 = u_xlat17.y;
            let x_2542 : f32 = u_xlat9.x;
            let x_2544 : f32 = u_xlat77;
            u_xlat77 = ((x_2540 * x_2542) + x_2544);
            let x_2547 : vec4<f32> = u_xlat12;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.z, x_2547.w);
            let x_2550 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec40;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat9.x = x_2559;
            let x_2562 : f32 = u_xlat17.z;
            let x_2564 : f32 = u_xlat9.x;
            let x_2566 : f32 = u_xlat77;
            u_xlat77 = ((x_2562 * x_2564) + x_2566);
            let x_2569 : vec4<f32> = u_xlat11;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.x, x_2569.y);
            let x_2572 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec41;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat9.x = x_2581;
            let x_2584 : f32 = u_xlat17.w;
            let x_2586 : f32 = u_xlat9.x;
            let x_2588 : f32 = u_xlat77;
            u_xlat77 = ((x_2584 * x_2586) + x_2588);
            let x_2591 : vec4<f32> = u_xlat11;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.z, x_2591.w);
            let x_2594 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2601 : vec3<f32> = txVec42;
            let x_2603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2601.xy, x_2601.z);
            u_xlat9.x = x_2603;
            let x_2605 : f32 = u_xlat76;
            let x_2607 : f32 = u_xlat9.x;
            let x_2609 : f32 = u_xlat77;
            u_xlat75 = ((x_2605 * x_2607) + x_2609);
          } else {
            let x_2612 : vec4<f32> = u_xlat8;
            let x_2615 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2618 : vec2<f32> = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2615.z, x_2615.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2619 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat9;
            let x_2623 : vec2<f32> = floor(vec2<f32>(x_2621.x, x_2621.y));
            let x_2624 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
            let x_2626 : vec4<f32> = u_xlat8;
            let x_2629 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2626.x, x_2626.y) * vec2<f32>(x_2629.z, x_2629.w)) + -(vec2<f32>(x_2632.x, x_2632.y)));
            let x_2636 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2636.x, x_2636.x, x_2636.y, x_2636.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2639 : vec4<f32> = u_xlat10;
            let x_2641 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2639.x, x_2639.x, x_2639.z, x_2639.z) * vec4<f32>(x_2641.x, x_2641.x, x_2641.z, x_2641.z));
            let x_2644 : vec4<f32> = u_xlat11;
            let x_2646 : vec2<f32> = (vec2<f32>(x_2644.y, x_2644.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2647 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2647.x, x_2646.x, x_2647.z, x_2646.y);
            let x_2649 : vec4<f32> = u_xlat11;
            let x_2652 : vec2<f32> = u_xlat55;
            let x_2654 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2652));
            let x_2655 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2654.x, x_2655.y, x_2654.y, x_2655.w);
            let x_2657 : vec2<f32> = u_xlat55;
            let x_2659 : vec2<f32> = (-(x_2657) + vec2<f32>(1.0f, 1.0f));
            let x_2660 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2659.x, x_2659.y, x_2660.z, x_2660.w);
            let x_2662 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2662, vec2<f32>(0.0f, 0.0f));
            let x_2664 : vec2<f32> = u_xlat57;
            let x_2666 : vec2<f32> = u_xlat57;
            let x_2668 : vec4<f32> = u_xlat11;
            let x_2670 : vec2<f32> = ((-(x_2664) * x_2666) + vec2<f32>(x_2668.x, x_2668.y));
            let x_2671 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
            let x_2673 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2673, vec2<f32>(0.0f, 0.0f));
            let x_2676 : vec2<f32> = u_xlat57;
            let x_2678 : vec2<f32> = u_xlat57;
            let x_2680 : vec4<f32> = u_xlat10;
            let x_2682 : vec2<f32> = ((-(x_2676) * x_2678) + vec2<f32>(x_2680.y, x_2680.w));
            let x_2683 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2682.x, x_2683.y, x_2682.y);
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2687 : vec2<f32> = (vec2<f32>(x_2685.x, x_2685.y) + vec2<f32>(2.0f, 2.0f));
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2687.x, x_2687.y, x_2688.z, x_2688.w);
            let x_2690 : vec3<f32> = u_xlat33;
            let x_2692 : vec2<f32> = (vec2<f32>(x_2690.x, x_2690.z) + vec2<f32>(2.0f, 2.0f));
            let x_2693 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2693.x, x_2692.x, x_2693.z, x_2692.y);
            let x_2696 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2696 * 0.08163200318813323975f);
            let x_2699 : vec4<f32> = u_xlat10;
            let x_2701 : vec3<f32> = (vec3<f32>(x_2699.z, x_2699.x, x_2699.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
            let x_2704 : vec4<f32> = u_xlat11;
            let x_2706 : vec2<f32> = (vec2<f32>(x_2704.x, x_2704.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2707 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2706.x, x_2706.y, x_2707.z, x_2707.w);
            let x_2710 : f32 = u_xlat14.y;
            u_xlat13.x = x_2710;
            let x_2712 : vec2<f32> = u_xlat55;
            let x_2715 : vec2<f32> = ((vec2<f32>(x_2712.x, x_2712.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2716.x, x_2715.x, x_2716.z, x_2715.y);
            let x_2718 : vec2<f32> = u_xlat55;
            let x_2721 : vec2<f32> = ((vec2<f32>(x_2718.x, x_2718.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2722 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2721.x, x_2722.y, x_2721.y, x_2722.w);
            let x_2725 : f32 = u_xlat10.x;
            u_xlat11.y = x_2725;
            let x_2728 : f32 = u_xlat12.y;
            u_xlat11.w = x_2728;
            let x_2730 : vec4<f32> = u_xlat11;
            let x_2731 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2730 + x_2731);
            let x_2733 : vec2<f32> = u_xlat55;
            let x_2736 : vec2<f32> = ((vec2<f32>(x_2733.y, x_2733.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2737 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2737.x, x_2736.x, x_2737.z, x_2736.y);
            let x_2739 : vec2<f32> = u_xlat55;
            let x_2742 : vec2<f32> = ((vec2<f32>(x_2739.y, x_2739.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2743 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2742.x, x_2743.y, x_2742.y, x_2743.w);
            let x_2746 : f32 = u_xlat10.y;
            u_xlat12.y = x_2746;
            let x_2748 : vec4<f32> = u_xlat12;
            let x_2749 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2748 + x_2749);
            let x_2751 : vec4<f32> = u_xlat11;
            let x_2752 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2751 / x_2752);
            let x_2754 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2754 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2757 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2756 / x_2757);
            let x_2759 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2759 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2761 : vec4<f32> = u_xlat11;
            let x_2764 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2761.w, x_2761.x, x_2761.y, x_2761.z) * vec4<f32>(x_2764.x, x_2764.x, x_2764.x, x_2764.x));
            let x_2767 : vec4<f32> = u_xlat12;
            let x_2770 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2767.x, x_2767.w, x_2767.y, x_2767.z) * vec4<f32>(x_2770.y, x_2770.y, x_2770.y, x_2770.y));
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2774 : vec3<f32> = vec3<f32>(x_2773.y, x_2773.z, x_2773.w);
            let x_2775 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2774.x, x_2775.y, x_2774.y, x_2774.z);
            let x_2778 : f32 = u_xlat12.x;
            u_xlat14.y = x_2778;
            let x_2780 : vec4<f32> = u_xlat9;
            let x_2783 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2786.y));
            let x_2789 : vec4<f32> = u_xlat9;
            let x_2792 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2795 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2792.x, x_2792.y)) + vec2<f32>(x_2795.w, x_2795.y));
            let x_2799 : f32 = u_xlat14.y;
            u_xlat11.y = x_2799;
            let x_2802 : f32 = u_xlat12.z;
            u_xlat14.y = x_2802;
            let x_2804 : vec4<f32> = u_xlat9;
            let x_2807 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2810 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2804.x, x_2804.y, x_2804.x, x_2804.y) * vec4<f32>(x_2807.x, x_2807.y, x_2807.x, x_2807.y)) + vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2810.y));
            let x_2813 : vec4<f32> = u_xlat9;
            let x_2816 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2819 : vec4<f32> = u_xlat14;
            let x_2821 : vec2<f32> = ((vec2<f32>(x_2813.x, x_2813.y) * vec2<f32>(x_2816.x, x_2816.y)) + vec2<f32>(x_2819.w, x_2819.y));
            let x_2822 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2821.x, x_2821.y, x_2822.z, x_2822.w);
            let x_2825 : f32 = u_xlat14.y;
            u_xlat11.z = x_2825;
            let x_2827 : vec4<f32> = u_xlat9;
            let x_2830 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2833 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y) * vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y)) + vec4<f32>(x_2833.x, x_2833.y, x_2833.x, x_2833.z));
            let x_2837 : f32 = u_xlat12.w;
            u_xlat14.y = x_2837;
            let x_2840 : vec4<f32> = u_xlat9;
            let x_2843 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y) * vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y)) + vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2846.y));
            let x_2850 : vec4<f32> = u_xlat9;
            let x_2853 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(x_2853.x, x_2853.y)) + vec2<f32>(x_2856.w, x_2856.y));
            let x_2860 : f32 = u_xlat14.y;
            u_xlat11.w = x_2860;
            let x_2863 : vec4<f32> = u_xlat9;
            let x_2866 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.x, x_2866.y)) + vec2<f32>(x_2869.x, x_2869.w));
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2873 : vec3<f32> = vec3<f32>(x_2872.x, x_2872.z, x_2872.w);
            let x_2874 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2873.x, x_2874.y, x_2873.y, x_2873.z);
            let x_2876 : vec4<f32> = u_xlat9;
            let x_2879 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2882.y));
            let x_2886 : vec4<f32> = u_xlat9;
            let x_2889 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2892 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2886.x, x_2886.y) * vec2<f32>(x_2889.x, x_2889.y)) + vec2<f32>(x_2892.w, x_2892.y));
            let x_2896 : f32 = u_xlat11.x;
            u_xlat12.x = x_2896;
            let x_2898 : vec4<f32> = u_xlat9;
            let x_2901 : vec4<f32> = x_362.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat12;
            let x_2906 : vec2<f32> = ((vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(x_2901.x, x_2901.y)) + vec2<f32>(x_2904.x, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2910 : vec4<f32> = u_xlat10;
            let x_2912 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2910.x, x_2910.x, x_2910.x, x_2910.x) * x_2912);
            let x_2915 : vec4<f32> = u_xlat10;
            let x_2917 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2915.y, x_2915.y, x_2915.y, x_2915.y) * x_2917);
            let x_2920 : vec4<f32> = u_xlat10;
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2920.z, x_2920.z, x_2920.z, x_2920.z) * x_2922);
            let x_2924 : vec4<f32> = u_xlat10;
            let x_2926 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2924.w, x_2924.w, x_2924.w, x_2924.w) * x_2926);
            let x_2929 : vec4<f32> = u_xlat15;
            let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
            let x_2932 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
            let x_2939 : vec3<f32> = txVec43;
            let x_2941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
            u_xlat76 = x_2941;
            let x_2943 : vec4<f32> = u_xlat15;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.z, x_2943.w);
            let x_2946 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec44;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat77 = x_2955;
            let x_2956 : f32 = u_xlat77;
            let x_2958 : f32 = u_xlat20.y;
            u_xlat77 = (x_2956 * x_2958);
            let x_2961 : f32 = u_xlat20.x;
            let x_2962 : f32 = u_xlat76;
            let x_2964 : f32 = u_xlat77;
            u_xlat76 = ((x_2961 * x_2962) + x_2964);
            let x_2967 : vec2<f32> = u_xlat55;
            let x_2969 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec45;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat77 = x_2978;
            let x_2980 : f32 = u_xlat20.z;
            let x_2981 : f32 = u_xlat77;
            let x_2983 : f32 = u_xlat76;
            u_xlat76 = ((x_2980 * x_2981) + x_2983);
            let x_2986 : vec4<f32> = u_xlat18;
            let x_2987 : vec2<f32> = vec2<f32>(x_2986.x, x_2986.y);
            let x_2989 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
            let x_2996 : vec3<f32> = txVec46;
            let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
            u_xlat77 = x_2998;
            let x_3000 : f32 = u_xlat20.w;
            let x_3001 : f32 = u_xlat77;
            let x_3003 : f32 = u_xlat76;
            u_xlat76 = ((x_3000 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat16;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.x, x_3006.y);
            let x_3009 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec47;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat77 = x_3018;
            let x_3020 : f32 = u_xlat21.x;
            let x_3021 : f32 = u_xlat77;
            let x_3023 : f32 = u_xlat76;
            u_xlat76 = ((x_3020 * x_3021) + x_3023);
            let x_3026 : vec4<f32> = u_xlat16;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.z, x_3026.w);
            let x_3029 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec48;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat77 = x_3038;
            let x_3040 : f32 = u_xlat21.y;
            let x_3041 : f32 = u_xlat77;
            let x_3043 : f32 = u_xlat76;
            u_xlat76 = ((x_3040 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat17;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.x, x_3046.y);
            let x_3049 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec49;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat77 = x_3058;
            let x_3060 : f32 = u_xlat21.z;
            let x_3061 : f32 = u_xlat77;
            let x_3063 : f32 = u_xlat76;
            u_xlat76 = ((x_3060 * x_3061) + x_3063);
            let x_3066 : vec4<f32> = u_xlat18;
            let x_3067 : vec2<f32> = vec2<f32>(x_3066.z, x_3066.w);
            let x_3069 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec50;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat77 = x_3078;
            let x_3080 : f32 = u_xlat21.w;
            let x_3081 : f32 = u_xlat77;
            let x_3083 : f32 = u_xlat76;
            u_xlat76 = ((x_3080 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat19;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec51;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat77 = x_3098;
            let x_3100 : f32 = u_xlat22.x;
            let x_3101 : f32 = u_xlat77;
            let x_3103 : f32 = u_xlat76;
            u_xlat76 = ((x_3100 * x_3101) + x_3103);
            let x_3106 : vec4<f32> = u_xlat19;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.z, x_3106.w);
            let x_3109 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec52;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat77 = x_3118;
            let x_3120 : f32 = u_xlat22.y;
            let x_3121 : f32 = u_xlat77;
            let x_3123 : f32 = u_xlat76;
            u_xlat76 = ((x_3120 * x_3121) + x_3123);
            let x_3126 : vec2<f32> = u_xlat34;
            let x_3128 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3126.x, x_3126.y, x_3128);
            let x_3135 : vec3<f32> = txVec53;
            let x_3137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3135.xy, x_3135.z);
            u_xlat77 = x_3137;
            let x_3139 : f32 = u_xlat22.z;
            let x_3140 : f32 = u_xlat77;
            let x_3142 : f32 = u_xlat76;
            u_xlat76 = ((x_3139 * x_3140) + x_3142);
            let x_3145 : vec2<f32> = u_xlat63;
            let x_3147 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
            let x_3154 : vec3<f32> = txVec54;
            let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
            u_xlat77 = x_3156;
            let x_3158 : f32 = u_xlat22.w;
            let x_3159 : f32 = u_xlat77;
            let x_3161 : f32 = u_xlat76;
            u_xlat76 = ((x_3158 * x_3159) + x_3161);
            let x_3164 : vec4<f32> = u_xlat14;
            let x_3165 : vec2<f32> = vec2<f32>(x_3164.x, x_3164.y);
            let x_3167 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3165.x, x_3165.y, x_3167);
            let x_3174 : vec3<f32> = txVec55;
            let x_3176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
            u_xlat77 = x_3176;
            let x_3178 : f32 = u_xlat10.x;
            let x_3179 : f32 = u_xlat77;
            let x_3181 : f32 = u_xlat76;
            u_xlat76 = ((x_3178 * x_3179) + x_3181);
            let x_3184 : vec4<f32> = u_xlat14;
            let x_3185 : vec2<f32> = vec2<f32>(x_3184.z, x_3184.w);
            let x_3187 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
            let x_3194 : vec3<f32> = txVec56;
            let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
            u_xlat77 = x_3196;
            let x_3198 : f32 = u_xlat10.y;
            let x_3199 : f32 = u_xlat77;
            let x_3201 : f32 = u_xlat76;
            u_xlat76 = ((x_3198 * x_3199) + x_3201);
            let x_3204 : vec2<f32> = u_xlat58;
            let x_3206 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec57;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat77 = x_3215;
            let x_3217 : f32 = u_xlat10.z;
            let x_3218 : f32 = u_xlat77;
            let x_3220 : f32 = u_xlat76;
            u_xlat76 = ((x_3217 * x_3218) + x_3220);
            let x_3223 : vec4<f32> = u_xlat9;
            let x_3224 : vec2<f32> = vec2<f32>(x_3223.x, x_3223.y);
            let x_3226 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec58;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat77 = x_3235;
            let x_3237 : f32 = u_xlat10.w;
            let x_3238 : f32 = u_xlat77;
            let x_3240 : f32 = u_xlat76;
            u_xlat75 = ((x_3237 * x_3238) + x_3240);
          }
        }
      } else {
        let x_3244 : vec4<f32> = u_xlat8;
        let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
        let x_3247 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
        let x_3254 : vec3<f32> = txVec59;
        let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
        u_xlat75 = x_3256;
      }
      let x_3257 : i32 = u_xlati73;
      let x_3259 : f32 = x_362.x_AdditionalShadowParams[x_3257].x;
      u_xlat76 = (1.0f + -(x_3259));
      let x_3262 : f32 = u_xlat75;
      let x_3263 : i32 = u_xlati73;
      let x_3265 : f32 = x_362.x_AdditionalShadowParams[x_3263].x;
      let x_3267 : f32 = u_xlat76;
      u_xlat75 = ((x_3262 * x_3265) + x_3267);
      let x_3270 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3270);
      let x_3273 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3273 >= 1.0f);
      let x_3276 : bool = u_xlatb76;
      let x_3278 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3276 | x_3278);
      let x_3280 : bool = u_xlatb76;
      let x_3281 : f32 = u_xlat75;
      u_xlat75 = select(x_3281, 1.0f, x_3280);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3284 : f32 = u_xlat75;
    u_xlat76 = (-(x_3284) + 1.0f);
    let x_3288 : f32 = u_xlat1.x;
    let x_3289 : f32 = u_xlat76;
    let x_3291 : f32 = u_xlat75;
    u_xlat75 = ((x_3288 * x_3289) + x_3291);
    let x_3293 : f32 = u_xlat74;
    let x_3294 : f32 = u_xlat75;
    u_xlat74 = (x_3293 * x_3294);
    let x_3296 : f32 = u_xlat74;
    let x_3298 : i32 = u_xlati73;
    let x_3300 : vec4<f32> = x_1847.x_AdditionalLightsColor[x_3298];
    let x_3302 : vec3<f32> = (vec3<f32>(x_3296, x_3296, x_3296) * vec3<f32>(x_3300.x, x_3300.y, x_3300.z));
    let x_3303 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3302.x, x_3302.y, x_3302.z, x_3303.w);
    let x_3305 : vec4<f32> = u_xlat2;
    let x_3307 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3305.x, x_3305.y, x_3305.z), vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
    let x_3310 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3310, 0.0f, 1.0f);
    let x_3312 : f32 = u_xlat73;
    let x_3314 : vec4<f32> = u_xlat8;
    let x_3316 : vec3<f32> = (vec3<f32>(x_3312, x_3312, x_3312) * vec3<f32>(x_3314.x, x_3314.y, x_3314.z));
    let x_3317 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3317.w);
    let x_3319 : vec3<f32> = u_xlat3;
    let x_3320 : vec3<f32> = u_xlat23;
    let x_3323 : vec4<f32> = u_xlat7;
    let x_3325 : vec3<f32> = ((x_3319 * vec3<f32>(x_3320.x, x_3320.x, x_3320.x)) + vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
    let x_3326 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
    let x_3328 : vec4<f32> = u_xlat7;
    let x_3330 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3328.x, x_3328.y, x_3328.z), vec3<f32>(x_3330.x, x_3330.y, x_3330.z));
    let x_3333 : f32 = u_xlat73;
    u_xlat73 = max(x_3333, 1.17549435e-38f);
    let x_3335 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3335);
    let x_3337 : f32 = u_xlat73;
    let x_3339 : vec4<f32> = u_xlat7;
    let x_3341 : vec3<f32> = (vec3<f32>(x_3337, x_3337, x_3337) * vec3<f32>(x_3339.x, x_3339.y, x_3339.z));
    let x_3342 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
    let x_3344 : vec4<f32> = u_xlat2;
    let x_3346 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3344.x, x_3344.y, x_3344.z), vec3<f32>(x_3346.x, x_3346.y, x_3346.z));
    let x_3349 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3349, 0.0f, 1.0f);
    let x_3351 : f32 = u_xlat73;
    u_xlat73 = log2(x_3351);
    let x_3353 : f32 = u_xlat69;
    let x_3354 : f32 = u_xlat73;
    u_xlat73 = (x_3353 * x_3354);
    let x_3356 : f32 = u_xlat73;
    u_xlat73 = exp2(x_3356);
    let x_3358 : f32 = u_xlat73;
    let x_3361 : vec4<f32> = x_41.x_SpecColor;
    let x_3363 : vec3<f32> = (vec3<f32>(x_3358, x_3358, x_3358) * vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
    let x_3364 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);
    let x_3366 : vec4<f32> = u_xlat7;
    let x_3368 : vec4<f32> = u_xlat8;
    let x_3370 : vec3<f32> = (vec3<f32>(x_3366.x, x_3366.y, x_3366.z) * vec3<f32>(x_3368.x, x_3368.y, x_3368.z));
    let x_3371 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3370.x, x_3370.y, x_3370.z, x_3371.w);
    let x_3373 : vec4<f32> = u_xlat9;
    let x_3375 : vec4<f32> = u_xlat1;
    let x_3378 : vec4<f32> = u_xlat7;
    let x_3380 : vec3<f32> = ((vec3<f32>(x_3373.x, x_3373.y, x_3373.z) * vec3<f32>(x_3375.y, x_3375.z, x_3375.w)) + vec3<f32>(x_3378.x, x_3378.y, x_3378.z));
    let x_3381 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
    let x_3383 : vec4<f32> = u_xlat6;
    let x_3385 : vec4<f32> = u_xlat7;
    let x_3387 : vec3<f32> = (vec3<f32>(x_3383.x, x_3383.y, x_3383.z) + vec3<f32>(x_3385.x, x_3385.y, x_3385.z));
    let x_3388 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3387.x, x_3387.y, x_3387.z, x_3388.w);

    continuing {
      let x_3390 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3390 + bitcast<u32>(1i));
    }
  }
  let x_3392 : vec3<f32> = u_xlat4;
  let x_3393 : vec4<f32> = u_xlat1;
  let x_3396 : vec4<f32> = u_xlat5;
  let x_3398 : vec3<f32> = ((x_3392 * vec3<f32>(x_3393.y, x_3393.z, x_3393.w)) + vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
  let x_3399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3398.x, x_3398.y, x_3398.z, x_3399.w);
  let x_3403 : vec4<f32> = u_xlat6;
  let x_3405 : vec4<f32> = u_xlat1;
  let x_3407 : vec3<f32> = (vec3<f32>(x_3403.x, x_3403.y, x_3403.z) + vec3<f32>(x_3405.x, x_3405.y, x_3405.z));
  let x_3408 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3407.x, x_3407.y, x_3407.z, x_3408.w);
  let x_3411 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3411 == 1.0f);
  let x_3413 : bool = u_xlatb23;
  let x_3414 : bool = u_xlatb46;
  u_xlatb23 = (x_3413 | x_3414);
  let x_3416 : bool = u_xlatb23;
  if (x_3416) {
    let x_3421 : f32 = u_xlat0.x;
    x_3417 = x_3421;
  } else {
    x_3417 = 1.0f;
  }
  let x_3423 : f32 = x_3417;
  SV_Target0.w = x_3423;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


