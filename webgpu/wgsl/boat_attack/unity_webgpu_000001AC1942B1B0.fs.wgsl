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

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_284 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlati69 : i32;

@group(1) @binding(2) var<uniform> x_476 : UnityPerDraw;

var<private> u_xlatb69 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(1) var<uniform> x_2032 : AdditionalLights;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

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
  var x_2168 : f32;
  var x_2179 : f32;
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
  var x_3598 : f32;
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
  let x_275 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres0;
  let x_289 : vec3<f32> = (x_275 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
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
  u_xlat2.w = 1.0f;
  let x_479 : vec4<f32> = x_476.unity_SHAr;
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_479, x_480);
  let x_485 : vec4<f32> = x_476.unity_SHAg;
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_485, x_486);
  let x_491 : vec4<f32> = x_476.unity_SHAb;
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_491, x_492);
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_495.y, x_495.z, x_495.z, x_495.x) * vec4<f32>(x_497.x, x_497.y, x_497.z, x_497.z));
  let x_502 : vec4<f32> = x_476.unity_SHBr;
  let x_503 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_502, x_503);
  let x_508 : vec4<f32> = x_476.unity_SHBg;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_508, x_509);
  let x_514 : vec4<f32> = x_476.unity_SHBb;
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_514, x_515);
  let x_519 : f32 = u_xlat2.y;
  let x_521 : f32 = u_xlat2.y;
  u_xlat69 = (x_519 * x_521);
  let x_524 : f32 = u_xlat2.x;
  let x_526 : f32 = u_xlat2.x;
  let x_528 : f32 = u_xlat69;
  u_xlat69 = ((x_524 * x_526) + -(x_528));
  let x_533 : vec4<f32> = x_476.unity_SHC;
  let x_535 : f32 = u_xlat69;
  let x_538 : vec4<f32> = u_xlat7;
  let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_535, x_535, x_535)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat5;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec3<f32> = max(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_558 : f32 = x_284.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_558);
  let x_560 : bool = u_xlatb69;
  if (x_560) {
    let x_564 : f32 = x_284.x_MainLightShadowParams.y;
    u_xlatb69 = (x_564 == 1.0f);
    let x_566 : bool = u_xlatb69;
    if (x_566) {
      let x_569 : vec4<f32> = u_xlat4;
      let x_573 : vec4<f32> = x_284.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y) + x_573);
      let x_577 : vec4<f32> = u_xlat6;
      let x_578 : vec2<f32> = vec2<f32>(x_577.x, x_577.y);
      let x_580 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_578.x, x_578.y, x_580);
      let x_592 : vec3<f32> = txVec0;
      let x_594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_592.xy, x_592.z);
      u_xlat7.x = x_594;
      let x_597 : vec4<f32> = u_xlat6;
      let x_598 : vec2<f32> = vec2<f32>(x_597.z, x_597.w);
      let x_600 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_598.x, x_598.y, x_600);
      let x_607 : vec3<f32> = txVec1;
      let x_609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_607.xy, x_607.z);
      u_xlat7.y = x_609;
      let x_611 : vec4<f32> = u_xlat4;
      let x_615 : vec4<f32> = x_284.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) + x_615);
      let x_618 : vec4<f32> = u_xlat6;
      let x_619 : vec2<f32> = vec2<f32>(x_618.x, x_618.y);
      let x_621 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec2;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_628.xy, x_628.z);
      u_xlat7.z = x_630;
      let x_633 : vec4<f32> = u_xlat6;
      let x_634 : vec2<f32> = vec2<f32>(x_633.z, x_633.w);
      let x_636 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_634.x, x_634.y, x_636);
      let x_643 : vec3<f32> = txVec3;
      let x_645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_643.xy, x_643.z);
      u_xlat7.w = x_645;
      let x_647 : vec4<f32> = u_xlat7;
      u_xlat69 = dot(x_647, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_654 : f32 = x_284.x_MainLightShadowParams.y;
      u_xlatb1 = (x_654 == 2.0f);
      let x_656 : bool = u_xlatb1;
      if (x_656) {
        let x_659 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_667 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_663.z, x_663.w)) + vec2<f32>(0.5f, 0.5f));
        let x_668 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat6;
        let x_672 : vec2<f32> = floor(vec2<f32>(x_670.x, x_670.y));
        let x_673 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_677 : vec4<f32> = u_xlat4;
        let x_680 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_683 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_680.z, x_680.w)) + -(vec2<f32>(x_683.x, x_683.y)));
        let x_687 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_687.x, x_687.x, x_687.y, x_687.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_692 : vec4<f32> = u_xlat7;
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_692.x, x_692.x, x_692.z, x_692.z) * vec4<f32>(x_694.x, x_694.x, x_694.z, x_694.z));
        let x_697 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = (vec2<f32>(x_697.y, x_697.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_701.x, x_702.y, x_701.y, x_702.w);
        let x_704 : vec4<f32> = u_xlat8;
        let x_707 : vec2<f32> = u_xlat52;
        let x_709 : vec2<f32> = ((vec2<f32>(x_704.x, x_704.z) * vec2<f32>(0.5f, 0.5f)) + -(x_707));
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_710.z, x_710.w);
        let x_713 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_713) + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec2<f32> = u_xlat52;
        let x_720 : vec2<f32> = min(x_718, vec2<f32>(0.0f, 0.0f));
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec2<f32> = u_xlat54;
        let x_730 : vec2<f32> = ((-(vec2<f32>(x_723.x, x_723.y)) * vec2<f32>(x_726.x, x_726.y)) + x_729);
        let x_731 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_733, vec2<f32>(0.0f, 0.0f));
        let x_735 : vec2<f32> = u_xlat52;
        let x_737 : vec2<f32> = u_xlat52;
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat52 = ((-(x_735) * x_737) + vec2<f32>(x_739.y, x_739.w));
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec2<f32> = (vec2<f32>(x_742.x, x_742.y) + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_747 + vec2<f32>(1.0f, 1.0f));
        let x_750 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = (vec2<f32>(x_750.x, x_750.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_755 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec2<f32> = u_xlat54;
        let x_758 : vec2<f32> = (x_757 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_767 : vec2<f32> = u_xlat52;
        let x_768 : vec2<f32> = (x_767 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat52 = (vec2<f32>(x_771.y, x_771.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_775 : f32 = u_xlat9.x;
        u_xlat10.z = x_775;
        let x_778 : f32 = u_xlat52.x;
        u_xlat10.w = x_778;
        let x_781 : f32 = u_xlat11.x;
        u_xlat8.z = x_781;
        let x_784 : f32 = u_xlat7.x;
        u_xlat8.w = x_784;
        let x_787 : vec4<f32> = u_xlat8;
        let x_789 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_787.z, x_787.w, x_787.x, x_787.z) + vec4<f32>(x_789.z, x_789.w, x_789.x, x_789.z));
        let x_793 : f32 = u_xlat10.y;
        u_xlat9.z = x_793;
        let x_796 : f32 = u_xlat52.y;
        u_xlat9.w = x_796;
        let x_799 : f32 = u_xlat8.y;
        u_xlat11.z = x_799;
        let x_802 : f32 = u_xlat7.z;
        u_xlat11.w = x_802;
        let x_804 : vec4<f32> = u_xlat9;
        let x_806 : vec4<f32> = u_xlat11;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) + vec3<f32>(x_806.z, x_806.y, x_806.w));
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec4<f32> = u_xlat12;
        let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.z, x_811.w) / vec3<f32>(x_813.z, x_813.w, x_813.y));
        let x_816 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat8;
        let x_824 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat11;
        let x_829 : vec4<f32> = u_xlat7;
        let x_831 : vec3<f32> = (vec3<f32>(x_827.z, x_827.y, x_827.w) / vec3<f32>(x_829.x, x_829.y, x_829.z));
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat9;
        let x_836 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_837 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat8;
        let x_842 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_844 : vec3<f32> = (vec3<f32>(x_839.y, x_839.x, x_839.z) * vec3<f32>(x_842.x, x_842.x, x_842.x));
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat9;
        let x_850 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_852 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_850.y, x_850.y, x_850.y));
        let x_853 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_856 : f32 = u_xlat9.x;
        u_xlat8.w = x_856;
        let x_858 : vec4<f32> = u_xlat6;
        let x_861 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_864 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_858.x, x_858.y, x_858.x, x_858.y) * vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y)) + vec4<f32>(x_864.y, x_864.w, x_864.x, x_864.w));
        let x_867 : vec4<f32> = u_xlat6;
        let x_870 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.x, x_870.y)) + vec2<f32>(x_873.z, x_873.w));
        let x_877 : f32 = u_xlat8.y;
        u_xlat9.w = x_877;
        let x_879 : vec4<f32> = u_xlat9;
        let x_880 : vec2<f32> = vec2<f32>(x_879.y, x_879.z);
        let x_881 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_881.x, x_880.x, x_881.z, x_880.y);
        let x_883 : vec4<f32> = u_xlat6;
        let x_886 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.x, x_889.y, x_889.z, x_889.y));
        let x_892 : vec4<f32> = u_xlat6;
        let x_895 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) * vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y)) + vec4<f32>(x_898.w, x_898.y, x_898.w, x_898.z));
        let x_901 : vec4<f32> = u_xlat6;
        let x_904 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y) * vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y)) + vec4<f32>(x_907.x, x_907.w, x_907.z, x_907.w));
        let x_911 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_911.x, x_911.x, x_911.x, x_911.y) * vec4<f32>(x_913.z, x_913.w, x_913.y, x_913.z));
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_917.y, x_917.y, x_917.z, x_917.z) * x_919);
        let x_922 : f32 = u_xlat7.z;
        let x_924 : f32 = u_xlat12.y;
        u_xlat1.x = (x_922 * x_924);
        let x_928 : vec4<f32> = u_xlat10;
        let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
        let x_931 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_939 : vec3<f32> = txVec4;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat71 = x_941;
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.z, x_943.w);
        let x_946 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_954 : vec3<f32> = txVec5;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat72 = x_956;
        let x_957 : f32 = u_xlat72;
        let x_959 : f32 = u_xlat13.y;
        u_xlat72 = (x_957 * x_959);
        let x_962 : f32 = u_xlat13.x;
        let x_963 : f32 = u_xlat71;
        let x_965 : f32 = u_xlat72;
        u_xlat71 = ((x_962 * x_963) + x_965);
        let x_968 : vec2<f32> = u_xlat52;
        let x_970 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec6;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat72 = x_979;
        let x_981 : f32 = u_xlat13.z;
        let x_982 : f32 = u_xlat72;
        let x_984 : f32 = u_xlat71;
        u_xlat71 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat9;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec7;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat72 = x_999;
        let x_1001 : f32 = u_xlat13.w;
        let x_1002 : f32 = u_xlat72;
        let x_1004 : f32 = u_xlat71;
        u_xlat71 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat11;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec8;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat72 = x_1019;
        let x_1021 : f32 = u_xlat14.x;
        let x_1022 : f32 = u_xlat72;
        let x_1024 : f32 = u_xlat71;
        u_xlat71 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat11;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec9;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat72 = x_1039;
        let x_1041 : f32 = u_xlat14.y;
        let x_1042 : f32 = u_xlat72;
        let x_1044 : f32 = u_xlat71;
        u_xlat71 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec10;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat72 = x_1059;
        let x_1061 : f32 = u_xlat14.z;
        let x_1062 : f32 = u_xlat72;
        let x_1064 : f32 = u_xlat71;
        u_xlat71 = ((x_1061 * x_1062) + x_1064);
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = vec2<f32>(x_1067.x, x_1067.y);
        let x_1070 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
        let x_1077 : vec3<f32> = txVec11;
        let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
        u_xlat72 = x_1079;
        let x_1081 : f32 = u_xlat14.w;
        let x_1082 : f32 = u_xlat72;
        let x_1084 : f32 = u_xlat71;
        u_xlat71 = ((x_1081 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec12;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat72 = x_1099;
        let x_1101 : f32 = u_xlat1.x;
        let x_1102 : f32 = u_xlat72;
        let x_1104 : f32 = u_xlat71;
        u_xlat69 = ((x_1101 * x_1102) + x_1104);
      } else {
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.z, x_1110.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1118 : vec2<f32> = floor(vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat52 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.z, x_1124.w)) + -(vec2<f32>(x_1127.x, x_1127.y)));
        let x_1131 : vec2<f32> = u_xlat52;
        u_xlat7 = (vec4<f32>(x_1131.x, x_1131.x, x_1131.y, x_1131.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1136 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.z, x_1134.z) * vec4<f32>(x_1136.x, x_1136.x, x_1136.z, x_1136.z));
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1139.y, x_1139.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = u_xlat52;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1149));
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat52;
        let x_1156 : vec2<f32> = (-(x_1154) + vec2<f32>(1.0f, 1.0f));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1159 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1159, vec2<f32>(0.0f, 0.0f));
        let x_1161 : vec2<f32> = u_xlat54;
        let x_1163 : vec2<f32> = u_xlat54;
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = ((-(x_1161) * x_1163) + vec2<f32>(x_1165.x, x_1165.y));
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1170, vec2<f32>(0.0f, 0.0f));
        let x_1173 : vec2<f32> = u_xlat54;
        let x_1175 : vec2<f32> = u_xlat54;
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1179 : vec2<f32> = ((-(x_1173) * x_1175) + vec2<f32>(x_1177.y, x_1177.w));
        let x_1180 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1179.x, x_1180.y, x_1179.y);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) + vec2<f32>(2.0f, 2.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec3<f32> = u_xlat30;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.z) + vec2<f32>(2.0f, 2.0f));
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1193 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1193 * 0.08163200318813323975f);
        let x_1197 : vec4<f32> = u_xlat7;
        let x_1200 : vec3<f32> = (vec3<f32>(x_1197.z, x_1197.x, x_1197.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1210 : f32 = u_xlat11.y;
        u_xlat10.x = x_1210;
        let x_1212 : vec2<f32> = u_xlat52;
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1219.x, x_1220.z, x_1219.y);
        let x_1222 : vec2<f32> = u_xlat52;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1227.w);
        let x_1230 : f32 = u_xlat7.x;
        u_xlat8.y = x_1230;
        let x_1233 : f32 = u_xlat9.y;
        u_xlat8.w = x_1233;
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1235 + x_1236);
        let x_1238 : vec2<f32> = u_xlat52;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1238.y, x_1238.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1242.x, x_1241.x, x_1242.z, x_1241.y);
        let x_1244 : vec2<f32> = u_xlat52;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1244.y, x_1244.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1247.x, x_1248.y, x_1247.y, x_1248.w);
        let x_1251 : f32 = u_xlat7.y;
        u_xlat9.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1253 + x_1254);
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1256 / x_1257);
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1259 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1273 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1270.w, x_1270.x, x_1270.y, x_1270.z) * vec4<f32>(x_1273.x, x_1273.x, x_1273.x, x_1273.x));
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1276.x, x_1276.w, x_1276.y, x_1276.z) * vec4<f32>(x_1279.y, x_1279.y, x_1279.y, x_1279.y));
        let x_1282 : vec4<f32> = u_xlat8;
        let x_1283 : vec3<f32> = vec3<f32>(x_1282.y, x_1282.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1283.z);
        let x_1287 : f32 = u_xlat9.x;
        u_xlat11.y = x_1287;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat52 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat11.y;
        u_xlat8.y = x_1308;
        let x_1311 : f32 = u_xlat9.z;
        u_xlat11.y = x_1311;
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : f32 = u_xlat11.y;
        u_xlat8.z = x_1334;
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.z));
        let x_1347 : f32 = u_xlat9.w;
        u_xlat11.y = x_1347;
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat31 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.w, x_1366.y));
        let x_1370 : f32 = u_xlat11.y;
        u_xlat8.w = x_1370;
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.x, x_1379.w));
        let x_1382 : vec4<f32> = u_xlat11;
        let x_1383 : vec3<f32> = vec3<f32>(x_1382.x, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1383.z);
        let x_1386 : vec4<f32> = u_xlat6;
        let x_1389 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1392 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.y) * vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y)) + vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1392.y));
        let x_1396 : vec4<f32> = u_xlat6;
        let x_1399 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat9;
        u_xlat55 = ((vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(x_1399.x, x_1399.y)) + vec2<f32>(x_1402.w, x_1402.y));
        let x_1406 : f32 = u_xlat8.x;
        u_xlat9.x = x_1406;
        let x_1408 : vec4<f32> = u_xlat6;
        let x_1411 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat9;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.x, x_1414.y));
        let x_1417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1422 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1420.x, x_1420.x, x_1420.x, x_1420.x) * x_1422);
        let x_1425 : vec4<f32> = u_xlat7;
        let x_1427 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1425.y, x_1425.y, x_1425.y, x_1425.y) * x_1427);
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1432 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1430.z, x_1430.z, x_1430.z, x_1430.z) * x_1432);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1434.w, x_1434.w, x_1434.w, x_1434.w) * x_1436);
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec13;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : vec4<f32> = u_xlat12;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec14;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat71 = x_1466;
        let x_1467 : f32 = u_xlat71;
        let x_1469 : f32 = u_xlat17.y;
        u_xlat71 = (x_1467 * x_1469);
        let x_1472 : f32 = u_xlat17.x;
        let x_1474 : f32 = u_xlat1.x;
        let x_1476 : f32 = u_xlat71;
        u_xlat1.x = ((x_1472 * x_1474) + x_1476);
        let x_1480 : vec2<f32> = u_xlat52;
        let x_1482 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec15;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat71 = x_1491;
        let x_1493 : f32 = u_xlat17.z;
        let x_1494 : f32 = u_xlat71;
        let x_1497 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat15;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec16;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat71 = x_1513;
        let x_1515 : f32 = u_xlat17.w;
        let x_1516 : f32 = u_xlat71;
        let x_1519 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1515 * x_1516) + x_1519);
        let x_1523 : vec4<f32> = u_xlat13;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec17;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat71 = x_1535;
        let x_1537 : f32 = u_xlat18.x;
        let x_1538 : f32 = u_xlat71;
        let x_1541 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat13;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec18;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat71 = x_1557;
        let x_1559 : f32 = u_xlat18.y;
        let x_1560 : f32 = u_xlat71;
        let x_1563 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec4<f32> = u_xlat14;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec19;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat71 = x_1579;
        let x_1581 : f32 = u_xlat18.z;
        let x_1582 : f32 = u_xlat71;
        let x_1585 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1581 * x_1582) + x_1585);
        let x_1589 : vec4<f32> = u_xlat15;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec20;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat71 = x_1601;
        let x_1603 : f32 = u_xlat18.w;
        let x_1604 : f32 = u_xlat71;
        let x_1607 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1603 * x_1604) + x_1607);
        let x_1611 : vec4<f32> = u_xlat16;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec21;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat71 = x_1623;
        let x_1625 : f32 = u_xlat19.x;
        let x_1626 : f32 = u_xlat71;
        let x_1629 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1625 * x_1626) + x_1629);
        let x_1633 : vec4<f32> = u_xlat16;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec22;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat71 = x_1645;
        let x_1647 : f32 = u_xlat19.y;
        let x_1648 : f32 = u_xlat71;
        let x_1651 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1647 * x_1648) + x_1651);
        let x_1655 : vec2<f32> = u_xlat31;
        let x_1657 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec23;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat71 = x_1666;
        let x_1668 : f32 = u_xlat19.z;
        let x_1669 : f32 = u_xlat71;
        let x_1672 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1668 * x_1669) + x_1672);
        let x_1676 : vec2<f32> = u_xlat60;
        let x_1678 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec24;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat71 = x_1687;
        let x_1689 : f32 = u_xlat19.w;
        let x_1690 : f32 = u_xlat71;
        let x_1693 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat11;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec25;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat71 = x_1709;
        let x_1711 : f32 = u_xlat7.x;
        let x_1712 : f32 = u_xlat71;
        let x_1715 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1711 * x_1712) + x_1715);
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.z, x_1719.w);
        let x_1722 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec26;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat71 = x_1731;
        let x_1733 : f32 = u_xlat7.y;
        let x_1734 : f32 = u_xlat71;
        let x_1737 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1733 * x_1734) + x_1737);
        let x_1741 : vec2<f32> = u_xlat55;
        let x_1743 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec27;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat71 = x_1752;
        let x_1754 : f32 = u_xlat7.z;
        let x_1755 : f32 = u_xlat71;
        let x_1758 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1754 * x_1755) + x_1758);
        let x_1762 : vec4<f32> = u_xlat6;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec28;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat71 = x_1774;
        let x_1776 : f32 = u_xlat7.w;
        let x_1777 : f32 = u_xlat71;
        let x_1780 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1776 * x_1777) + x_1780);
      }
    }
  } else {
    let x_1784 : vec4<f32> = u_xlat4;
    let x_1785 : vec2<f32> = vec2<f32>(x_1784.x, x_1784.y);
    let x_1787 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
    let x_1794 : vec3<f32> = txVec29;
    let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1794.xy, x_1794.z);
    u_xlat69 = x_1796;
  }
  let x_1798 : f32 = x_284.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1798) + 1.0f);
  let x_1802 : f32 = u_xlat69;
  let x_1804 : f32 = x_284.x_MainLightShadowParams.x;
  let x_1807 : f32 = u_xlat1.x;
  u_xlat69 = ((x_1802 * x_1804) + x_1807);
  let x_1810 : f32 = u_xlat4.z;
  u_xlatb1 = (0.0f >= x_1810);
  let x_1814 : f32 = u_xlat4.z;
  u_xlatb71 = (x_1814 >= 1.0f);
  let x_1816 : bool = u_xlatb1;
  let x_1817 : bool = u_xlatb71;
  u_xlatb1 = (x_1816 | x_1817);
  let x_1819 : bool = u_xlatb1;
  let x_1820 : f32 = u_xlat69;
  u_xlat69 = select(x_1820, 1.0f, x_1819);
  let x_1822 : vec3<f32> = vs_TEXCOORD1;
  let x_1825 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1827 : vec3<f32> = (x_1822 + -(x_1825));
  let x_1828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1830 : vec4<f32> = u_xlat4;
  let x_1832 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
  let x_1837 : f32 = u_xlat1.x;
  let x_1839 : f32 = x_284.x_MainLightShadowParams.z;
  let x_1842 : f32 = x_284.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1837 * x_1839) + x_1842);
  let x_1844 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1844, 0.0f, 1.0f);
  let x_1846 : f32 = u_xlat69;
  u_xlat72 = (-(x_1846) + 1.0f);
  let x_1849 : f32 = u_xlat71;
  let x_1850 : f32 = u_xlat72;
  let x_1852 : f32 = u_xlat69;
  u_xlat69 = ((x_1849 * x_1850) + x_1852);
  let x_1854 : f32 = u_xlat69;
  let x_1856 : f32 = x_476.unity_LightData.z;
  u_xlat69 = (x_1854 * x_1856);
  let x_1858 : f32 = u_xlat69;
  let x_1861 : vec4<f32> = x_27.x_MainLightColor;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat2;
  let x_1869 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1872, 0.0f, 1.0f);
  let x_1874 : f32 = u_xlat69;
  let x_1876 : vec4<f32> = u_xlat4;
  let x_1878 : vec3<f32> = (vec3<f32>(x_1874, x_1874, x_1874) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
  let x_1879 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1882 : f32 = x_41.x_SpecColor.w;
  u_xlat69 = ((x_1882 * 10.0f) + 1.0f);
  let x_1886 : f32 = u_xlat69;
  u_xlat69 = exp2(x_1886);
  let x_1888 : vec3<f32> = u_xlat3;
  let x_1889 : vec3<f32> = u_xlat23;
  let x_1893 : vec4<f32> = x_27.x_MainLightPosition;
  let x_1895 : vec3<f32> = ((x_1888 * vec3<f32>(x_1889.x, x_1889.x, x_1889.x)) + vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat7;
  let x_1900 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : f32 = u_xlat71;
  u_xlat71 = max(x_1903, 1.17549435e-38f);
  let x_1906 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_1906);
  let x_1908 : f32 = u_xlat71;
  let x_1910 : vec4<f32> = u_xlat7;
  let x_1912 : vec3<f32> = (vec3<f32>(x_1908, x_1908, x_1908) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
  let x_1915 : vec4<f32> = u_xlat2;
  let x_1917 : vec4<f32> = u_xlat7;
  u_xlat71 = dot(vec3<f32>(x_1915.x, x_1915.y, x_1915.z), vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1920, 0.0f, 1.0f);
  let x_1922 : f32 = u_xlat71;
  u_xlat71 = log2(x_1922);
  let x_1924 : f32 = u_xlat69;
  let x_1925 : f32 = u_xlat71;
  u_xlat71 = (x_1924 * x_1925);
  let x_1927 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1927);
  let x_1929 : f32 = u_xlat71;
  let x_1932 : vec4<f32> = x_41.x_SpecColor;
  let x_1934 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec4<f32> = u_xlat4;
  let x_1939 : vec4<f32> = u_xlat7;
  let x_1941 : vec3<f32> = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
  let x_1942 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1942.w);
  let x_1944 : vec4<f32> = u_xlat6;
  let x_1946 : vec4<f32> = u_xlat1;
  let x_1949 : vec4<f32> = u_xlat4;
  let x_1951 : vec3<f32> = ((vec3<f32>(x_1944.x, x_1944.y, x_1944.z) * vec3<f32>(x_1946.y, x_1946.z, x_1946.w)) + vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1952 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
  let x_1955 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1957 : f32 = x_476.unity_LightData.y;
  u_xlat71 = min(x_1955, x_1957);
  let x_1960 : f32 = u_xlat71;
  u_xlatu71 = bitcast<u32>(i32(x_1960));
  let x_1964 : f32 = u_xlat1.x;
  let x_1967 : f32 = x_284.x_AdditionalShadowFadeParams.x;
  let x_1970 : f32 = x_284.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1964 * x_1967) + x_1970);
  let x_1974 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1974, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1987 : u32 = u_xlatu_loop_1;
    let x_1988 : u32 = u_xlatu71;
    if ((x_1987 < x_1988)) {
    } else {
      break;
    }
    let x_1991 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_1991 >> 2u);
    let x_1994 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_1994 & 3u));
    let x_1998 : u32 = u_xlatu73;
    let x_2001 : vec4<f32> = x_476.unity_LightIndices[bitcast<i32>(x_1998)];
    let x_2011 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2016 : vec4<u32> = indexable[x_2011];
    u_xlat73 = dot(x_2001, bitcast<vec4<f32>>(x_2016));
    let x_2020 : f32 = u_xlat73;
    u_xlati73 = i32(x_2020);
    let x_2022 : vec3<f32> = vs_TEXCOORD1;
    let x_2033 : i32 = u_xlati73;
    let x_2035 : vec4<f32> = x_2032.x_AdditionalLightsPosition[x_2033];
    let x_2038 : i32 = u_xlati73;
    let x_2040 : vec4<f32> = x_2032.x_AdditionalLightsPosition[x_2038];
    let x_2042 : vec3<f32> = ((-(x_2022) * vec3<f32>(x_2035.w, x_2035.w, x_2035.w)) + vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
    let x_2046 : vec4<f32> = u_xlat7;
    let x_2048 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_2046.x, x_2046.y, x_2046.z), vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : f32 = u_xlat74;
    u_xlat74 = max(x_2051, 0.00006103515625f);
    let x_2054 : f32 = u_xlat74;
    u_xlat75 = inverseSqrt(x_2054);
    let x_2056 : f32 = u_xlat75;
    let x_2058 : vec4<f32> = u_xlat7;
    let x_2060 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
    let x_2061 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
    let x_2063 : f32 = u_xlat74;
    u_xlat75 = (1.0f / x_2063);
    let x_2065 : f32 = u_xlat74;
    let x_2066 : i32 = u_xlati73;
    let x_2068 : f32 = x_2032.x_AdditionalLightsAttenuation[x_2066].x;
    u_xlat74 = (x_2065 * x_2068);
    let x_2070 : f32 = u_xlat74;
    let x_2072 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2070) * x_2072) + 1.0f);
    let x_2075 : f32 = u_xlat74;
    u_xlat74 = max(x_2075, 0.0f);
    let x_2077 : f32 = u_xlat74;
    let x_2078 : f32 = u_xlat74;
    u_xlat74 = (x_2077 * x_2078);
    let x_2080 : f32 = u_xlat74;
    let x_2081 : f32 = u_xlat75;
    u_xlat74 = (x_2080 * x_2081);
    let x_2083 : i32 = u_xlati73;
    let x_2085 : vec4<f32> = x_2032.x_AdditionalLightsSpotDir[x_2083];
    let x_2087 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : f32 = u_xlat75;
    let x_2091 : i32 = u_xlati73;
    let x_2093 : f32 = x_2032.x_AdditionalLightsAttenuation[x_2091].z;
    let x_2095 : i32 = u_xlati73;
    let x_2097 : f32 = x_2032.x_AdditionalLightsAttenuation[x_2095].w;
    u_xlat75 = ((x_2090 * x_2093) + x_2097);
    let x_2099 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2099, 0.0f, 1.0f);
    let x_2101 : f32 = u_xlat75;
    let x_2102 : f32 = u_xlat75;
    u_xlat75 = (x_2101 * x_2102);
    let x_2104 : f32 = u_xlat74;
    let x_2105 : f32 = u_xlat75;
    u_xlat74 = (x_2104 * x_2105);
    let x_2109 : i32 = u_xlati73;
    let x_2111 : f32 = x_284.x_AdditionalShadowParams[x_2109].w;
    u_xlati75 = i32(x_2111);
    let x_2114 : i32 = u_xlati75;
    u_xlatb76 = (x_2114 >= 0i);
    let x_2116 : bool = u_xlatb76;
    if (x_2116) {
      let x_2120 : i32 = u_xlati73;
      let x_2122 : f32 = x_284.x_AdditionalShadowParams[x_2120].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2122, x_2122, x_2122, x_2122))));
      let x_2126 : bool = u_xlatb76;
      if (x_2126) {
        let x_2130 : vec4<f32> = u_xlat7;
        let x_2133 : vec4<f32> = u_xlat7;
        let x_2136 : vec4<bool> = (abs(vec4<f32>(x_2130.z, x_2130.z, x_2130.y, x_2130.z)) >= abs(vec4<f32>(x_2133.x, x_2133.y, x_2133.x, x_2133.x)));
        let x_2138 : vec3<bool> = vec3<bool>(x_2136.x, x_2136.y, x_2136.z);
        let x_2139 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
        let x_2142 : bool = u_xlatb8.y;
        let x_2144 : bool = u_xlatb8.x;
        u_xlatb76 = (x_2142 & x_2144);
        let x_2146 : vec4<f32> = u_xlat7;
        let x_2149 : vec4<bool> = (-(vec4<f32>(x_2146.z, x_2146.y, x_2146.z, x_2146.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2150 : vec3<bool> = vec3<bool>(x_2149.x, x_2149.y, x_2149.w);
        let x_2151 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2150.x, x_2150.y, x_2151.z, x_2150.z);
        let x_2154 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2154);
        let x_2159 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2159);
        let x_2164 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_2164);
        let x_2167 : bool = u_xlatb8.z;
        if (x_2167) {
          let x_2172 : f32 = u_xlat8.y;
          x_2168 = x_2172;
        } else {
          let x_2174 : f32 = u_xlat77;
          x_2168 = x_2174;
        }
        let x_2175 : f32 = x_2168;
        u_xlat31.x = x_2175;
        let x_2178 : bool = u_xlatb76;
        if (x_2178) {
          let x_2183 : f32 = u_xlat8.x;
          x_2179 = x_2183;
        } else {
          let x_2186 : f32 = u_xlat31.x;
          x_2179 = x_2186;
        }
        let x_2187 : f32 = x_2179;
        u_xlat76 = x_2187;
        let x_2188 : i32 = u_xlati73;
        let x_2190 : f32 = x_284.x_AdditionalShadowParams[x_2188].w;
        u_xlat8.x = trunc(x_2190);
        let x_2193 : f32 = u_xlat76;
        let x_2195 : f32 = u_xlat8.x;
        u_xlat76 = (x_2193 + x_2195);
        let x_2197 : f32 = u_xlat76;
        u_xlati75 = i32(x_2197);
      }
      let x_2199 : i32 = u_xlati75;
      u_xlati75 = (x_2199 << bitcast<u32>(2i));
      let x_2201 : vec3<f32> = vs_TEXCOORD1;
      let x_2204 : i32 = u_xlati75;
      let x_2207 : i32 = u_xlati75;
      let x_2211 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2204 + 1i) / 4i)][((x_2207 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2201.y, x_2201.y, x_2201.y, x_2201.y) * x_2211);
      let x_2213 : i32 = u_xlati75;
      let x_2215 : i32 = u_xlati75;
      let x_2218 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[(x_2213 / 4i)][(x_2215 % 4i)];
      let x_2219 : vec3<f32> = vs_TEXCOORD1;
      let x_2222 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2218 * vec4<f32>(x_2219.x, x_2219.x, x_2219.x, x_2219.x)) + x_2222);
      let x_2224 : i32 = u_xlati75;
      let x_2227 : i32 = u_xlati75;
      let x_2231 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2224 + 2i) / 4i)][((x_2227 + 2i) % 4i)];
      let x_2232 : vec3<f32> = vs_TEXCOORD1;
      let x_2235 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2231 * vec4<f32>(x_2232.z, x_2232.z, x_2232.z, x_2232.z)) + x_2235);
      let x_2237 : vec4<f32> = u_xlat8;
      let x_2238 : i32 = u_xlati75;
      let x_2241 : i32 = u_xlati75;
      let x_2245 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2238 + 3i) / 4i)][((x_2241 + 3i) % 4i)];
      u_xlat8 = (x_2237 + x_2245);
      let x_2247 : vec4<f32> = u_xlat8;
      let x_2249 : vec4<f32> = u_xlat8;
      let x_2251 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) / vec3<f32>(x_2249.w, x_2249.w, x_2249.w));
      let x_2252 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
      let x_2255 : i32 = u_xlati73;
      let x_2257 : f32 = x_284.x_AdditionalShadowParams[x_2255].y;
      u_xlatb75 = (0.0f < x_2257);
      let x_2259 : bool = u_xlatb75;
      if (x_2259) {
        let x_2262 : i32 = u_xlati73;
        let x_2264 : f32 = x_284.x_AdditionalShadowParams[x_2262].y;
        u_xlatb75 = (1.0f == x_2264);
        let x_2266 : bool = u_xlatb75;
        if (x_2266) {
          let x_2269 : vec4<f32> = u_xlat8;
          let x_2273 : vec4<f32> = x_284.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2269.x, x_2269.y, x_2269.x, x_2269.y) + x_2273);
          let x_2276 : vec4<f32> = u_xlat9;
          let x_2277 : vec2<f32> = vec2<f32>(x_2276.x, x_2276.y);
          let x_2279 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2277.x, x_2277.y, x_2279);
          let x_2287 : vec3<f32> = txVec30;
          let x_2289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2287.xy, x_2287.z);
          u_xlat10.x = x_2289;
          let x_2292 : vec4<f32> = u_xlat9;
          let x_2293 : vec2<f32> = vec2<f32>(x_2292.z, x_2292.w);
          let x_2295 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
          let x_2302 : vec3<f32> = txVec31;
          let x_2304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
          u_xlat10.y = x_2304;
          let x_2306 : vec4<f32> = u_xlat8;
          let x_2310 : vec4<f32> = x_284.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) + x_2310);
          let x_2313 : vec4<f32> = u_xlat9;
          let x_2314 : vec2<f32> = vec2<f32>(x_2313.x, x_2313.y);
          let x_2316 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
          let x_2323 : vec3<f32> = txVec32;
          let x_2325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2323.xy, x_2323.z);
          u_xlat10.z = x_2325;
          let x_2328 : vec4<f32> = u_xlat9;
          let x_2329 : vec2<f32> = vec2<f32>(x_2328.z, x_2328.w);
          let x_2331 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
          let x_2338 : vec3<f32> = txVec33;
          let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
          u_xlat10.w = x_2340;
          let x_2342 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2342, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2345 : i32 = u_xlati73;
          let x_2347 : f32 = x_284.x_AdditionalShadowParams[x_2345].y;
          u_xlatb76 = (2.0f == x_2347);
          let x_2349 : bool = u_xlatb76;
          if (x_2349) {
            let x_2352 : vec4<f32> = u_xlat8;
            let x_2356 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2359 : vec2<f32> = ((vec2<f32>(x_2352.x, x_2352.y) * vec2<f32>(x_2356.z, x_2356.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2360 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
            let x_2362 : vec4<f32> = u_xlat9;
            let x_2364 : vec2<f32> = floor(vec2<f32>(x_2362.x, x_2362.y));
            let x_2365 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
            let x_2367 : vec4<f32> = u_xlat8;
            let x_2370 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2373 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2370.z, x_2370.w)) + -(vec2<f32>(x_2373.x, x_2373.y)));
            let x_2377 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2377.x, x_2377.x, x_2377.y, x_2377.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2380 : vec4<f32> = u_xlat10;
            let x_2382 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2380.x, x_2380.x, x_2380.z, x_2380.z) * vec4<f32>(x_2382.x, x_2382.x, x_2382.z, x_2382.z));
            let x_2385 : vec4<f32> = u_xlat11;
            let x_2387 : vec2<f32> = (vec2<f32>(x_2385.y, x_2385.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2388 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2387.x, x_2388.y, x_2387.y, x_2388.w);
            let x_2390 : vec4<f32> = u_xlat11;
            let x_2393 : vec2<f32> = u_xlat55;
            let x_2395 : vec2<f32> = ((vec2<f32>(x_2390.x, x_2390.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2393));
            let x_2396 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2399 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2399) + vec2<f32>(1.0f, 1.0f));
            let x_2402 : vec2<f32> = u_xlat55;
            let x_2403 : vec2<f32> = min(x_2402, vec2<f32>(0.0f, 0.0f));
            let x_2404 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2406 : vec4<f32> = u_xlat12;
            let x_2409 : vec4<f32> = u_xlat12;
            let x_2412 : vec2<f32> = u_xlat57;
            let x_2413 : vec2<f32> = ((-(vec2<f32>(x_2406.x, x_2406.y)) * vec2<f32>(x_2409.x, x_2409.y)) + x_2412);
            let x_2414 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2416 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2416, vec2<f32>(0.0f, 0.0f));
            let x_2418 : vec2<f32> = u_xlat55;
            let x_2420 : vec2<f32> = u_xlat55;
            let x_2422 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2418) * x_2420) + vec2<f32>(x_2422.y, x_2422.w));
            let x_2425 : vec4<f32> = u_xlat12;
            let x_2427 : vec2<f32> = (vec2<f32>(x_2425.x, x_2425.y) + vec2<f32>(1.0f, 1.0f));
            let x_2428 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2430 + vec2<f32>(1.0f, 1.0f));
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2434 : vec2<f32> = (vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2435 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2434.x, x_2434.y, x_2435.z, x_2435.w);
            let x_2437 : vec2<f32> = u_xlat57;
            let x_2438 : vec2<f32> = (x_2437 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2439 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
            let x_2441 : vec4<f32> = u_xlat12;
            let x_2443 : vec2<f32> = (vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2444 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
            let x_2446 : vec2<f32> = u_xlat55;
            let x_2447 : vec2<f32> = (x_2446 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2448 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2450.y, x_2450.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2454 : f32 = u_xlat12.x;
            u_xlat13.z = x_2454;
            let x_2457 : f32 = u_xlat55.x;
            u_xlat13.w = x_2457;
            let x_2460 : f32 = u_xlat14.x;
            u_xlat11.z = x_2460;
            let x_2463 : f32 = u_xlat10.x;
            u_xlat11.w = x_2463;
            let x_2465 : vec4<f32> = u_xlat11;
            let x_2467 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2465.z, x_2465.w, x_2465.x, x_2465.z) + vec4<f32>(x_2467.z, x_2467.w, x_2467.x, x_2467.z));
            let x_2471 : f32 = u_xlat13.y;
            u_xlat12.z = x_2471;
            let x_2474 : f32 = u_xlat55.y;
            u_xlat12.w = x_2474;
            let x_2477 : f32 = u_xlat11.y;
            u_xlat14.z = x_2477;
            let x_2480 : f32 = u_xlat10.z;
            u_xlat14.w = x_2480;
            let x_2482 : vec4<f32> = u_xlat12;
            let x_2484 : vec4<f32> = u_xlat14;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2482.z, x_2482.y, x_2482.w) + vec3<f32>(x_2484.z, x_2484.y, x_2484.w));
            let x_2487 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat11;
            let x_2491 : vec4<f32> = u_xlat15;
            let x_2493 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.z, x_2489.w) / vec3<f32>(x_2491.z, x_2491.w, x_2491.y));
            let x_2494 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
            let x_2496 : vec4<f32> = u_xlat11;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2499 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat14;
            let x_2503 : vec4<f32> = u_xlat10;
            let x_2505 : vec3<f32> = (vec3<f32>(x_2501.z, x_2501.y, x_2501.w) / vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
            let x_2506 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
            let x_2508 : vec4<f32> = u_xlat12;
            let x_2510 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.y, x_2508.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2511 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
            let x_2513 : vec4<f32> = u_xlat11;
            let x_2516 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2518 : vec3<f32> = (vec3<f32>(x_2513.y, x_2513.x, x_2513.z) * vec3<f32>(x_2516.x, x_2516.x, x_2516.x));
            let x_2519 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
            let x_2521 : vec4<f32> = u_xlat12;
            let x_2524 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2526 : vec3<f32> = (vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * vec3<f32>(x_2524.y, x_2524.y, x_2524.y));
            let x_2527 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
            let x_2530 : f32 = u_xlat12.x;
            u_xlat11.w = x_2530;
            let x_2532 : vec4<f32> = u_xlat9;
            let x_2535 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2538 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y) * vec4<f32>(x_2535.x, x_2535.y, x_2535.x, x_2535.y)) + vec4<f32>(x_2538.y, x_2538.w, x_2538.x, x_2538.w));
            let x_2541 : vec4<f32> = u_xlat9;
            let x_2544 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2547 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2544.x, x_2544.y)) + vec2<f32>(x_2547.z, x_2547.w));
            let x_2551 : f32 = u_xlat11.y;
            u_xlat12.w = x_2551;
            let x_2553 : vec4<f32> = u_xlat12;
            let x_2554 : vec2<f32> = vec2<f32>(x_2553.y, x_2553.z);
            let x_2555 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2555.x, x_2554.x, x_2555.z, x_2554.y);
            let x_2557 : vec4<f32> = u_xlat9;
            let x_2560 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2563 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y) * vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y)) + vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2563.y));
            let x_2566 : vec4<f32> = u_xlat9;
            let x_2569 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.w, x_2572.y, x_2572.w, x_2572.z));
            let x_2575 : vec4<f32> = u_xlat9;
            let x_2578 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.w, x_2581.z, x_2581.w));
            let x_2584 : vec4<f32> = u_xlat10;
            let x_2586 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2584.x, x_2584.x, x_2584.x, x_2584.y) * vec4<f32>(x_2586.z, x_2586.w, x_2586.y, x_2586.z));
            let x_2589 : vec4<f32> = u_xlat10;
            let x_2591 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2589.y, x_2589.y, x_2589.z, x_2589.z) * x_2591);
            let x_2594 : f32 = u_xlat10.z;
            let x_2596 : f32 = u_xlat15.y;
            u_xlat76 = (x_2594 * x_2596);
            let x_2599 : vec4<f32> = u_xlat13;
            let x_2600 : vec2<f32> = vec2<f32>(x_2599.x, x_2599.y);
            let x_2602 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2600.x, x_2600.y, x_2602);
            let x_2609 : vec3<f32> = txVec34;
            let x_2611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2609.xy, x_2609.z);
            u_xlat77 = x_2611;
            let x_2613 : vec4<f32> = u_xlat13;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.z, x_2613.w);
            let x_2616 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec35;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat9.x = x_2625;
            let x_2628 : f32 = u_xlat9.x;
            let x_2630 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2628 * x_2630);
            let x_2634 : f32 = u_xlat16.x;
            let x_2635 : f32 = u_xlat77;
            let x_2638 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2634 * x_2635) + x_2638);
            let x_2641 : vec2<f32> = u_xlat55;
            let x_2643 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
            let x_2650 : vec3<f32> = txVec36;
            let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
            u_xlat9.x = x_2652;
            let x_2655 : f32 = u_xlat16.z;
            let x_2657 : f32 = u_xlat9.x;
            let x_2659 : f32 = u_xlat77;
            u_xlat77 = ((x_2655 * x_2657) + x_2659);
            let x_2662 : vec4<f32> = u_xlat12;
            let x_2663 : vec2<f32> = vec2<f32>(x_2662.x, x_2662.y);
            let x_2665 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2663.x, x_2663.y, x_2665);
            let x_2672 : vec3<f32> = txVec37;
            let x_2674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2672.xy, x_2672.z);
            u_xlat9.x = x_2674;
            let x_2677 : f32 = u_xlat16.w;
            let x_2679 : f32 = u_xlat9.x;
            let x_2681 : f32 = u_xlat77;
            u_xlat77 = ((x_2677 * x_2679) + x_2681);
            let x_2684 : vec4<f32> = u_xlat14;
            let x_2685 : vec2<f32> = vec2<f32>(x_2684.x, x_2684.y);
            let x_2687 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec38;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat9.x = x_2696;
            let x_2699 : f32 = u_xlat17.x;
            let x_2701 : f32 = u_xlat9.x;
            let x_2703 : f32 = u_xlat77;
            u_xlat77 = ((x_2699 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat14;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.z, x_2706.w);
            let x_2709 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec39;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat9.x = x_2718;
            let x_2721 : f32 = u_xlat17.y;
            let x_2723 : f32 = u_xlat9.x;
            let x_2725 : f32 = u_xlat77;
            u_xlat77 = ((x_2721 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat12;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.z, x_2728.w);
            let x_2731 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec40;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat9.x = x_2740;
            let x_2743 : f32 = u_xlat17.z;
            let x_2745 : f32 = u_xlat9.x;
            let x_2747 : f32 = u_xlat77;
            u_xlat77 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat11;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.x, x_2750.y);
            let x_2753 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec41;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat9.x = x_2762;
            let x_2765 : f32 = u_xlat17.w;
            let x_2767 : f32 = u_xlat9.x;
            let x_2769 : f32 = u_xlat77;
            u_xlat77 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec42;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat9.x = x_2784;
            let x_2786 : f32 = u_xlat76;
            let x_2788 : f32 = u_xlat9.x;
            let x_2790 : f32 = u_xlat77;
            u_xlat75 = ((x_2786 * x_2788) + x_2790);
          } else {
            let x_2793 : vec4<f32> = u_xlat8;
            let x_2796 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2799 : vec2<f32> = ((vec2<f32>(x_2793.x, x_2793.y) * vec2<f32>(x_2796.z, x_2796.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2800 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
            let x_2802 : vec4<f32> = u_xlat9;
            let x_2804 : vec2<f32> = floor(vec2<f32>(x_2802.x, x_2802.y));
            let x_2805 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2804.x, x_2804.y, x_2805.z, x_2805.w);
            let x_2807 : vec4<f32> = u_xlat8;
            let x_2810 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2813 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2807.x, x_2807.y) * vec2<f32>(x_2810.z, x_2810.w)) + -(vec2<f32>(x_2813.x, x_2813.y)));
            let x_2817 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2817.x, x_2817.x, x_2817.y, x_2817.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2820 : vec4<f32> = u_xlat10;
            let x_2822 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2820.x, x_2820.x, x_2820.z, x_2820.z) * vec4<f32>(x_2822.x, x_2822.x, x_2822.z, x_2822.z));
            let x_2825 : vec4<f32> = u_xlat11;
            let x_2827 : vec2<f32> = (vec2<f32>(x_2825.y, x_2825.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2828 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2828.x, x_2827.x, x_2828.z, x_2827.y);
            let x_2830 : vec4<f32> = u_xlat11;
            let x_2833 : vec2<f32> = u_xlat55;
            let x_2835 : vec2<f32> = ((vec2<f32>(x_2830.x, x_2830.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2833));
            let x_2836 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2835.x, x_2836.y, x_2835.y, x_2836.w);
            let x_2838 : vec2<f32> = u_xlat55;
            let x_2840 : vec2<f32> = (-(x_2838) + vec2<f32>(1.0f, 1.0f));
            let x_2841 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2841.z, x_2841.w);
            let x_2843 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2843, vec2<f32>(0.0f, 0.0f));
            let x_2845 : vec2<f32> = u_xlat57;
            let x_2847 : vec2<f32> = u_xlat57;
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2851 : vec2<f32> = ((-(x_2845) * x_2847) + vec2<f32>(x_2849.x, x_2849.y));
            let x_2852 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
            let x_2854 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2854, vec2<f32>(0.0f, 0.0f));
            let x_2857 : vec2<f32> = u_xlat57;
            let x_2859 : vec2<f32> = u_xlat57;
            let x_2861 : vec4<f32> = u_xlat10;
            let x_2863 : vec2<f32> = ((-(x_2857) * x_2859) + vec2<f32>(x_2861.y, x_2861.w));
            let x_2864 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2863.x, x_2864.y, x_2863.y);
            let x_2866 : vec4<f32> = u_xlat11;
            let x_2868 : vec2<f32> = (vec2<f32>(x_2866.x, x_2866.y) + vec2<f32>(2.0f, 2.0f));
            let x_2869 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2868.x, x_2868.y, x_2869.z, x_2869.w);
            let x_2871 : vec3<f32> = u_xlat33;
            let x_2873 : vec2<f32> = (vec2<f32>(x_2871.x, x_2871.z) + vec2<f32>(2.0f, 2.0f));
            let x_2874 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2874.x, x_2873.x, x_2874.z, x_2873.y);
            let x_2877 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2877 * 0.08163200318813323975f);
            let x_2880 : vec4<f32> = u_xlat10;
            let x_2882 : vec3<f32> = (vec3<f32>(x_2880.z, x_2880.x, x_2880.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2883 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2887 : vec2<f32> = (vec2<f32>(x_2885.x, x_2885.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2888 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2887.x, x_2887.y, x_2888.z, x_2888.w);
            let x_2891 : f32 = u_xlat14.y;
            u_xlat13.x = x_2891;
            let x_2893 : vec2<f32> = u_xlat55;
            let x_2896 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2897 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2897.x, x_2896.x, x_2897.z, x_2896.y);
            let x_2899 : vec2<f32> = u_xlat55;
            let x_2902 : vec2<f32> = ((vec2<f32>(x_2899.x, x_2899.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2903 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2902.x, x_2903.y, x_2902.y, x_2903.w);
            let x_2906 : f32 = u_xlat10.x;
            u_xlat11.y = x_2906;
            let x_2909 : f32 = u_xlat12.y;
            u_xlat11.w = x_2909;
            let x_2911 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2911 + x_2912);
            let x_2914 : vec2<f32> = u_xlat55;
            let x_2917 : vec2<f32> = ((vec2<f32>(x_2914.y, x_2914.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2917.x, x_2918.z, x_2917.y);
            let x_2920 : vec2<f32> = u_xlat55;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2920.y, x_2920.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2924 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2923.x, x_2924.y, x_2923.y, x_2924.w);
            let x_2927 : f32 = u_xlat10.y;
            u_xlat12.y = x_2927;
            let x_2929 : vec4<f32> = u_xlat12;
            let x_2930 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2929 + x_2930);
            let x_2932 : vec4<f32> = u_xlat11;
            let x_2933 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2932 / x_2933);
            let x_2935 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2935 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2937 : vec4<f32> = u_xlat12;
            let x_2938 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2937 / x_2938);
            let x_2940 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2940 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2942 : vec4<f32> = u_xlat11;
            let x_2945 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2942.w, x_2942.x, x_2942.y, x_2942.z) * vec4<f32>(x_2945.x, x_2945.x, x_2945.x, x_2945.x));
            let x_2948 : vec4<f32> = u_xlat12;
            let x_2951 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2948.x, x_2948.w, x_2948.y, x_2948.z) * vec4<f32>(x_2951.y, x_2951.y, x_2951.y, x_2951.y));
            let x_2954 : vec4<f32> = u_xlat11;
            let x_2955 : vec3<f32> = vec3<f32>(x_2954.y, x_2954.z, x_2954.w);
            let x_2956 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2955.x, x_2956.y, x_2955.y, x_2955.z);
            let x_2959 : f32 = u_xlat12.x;
            u_xlat14.y = x_2959;
            let x_2961 : vec4<f32> = u_xlat9;
            let x_2964 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y) * vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y)) + vec4<f32>(x_2967.x, x_2967.y, x_2967.z, x_2967.y));
            let x_2970 : vec4<f32> = u_xlat9;
            let x_2973 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2973.x, x_2973.y)) + vec2<f32>(x_2976.w, x_2976.y));
            let x_2980 : f32 = u_xlat14.y;
            u_xlat11.y = x_2980;
            let x_2983 : f32 = u_xlat12.z;
            u_xlat14.y = x_2983;
            let x_2985 : vec4<f32> = u_xlat9;
            let x_2988 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2991 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) * vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y)) + vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2991.y));
            let x_2994 : vec4<f32> = u_xlat9;
            let x_2997 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3002 : vec2<f32> = ((vec2<f32>(x_2994.x, x_2994.y) * vec2<f32>(x_2997.x, x_2997.y)) + vec2<f32>(x_3000.w, x_3000.y));
            let x_3003 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
            let x_3006 : f32 = u_xlat14.y;
            u_xlat11.z = x_3006;
            let x_3008 : vec4<f32> = u_xlat9;
            let x_3011 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.y) * vec4<f32>(x_3011.x, x_3011.y, x_3011.x, x_3011.y)) + vec4<f32>(x_3014.x, x_3014.y, x_3014.x, x_3014.z));
            let x_3018 : f32 = u_xlat12.w;
            u_xlat14.y = x_3018;
            let x_3020 : vec4<f32> = u_xlat9;
            let x_3023 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3026 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3020.x, x_3020.y, x_3020.x, x_3020.y) * vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y)) + vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3026.y));
            let x_3030 : vec4<f32> = u_xlat9;
            let x_3033 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3030.x, x_3030.y) * vec2<f32>(x_3033.x, x_3033.y)) + vec2<f32>(x_3036.w, x_3036.y));
            let x_3040 : f32 = u_xlat14.y;
            u_xlat11.w = x_3040;
            let x_3043 : vec4<f32> = u_xlat9;
            let x_3046 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.x, x_3049.w));
            let x_3052 : vec4<f32> = u_xlat14;
            let x_3053 : vec3<f32> = vec3<f32>(x_3052.x, x_3052.z, x_3052.w);
            let x_3054 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3053.x, x_3054.y, x_3053.y, x_3053.z);
            let x_3056 : vec4<f32> = u_xlat9;
            let x_3059 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y) * vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y)) + vec4<f32>(x_3062.x, x_3062.y, x_3062.z, x_3062.y));
            let x_3066 : vec4<f32> = u_xlat9;
            let x_3069 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3069.x, x_3069.y)) + vec2<f32>(x_3072.w, x_3072.y));
            let x_3076 : f32 = u_xlat11.x;
            u_xlat12.x = x_3076;
            let x_3078 : vec4<f32> = u_xlat9;
            let x_3081 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.x, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3090 : vec4<f32> = u_xlat10;
            let x_3092 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3090.x, x_3090.x, x_3090.x, x_3090.x) * x_3092);
            let x_3095 : vec4<f32> = u_xlat10;
            let x_3097 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3095.y, x_3095.y, x_3095.y, x_3095.y) * x_3097);
            let x_3100 : vec4<f32> = u_xlat10;
            let x_3102 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3100.z, x_3100.z, x_3100.z, x_3100.z) * x_3102);
            let x_3104 : vec4<f32> = u_xlat10;
            let x_3106 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3104.w, x_3104.w, x_3104.w, x_3104.w) * x_3106);
            let x_3109 : vec4<f32> = u_xlat15;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.x, x_3109.y);
            let x_3112 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec43;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat76 = x_3121;
            let x_3123 : vec4<f32> = u_xlat15;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec44;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat77 = x_3135;
            let x_3136 : f32 = u_xlat77;
            let x_3138 : f32 = u_xlat20.y;
            u_xlat77 = (x_3136 * x_3138);
            let x_3141 : f32 = u_xlat20.x;
            let x_3142 : f32 = u_xlat76;
            let x_3144 : f32 = u_xlat77;
            u_xlat76 = ((x_3141 * x_3142) + x_3144);
            let x_3147 : vec2<f32> = u_xlat55;
            let x_3149 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec45;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat77 = x_3158;
            let x_3160 : f32 = u_xlat20.z;
            let x_3161 : f32 = u_xlat77;
            let x_3163 : f32 = u_xlat76;
            u_xlat76 = ((x_3160 * x_3161) + x_3163);
            let x_3166 : vec4<f32> = u_xlat18;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.x, x_3166.y);
            let x_3169 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec46;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat77 = x_3178;
            let x_3180 : f32 = u_xlat20.w;
            let x_3181 : f32 = u_xlat77;
            let x_3183 : f32 = u_xlat76;
            u_xlat76 = ((x_3180 * x_3181) + x_3183);
            let x_3186 : vec4<f32> = u_xlat16;
            let x_3187 : vec2<f32> = vec2<f32>(x_3186.x, x_3186.y);
            let x_3189 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec47;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat77 = x_3198;
            let x_3200 : f32 = u_xlat21.x;
            let x_3201 : f32 = u_xlat77;
            let x_3203 : f32 = u_xlat76;
            u_xlat76 = ((x_3200 * x_3201) + x_3203);
            let x_3206 : vec4<f32> = u_xlat16;
            let x_3207 : vec2<f32> = vec2<f32>(x_3206.z, x_3206.w);
            let x_3209 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec48;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat77 = x_3218;
            let x_3220 : f32 = u_xlat21.y;
            let x_3221 : f32 = u_xlat77;
            let x_3223 : f32 = u_xlat76;
            u_xlat76 = ((x_3220 * x_3221) + x_3223);
            let x_3226 : vec4<f32> = u_xlat17;
            let x_3227 : vec2<f32> = vec2<f32>(x_3226.x, x_3226.y);
            let x_3229 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec49;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat77 = x_3238;
            let x_3240 : f32 = u_xlat21.z;
            let x_3241 : f32 = u_xlat77;
            let x_3243 : f32 = u_xlat76;
            u_xlat76 = ((x_3240 * x_3241) + x_3243);
            let x_3246 : vec4<f32> = u_xlat18;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.z, x_3246.w);
            let x_3249 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec50;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat77 = x_3258;
            let x_3260 : f32 = u_xlat21.w;
            let x_3261 : f32 = u_xlat77;
            let x_3263 : f32 = u_xlat76;
            u_xlat76 = ((x_3260 * x_3261) + x_3263);
            let x_3266 : vec4<f32> = u_xlat19;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.x, x_3266.y);
            let x_3269 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec51;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat77 = x_3278;
            let x_3280 : f32 = u_xlat22.x;
            let x_3281 : f32 = u_xlat77;
            let x_3283 : f32 = u_xlat76;
            u_xlat76 = ((x_3280 * x_3281) + x_3283);
            let x_3286 : vec4<f32> = u_xlat19;
            let x_3287 : vec2<f32> = vec2<f32>(x_3286.z, x_3286.w);
            let x_3289 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec52;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat77 = x_3298;
            let x_3300 : f32 = u_xlat22.y;
            let x_3301 : f32 = u_xlat77;
            let x_3303 : f32 = u_xlat76;
            u_xlat76 = ((x_3300 * x_3301) + x_3303);
            let x_3306 : vec2<f32> = u_xlat34;
            let x_3308 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec53;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat77 = x_3317;
            let x_3319 : f32 = u_xlat22.z;
            let x_3320 : f32 = u_xlat77;
            let x_3322 : f32 = u_xlat76;
            u_xlat76 = ((x_3319 * x_3320) + x_3322);
            let x_3325 : vec2<f32> = u_xlat63;
            let x_3327 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3325.x, x_3325.y, x_3327);
            let x_3334 : vec3<f32> = txVec54;
            let x_3336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3334.xy, x_3334.z);
            u_xlat77 = x_3336;
            let x_3338 : f32 = u_xlat22.w;
            let x_3339 : f32 = u_xlat77;
            let x_3341 : f32 = u_xlat76;
            u_xlat76 = ((x_3338 * x_3339) + x_3341);
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3345 : vec2<f32> = vec2<f32>(x_3344.x, x_3344.y);
            let x_3347 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
            let x_3354 : vec3<f32> = txVec55;
            let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
            u_xlat77 = x_3356;
            let x_3358 : f32 = u_xlat10.x;
            let x_3359 : f32 = u_xlat77;
            let x_3361 : f32 = u_xlat76;
            u_xlat76 = ((x_3358 * x_3359) + x_3361);
            let x_3364 : vec4<f32> = u_xlat14;
            let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
            let x_3374 : vec3<f32> = txVec56;
            let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
            u_xlat77 = x_3376;
            let x_3378 : f32 = u_xlat10.y;
            let x_3379 : f32 = u_xlat77;
            let x_3381 : f32 = u_xlat76;
            u_xlat76 = ((x_3378 * x_3379) + x_3381);
            let x_3384 : vec2<f32> = u_xlat58;
            let x_3386 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec57;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat77 = x_3395;
            let x_3397 : f32 = u_xlat10.z;
            let x_3398 : f32 = u_xlat77;
            let x_3400 : f32 = u_xlat76;
            u_xlat76 = ((x_3397 * x_3398) + x_3400);
            let x_3403 : vec4<f32> = u_xlat9;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.x, x_3403.y);
            let x_3406 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec58;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat77 = x_3415;
            let x_3417 : f32 = u_xlat10.w;
            let x_3418 : f32 = u_xlat77;
            let x_3420 : f32 = u_xlat76;
            u_xlat75 = ((x_3417 * x_3418) + x_3420);
          }
        }
      } else {
        let x_3424 : vec4<f32> = u_xlat8;
        let x_3425 : vec2<f32> = vec2<f32>(x_3424.x, x_3424.y);
        let x_3427 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
        let x_3434 : vec3<f32> = txVec59;
        let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
        u_xlat75 = x_3436;
      }
      let x_3437 : i32 = u_xlati73;
      let x_3439 : f32 = x_284.x_AdditionalShadowParams[x_3437].x;
      u_xlat76 = (1.0f + -(x_3439));
      let x_3442 : f32 = u_xlat75;
      let x_3443 : i32 = u_xlati73;
      let x_3445 : f32 = x_284.x_AdditionalShadowParams[x_3443].x;
      let x_3447 : f32 = u_xlat76;
      u_xlat75 = ((x_3442 * x_3445) + x_3447);
      let x_3450 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3450);
      let x_3453 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3453 >= 1.0f);
      let x_3456 : bool = u_xlatb76;
      let x_3458 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3456 | x_3458);
      let x_3460 : bool = u_xlatb76;
      let x_3461 : f32 = u_xlat75;
      u_xlat75 = select(x_3461, 1.0f, x_3460);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3464 : f32 = u_xlat75;
    u_xlat76 = (-(x_3464) + 1.0f);
    let x_3468 : f32 = u_xlat1.x;
    let x_3469 : f32 = u_xlat76;
    let x_3471 : f32 = u_xlat75;
    u_xlat75 = ((x_3468 * x_3469) + x_3471);
    let x_3473 : f32 = u_xlat74;
    let x_3474 : f32 = u_xlat75;
    u_xlat74 = (x_3473 * x_3474);
    let x_3476 : f32 = u_xlat74;
    let x_3478 : i32 = u_xlati73;
    let x_3480 : vec4<f32> = x_2032.x_AdditionalLightsColor[x_3478];
    let x_3482 : vec3<f32> = (vec3<f32>(x_3476, x_3476, x_3476) * vec3<f32>(x_3480.x, x_3480.y, x_3480.z));
    let x_3483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
    let x_3485 : vec4<f32> = u_xlat2;
    let x_3487 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3485.x, x_3485.y, x_3485.z), vec3<f32>(x_3487.x, x_3487.y, x_3487.z));
    let x_3490 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3490, 0.0f, 1.0f);
    let x_3492 : f32 = u_xlat73;
    let x_3494 : vec4<f32> = u_xlat8;
    let x_3496 : vec3<f32> = (vec3<f32>(x_3492, x_3492, x_3492) * vec3<f32>(x_3494.x, x_3494.y, x_3494.z));
    let x_3497 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3496.x, x_3496.y, x_3496.z, x_3497.w);
    let x_3499 : vec3<f32> = u_xlat3;
    let x_3500 : vec3<f32> = u_xlat23;
    let x_3503 : vec4<f32> = u_xlat7;
    let x_3505 : vec3<f32> = ((x_3499 * vec3<f32>(x_3500.x, x_3500.x, x_3500.x)) + vec3<f32>(x_3503.x, x_3503.y, x_3503.z));
    let x_3506 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
    let x_3508 : vec4<f32> = u_xlat7;
    let x_3510 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3508.x, x_3508.y, x_3508.z), vec3<f32>(x_3510.x, x_3510.y, x_3510.z));
    let x_3513 : f32 = u_xlat73;
    u_xlat73 = max(x_3513, 1.17549435e-38f);
    let x_3515 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3515);
    let x_3517 : f32 = u_xlat73;
    let x_3519 : vec4<f32> = u_xlat7;
    let x_3521 : vec3<f32> = (vec3<f32>(x_3517, x_3517, x_3517) * vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat2;
    let x_3526 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_3524.x, x_3524.y, x_3524.z), vec3<f32>(x_3526.x, x_3526.y, x_3526.z));
    let x_3529 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3529, 0.0f, 1.0f);
    let x_3531 : f32 = u_xlat73;
    u_xlat73 = log2(x_3531);
    let x_3533 : f32 = u_xlat69;
    let x_3534 : f32 = u_xlat73;
    u_xlat73 = (x_3533 * x_3534);
    let x_3536 : f32 = u_xlat73;
    u_xlat73 = exp2(x_3536);
    let x_3538 : f32 = u_xlat73;
    let x_3541 : vec4<f32> = x_41.x_SpecColor;
    let x_3543 : vec3<f32> = (vec3<f32>(x_3538, x_3538, x_3538) * vec3<f32>(x_3541.x, x_3541.y, x_3541.z));
    let x_3544 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3543.x, x_3543.y, x_3543.z, x_3544.w);
    let x_3546 : vec4<f32> = u_xlat7;
    let x_3548 : vec4<f32> = u_xlat8;
    let x_3550 : vec3<f32> = (vec3<f32>(x_3546.x, x_3546.y, x_3546.z) * vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
    let x_3551 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3550.x, x_3550.y, x_3550.z, x_3551.w);
    let x_3553 : vec4<f32> = u_xlat9;
    let x_3555 : vec4<f32> = u_xlat1;
    let x_3558 : vec4<f32> = u_xlat7;
    let x_3560 : vec3<f32> = ((vec3<f32>(x_3553.x, x_3553.y, x_3553.z) * vec3<f32>(x_3555.y, x_3555.z, x_3555.w)) + vec3<f32>(x_3558.x, x_3558.y, x_3558.z));
    let x_3561 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3560.x, x_3560.y, x_3560.z, x_3561.w);
    let x_3563 : vec4<f32> = u_xlat6;
    let x_3565 : vec4<f32> = u_xlat7;
    let x_3567 : vec3<f32> = (vec3<f32>(x_3563.x, x_3563.y, x_3563.z) + vec3<f32>(x_3565.x, x_3565.y, x_3565.z));
    let x_3568 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3568.w);

    continuing {
      let x_3570 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3570 + bitcast<u32>(1i));
    }
  }
  let x_3572 : vec4<f32> = u_xlat5;
  let x_3574 : vec4<f32> = u_xlat1;
  let x_3577 : vec4<f32> = u_xlat4;
  let x_3579 : vec3<f32> = ((vec3<f32>(x_3572.x, x_3572.y, x_3572.z) * vec3<f32>(x_3574.y, x_3574.z, x_3574.w)) + vec3<f32>(x_3577.x, x_3577.y, x_3577.z));
  let x_3580 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3580.w);
  let x_3584 : vec4<f32> = u_xlat6;
  let x_3586 : vec4<f32> = u_xlat1;
  let x_3588 : vec3<f32> = (vec3<f32>(x_3584.x, x_3584.y, x_3584.z) + vec3<f32>(x_3586.x, x_3586.y, x_3586.z));
  let x_3589 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3588.x, x_3588.y, x_3588.z, x_3589.w);
  let x_3592 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3592 == 1.0f);
  let x_3594 : bool = u_xlatb23;
  let x_3595 : bool = u_xlatb46;
  u_xlatb23 = (x_3594 | x_3595);
  let x_3597 : bool = u_xlatb23;
  if (x_3597) {
    let x_3602 : f32 = u_xlat0.x;
    x_3598 = x_3602;
  } else {
    x_3598 = 1.0f;
  }
  let x_3604 : f32 = x_3598;
  SV_Target0.w = x_3604;
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


