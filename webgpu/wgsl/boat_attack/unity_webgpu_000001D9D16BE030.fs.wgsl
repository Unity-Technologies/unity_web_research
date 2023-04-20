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
  /* @offset(160) */
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlatb70 : bool;

@group(1) @binding(4) var<uniform> x_307 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat73 : f32;

var<private> u_xlatu73 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1805 : AdditionalLights;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat76 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb6 : bool;

var<private> u_xlatu74 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_163 : f32;
  var x_175 : f32;
  var x_187 : f32;
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
  var x_1967 : f32;
  var x_1976 : f32;
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
  var x_3286 : f32;
  var x_3443 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb24 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb24;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_136 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat24;
  let x_151 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat24;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_162 : bool = u_xlatb1;
  if (x_162) {
    let x_167 : f32 = u_xlat24.x;
    x_163 = x_167;
  } else {
    let x_171 : f32 = x_45.unity_MatrixV[0i].z;
    x_163 = x_171;
  }
  let x_172 : f32 = x_163;
  u_xlat2.x = x_172;
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_180 : f32 = u_xlat24.y;
    x_175 = x_180;
  } else {
    let x_183 : f32 = x_45.unity_MatrixV[1i].z;
    x_175 = x_183;
  }
  let x_184 : f32 = x_175;
  u_xlat2.y = x_184;
  let x_186 : bool = u_xlatb1;
  if (x_186) {
    let x_191 : f32 = u_xlat24.z;
    x_187 = x_191;
  } else {
    let x_194 : f32 = x_45.unity_MatrixV[2i].z;
    x_187 = x_194;
  }
  let x_195 : f32 = x_187;
  u_xlat2.z = x_195;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_198, x_199);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_203);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec3<f32> = u_xlat2;
  let x_214 : vec3<f32> = u_xlat2;
  u_xlat71 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat71;
  u_xlat71 = max(x_216, 0.00006103515625f);
  let x_219 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_219);
  u_xlat1.w = 1.0f;
  let x_225 : vec4<f32> = x_94.unity_SHAr;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_225, x_226);
  let x_231 : vec4<f32> = x_94.unity_SHAg;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_231, x_232);
  let x_237 : vec4<f32> = x_94.unity_SHAb;
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_237, x_238);
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_242.y, x_242.z, x_242.z, x_242.x) * vec4<f32>(x_244.x, x_244.y, x_244.z, x_244.z));
  let x_250 : vec4<f32> = x_94.unity_SHBr;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_250, x_251);
  let x_256 : vec4<f32> = x_94.unity_SHBg;
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_256, x_257);
  let x_262 : vec4<f32> = x_94.unity_SHBb;
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_262, x_263);
  let x_268 : f32 = u_xlat1.y;
  let x_270 : f32 = u_xlat1.y;
  u_xlat70 = (x_268 * x_270);
  let x_273 : f32 = u_xlat1.x;
  let x_275 : f32 = u_xlat1.x;
  let x_277 : f32 = u_xlat70;
  u_xlat70 = ((x_273 * x_275) + -(x_277));
  let x_282 : vec4<f32> = x_94.unity_SHC;
  let x_284 : f32 = u_xlat70;
  let x_287 : vec4<f32> = u_xlat5;
  let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284, x_284, x_284)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat3;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_292 + vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_296, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_310 : f32 = x_307.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_310);
  let x_312 : bool = u_xlatb70;
  if (x_312) {
    let x_316 : f32 = x_307.x_MainLightShadowParams.y;
    u_xlatb70 = (x_316 == 1.0f);
    let x_318 : bool = u_xlatb70;
    if (x_318) {
      let x_322 : vec4<f32> = vs_TEXCOORD6;
      let x_325 : vec4<f32> = x_307.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y) + x_325);
      let x_329 : vec4<f32> = u_xlat4;
      let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
      let x_332 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_330.x, x_330.y, x_332);
      let x_344 : vec3<f32> = txVec0;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.x = x_346;
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec1;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_359.xy, x_359.z);
      u_xlat5.y = x_361;
      let x_363 : vec4<f32> = vs_TEXCOORD6;
      let x_366 : vec4<f32> = x_307.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec2;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.z = x_381;
      let x_384 : vec4<f32> = u_xlat4;
      let x_385 : vec2<f32> = vec2<f32>(x_384.z, x_384.w);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec3;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_394.xy, x_394.z);
      u_xlat5.w = x_396;
      let x_398 : vec4<f32> = u_xlat5;
      u_xlat70 = dot(x_398, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_405 : f32 = x_307.x_MainLightShadowParams.y;
      u_xlatb72 = (x_405 == 2.0f);
      let x_408 : bool = u_xlatb72;
      if (x_408) {
        let x_411 : vec4<f32> = vs_TEXCOORD6;
        let x_415 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_420 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_415.z, x_415.w)) + vec2<f32>(0.5f, 0.5f));
        let x_421 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec4<f32> = u_xlat4;
        let x_425 : vec2<f32> = floor(vec2<f32>(x_423.x, x_423.y));
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_430 : vec4<f32> = vs_TEXCOORD6;
        let x_433 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_436 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_433.z, x_433.w)) + -(vec2<f32>(x_436.x, x_436.y)));
        let x_440 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_440.x, x_440.x, x_440.y, x_440.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_445 : vec4<f32> = u_xlat5;
        let x_447 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_445.x, x_445.x, x_445.z, x_445.z) * vec4<f32>(x_447.x, x_447.x, x_447.z, x_447.z));
        let x_450 : vec4<f32> = u_xlat6;
        let x_454 : vec2<f32> = (vec2<f32>(x_450.y, x_450.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_454.x, x_455.y, x_454.y, x_455.w);
        let x_457 : vec4<f32> = u_xlat6;
        let x_460 : vec2<f32> = u_xlat50;
        let x_462 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.z) * vec2<f32>(0.5f, 0.5f)) + -(x_460));
        let x_463 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_466 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_466) + vec2<f32>(1.0f, 1.0f));
        let x_471 : vec2<f32> = u_xlat50;
        let x_473 : vec2<f32> = min(x_471, vec2<f32>(0.0f, 0.0f));
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_476 : vec4<f32> = u_xlat7;
        let x_479 : vec4<f32> = u_xlat7;
        let x_482 : vec2<f32> = u_xlat52;
        let x_483 : vec2<f32> = ((-(vec2<f32>(x_476.x, x_476.y)) * vec2<f32>(x_479.x, x_479.y)) + x_482);
        let x_484 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_486, vec2<f32>(0.0f, 0.0f));
        let x_488 : vec2<f32> = u_xlat50;
        let x_490 : vec2<f32> = u_xlat50;
        let x_492 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_488) * x_490) + vec2<f32>(x_492.y, x_492.w));
        let x_495 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) + vec2<f32>(1.0f, 1.0f));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_500 + vec2<f32>(1.0f, 1.0f));
        let x_503 : vec4<f32> = u_xlat6;
        let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec2<f32> = u_xlat52;
        let x_511 : vec2<f32> = (x_510 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec2<f32> = u_xlat50;
        let x_521 : vec2<f32> = (x_520 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_524.y, x_524.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_528 : f32 = u_xlat7.x;
        u_xlat8.z = x_528;
        let x_531 : f32 = u_xlat50.x;
        u_xlat8.w = x_531;
        let x_534 : f32 = u_xlat9.x;
        u_xlat6.z = x_534;
        let x_537 : f32 = u_xlat5.x;
        u_xlat6.w = x_537;
        let x_540 : vec4<f32> = u_xlat6;
        let x_542 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_540.z, x_540.w, x_540.x, x_540.z) + vec4<f32>(x_542.z, x_542.w, x_542.x, x_542.z));
        let x_546 : f32 = u_xlat8.y;
        u_xlat7.z = x_546;
        let x_549 : f32 = u_xlat50.y;
        u_xlat7.w = x_549;
        let x_552 : f32 = u_xlat6.y;
        u_xlat9.z = x_552;
        let x_555 : f32 = u_xlat5.z;
        u_xlat9.w = x_555;
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec4<f32> = u_xlat9;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.z, x_557.y, x_557.w) + vec3<f32>(x_559.z, x_559.y, x_559.w));
        let x_562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat6;
        let x_566 : vec4<f32> = u_xlat10;
        let x_568 : vec3<f32> = (vec3<f32>(x_564.x, x_564.z, x_564.w) / vec3<f32>(x_566.z, x_566.w, x_566.y));
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat6;
        let x_577 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat9;
        let x_582 : vec4<f32> = u_xlat5;
        let x_584 : vec3<f32> = (vec3<f32>(x_580.z, x_580.y, x_580.w) / vec3<f32>(x_582.x, x_582.y, x_582.z));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat7;
        let x_589 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat6;
        let x_595 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_597 : vec3<f32> = (vec3<f32>(x_592.y, x_592.x, x_592.z) * vec3<f32>(x_595.x, x_595.x, x_595.x));
        let x_598 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_605 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_603.y, x_603.y, x_603.y));
        let x_606 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
        let x_609 : f32 = u_xlat7.x;
        u_xlat6.w = x_609;
        let x_611 : vec4<f32> = u_xlat4;
        let x_614 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) * vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y)) + vec4<f32>(x_617.y, x_617.w, x_617.x, x_617.w));
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_620.x, x_620.y) * vec2<f32>(x_623.x, x_623.y)) + vec2<f32>(x_626.z, x_626.w));
        let x_630 : f32 = u_xlat6.y;
        u_xlat7.w = x_630;
        let x_632 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = vec2<f32>(x_632.y, x_632.z);
        let x_634 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_634.x, x_633.x, x_634.z, x_633.y);
        let x_636 : vec4<f32> = u_xlat4;
        let x_639 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y) * vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y)) + vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.y));
        let x_645 : vec4<f32> = u_xlat4;
        let x_648 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_651 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y) * vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y)) + vec4<f32>(x_651.w, x_651.y, x_651.w, x_651.z));
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.w, x_660.z, x_660.w));
        let x_664 : vec4<f32> = u_xlat5;
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_664.x, x_664.x, x_664.x, x_664.y) * vec4<f32>(x_666.z, x_666.w, x_666.y, x_666.z));
        let x_670 : vec4<f32> = u_xlat5;
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_670.y, x_670.y, x_670.z, x_670.z) * x_672);
        let x_676 : f32 = u_xlat5.z;
        let x_678 : f32 = u_xlat10.y;
        u_xlat72 = (x_676 * x_678);
        let x_681 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec4;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat4.x = x_693;
        let x_696 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = vec2<f32>(x_696.z, x_696.w);
        let x_699 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_697.x, x_697.y, x_699);
        let x_707 : vec3<f32> = txVec5;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat27 = x_709;
        let x_710 : f32 = u_xlat27;
        let x_712 : f32 = u_xlat11.y;
        u_xlat27 = (x_710 * x_712);
        let x_715 : f32 = u_xlat11.x;
        let x_717 : f32 = u_xlat4.x;
        let x_719 : f32 = u_xlat27;
        u_xlat4.x = ((x_715 * x_717) + x_719);
        let x_723 : vec2<f32> = u_xlat50;
        let x_725 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec6;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat27 = x_734;
        let x_736 : f32 = u_xlat11.z;
        let x_737 : f32 = u_xlat27;
        let x_740 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_736 * x_737) + x_740);
        let x_744 : vec4<f32> = u_xlat7;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec7;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat27 = x_756;
        let x_758 : f32 = u_xlat11.w;
        let x_759 : f32 = u_xlat27;
        let x_762 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_758 * x_759) + x_762);
        let x_766 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec8;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_776.xy, x_776.z);
        u_xlat27 = x_778;
        let x_780 : f32 = u_xlat12.x;
        let x_781 : f32 = u_xlat27;
        let x_784 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_780 * x_781) + x_784);
        let x_788 : vec4<f32> = u_xlat9;
        let x_789 : vec2<f32> = vec2<f32>(x_788.z, x_788.w);
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec9;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat27 = x_800;
        let x_802 : f32 = u_xlat12.y;
        let x_803 : f32 = u_xlat27;
        let x_806 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_802 * x_803) + x_806);
        let x_810 : vec4<f32> = u_xlat7;
        let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
        let x_813 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec10;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat27 = x_822;
        let x_824 : f32 = u_xlat12.z;
        let x_825 : f32 = u_xlat27;
        let x_828 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_824 * x_825) + x_828);
        let x_832 : vec4<f32> = u_xlat6;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec11;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat27 = x_844;
        let x_846 : f32 = u_xlat12.w;
        let x_847 : f32 = u_xlat27;
        let x_850 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_846 * x_847) + x_850);
        let x_854 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = vec2<f32>(x_854.z, x_854.w);
        let x_857 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec12;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat27 = x_866;
        let x_867 : f32 = u_xlat72;
        let x_868 : f32 = u_xlat27;
        let x_871 : f32 = u_xlat4.x;
        u_xlat70 = ((x_867 * x_868) + x_871);
      } else {
        let x_874 : vec4<f32> = vs_TEXCOORD6;
        let x_877 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_880 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.y) * vec2<f32>(x_877.z, x_877.w)) + vec2<f32>(0.5f, 0.5f));
        let x_881 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec4<f32> = u_xlat4;
        let x_885 : vec2<f32> = floor(vec2<f32>(x_883.x, x_883.y));
        let x_886 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = vs_TEXCOORD6;
        let x_891 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + -(vec2<f32>(x_894.x, x_894.y)));
        let x_898 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_898.x, x_898.x, x_898.y, x_898.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_901 : vec4<f32> = u_xlat5;
        let x_903 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z) * vec4<f32>(x_903.x, x_903.x, x_903.z, x_903.z));
        let x_906 : vec4<f32> = u_xlat6;
        let x_910 : vec2<f32> = (vec2<f32>(x_906.y, x_906.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_910.x, x_911.z, x_910.y);
        let x_913 : vec4<f32> = u_xlat6;
        let x_916 : vec2<f32> = u_xlat50;
        let x_918 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.z) * vec2<f32>(0.5f, 0.5f)) + -(x_916));
        let x_919 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_918.x, x_919.y, x_918.y, x_919.w);
        let x_921 : vec2<f32> = u_xlat50;
        let x_923 : vec2<f32> = (-(x_921) + vec2<f32>(1.0f, 1.0f));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_926, vec2<f32>(0.0f, 0.0f));
        let x_928 : vec2<f32> = u_xlat52;
        let x_930 : vec2<f32> = u_xlat52;
        let x_932 : vec4<f32> = u_xlat6;
        let x_934 : vec2<f32> = ((-(x_928) * x_930) + vec2<f32>(x_932.x, x_932.y));
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_937, vec2<f32>(0.0f, 0.0f));
        let x_940 : vec2<f32> = u_xlat52;
        let x_942 : vec2<f32> = u_xlat52;
        let x_944 : vec4<f32> = u_xlat5;
        let x_946 : vec2<f32> = ((-(x_940) * x_942) + vec2<f32>(x_944.y, x_944.w));
        let x_947 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_946.x, x_947.y, x_946.y);
        let x_949 : vec4<f32> = u_xlat6;
        let x_952 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) + vec2<f32>(2.0f, 2.0f));
        let x_953 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec3<f32> = u_xlat28;
        let x_957 : vec2<f32> = (vec2<f32>(x_955.x, x_955.z) + vec2<f32>(2.0f, 2.0f));
        let x_958 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_958.x, x_957.x, x_958.z, x_957.y);
        let x_961 : f32 = u_xlat5.y;
        u_xlat8.z = (x_961 * 0.08163200318813323975f);
        let x_965 : vec4<f32> = u_xlat5;
        let x_968 : vec3<f32> = (vec3<f32>(x_965.z, x_965.x, x_965.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_969 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat6;
        let x_974 : vec2<f32> = (vec2<f32>(x_971.x, x_971.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_975 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_978 : f32 = u_xlat9.y;
        u_xlat8.x = x_978;
        let x_980 : vec2<f32> = u_xlat50;
        let x_987 : vec2<f32> = ((vec2<f32>(x_980.x, x_980.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_987.x, x_988.z, x_987.y);
        let x_990 : vec2<f32> = u_xlat50;
        let x_994 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_995 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_994.x, x_995.y, x_994.y, x_995.w);
        let x_998 : f32 = u_xlat5.x;
        u_xlat6.y = x_998;
        let x_1001 : f32 = u_xlat7.y;
        u_xlat6.w = x_1001;
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1003 + x_1004);
        let x_1006 : vec2<f32> = u_xlat50;
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1006.y, x_1006.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1009.x, x_1010.z, x_1009.y);
        let x_1012 : vec2<f32> = u_xlat50;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1012.y, x_1012.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1016.y, x_1015.y, x_1016.w);
        let x_1019 : f32 = u_xlat5.y;
        u_xlat7.y = x_1019;
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1021 + x_1022);
        let x_1024 : vec4<f32> = u_xlat6;
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1024 / x_1025);
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1027 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1033 / x_1034);
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1036 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1038.w, x_1038.x, x_1038.y, x_1038.z) * vec4<f32>(x_1041.x, x_1041.x, x_1041.x, x_1041.x));
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1047 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1044.x, x_1044.w, x_1044.y, x_1044.z) * vec4<f32>(x_1047.y, x_1047.y, x_1047.y, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1051 : vec3<f32> = vec3<f32>(x_1050.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1052.y, x_1051.y, x_1051.z);
        let x_1055 : f32 = u_xlat7.x;
        u_xlat9.y = x_1055;
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) * vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y)) + vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat4;
        let x_1069 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1066.x, x_1066.y) * vec2<f32>(x_1069.x, x_1069.y)) + vec2<f32>(x_1072.w, x_1072.y));
        let x_1076 : f32 = u_xlat9.y;
        u_xlat6.y = x_1076;
        let x_1079 : f32 = u_xlat7.z;
        u_xlat9.y = x_1079;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1093 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.w, x_1096.y));
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1102 : f32 = u_xlat9.y;
        u_xlat6.z = x_1102;
        let x_1105 : vec4<f32> = u_xlat4;
        let x_1108 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y) * vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y)) + vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.z));
        let x_1115 : f32 = u_xlat7.w;
        u_xlat9.y = x_1115;
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1128 : vec4<f32> = u_xlat4;
        let x_1131 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.w, x_1134.y));
        let x_1137 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1136.x, x_1136.y, x_1137.z);
        let x_1140 : f32 = u_xlat9.y;
        u_xlat6.w = x_1140;
        let x_1143 : vec4<f32> = u_xlat4;
        let x_1146 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.x, x_1149.w));
        let x_1152 : vec4<f32> = u_xlat9;
        let x_1153 : vec3<f32> = vec3<f32>(x_1152.x, x_1152.z, x_1152.w);
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1153.z);
        let x_1156 : vec4<f32> = u_xlat4;
        let x_1159 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y) * vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y)) + vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1162.y));
        let x_1166 : vec4<f32> = u_xlat4;
        let x_1169 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.w, x_1172.y));
        let x_1176 : f32 = u_xlat6.x;
        u_xlat7.x = x_1176;
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.x, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1190 : vec4<f32> = u_xlat5;
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1190.x, x_1190.x, x_1190.x, x_1190.x) * x_1192);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1195.y, x_1195.y, x_1195.y, x_1195.y) * x_1197);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1200.z, x_1200.z, x_1200.z, x_1200.z) * x_1202);
        let x_1204 : vec4<f32> = u_xlat5;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1204.w, x_1204.w, x_1204.w, x_1204.w) * x_1206);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.x, x_1209.y);
        let x_1212 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec13;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1219.xy, x_1219.z);
        u_xlat72 = x_1221;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.z, x_1223.w);
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec14;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
        u_xlat6.x = x_1235;
        let x_1238 : f32 = u_xlat6.x;
        let x_1240 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1238 * x_1240);
        let x_1244 : f32 = u_xlat15.x;
        let x_1245 : f32 = u_xlat72;
        let x_1248 : f32 = u_xlat6.x;
        u_xlat72 = ((x_1244 * x_1245) + x_1248);
        let x_1251 : vec2<f32> = u_xlat50;
        let x_1253 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1251.x, x_1251.y, x_1253);
        let x_1260 : vec3<f32> = txVec15;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1260.xy, x_1260.z);
        u_xlat50.x = x_1262;
        let x_1265 : f32 = u_xlat15.z;
        let x_1267 : f32 = u_xlat50.x;
        let x_1269 : f32 = u_xlat72;
        u_xlat72 = ((x_1265 * x_1267) + x_1269);
        let x_1272 : vec4<f32> = u_xlat13;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
        let x_1275 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec16;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1282.xy, x_1282.z);
        u_xlat50.x = x_1284;
        let x_1287 : f32 = u_xlat15.w;
        let x_1289 : f32 = u_xlat50.x;
        let x_1291 : f32 = u_xlat72;
        u_xlat72 = ((x_1287 * x_1289) + x_1291);
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.x, x_1294.y);
        let x_1297 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec17;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat50.x = x_1306;
        let x_1309 : f32 = u_xlat16.x;
        let x_1311 : f32 = u_xlat50.x;
        let x_1313 : f32 = u_xlat72;
        u_xlat72 = ((x_1309 * x_1311) + x_1313);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1317 : vec2<f32> = vec2<f32>(x_1316.z, x_1316.w);
        let x_1319 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec18;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat50.x = x_1328;
        let x_1331 : f32 = u_xlat16.y;
        let x_1333 : f32 = u_xlat50.x;
        let x_1335 : f32 = u_xlat72;
        u_xlat72 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat12;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec19;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat50.x = x_1350;
        let x_1353 : f32 = u_xlat16.z;
        let x_1355 : f32 = u_xlat50.x;
        let x_1357 : f32 = u_xlat72;
        u_xlat72 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat13;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec20;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat50.x = x_1372;
        let x_1375 : f32 = u_xlat16.w;
        let x_1377 : f32 = u_xlat50.x;
        let x_1379 : f32 = u_xlat72;
        u_xlat72 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat14;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec21;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat50.x = x_1394;
        let x_1397 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat50.x;
        let x_1401 : f32 = u_xlat72;
        u_xlat72 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat14;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec22;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat50.x = x_1416;
        let x_1419 : f32 = u_xlat17.y;
        let x_1421 : f32 = u_xlat50.x;
        let x_1423 : f32 = u_xlat72;
        u_xlat72 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec3<f32> = u_xlat29;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec23;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat50.x = x_1438;
        let x_1441 : f32 = u_xlat17.z;
        let x_1443 : f32 = u_xlat50.x;
        let x_1445 : f32 = u_xlat72;
        u_xlat72 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec2<f32> = u_xlat58;
        let x_1450 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec24;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat50.x = x_1459;
        let x_1462 : f32 = u_xlat17.w;
        let x_1464 : f32 = u_xlat50.x;
        let x_1466 : f32 = u_xlat72;
        u_xlat72 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat9;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec25;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat50.x = x_1481;
        let x_1484 : f32 = u_xlat5.x;
        let x_1486 : f32 = u_xlat50.x;
        let x_1488 : f32 = u_xlat72;
        u_xlat72 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.z, x_1491.w);
        let x_1494 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec26;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat50.x = x_1503;
        let x_1506 : f32 = u_xlat5.y;
        let x_1508 : f32 = u_xlat50.x;
        let x_1510 : f32 = u_xlat72;
        u_xlat72 = ((x_1506 * x_1508) + x_1510);
        let x_1513 : vec2<f32> = u_xlat53;
        let x_1515 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec27;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat50.x = x_1524;
        let x_1527 : f32 = u_xlat5.z;
        let x_1529 : f32 = u_xlat50.x;
        let x_1531 : f32 = u_xlat72;
        u_xlat72 = ((x_1527 * x_1529) + x_1531);
        let x_1534 : vec4<f32> = u_xlat4;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.x, x_1534.y);
        let x_1537 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec28;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat4.x = x_1546;
        let x_1549 : f32 = u_xlat5.w;
        let x_1551 : f32 = u_xlat4.x;
        let x_1553 : f32 = u_xlat72;
        u_xlat70 = ((x_1549 * x_1551) + x_1553);
      }
    }
  } else {
    let x_1557 : vec4<f32> = vs_TEXCOORD6;
    let x_1558 : vec2<f32> = vec2<f32>(x_1557.x, x_1557.y);
    let x_1560 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
    let x_1567 : vec3<f32> = txVec29;
    let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
    u_xlat70 = x_1569;
  }
  let x_1571 : f32 = x_307.x_MainLightShadowParams.x;
  u_xlat72 = (-(x_1571) + 1.0f);
  let x_1574 : f32 = u_xlat70;
  let x_1576 : f32 = x_307.x_MainLightShadowParams.x;
  let x_1578 : f32 = u_xlat72;
  u_xlat70 = ((x_1574 * x_1576) + x_1578);
  let x_1581 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (0.0f >= x_1581);
  let x_1585 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1585 >= 1.0f);
  let x_1587 : bool = u_xlatb72;
  let x_1588 : bool = u_xlatb4;
  u_xlatb72 = (x_1587 | x_1588);
  let x_1590 : bool = u_xlatb72;
  let x_1591 : f32 = u_xlat70;
  u_xlat70 = select(x_1591, 1.0f, x_1590);
  let x_1593 : vec3<f32> = vs_TEXCOORD1;
  let x_1595 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1597 : vec3<f32> = (x_1593 + -(x_1595));
  let x_1598 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
  let x_1600 : vec4<f32> = u_xlat4;
  let x_1602 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(vec3<f32>(x_1600.x, x_1600.y, x_1600.z), vec3<f32>(x_1602.x, x_1602.y, x_1602.z));
  let x_1605 : f32 = u_xlat72;
  let x_1607 : f32 = x_307.x_MainLightShadowParams.z;
  let x_1610 : f32 = x_307.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1605 * x_1607) + x_1610);
  let x_1614 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1614, 0.0f, 1.0f);
  let x_1617 : f32 = u_xlat70;
  u_xlat27 = (-(x_1617) + 1.0f);
  let x_1621 : f32 = u_xlat4.x;
  let x_1622 : f32 = u_xlat27;
  let x_1624 : f32 = u_xlat70;
  u_xlat70 = ((x_1621 * x_1622) + x_1624);
  let x_1626 : f32 = u_xlat70;
  let x_1628 : f32 = x_94.unity_LightData.z;
  u_xlat70 = (x_1626 * x_1628);
  let x_1630 : f32 = u_xlat70;
  let x_1633 : vec4<f32> = x_45.x_MainLightColor;
  let x_1635 : vec3<f32> = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1638 : vec4<f32> = u_xlat1;
  let x_1641 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat70 = dot(vec3<f32>(x_1638.x, x_1638.y, x_1638.z), vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1644, 0.0f, 1.0f);
  let x_1646 : f32 = u_xlat70;
  let x_1648 : vec4<f32> = u_xlat4;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1646, x_1646, x_1646) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1651 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1654 : f32 = u_xlat0.x;
  u_xlat70 = ((x_1654 * 10.0f) + 1.0f);
  let x_1658 : f32 = u_xlat70;
  u_xlat70 = exp2(x_1658);
  let x_1660 : vec3<f32> = u_xlat2;
  let x_1661 : f32 = u_xlat71;
  let x_1665 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1667 : vec3<f32> = ((x_1660 * vec3<f32>(x_1661, x_1661, x_1661)) + vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1671 : vec4<f32> = u_xlat6;
  let x_1673 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1671.x, x_1671.y, x_1671.z), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1676 : f32 = u_xlat73;
  u_xlat73 = max(x_1676, 1.17549435e-38f);
  let x_1679 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1679);
  let x_1681 : f32 = u_xlat73;
  let x_1683 : vec4<f32> = u_xlat6;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1681, x_1681, x_1681) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat1;
  let x_1690 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1688.x, x_1688.y, x_1688.z), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1693, 0.0f, 1.0f);
  let x_1695 : f32 = u_xlat73;
  u_xlat73 = log2(x_1695);
  let x_1697 : f32 = u_xlat70;
  let x_1698 : f32 = u_xlat73;
  u_xlat73 = (x_1697 * x_1698);
  let x_1700 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1700);
  let x_1702 : f32 = u_xlat73;
  let x_1705 : vec4<f32> = x_57.x_SpecColor;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1702, x_1702, x_1702) * vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
  let x_1708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat4;
  let x_1712 : vec4<f32> = u_xlat6;
  let x_1714 : vec3<f32> = (vec3<f32>(x_1710.x, x_1710.y, x_1710.z) * vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1717 : vec4<f32> = u_xlat5;
  let x_1719 : vec4<f32> = u_xlat0;
  let x_1722 : vec4<f32> = u_xlat4;
  let x_1724 : vec3<f32> = ((vec3<f32>(x_1717.x, x_1717.y, x_1717.z) * vec3<f32>(x_1719.y, x_1719.z, x_1719.w)) + vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
  let x_1725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
  let x_1729 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1731 : f32 = x_94.unity_LightData.y;
  u_xlat73 = min(x_1729, x_1731);
  let x_1735 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1735));
  let x_1738 : f32 = u_xlat72;
  let x_1741 : f32 = x_307.x_AdditionalShadowFadeParams.x;
  let x_1744 : f32 = x_307.x_AdditionalShadowFadeParams.y;
  u_xlat72 = ((x_1738 * x_1741) + x_1744);
  let x_1746 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1746, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1758 : u32 = u_xlatu_loop_1;
    let x_1759 : u32 = u_xlatu73;
    if ((x_1758 < x_1759)) {
    } else {
      break;
    }
    let x_1762 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1762 >> 2u);
    let x_1766 : u32 = u_xlatu_loop_1;
    u_xlati29 = bitcast<i32>((x_1766 & 3u));
    let x_1769 : u32 = u_xlatu6;
    let x_1772 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1769)];
    let x_1782 : i32 = u_xlati29;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1787 : vec4<u32> = indexable[x_1782];
    u_xlat6.x = dot(x_1772, bitcast<vec4<f32>>(x_1787));
    let x_1793 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1793);
    let x_1795 : vec3<f32> = vs_TEXCOORD1;
    let x_1806 : i32 = u_xlati6;
    let x_1808 : vec4<f32> = x_1805.x_AdditionalLightsPosition[x_1806];
    let x_1811 : i32 = u_xlati6;
    let x_1813 : vec4<f32> = x_1805.x_AdditionalLightsPosition[x_1811];
    u_xlat29 = ((-(x_1795) * vec3<f32>(x_1808.w, x_1808.w, x_1808.w)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
    let x_1816 : vec3<f32> = u_xlat29;
    let x_1817 : vec3<f32> = u_xlat29;
    u_xlat7.x = dot(x_1816, x_1817);
    let x_1821 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1821, 0.00006103515625f);
    let x_1826 : f32 = u_xlat7.x;
    u_xlat30.x = inverseSqrt(x_1826);
    let x_1829 : vec3<f32> = u_xlat29;
    let x_1830 : vec3<f32> = u_xlat30;
    u_xlat29 = (x_1829 * vec3<f32>(x_1830.x, x_1830.x, x_1830.x));
    let x_1834 : f32 = u_xlat7.x;
    u_xlat30.x = (1.0f / x_1834);
    let x_1838 : f32 = u_xlat7.x;
    let x_1839 : i32 = u_xlati6;
    let x_1841 : f32 = x_1805.x_AdditionalLightsAttenuation[x_1839].x;
    u_xlat7.x = (x_1838 * x_1841);
    let x_1845 : f32 = u_xlat7.x;
    let x_1848 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1845) * x_1848) + 1.0f);
    let x_1853 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1853, 0.0f);
    let x_1857 : f32 = u_xlat7.x;
    let x_1859 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1857 * x_1859);
    let x_1863 : f32 = u_xlat7.x;
    let x_1865 : f32 = u_xlat30.x;
    u_xlat7.x = (x_1863 * x_1865);
    let x_1868 : i32 = u_xlati6;
    let x_1870 : vec4<f32> = x_1805.x_AdditionalLightsSpotDir[x_1868];
    let x_1872 : vec3<f32> = u_xlat29;
    u_xlat30.x = dot(vec3<f32>(x_1870.x, x_1870.y, x_1870.z), x_1872);
    let x_1876 : f32 = u_xlat30.x;
    let x_1877 : i32 = u_xlati6;
    let x_1879 : f32 = x_1805.x_AdditionalLightsAttenuation[x_1877].z;
    let x_1881 : i32 = u_xlati6;
    let x_1883 : f32 = x_1805.x_AdditionalLightsAttenuation[x_1881].w;
    u_xlat30.x = ((x_1876 * x_1879) + x_1883);
    let x_1887 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_1887, 0.0f, 1.0f);
    let x_1891 : f32 = u_xlat30.x;
    let x_1893 : f32 = u_xlat30.x;
    u_xlat30.x = (x_1891 * x_1893);
    let x_1897 : f32 = u_xlat30.x;
    let x_1899 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1897 * x_1899);
    let x_1904 : i32 = u_xlati6;
    let x_1906 : f32 = x_307.x_AdditionalShadowParams[x_1904].w;
    u_xlati30 = i32(x_1906);
    let x_1909 : i32 = u_xlati30;
    u_xlatb53 = (x_1909 >= 0i);
    let x_1911 : bool = u_xlatb53;
    if (x_1911) {
      let x_1915 : i32 = u_xlati6;
      let x_1917 : f32 = x_307.x_AdditionalShadowParams[x_1915].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1917, x_1917, x_1917, x_1917))));
      let x_1922 : bool = u_xlatb53;
      if (x_1922) {
        let x_1927 : vec3<f32> = u_xlat29;
        let x_1930 : vec3<f32> = u_xlat29;
        let x_1933 : vec4<bool> = (abs(vec4<f32>(x_1927.z, x_1927.z, x_1927.y, x_1927.z)) >= abs(vec4<f32>(x_1930.x, x_1930.y, x_1930.x, x_1930.x)));
        let x_1935 : vec3<bool> = vec3<bool>(x_1933.x, x_1933.y, x_1933.z);
        let x_1936 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
        let x_1939 : bool = u_xlatb8.y;
        let x_1941 : bool = u_xlatb8.x;
        u_xlatb53 = (x_1939 & x_1941);
        let x_1943 : vec3<f32> = u_xlat29;
        let x_1946 : vec4<bool> = (-(vec4<f32>(x_1943.z, x_1943.y, x_1943.z, x_1943.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1947 : vec3<bool> = vec3<bool>(x_1946.x, x_1946.y, x_1946.w);
        let x_1948 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1947.x, x_1947.y, x_1948.z, x_1947.z);
        let x_1951 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1951);
        let x_1957 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1957);
        let x_1963 : bool = u_xlatb8.w;
        u_xlat76 = select(0.0f, 1.0f, x_1963);
        let x_1966 : bool = u_xlatb8.z;
        if (x_1966) {
          let x_1971 : f32 = u_xlat8.y;
          x_1967 = x_1971;
        } else {
          let x_1973 : f32 = u_xlat76;
          x_1967 = x_1973;
        }
        let x_1974 : f32 = x_1967;
        u_xlat76 = x_1974;
        let x_1975 : bool = u_xlatb53;
        if (x_1975) {
          let x_1980 : f32 = u_xlat8.x;
          x_1976 = x_1980;
        } else {
          let x_1982 : f32 = u_xlat76;
          x_1976 = x_1982;
        }
        let x_1983 : f32 = x_1976;
        u_xlat53.x = x_1983;
        let x_1985 : i32 = u_xlati6;
        let x_1987 : f32 = x_307.x_AdditionalShadowParams[x_1985].w;
        u_xlat76 = trunc(x_1987);
        let x_1990 : f32 = u_xlat53.x;
        let x_1991 : f32 = u_xlat76;
        u_xlat53.x = (x_1990 + x_1991);
        let x_1995 : f32 = u_xlat53.x;
        u_xlati30 = i32(x_1995);
      }
      let x_1997 : i32 = u_xlati30;
      u_xlati30 = (x_1997 << bitcast<u32>(2i));
      let x_1999 : vec3<f32> = vs_TEXCOORD1;
      let x_2002 : i32 = u_xlati30;
      let x_2005 : i32 = u_xlati30;
      let x_2009 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2002 + 1i) / 4i)][((x_2005 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1999.y, x_1999.y, x_1999.y, x_1999.y) * x_2009);
      let x_2011 : i32 = u_xlati30;
      let x_2013 : i32 = u_xlati30;
      let x_2016 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[(x_2011 / 4i)][(x_2013 % 4i)];
      let x_2017 : vec3<f32> = vs_TEXCOORD1;
      let x_2020 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2016 * vec4<f32>(x_2017.x, x_2017.x, x_2017.x, x_2017.x)) + x_2020);
      let x_2022 : i32 = u_xlati30;
      let x_2025 : i32 = u_xlati30;
      let x_2029 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2022 + 2i) / 4i)][((x_2025 + 2i) % 4i)];
      let x_2030 : vec3<f32> = vs_TEXCOORD1;
      let x_2033 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2029 * vec4<f32>(x_2030.z, x_2030.z, x_2030.z, x_2030.z)) + x_2033);
      let x_2035 : vec4<f32> = u_xlat8;
      let x_2036 : i32 = u_xlati30;
      let x_2039 : i32 = u_xlati30;
      let x_2043 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2036 + 3i) / 4i)][((x_2039 + 3i) % 4i)];
      u_xlat8 = (x_2035 + x_2043);
      let x_2045 : vec4<f32> = u_xlat8;
      let x_2047 : vec4<f32> = u_xlat8;
      u_xlat30 = (vec3<f32>(x_2045.x, x_2045.y, x_2045.z) / vec3<f32>(x_2047.w, x_2047.w, x_2047.w));
      let x_2050 : i32 = u_xlati6;
      let x_2052 : f32 = x_307.x_AdditionalShadowParams[x_2050].y;
      u_xlatb8.x = (0.0f < x_2052);
      let x_2056 : bool = u_xlatb8.x;
      if (x_2056) {
        let x_2059 : i32 = u_xlati6;
        let x_2061 : f32 = x_307.x_AdditionalShadowParams[x_2059].y;
        u_xlatb8.x = (1.0f == x_2061);
        let x_2065 : bool = u_xlatb8.x;
        if (x_2065) {
          let x_2068 : vec3<f32> = u_xlat30;
          let x_2072 : vec4<f32> = x_307.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2068.x, x_2068.y, x_2068.x, x_2068.y) + x_2072);
          let x_2075 : vec4<f32> = u_xlat8;
          let x_2076 : vec2<f32> = vec2<f32>(x_2075.x, x_2075.y);
          let x_2078 : f32 = u_xlat30.z;
          txVec30 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
          let x_2086 : vec3<f32> = txVec30;
          let x_2088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
          u_xlat9.x = x_2088;
          let x_2091 : vec4<f32> = u_xlat8;
          let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
          let x_2094 : f32 = u_xlat30.z;
          txVec31 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
          let x_2101 : vec3<f32> = txVec31;
          let x_2103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2101.xy, x_2101.z);
          u_xlat9.y = x_2103;
          let x_2105 : vec3<f32> = u_xlat30;
          let x_2109 : vec4<f32> = x_307.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2105.x, x_2105.y, x_2105.x, x_2105.y) + x_2109);
          let x_2112 : vec4<f32> = u_xlat8;
          let x_2113 : vec2<f32> = vec2<f32>(x_2112.x, x_2112.y);
          let x_2115 : f32 = u_xlat30.z;
          txVec32 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
          let x_2122 : vec3<f32> = txVec32;
          let x_2124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
          u_xlat9.z = x_2124;
          let x_2127 : vec4<f32> = u_xlat8;
          let x_2128 : vec2<f32> = vec2<f32>(x_2127.z, x_2127.w);
          let x_2130 : f32 = u_xlat30.z;
          txVec33 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
          let x_2137 : vec3<f32> = txVec33;
          let x_2139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
          u_xlat9.w = x_2139;
          let x_2141 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(x_2141, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2146 : i32 = u_xlati6;
          let x_2148 : f32 = x_307.x_AdditionalShadowParams[x_2146].y;
          u_xlatb31 = (2.0f == x_2148);
          let x_2150 : bool = u_xlatb31;
          if (x_2150) {
            let x_2154 : vec3<f32> = u_xlat30;
            let x_2158 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2154.x, x_2154.y) * vec2<f32>(x_2158.z, x_2158.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2162 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2162);
            let x_2164 : vec3<f32> = u_xlat30;
            let x_2167 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2170 : vec2<f32> = u_xlat31;
            let x_2172 : vec2<f32> = ((vec2<f32>(x_2164.x, x_2164.y) * vec2<f32>(x_2167.z, x_2167.w)) + -(x_2170));
            let x_2173 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
            let x_2175 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2175.x, x_2175.x, x_2175.y, x_2175.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2178 : vec4<f32> = u_xlat10;
            let x_2180 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2178.x, x_2178.x, x_2178.z, x_2178.z) * vec4<f32>(x_2180.x, x_2180.x, x_2180.z, x_2180.z));
            let x_2184 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2184.y, x_2184.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2187 : vec4<f32> = u_xlat11;
            let x_2190 : vec4<f32> = u_xlat9;
            let x_2193 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2190.x, x_2190.y)));
            let x_2194 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2193.x, x_2194.y, x_2193.y, x_2194.w);
            let x_2196 : vec4<f32> = u_xlat9;
            let x_2199 : vec2<f32> = (-(vec2<f32>(x_2196.x, x_2196.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2200 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
            let x_2203 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2203.x, x_2203.y), vec2<f32>(0.0f, 0.0f));
            let x_2206 : vec2<f32> = u_xlat57;
            let x_2208 : vec2<f32> = u_xlat57;
            let x_2210 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2206) * x_2208) + vec2<f32>(x_2210.x, x_2210.y));
            let x_2213 : vec4<f32> = u_xlat9;
            let x_2215 : vec2<f32> = max(vec2<f32>(x_2213.x, x_2213.y), vec2<f32>(0.0f, 0.0f));
            let x_2216 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat9;
            let x_2221 : vec4<f32> = u_xlat9;
            let x_2224 : vec4<f32> = u_xlat10;
            let x_2226 : vec2<f32> = ((-(vec2<f32>(x_2218.x, x_2218.y)) * vec2<f32>(x_2221.x, x_2221.y)) + vec2<f32>(x_2224.y, x_2224.w));
            let x_2227 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
            let x_2229 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2229 + vec2<f32>(1.0f, 1.0f));
            let x_2231 : vec4<f32> = u_xlat9;
            let x_2233 : vec2<f32> = (vec2<f32>(x_2231.x, x_2231.y) + vec2<f32>(1.0f, 1.0f));
            let x_2234 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat10;
            let x_2238 : vec2<f32> = (vec2<f32>(x_2236.x, x_2236.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2239 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
            let x_2241 : vec4<f32> = u_xlat11;
            let x_2243 : vec2<f32> = (vec2<f32>(x_2241.x, x_2241.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2244 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2243.x, x_2243.y, x_2244.z, x_2244.w);
            let x_2246 : vec2<f32> = u_xlat57;
            let x_2247 : vec2<f32> = (x_2246 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2248 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2247.x, x_2247.y, x_2248.z, x_2248.w);
            let x_2250 : vec4<f32> = u_xlat9;
            let x_2252 : vec2<f32> = (vec2<f32>(x_2250.x, x_2250.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2253 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
            let x_2255 : vec4<f32> = u_xlat10;
            let x_2257 : vec2<f32> = (vec2<f32>(x_2255.y, x_2255.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2258 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2257.x, x_2257.y, x_2258.z, x_2258.w);
            let x_2261 : f32 = u_xlat11.x;
            u_xlat12.z = x_2261;
            let x_2264 : f32 = u_xlat9.x;
            u_xlat12.w = x_2264;
            let x_2267 : f32 = u_xlat14.x;
            u_xlat13.z = x_2267;
            let x_2270 : f32 = u_xlat55.x;
            u_xlat13.w = x_2270;
            let x_2272 : vec4<f32> = u_xlat12;
            let x_2274 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2272.z, x_2272.w, x_2272.x, x_2272.z) + vec4<f32>(x_2274.z, x_2274.w, x_2274.x, x_2274.z));
            let x_2278 : f32 = u_xlat12.y;
            u_xlat11.z = x_2278;
            let x_2281 : f32 = u_xlat9.y;
            u_xlat11.w = x_2281;
            let x_2284 : f32 = u_xlat13.y;
            u_xlat14.z = x_2284;
            let x_2287 : f32 = u_xlat55.y;
            u_xlat14.w = x_2287;
            let x_2289 : vec4<f32> = u_xlat11;
            let x_2291 : vec4<f32> = u_xlat14;
            let x_2293 : vec3<f32> = (vec3<f32>(x_2289.z, x_2289.y, x_2289.w) + vec3<f32>(x_2291.z, x_2291.y, x_2291.w));
            let x_2294 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
            let x_2296 : vec4<f32> = u_xlat13;
            let x_2298 : vec4<f32> = u_xlat10;
            let x_2300 : vec3<f32> = (vec3<f32>(x_2296.x, x_2296.z, x_2296.w) / vec3<f32>(x_2298.z, x_2298.w, x_2298.y));
            let x_2301 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
            let x_2303 : vec4<f32> = u_xlat11;
            let x_2305 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.y, x_2303.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2306 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
            let x_2308 : vec4<f32> = u_xlat14;
            let x_2310 : vec4<f32> = u_xlat9;
            let x_2312 : vec3<f32> = (vec3<f32>(x_2308.z, x_2308.y, x_2308.w) / vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
            let x_2313 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
            let x_2315 : vec4<f32> = u_xlat12;
            let x_2317 : vec3<f32> = (vec3<f32>(x_2315.x, x_2315.y, x_2315.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2318 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
            let x_2320 : vec4<f32> = u_xlat11;
            let x_2323 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2325 : vec3<f32> = (vec3<f32>(x_2320.y, x_2320.x, x_2320.z) * vec3<f32>(x_2323.x, x_2323.x, x_2323.x));
            let x_2326 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
            let x_2328 : vec4<f32> = u_xlat12;
            let x_2331 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2333 : vec3<f32> = (vec3<f32>(x_2328.x, x_2328.y, x_2328.z) * vec3<f32>(x_2331.y, x_2331.y, x_2331.y));
            let x_2334 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
            let x_2337 : f32 = u_xlat12.x;
            u_xlat11.w = x_2337;
            let x_2339 : vec2<f32> = u_xlat31;
            let x_2342 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2345 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2339.x, x_2339.y, x_2339.x, x_2339.y) * vec4<f32>(x_2342.x, x_2342.y, x_2342.x, x_2342.y)) + vec4<f32>(x_2345.y, x_2345.w, x_2345.x, x_2345.w));
            let x_2348 : vec2<f32> = u_xlat31;
            let x_2350 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2353 : vec4<f32> = u_xlat11;
            let x_2355 : vec2<f32> = ((x_2348 * vec2<f32>(x_2350.x, x_2350.y)) + vec2<f32>(x_2353.z, x_2353.w));
            let x_2356 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
            let x_2359 : f32 = u_xlat11.y;
            u_xlat12.w = x_2359;
            let x_2361 : vec4<f32> = u_xlat12;
            let x_2362 : vec2<f32> = vec2<f32>(x_2361.y, x_2361.z);
            let x_2363 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2363.x, x_2362.x, x_2363.z, x_2362.y);
            let x_2365 : vec2<f32> = u_xlat31;
            let x_2368 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2371 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.y) * vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y)) + vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2371.y));
            let x_2374 : vec2<f32> = u_xlat31;
            let x_2377 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2380 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y) * vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y)) + vec4<f32>(x_2380.w, x_2380.y, x_2380.w, x_2380.z));
            let x_2383 : vec2<f32> = u_xlat31;
            let x_2386 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2389 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y) * vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y)) + vec4<f32>(x_2389.x, x_2389.w, x_2389.z, x_2389.w));
            let x_2392 : vec4<f32> = u_xlat9;
            let x_2394 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2392.x, x_2392.x, x_2392.x, x_2392.y) * vec4<f32>(x_2394.z, x_2394.w, x_2394.y, x_2394.z));
            let x_2397 : vec4<f32> = u_xlat9;
            let x_2399 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2397.y, x_2397.y, x_2397.z, x_2397.z) * x_2399);
            let x_2402 : f32 = u_xlat9.z;
            let x_2404 : f32 = u_xlat10.y;
            u_xlat31.x = (x_2402 * x_2404);
            let x_2408 : vec4<f32> = u_xlat13;
            let x_2409 : vec2<f32> = vec2<f32>(x_2408.x, x_2408.y);
            let x_2411 : f32 = u_xlat30.z;
            txVec34 = vec3<f32>(x_2409.x, x_2409.y, x_2411);
            let x_2419 : vec3<f32> = txVec34;
            let x_2421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
            u_xlat54 = x_2421;
            let x_2423 : vec4<f32> = u_xlat13;
            let x_2424 : vec2<f32> = vec2<f32>(x_2423.z, x_2423.w);
            let x_2426 : f32 = u_xlat30.z;
            txVec35 = vec3<f32>(x_2424.x, x_2424.y, x_2426);
            let x_2434 : vec3<f32> = txVec35;
            let x_2436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2434.xy, x_2434.z);
            u_xlat77 = x_2436;
            let x_2437 : f32 = u_xlat77;
            let x_2439 : f32 = u_xlat16.y;
            u_xlat77 = (x_2437 * x_2439);
            let x_2442 : f32 = u_xlat16.x;
            let x_2443 : f32 = u_xlat54;
            let x_2445 : f32 = u_xlat77;
            u_xlat54 = ((x_2442 * x_2443) + x_2445);
            let x_2448 : vec4<f32> = u_xlat14;
            let x_2449 : vec2<f32> = vec2<f32>(x_2448.x, x_2448.y);
            let x_2451 : f32 = u_xlat30.z;
            txVec36 = vec3<f32>(x_2449.x, x_2449.y, x_2451);
            let x_2458 : vec3<f32> = txVec36;
            let x_2460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2458.xy, x_2458.z);
            u_xlat77 = x_2460;
            let x_2462 : f32 = u_xlat16.z;
            let x_2463 : f32 = u_xlat77;
            let x_2465 : f32 = u_xlat54;
            u_xlat54 = ((x_2462 * x_2463) + x_2465);
            let x_2468 : vec4<f32> = u_xlat12;
            let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
            let x_2471 : f32 = u_xlat30.z;
            txVec37 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
            let x_2478 : vec3<f32> = txVec37;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat77 = x_2480;
            let x_2482 : f32 = u_xlat16.w;
            let x_2483 : f32 = u_xlat77;
            let x_2485 : f32 = u_xlat54;
            u_xlat54 = ((x_2482 * x_2483) + x_2485);
            let x_2488 : vec4<f32> = u_xlat15;
            let x_2489 : vec2<f32> = vec2<f32>(x_2488.x, x_2488.y);
            let x_2491 : f32 = u_xlat30.z;
            txVec38 = vec3<f32>(x_2489.x, x_2489.y, x_2491);
            let x_2498 : vec3<f32> = txVec38;
            let x_2500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2498.xy, x_2498.z);
            u_xlat77 = x_2500;
            let x_2502 : f32 = u_xlat17.x;
            let x_2503 : f32 = u_xlat77;
            let x_2505 : f32 = u_xlat54;
            u_xlat54 = ((x_2502 * x_2503) + x_2505);
            let x_2508 : vec4<f32> = u_xlat15;
            let x_2509 : vec2<f32> = vec2<f32>(x_2508.z, x_2508.w);
            let x_2511 : f32 = u_xlat30.z;
            txVec39 = vec3<f32>(x_2509.x, x_2509.y, x_2511);
            let x_2518 : vec3<f32> = txVec39;
            let x_2520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
            u_xlat77 = x_2520;
            let x_2522 : f32 = u_xlat17.y;
            let x_2523 : f32 = u_xlat77;
            let x_2525 : f32 = u_xlat54;
            u_xlat54 = ((x_2522 * x_2523) + x_2525);
            let x_2528 : vec4<f32> = u_xlat12;
            let x_2529 : vec2<f32> = vec2<f32>(x_2528.z, x_2528.w);
            let x_2531 : f32 = u_xlat30.z;
            txVec40 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
            let x_2538 : vec3<f32> = txVec40;
            let x_2540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
            u_xlat77 = x_2540;
            let x_2542 : f32 = u_xlat17.z;
            let x_2543 : f32 = u_xlat77;
            let x_2545 : f32 = u_xlat54;
            u_xlat54 = ((x_2542 * x_2543) + x_2545);
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2549 : vec2<f32> = vec2<f32>(x_2548.x, x_2548.y);
            let x_2551 : f32 = u_xlat30.z;
            txVec41 = vec3<f32>(x_2549.x, x_2549.y, x_2551);
            let x_2558 : vec3<f32> = txVec41;
            let x_2560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2558.xy, x_2558.z);
            u_xlat77 = x_2560;
            let x_2562 : f32 = u_xlat17.w;
            let x_2563 : f32 = u_xlat77;
            let x_2565 : f32 = u_xlat54;
            u_xlat54 = ((x_2562 * x_2563) + x_2565);
            let x_2568 : vec4<f32> = u_xlat11;
            let x_2569 : vec2<f32> = vec2<f32>(x_2568.z, x_2568.w);
            let x_2571 : f32 = u_xlat30.z;
            txVec42 = vec3<f32>(x_2569.x, x_2569.y, x_2571);
            let x_2578 : vec3<f32> = txVec42;
            let x_2580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2578.xy, x_2578.z);
            u_xlat77 = x_2580;
            let x_2582 : f32 = u_xlat31.x;
            let x_2583 : f32 = u_xlat77;
            let x_2585 : f32 = u_xlat54;
            u_xlat8.x = ((x_2582 * x_2583) + x_2585);
          } else {
            let x_2589 : vec3<f32> = u_xlat30;
            let x_2592 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat31 = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(x_2592.z, x_2592.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2596 : vec2<f32> = u_xlat31;
            u_xlat31 = floor(x_2596);
            let x_2598 : vec3<f32> = u_xlat30;
            let x_2601 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2604 : vec2<f32> = u_xlat31;
            let x_2606 : vec2<f32> = ((vec2<f32>(x_2598.x, x_2598.y) * vec2<f32>(x_2601.z, x_2601.w)) + -(x_2604));
            let x_2607 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2606.x, x_2606.y, x_2607.z, x_2607.w);
            let x_2609 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2609.x, x_2609.x, x_2609.y, x_2609.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2612 : vec4<f32> = u_xlat10;
            let x_2614 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2612.x, x_2612.x, x_2612.z, x_2612.z) * vec4<f32>(x_2614.x, x_2614.x, x_2614.z, x_2614.z));
            let x_2617 : vec4<f32> = u_xlat11;
            let x_2619 : vec2<f32> = (vec2<f32>(x_2617.y, x_2617.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2620 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2620.x, x_2619.x, x_2620.z, x_2619.y);
            let x_2622 : vec4<f32> = u_xlat11;
            let x_2625 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2625.x, x_2625.y)));
            let x_2629 : vec4<f32> = u_xlat9;
            let x_2632 : vec2<f32> = (-(vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2633 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2632.x, x_2633.y, x_2632.y, x_2633.w);
            let x_2635 : vec4<f32> = u_xlat9;
            let x_2637 : vec2<f32> = min(vec2<f32>(x_2635.x, x_2635.y), vec2<f32>(0.0f, 0.0f));
            let x_2638 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
            let x_2640 : vec4<f32> = u_xlat11;
            let x_2643 : vec4<f32> = u_xlat11;
            let x_2646 : vec4<f32> = u_xlat10;
            let x_2648 : vec2<f32> = ((-(vec2<f32>(x_2640.x, x_2640.y)) * vec2<f32>(x_2643.x, x_2643.y)) + vec2<f32>(x_2646.x, x_2646.z));
            let x_2649 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2648.x, x_2649.y, x_2648.y, x_2649.w);
            let x_2651 : vec4<f32> = u_xlat9;
            let x_2653 : vec2<f32> = max(vec2<f32>(x_2651.x, x_2651.y), vec2<f32>(0.0f, 0.0f));
            let x_2654 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2653.x, x_2653.y, x_2654.z, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat11;
            let x_2659 : vec4<f32> = u_xlat11;
            let x_2662 : vec4<f32> = u_xlat10;
            let x_2664 : vec2<f32> = ((-(vec2<f32>(x_2656.x, x_2656.y)) * vec2<f32>(x_2659.x, x_2659.y)) + vec2<f32>(x_2662.y, x_2662.w));
            let x_2665 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2665.x, x_2664.x, x_2665.z, x_2664.y);
            let x_2667 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2667 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2671 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2671 * 0.08163200318813323975f);
            let x_2674 : vec2<f32> = u_xlat55;
            let x_2676 : vec2<f32> = (vec2<f32>(x_2674.y, x_2674.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2677 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2679 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2679.x, x_2679.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2683 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2683 * 0.08163200318813323975f);
            let x_2687 : f32 = u_xlat13.y;
            u_xlat11.x = x_2687;
            let x_2689 : vec4<f32> = u_xlat9;
            let x_2692 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2693 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2693.x, x_2692.x, x_2693.z, x_2692.y);
            let x_2695 : vec4<f32> = u_xlat9;
            let x_2698 : vec2<f32> = ((vec2<f32>(x_2695.x, x_2695.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2699 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2698.x, x_2699.y, x_2698.y, x_2699.w);
            let x_2702 : f32 = u_xlat55.x;
            u_xlat10.y = x_2702;
            let x_2705 : f32 = u_xlat12.y;
            u_xlat10.w = x_2705;
            let x_2707 : vec4<f32> = u_xlat10;
            let x_2708 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2707 + x_2708);
            let x_2710 : vec4<f32> = u_xlat9;
            let x_2713 : vec2<f32> = ((vec2<f32>(x_2710.y, x_2710.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2714 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2714.x, x_2713.x, x_2714.z, x_2713.y);
            let x_2716 : vec4<f32> = u_xlat9;
            let x_2719 : vec2<f32> = ((vec2<f32>(x_2716.y, x_2716.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2720 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2719.x, x_2720.y, x_2719.y, x_2720.w);
            let x_2723 : f32 = u_xlat55.y;
            u_xlat12.y = x_2723;
            let x_2725 : vec4<f32> = u_xlat12;
            let x_2726 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2725 + x_2726);
            let x_2728 : vec4<f32> = u_xlat10;
            let x_2729 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2728 / x_2729);
            let x_2731 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2731 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2733 : vec4<f32> = u_xlat12;
            let x_2734 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2733 / x_2734);
            let x_2736 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2736 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2738 : vec4<f32> = u_xlat10;
            let x_2741 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2738.w, x_2738.x, x_2738.y, x_2738.z) * vec4<f32>(x_2741.x, x_2741.x, x_2741.x, x_2741.x));
            let x_2744 : vec4<f32> = u_xlat12;
            let x_2747 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2744.x, x_2744.w, x_2744.y, x_2744.z) * vec4<f32>(x_2747.y, x_2747.y, x_2747.y, x_2747.y));
            let x_2750 : vec4<f32> = u_xlat10;
            let x_2751 : vec3<f32> = vec3<f32>(x_2750.y, x_2750.z, x_2750.w);
            let x_2752 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2751.x, x_2752.y, x_2751.y, x_2751.z);
            let x_2755 : f32 = u_xlat12.x;
            u_xlat13.y = x_2755;
            let x_2757 : vec2<f32> = u_xlat31;
            let x_2760 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2763 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y) * vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y)) + vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2763.y));
            let x_2766 : vec2<f32> = u_xlat31;
            let x_2768 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = ((x_2766 * vec2<f32>(x_2768.x, x_2768.y)) + vec2<f32>(x_2771.w, x_2771.y));
            let x_2774 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
            let x_2777 : f32 = u_xlat13.y;
            u_xlat10.y = x_2777;
            let x_2780 : f32 = u_xlat12.z;
            u_xlat13.y = x_2780;
            let x_2782 : vec2<f32> = u_xlat31;
            let x_2785 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y) * vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y)) + vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2788.y));
            let x_2792 : vec2<f32> = u_xlat31;
            let x_2794 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2792 * vec2<f32>(x_2794.x, x_2794.y)) + vec2<f32>(x_2797.w, x_2797.y));
            let x_2801 : f32 = u_xlat13.y;
            u_xlat10.z = x_2801;
            let x_2803 : vec2<f32> = u_xlat31;
            let x_2806 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y) * vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y)) + vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.z));
            let x_2813 : f32 = u_xlat12.w;
            u_xlat13.y = x_2813;
            let x_2816 : vec2<f32> = u_xlat31;
            let x_2819 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2822 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2816.x, x_2816.y, x_2816.x, x_2816.y) * vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y)) + vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2822.y));
            let x_2826 : vec2<f32> = u_xlat31;
            let x_2828 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2826 * vec2<f32>(x_2828.x, x_2828.y)) + vec2<f32>(x_2831.w, x_2831.y));
            let x_2835 : f32 = u_xlat13.y;
            u_xlat10.w = x_2835;
            let x_2838 : vec2<f32> = u_xlat31;
            let x_2840 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2838 * vec2<f32>(x_2840.x, x_2840.y)) + vec2<f32>(x_2843.x, x_2843.w));
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2847 : vec3<f32> = vec3<f32>(x_2846.x, x_2846.z, x_2846.w);
            let x_2848 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2847.x, x_2848.y, x_2847.y, x_2847.z);
            let x_2850 : vec2<f32> = u_xlat31;
            let x_2853 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2850.x, x_2850.y, x_2850.x, x_2850.y) * vec4<f32>(x_2853.x, x_2853.y, x_2853.x, x_2853.y)) + vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2856.y));
            let x_2859 : vec2<f32> = u_xlat31;
            let x_2861 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2864 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2859 * vec2<f32>(x_2861.x, x_2861.y)) + vec2<f32>(x_2864.w, x_2864.y));
            let x_2868 : f32 = u_xlat10.x;
            u_xlat12.x = x_2868;
            let x_2870 : vec2<f32> = u_xlat31;
            let x_2872 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2870 * vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(x_2875.x, x_2875.y));
            let x_2879 : vec4<f32> = u_xlat9;
            let x_2881 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2879.x, x_2879.x, x_2879.x, x_2879.x) * x_2881);
            let x_2884 : vec4<f32> = u_xlat9;
            let x_2886 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2884.y, x_2884.y, x_2884.y, x_2884.y) * x_2886);
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2891 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2889.z, x_2889.z, x_2889.z, x_2889.z) * x_2891);
            let x_2893 : vec4<f32> = u_xlat9;
            let x_2895 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2893.w, x_2893.w, x_2893.w, x_2893.w) * x_2895);
            let x_2898 : vec4<f32> = u_xlat14;
            let x_2899 : vec2<f32> = vec2<f32>(x_2898.x, x_2898.y);
            let x_2901 : f32 = u_xlat30.z;
            txVec43 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
            let x_2908 : vec3<f32> = txVec43;
            let x_2910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
            u_xlat77 = x_2910;
            let x_2912 : vec4<f32> = u_xlat14;
            let x_2913 : vec2<f32> = vec2<f32>(x_2912.z, x_2912.w);
            let x_2915 : f32 = u_xlat30.z;
            txVec44 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
            let x_2922 : vec3<f32> = txVec44;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat10.x = x_2924;
            let x_2927 : f32 = u_xlat10.x;
            let x_2929 : f32 = u_xlat20.y;
            u_xlat10.x = (x_2927 * x_2929);
            let x_2933 : f32 = u_xlat20.x;
            let x_2934 : f32 = u_xlat77;
            let x_2937 : f32 = u_xlat10.x;
            u_xlat77 = ((x_2933 * x_2934) + x_2937);
            let x_2940 : vec4<f32> = u_xlat15;
            let x_2941 : vec2<f32> = vec2<f32>(x_2940.x, x_2940.y);
            let x_2943 : f32 = u_xlat30.z;
            txVec45 = vec3<f32>(x_2941.x, x_2941.y, x_2943);
            let x_2950 : vec3<f32> = txVec45;
            let x_2952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2950.xy, x_2950.z);
            u_xlat10.x = x_2952;
            let x_2955 : f32 = u_xlat20.z;
            let x_2957 : f32 = u_xlat10.x;
            let x_2959 : f32 = u_xlat77;
            u_xlat77 = ((x_2955 * x_2957) + x_2959);
            let x_2962 : vec4<f32> = u_xlat17;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
            let x_2965 : f32 = u_xlat30.z;
            txVec46 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec46;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat10.x = x_2974;
            let x_2977 : f32 = u_xlat20.w;
            let x_2979 : f32 = u_xlat10.x;
            let x_2981 : f32 = u_xlat77;
            u_xlat77 = ((x_2977 * x_2979) + x_2981);
            let x_2984 : vec4<f32> = u_xlat16;
            let x_2985 : vec2<f32> = vec2<f32>(x_2984.x, x_2984.y);
            let x_2987 : f32 = u_xlat30.z;
            txVec47 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
            let x_2994 : vec3<f32> = txVec47;
            let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
            u_xlat10.x = x_2996;
            let x_2999 : f32 = u_xlat21.x;
            let x_3001 : f32 = u_xlat10.x;
            let x_3003 : f32 = u_xlat77;
            u_xlat77 = ((x_2999 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat16;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.z, x_3006.w);
            let x_3009 : f32 = u_xlat30.z;
            txVec48 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec48;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat10.x = x_3018;
            let x_3021 : f32 = u_xlat21.y;
            let x_3023 : f32 = u_xlat10.x;
            let x_3025 : f32 = u_xlat77;
            u_xlat77 = ((x_3021 * x_3023) + x_3025);
            let x_3028 : vec2<f32> = u_xlat61;
            let x_3030 : f32 = u_xlat30.z;
            txVec49 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
            let x_3037 : vec3<f32> = txVec49;
            let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
            u_xlat10.x = x_3039;
            let x_3042 : f32 = u_xlat21.z;
            let x_3044 : f32 = u_xlat10.x;
            let x_3046 : f32 = u_xlat77;
            u_xlat77 = ((x_3042 * x_3044) + x_3046);
            let x_3049 : vec4<f32> = u_xlat17;
            let x_3050 : vec2<f32> = vec2<f32>(x_3049.z, x_3049.w);
            let x_3052 : f32 = u_xlat30.z;
            txVec50 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
            let x_3059 : vec3<f32> = txVec50;
            let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
            u_xlat10.x = x_3061;
            let x_3064 : f32 = u_xlat21.w;
            let x_3066 : f32 = u_xlat10.x;
            let x_3068 : f32 = u_xlat77;
            u_xlat77 = ((x_3064 * x_3066) + x_3068);
            let x_3071 : vec4<f32> = u_xlat18;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
            let x_3074 : f32 = u_xlat30.z;
            txVec51 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec51;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat10.x = x_3083;
            let x_3086 : f32 = u_xlat22.x;
            let x_3088 : f32 = u_xlat10.x;
            let x_3090 : f32 = u_xlat77;
            u_xlat77 = ((x_3086 * x_3088) + x_3090);
            let x_3093 : vec4<f32> = u_xlat18;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.z, x_3093.w);
            let x_3096 : f32 = u_xlat30.z;
            txVec52 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec52;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat10.x = x_3105;
            let x_3108 : f32 = u_xlat22.y;
            let x_3110 : f32 = u_xlat10.x;
            let x_3112 : f32 = u_xlat77;
            u_xlat77 = ((x_3108 * x_3110) + x_3112);
            let x_3115 : vec2<f32> = u_xlat33;
            let x_3117 : f32 = u_xlat30.z;
            txVec53 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec53;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat10.x = x_3126;
            let x_3129 : f32 = u_xlat22.z;
            let x_3131 : f32 = u_xlat10.x;
            let x_3133 : f32 = u_xlat77;
            u_xlat77 = ((x_3129 * x_3131) + x_3133);
            let x_3136 : vec2<f32> = u_xlat19;
            let x_3138 : f32 = u_xlat30.z;
            txVec54 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
            let x_3145 : vec3<f32> = txVec54;
            let x_3147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
            u_xlat10.x = x_3147;
            let x_3150 : f32 = u_xlat22.w;
            let x_3152 : f32 = u_xlat10.x;
            let x_3154 : f32 = u_xlat77;
            u_xlat77 = ((x_3150 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.x, x_3157.y);
            let x_3160 : f32 = u_xlat30.z;
            txVec55 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec55;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat10.x = x_3169;
            let x_3172 : f32 = u_xlat9.x;
            let x_3174 : f32 = u_xlat10.x;
            let x_3176 : f32 = u_xlat77;
            u_xlat77 = ((x_3172 * x_3174) + x_3176);
            let x_3179 : vec4<f32> = u_xlat13;
            let x_3180 : vec2<f32> = vec2<f32>(x_3179.z, x_3179.w);
            let x_3182 : f32 = u_xlat30.z;
            txVec56 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3189 : vec3<f32> = txVec56;
            let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
            u_xlat9.x = x_3191;
            let x_3194 : f32 = u_xlat9.y;
            let x_3196 : f32 = u_xlat9.x;
            let x_3198 : f32 = u_xlat77;
            u_xlat77 = ((x_3194 * x_3196) + x_3198);
            let x_3201 : vec2<f32> = u_xlat58;
            let x_3203 : f32 = u_xlat30.z;
            txVec57 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec57;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat9.x = x_3212;
            let x_3215 : f32 = u_xlat9.z;
            let x_3217 : f32 = u_xlat9.x;
            let x_3219 : f32 = u_xlat77;
            u_xlat77 = ((x_3215 * x_3217) + x_3219);
            let x_3222 : vec2<f32> = u_xlat31;
            let x_3224 : f32 = u_xlat30.z;
            txVec58 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
            let x_3231 : vec3<f32> = txVec58;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat31.x = x_3233;
            let x_3236 : f32 = u_xlat9.w;
            let x_3238 : f32 = u_xlat31.x;
            let x_3240 : f32 = u_xlat77;
            u_xlat8.x = ((x_3236 * x_3238) + x_3240);
          }
        }
      } else {
        let x_3245 : vec3<f32> = u_xlat30;
        let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
        let x_3248 : f32 = u_xlat30.z;
        txVec59 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
        let x_3255 : vec3<f32> = txVec59;
        let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
        u_xlat8.x = x_3257;
      }
      let x_3259 : i32 = u_xlati6;
      let x_3261 : f32 = x_307.x_AdditionalShadowParams[x_3259].x;
      u_xlat30.x = (1.0f + -(x_3261));
      let x_3266 : f32 = u_xlat8.x;
      let x_3267 : i32 = u_xlati6;
      let x_3269 : f32 = x_307.x_AdditionalShadowParams[x_3267].x;
      let x_3272 : f32 = u_xlat30.x;
      u_xlat30.x = ((x_3266 * x_3269) + x_3272);
      let x_3276 : f32 = u_xlat30.z;
      u_xlatb53 = (0.0f >= x_3276);
      let x_3280 : f32 = u_xlat30.z;
      u_xlatb76 = (x_3280 >= 1.0f);
      let x_3282 : bool = u_xlatb76;
      let x_3283 : bool = u_xlatb53;
      u_xlatb53 = (x_3282 | x_3283);
      let x_3285 : bool = u_xlatb53;
      if (x_3285) {
        x_3286 = 1.0f;
      } else {
        let x_3291 : f32 = u_xlat30.x;
        x_3286 = x_3291;
      }
      let x_3292 : f32 = x_3286;
      u_xlat30.x = x_3292;
    } else {
      u_xlat30.x = 1.0f;
    }
    let x_3297 : f32 = u_xlat30.x;
    u_xlat53.x = (-(x_3297) + 1.0f);
    let x_3301 : f32 = u_xlat72;
    let x_3303 : f32 = u_xlat53.x;
    let x_3306 : f32 = u_xlat30.x;
    u_xlat30.x = ((x_3301 * x_3303) + x_3306);
    let x_3310 : f32 = u_xlat30.x;
    let x_3312 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3310 * x_3312);
    let x_3315 : vec4<f32> = u_xlat7;
    let x_3317 : i32 = u_xlati6;
    let x_3319 : vec4<f32> = x_1805.x_AdditionalLightsColor[x_3317];
    let x_3321 : vec3<f32> = (vec3<f32>(x_3315.x, x_3315.x, x_3315.x) * vec3<f32>(x_3319.x, x_3319.y, x_3319.z));
    let x_3322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3322.w);
    let x_3324 : vec4<f32> = u_xlat1;
    let x_3326 : vec3<f32> = u_xlat29;
    u_xlat6.x = dot(vec3<f32>(x_3324.x, x_3324.y, x_3324.z), x_3326);
    let x_3330 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3330, 0.0f, 1.0f);
    let x_3333 : vec4<f32> = u_xlat6;
    let x_3335 : vec4<f32> = u_xlat7;
    let x_3337 : vec3<f32> = (vec3<f32>(x_3333.x, x_3333.x, x_3333.x) * vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
    let x_3338 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
    let x_3340 : vec3<f32> = u_xlat2;
    let x_3341 : f32 = u_xlat71;
    let x_3344 : vec3<f32> = u_xlat29;
    let x_3345 : vec3<f32> = ((x_3340 * vec3<f32>(x_3341, x_3341, x_3341)) + x_3344);
    let x_3346 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3346.w);
    let x_3349 : vec4<f32> = u_xlat6;
    let x_3351 : vec4<f32> = u_xlat6;
    u_xlat75 = dot(vec3<f32>(x_3349.x, x_3349.y, x_3349.z), vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
    let x_3354 : f32 = u_xlat75;
    u_xlat75 = max(x_3354, 1.17549435e-38f);
    let x_3356 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3356);
    let x_3358 : f32 = u_xlat75;
    let x_3360 : vec4<f32> = u_xlat6;
    let x_3362 : vec3<f32> = (vec3<f32>(x_3358, x_3358, x_3358) * vec3<f32>(x_3360.x, x_3360.y, x_3360.z));
    let x_3363 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3363.w);
    let x_3365 : vec4<f32> = u_xlat1;
    let x_3367 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_3365.x, x_3365.y, x_3365.z), vec3<f32>(x_3367.x, x_3367.y, x_3367.z));
    let x_3372 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3372, 0.0f, 1.0f);
    let x_3376 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_3376);
    let x_3379 : f32 = u_xlat70;
    let x_3381 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3379 * x_3381);
    let x_3385 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_3385);
    let x_3388 : vec4<f32> = u_xlat6;
    let x_3391 : vec4<f32> = x_57.x_SpecColor;
    let x_3393 : vec3<f32> = (vec3<f32>(x_3388.x, x_3388.x, x_3388.x) * vec3<f32>(x_3391.x, x_3391.y, x_3391.z));
    let x_3394 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3394.w);
    let x_3396 : vec4<f32> = u_xlat6;
    let x_3398 : vec4<f32> = u_xlat7;
    let x_3400 : vec3<f32> = (vec3<f32>(x_3396.x, x_3396.y, x_3396.z) * vec3<f32>(x_3398.x, x_3398.y, x_3398.z));
    let x_3401 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3400.x, x_3400.y, x_3400.z, x_3401.w);
    let x_3403 : vec4<f32> = u_xlat8;
    let x_3405 : vec4<f32> = u_xlat0;
    let x_3408 : vec4<f32> = u_xlat6;
    let x_3410 : vec3<f32> = ((vec3<f32>(x_3403.x, x_3403.y, x_3403.z) * vec3<f32>(x_3405.y, x_3405.z, x_3405.w)) + vec3<f32>(x_3408.x, x_3408.y, x_3408.z));
    let x_3411 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3411.w);
    let x_3413 : vec4<f32> = u_xlat5;
    let x_3415 : vec4<f32> = u_xlat6;
    let x_3417 : vec3<f32> = (vec3<f32>(x_3413.x, x_3413.y, x_3413.z) + vec3<f32>(x_3415.x, x_3415.y, x_3415.z));
    let x_3418 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3417.x, x_3417.y, x_3417.z, x_3418.w);

    continuing {
      let x_3420 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3420 + bitcast<u32>(1i));
    }
  }
  let x_3423 : vec3<f32> = u_xlat3;
  let x_3424 : vec4<f32> = u_xlat0;
  let x_3427 : vec4<f32> = u_xlat4;
  u_xlat23 = ((x_3423 * vec3<f32>(x_3424.y, x_3424.z, x_3424.w)) + vec3<f32>(x_3427.x, x_3427.y, x_3427.z));
  let x_3432 : vec4<f32> = u_xlat5;
  let x_3434 : vec3<f32> = u_xlat23;
  let x_3435 : vec3<f32> = (vec3<f32>(x_3432.x, x_3432.y, x_3432.z) + x_3434);
  let x_3436 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3435.x, x_3435.y, x_3435.z, x_3436.w);
  let x_3440 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3440 == 1.0f);
  let x_3442 : bool = u_xlatb23;
  if (x_3442) {
    let x_3447 : f32 = u_xlat0.x;
    x_3443 = x_3447;
  } else {
    x_3443 = 1.0f;
  }
  let x_3449 : f32 = x_3443;
  SV_Target0.w = x_3449;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


