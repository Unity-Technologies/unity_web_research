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
  /* @offset(192) */
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

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb66 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_377 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

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

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1790 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
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
  var x_1932 : f32;
  var x_1942 : f32;
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
  var x_3330 : f32;
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
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat22.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat66;
  let x_108 : f32 = u_xlat44;
  u_xlat44 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat44;
  u_xlat44 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat22.x;
  let x_116 : f32 = u_xlat44;
  u_xlat22.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat22.x;
  u_xlat22.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb44;
  if (x_132) {
    let x_137 : f32 = u_xlat22.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat22.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat22.x;
  u_xlatb22 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb22;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat22;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat22.x = x_178.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb66 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb66;
  if (x_191) {
    let x_196 : f32 = u_xlat22.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat22.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat22.x = x_203;
  let x_206 : f32 = u_xlat22.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat22.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat22.x;
  u_xlatb22 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb22;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat22;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_242 : f32 = vs_TEXCOORD1.y;
  let x_245 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat22.x = (x_242 * x_245);
  let x_249 : f32 = x_45.unity_MatrixV[0i].z;
  let x_251 : f32 = vs_TEXCOORD1.x;
  let x_254 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_249 * x_251) + x_254);
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  let x_260 : f32 = vs_TEXCOORD1.z;
  let x_263 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_258 * x_260) + x_263);
  let x_267 : f32 = u_xlat22.x;
  let x_270 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat22.x = (x_267 + x_270);
  let x_274 : f32 = u_xlat22.x;
  let x_278 : f32 = x_45.x_ProjectionParams.y;
  u_xlat22.x = (-(x_274) + -(x_278));
  let x_283 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_283, 0.0f);
  let x_287 : f32 = u_xlat22.x;
  let x_290 : f32 = x_45.unity_FogParams.x;
  u_xlat22.x = (x_287 * x_290);
  u_xlat2.w = 1.0f;
  let x_297 : vec4<f32> = x_186.unity_SHAr;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_186.unity_SHAg;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_186.unity_SHAb;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_309, x_310);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_314.y, x_314.z, x_314.z, x_314.x) * vec4<f32>(x_316.x, x_316.y, x_316.z, x_316.z));
  let x_322 : vec4<f32> = x_186.unity_SHBr;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_186.unity_SHBg;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_328, x_329);
  let x_334 : vec4<f32> = x_186.unity_SHBb;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_334, x_335);
  let x_339 : f32 = u_xlat2.y;
  let x_341 : f32 = u_xlat2.y;
  u_xlat66 = (x_339 * x_341);
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat2.x;
  let x_348 : f32 = u_xlat66;
  u_xlat66 = ((x_344 * x_346) + -(x_348));
  let x_353 : vec4<f32> = x_186.unity_SHC;
  let x_355 : f32 = u_xlat66;
  let x_358 : vec4<f32> = u_xlat5;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355, x_355, x_355)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = u_xlat3;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_363 + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_367, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_380 : f32 = x_377.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_380);
  let x_382 : bool = u_xlatb66;
  if (x_382) {
    let x_386 : f32 = x_377.x_MainLightShadowParams.y;
    u_xlatb66 = (x_386 == 1.0f);
    let x_388 : bool = u_xlatb66;
    if (x_388) {
      let x_392 : vec4<f32> = vs_TEXCOORD6;
      let x_395 : vec4<f32> = x_377.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_392.x, x_392.y, x_392.x, x_392.y) + x_395);
      let x_399 : vec4<f32> = u_xlat4;
      let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
      let x_402 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_400.x, x_400.y, x_402);
      let x_414 : vec3<f32> = txVec0;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_414.xy, x_414.z);
      u_xlat5.x = x_416;
      let x_419 : vec4<f32> = u_xlat4;
      let x_420 : vec2<f32> = vec2<f32>(x_419.z, x_419.w);
      let x_422 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_420.x, x_420.y, x_422);
      let x_429 : vec3<f32> = txVec1;
      let x_431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_429.xy, x_429.z);
      u_xlat5.y = x_431;
      let x_433 : vec4<f32> = vs_TEXCOORD6;
      let x_436 : vec4<f32> = x_377.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_433.x, x_433.y, x_433.x, x_433.y) + x_436);
      let x_439 : vec4<f32> = u_xlat4;
      let x_440 : vec2<f32> = vec2<f32>(x_439.x, x_439.y);
      let x_442 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_440.x, x_440.y, x_442);
      let x_449 : vec3<f32> = txVec2;
      let x_451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_449.xy, x_449.z);
      u_xlat5.z = x_451;
      let x_454 : vec4<f32> = u_xlat4;
      let x_455 : vec2<f32> = vec2<f32>(x_454.z, x_454.w);
      let x_457 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_455.x, x_455.y, x_457);
      let x_464 : vec3<f32> = txVec3;
      let x_466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_464.xy, x_464.z);
      u_xlat5.w = x_466;
      let x_468 : vec4<f32> = u_xlat5;
      u_xlat66 = dot(x_468, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_475 : f32 = x_377.x_MainLightShadowParams.y;
      u_xlatb1 = (x_475 == 2.0f);
      let x_478 : bool = u_xlatb1;
      if (x_478) {
        let x_481 : vec4<f32> = vs_TEXCOORD6;
        let x_484 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_488 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_484.z, x_484.w)) + vec2<f32>(0.5f, 0.5f));
        let x_489 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
        let x_491 : vec4<f32> = u_xlat4;
        let x_493 : vec2<f32> = floor(vec2<f32>(x_491.x, x_491.y));
        let x_494 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_498 : vec4<f32> = vs_TEXCOORD6;
        let x_501 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_504 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_501.z, x_501.w)) + -(vec2<f32>(x_504.x, x_504.y)));
        let x_508 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_508.x, x_508.x, x_508.y, x_508.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_513 : vec4<f32> = u_xlat5;
        let x_515 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_513.x, x_513.x, x_513.z, x_513.z) * vec4<f32>(x_515.x, x_515.x, x_515.z, x_515.z));
        let x_518 : vec4<f32> = u_xlat6;
        let x_522 : vec2<f32> = (vec2<f32>(x_518.y, x_518.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_523 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_522.x, x_523.y, x_522.y, x_523.w);
        let x_525 : vec4<f32> = u_xlat6;
        let x_528 : vec2<f32> = u_xlat48;
        let x_530 : vec2<f32> = ((vec2<f32>(x_525.x, x_525.z) * vec2<f32>(0.5f, 0.5f)) + -(x_528));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_534) + vec2<f32>(1.0f, 1.0f));
        let x_539 : vec2<f32> = u_xlat48;
        let x_541 : vec2<f32> = min(x_539, vec2<f32>(0.0f, 0.0f));
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat7;
        let x_547 : vec4<f32> = u_xlat7;
        let x_550 : vec2<f32> = u_xlat50;
        let x_551 : vec2<f32> = ((-(vec2<f32>(x_544.x, x_544.y)) * vec2<f32>(x_547.x, x_547.y)) + x_550);
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_554, vec2<f32>(0.0f, 0.0f));
        let x_556 : vec2<f32> = u_xlat48;
        let x_558 : vec2<f32> = u_xlat48;
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_556) * x_558) + vec2<f32>(x_560.y, x_560.w));
        let x_563 : vec4<f32> = u_xlat7;
        let x_565 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) + vec2<f32>(1.0f, 1.0f));
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_568 + vec2<f32>(1.0f, 1.0f));
        let x_571 : vec4<f32> = u_xlat6;
        let x_575 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec2<f32> = u_xlat50;
        let x_579 : vec2<f32> = (x_578 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_584 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_588 : vec2<f32> = u_xlat48;
        let x_589 : vec2<f32> = (x_588 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_590 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_592.y, x_592.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_596 : f32 = u_xlat7.x;
        u_xlat8.z = x_596;
        let x_599 : f32 = u_xlat48.x;
        u_xlat8.w = x_599;
        let x_602 : f32 = u_xlat9.x;
        u_xlat6.z = x_602;
        let x_605 : f32 = u_xlat5.x;
        u_xlat6.w = x_605;
        let x_608 : vec4<f32> = u_xlat6;
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_608.z, x_608.w, x_608.x, x_608.z) + vec4<f32>(x_610.z, x_610.w, x_610.x, x_610.z));
        let x_614 : f32 = u_xlat8.y;
        u_xlat7.z = x_614;
        let x_617 : f32 = u_xlat48.y;
        u_xlat7.w = x_617;
        let x_620 : f32 = u_xlat6.y;
        u_xlat9.z = x_620;
        let x_623 : f32 = u_xlat5.z;
        u_xlat9.w = x_623;
        let x_625 : vec4<f32> = u_xlat7;
        let x_627 : vec4<f32> = u_xlat9;
        let x_629 : vec3<f32> = (vec3<f32>(x_625.z, x_625.y, x_625.w) + vec3<f32>(x_627.z, x_627.y, x_627.w));
        let x_630 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat6;
        let x_634 : vec4<f32> = u_xlat10;
        let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.z, x_632.w) / vec3<f32>(x_634.z, x_634.w, x_634.y));
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat6;
        let x_645 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat9;
        let x_650 : vec4<f32> = u_xlat5;
        let x_652 : vec3<f32> = (vec3<f32>(x_648.z, x_648.y, x_648.w) / vec3<f32>(x_650.x, x_650.y, x_650.z));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat6;
        let x_663 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_665 : vec3<f32> = (vec3<f32>(x_660.y, x_660.x, x_660.z) * vec3<f32>(x_663.x, x_663.x, x_663.x));
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat7;
        let x_671 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_673 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_671.y, x_671.y, x_671.y));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
        let x_677 : f32 = u_xlat7.x;
        u_xlat6.w = x_677;
        let x_679 : vec4<f32> = u_xlat4;
        let x_682 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y) * vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.y)) + vec4<f32>(x_685.y, x_685.w, x_685.x, x_685.w));
        let x_688 : vec4<f32> = u_xlat4;
        let x_691 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_688.x, x_688.y) * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_694.z, x_694.w));
        let x_698 : f32 = u_xlat6.y;
        u_xlat7.w = x_698;
        let x_700 : vec4<f32> = u_xlat7;
        let x_701 : vec2<f32> = vec2<f32>(x_700.y, x_700.z);
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_702.x, x_701.x, x_702.z, x_701.y);
        let x_704 : vec4<f32> = u_xlat4;
        let x_707 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.x, x_710.y, x_710.z, x_710.y));
        let x_713 : vec4<f32> = u_xlat4;
        let x_716 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.w, x_719.y, x_719.w, x_719.z));
        let x_722 : vec4<f32> = u_xlat4;
        let x_725 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y) * vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.y)) + vec4<f32>(x_728.x, x_728.w, x_728.z, x_728.w));
        let x_732 : vec4<f32> = u_xlat5;
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_732.x, x_732.x, x_732.x, x_732.y) * vec4<f32>(x_734.z, x_734.w, x_734.y, x_734.z));
        let x_738 : vec4<f32> = u_xlat5;
        let x_740 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_738.y, x_738.y, x_738.z, x_738.z) * x_740);
        let x_743 : f32 = u_xlat5.z;
        let x_745 : f32 = u_xlat10.y;
        u_xlat1.x = (x_743 * x_745);
        let x_749 : vec4<f32> = u_xlat8;
        let x_750 : vec2<f32> = vec2<f32>(x_749.x, x_749.y);
        let x_752 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_760 : vec3<f32> = txVec4;
        let x_762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_760.xy, x_760.z);
        u_xlat68 = x_762;
        let x_764 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_775 : vec3<f32> = txVec5;
        let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_775.xy, x_775.z);
        u_xlat69 = x_777;
        let x_778 : f32 = u_xlat69;
        let x_780 : f32 = u_xlat11.y;
        u_xlat69 = (x_778 * x_780);
        let x_783 : f32 = u_xlat11.x;
        let x_784 : f32 = u_xlat68;
        let x_786 : f32 = u_xlat69;
        u_xlat68 = ((x_783 * x_784) + x_786);
        let x_789 : vec2<f32> = u_xlat48;
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec6;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat69 = x_800;
        let x_802 : f32 = u_xlat11.z;
        let x_803 : f32 = u_xlat69;
        let x_805 : f32 = u_xlat68;
        u_xlat68 = ((x_802 * x_803) + x_805);
        let x_808 : vec4<f32> = u_xlat7;
        let x_809 : vec2<f32> = vec2<f32>(x_808.x, x_808.y);
        let x_811 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec7;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_818.xy, x_818.z);
        u_xlat69 = x_820;
        let x_822 : f32 = u_xlat11.w;
        let x_823 : f32 = u_xlat69;
        let x_825 : f32 = u_xlat68;
        u_xlat68 = ((x_822 * x_823) + x_825);
        let x_828 : vec4<f32> = u_xlat9;
        let x_829 : vec2<f32> = vec2<f32>(x_828.x, x_828.y);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec8;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
        u_xlat69 = x_840;
        let x_842 : f32 = u_xlat12.x;
        let x_843 : f32 = u_xlat69;
        let x_845 : f32 = u_xlat68;
        u_xlat68 = ((x_842 * x_843) + x_845);
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec9;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat69 = x_860;
        let x_862 : f32 = u_xlat12.y;
        let x_863 : f32 = u_xlat69;
        let x_865 : f32 = u_xlat68;
        u_xlat68 = ((x_862 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat7;
        let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
        let x_871 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec10;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat69 = x_880;
        let x_882 : f32 = u_xlat12.z;
        let x_883 : f32 = u_xlat69;
        let x_885 : f32 = u_xlat68;
        u_xlat68 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec11;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat69 = x_900;
        let x_902 : f32 = u_xlat12.w;
        let x_903 : f32 = u_xlat69;
        let x_905 : f32 = u_xlat68;
        u_xlat68 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec12;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat69 = x_920;
        let x_922 : f32 = u_xlat1.x;
        let x_923 : f32 = u_xlat69;
        let x_925 : f32 = u_xlat68;
        u_xlat66 = ((x_922 * x_923) + x_925);
      } else {
        let x_928 : vec4<f32> = vs_TEXCOORD6;
        let x_931 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_934 : vec2<f32> = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_931.z, x_931.w)) + vec2<f32>(0.5f, 0.5f));
        let x_935 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat4;
        let x_939 : vec2<f32> = floor(vec2<f32>(x_937.x, x_937.y));
        let x_940 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec4<f32> = vs_TEXCOORD6;
        let x_945 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(x_945.z, x_945.w)) + -(vec2<f32>(x_948.x, x_948.y)));
        let x_952 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_952.x, x_952.x, x_952.y, x_952.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_955 : vec4<f32> = u_xlat5;
        let x_957 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z) * vec4<f32>(x_957.x, x_957.x, x_957.z, x_957.z));
        let x_960 : vec4<f32> = u_xlat6;
        let x_964 : vec2<f32> = (vec2<f32>(x_960.y, x_960.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_967 : vec4<f32> = u_xlat6;
        let x_970 : vec2<f32> = u_xlat48;
        let x_972 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.z) * vec2<f32>(0.5f, 0.5f)) + -(x_970));
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        let x_975 : vec2<f32> = u_xlat48;
        let x_977 : vec2<f32> = (-(x_975) + vec2<f32>(1.0f, 1.0f));
        let x_978 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_980, vec2<f32>(0.0f, 0.0f));
        let x_982 : vec2<f32> = u_xlat50;
        let x_984 : vec2<f32> = u_xlat50;
        let x_986 : vec4<f32> = u_xlat6;
        let x_988 : vec2<f32> = ((-(x_982) * x_984) + vec2<f32>(x_986.x, x_986.y));
        let x_989 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_991, vec2<f32>(0.0f, 0.0f));
        let x_994 : vec2<f32> = u_xlat50;
        let x_996 : vec2<f32> = u_xlat50;
        let x_998 : vec4<f32> = u_xlat5;
        let x_1000 : vec2<f32> = ((-(x_994) * x_996) + vec2<f32>(x_998.y, x_998.w));
        let x_1001 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1000.x, x_1001.y, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) + vec2<f32>(2.0f, 2.0f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec3<f32> = u_xlat27;
        let x_1011 : vec2<f32> = (vec2<f32>(x_1009.x, x_1009.z) + vec2<f32>(2.0f, 2.0f));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1012.x, x_1011.x, x_1012.z, x_1011.y);
        let x_1015 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1015 * 0.08163200318813323975f);
        let x_1019 : vec4<f32> = u_xlat5;
        let x_1022 : vec3<f32> = (vec3<f32>(x_1019.z, x_1019.x, x_1019.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat9.y;
        u_xlat8.x = x_1032;
        let x_1034 : vec2<f32> = u_xlat48;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1041.x, x_1042.z, x_1041.y);
        let x_1044 : vec2<f32> = u_xlat48;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1044.x, x_1044.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1052 : f32 = u_xlat5.x;
        u_xlat6.y = x_1052;
        let x_1055 : f32 = u_xlat7.y;
        u_xlat6.w = x_1055;
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1057 + x_1058);
        let x_1060 : vec2<f32> = u_xlat48;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1060.y, x_1060.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec2<f32> = u_xlat48;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1066.y, x_1066.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1070.w);
        let x_1073 : f32 = u_xlat5.y;
        u_xlat7.y = x_1073;
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1075 + x_1076);
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1078 / x_1079);
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1081 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1087 / x_1088);
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1090 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1092.w, x_1092.x, x_1092.y, x_1092.z) * vec4<f32>(x_1095.x, x_1095.x, x_1095.x, x_1095.x));
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1098.x, x_1098.w, x_1098.y, x_1098.z) * vec4<f32>(x_1101.y, x_1101.y, x_1101.y, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat6;
        let x_1105 : vec3<f32> = vec3<f32>(x_1104.y, x_1104.z, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1105.z);
        let x_1109 : f32 = u_xlat7.x;
        u_xlat9.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.x, x_1123.y)) + vec2<f32>(x_1126.w, x_1126.y));
        let x_1130 : f32 = u_xlat9.y;
        u_xlat6.y = x_1130;
        let x_1133 : f32 = u_xlat7.z;
        u_xlat9.y = x_1133;
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat4;
        let x_1147 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat9.y;
        u_xlat6.z = x_1156;
        let x_1159 : vec4<f32> = u_xlat4;
        let x_1162 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) * vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y)) + vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.z));
        let x_1169 : f32 = u_xlat7.w;
        u_xlat9.y = x_1169;
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1175 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat9.y;
        u_xlat6.w = x_1192;
        let x_1195 : vec4<f32> = u_xlat4;
        let x_1198 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.x, x_1198.y)) + vec2<f32>(x_1201.x, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.x, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1208 : vec4<f32> = u_xlat4;
        let x_1211 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat4;
        let x_1221 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat6.x;
        u_xlat7.x = x_1228;
        let x_1230 : vec4<f32> = u_xlat4;
        let x_1233 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1242.x, x_1242.x, x_1242.x, x_1242.x) * x_1244);
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1247.y, x_1247.y, x_1247.y, x_1247.y) * x_1249);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1252.z, x_1252.z, x_1252.z, x_1252.z) * x_1254);
        let x_1256 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1256.w, x_1256.w, x_1256.w, x_1256.w) * x_1258);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec13;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat1.x = x_1273;
        let x_1276 : vec4<f32> = u_xlat10;
        let x_1277 : vec2<f32> = vec2<f32>(x_1276.z, x_1276.w);
        let x_1279 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec14;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat68 = x_1288;
        let x_1289 : f32 = u_xlat68;
        let x_1291 : f32 = u_xlat15.y;
        u_xlat68 = (x_1289 * x_1291);
        let x_1294 : f32 = u_xlat15.x;
        let x_1296 : f32 = u_xlat1.x;
        let x_1298 : f32 = u_xlat68;
        u_xlat1.x = ((x_1294 * x_1296) + x_1298);
        let x_1302 : vec2<f32> = u_xlat48;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec15;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat68 = x_1313;
        let x_1315 : f32 = u_xlat15.z;
        let x_1316 : f32 = u_xlat68;
        let x_1319 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec4<f32> = u_xlat13;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec16;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat68 = x_1335;
        let x_1337 : f32 = u_xlat15.w;
        let x_1338 : f32 = u_xlat68;
        let x_1341 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec17;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat68 = x_1357;
        let x_1359 : f32 = u_xlat16.x;
        let x_1360 : f32 = u_xlat68;
        let x_1363 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec18;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat68 = x_1379;
        let x_1381 : f32 = u_xlat16.y;
        let x_1382 : f32 = u_xlat68;
        let x_1385 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec19;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat68 = x_1401;
        let x_1403 : f32 = u_xlat16.z;
        let x_1404 : f32 = u_xlat68;
        let x_1407 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec20;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat68 = x_1423;
        let x_1425 : f32 = u_xlat16.w;
        let x_1426 : f32 = u_xlat68;
        let x_1429 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat14;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec21;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat68 = x_1445;
        let x_1447 : f32 = u_xlat17.x;
        let x_1448 : f32 = u_xlat68;
        let x_1451 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat14;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec22;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat68 = x_1467;
        let x_1469 : f32 = u_xlat17.y;
        let x_1470 : f32 = u_xlat68;
        let x_1473 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec2<f32> = u_xlat28;
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec23;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat68 = x_1488;
        let x_1490 : f32 = u_xlat17.z;
        let x_1491 : f32 = u_xlat68;
        let x_1494 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1490 * x_1491) + x_1494);
        let x_1498 : vec2<f32> = u_xlat56;
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec24;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat68 = x_1509;
        let x_1511 : f32 = u_xlat17.w;
        let x_1512 : f32 = u_xlat68;
        let x_1515 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec25;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat68 = x_1531;
        let x_1533 : f32 = u_xlat5.x;
        let x_1534 : f32 = u_xlat68;
        let x_1537 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat9;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec26;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat68 = x_1553;
        let x_1555 : f32 = u_xlat5.y;
        let x_1556 : f32 = u_xlat68;
        let x_1559 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec2<f32> = u_xlat51;
        let x_1565 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec27;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat68 = x_1574;
        let x_1576 : f32 = u_xlat5.z;
        let x_1577 : f32 = u_xlat68;
        let x_1580 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1576 * x_1577) + x_1580);
        let x_1584 : vec4<f32> = u_xlat4;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec28;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat68 = x_1596;
        let x_1598 : f32 = u_xlat5.w;
        let x_1599 : f32 = u_xlat68;
        let x_1602 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1598 * x_1599) + x_1602);
      }
    }
  } else {
    let x_1606 : vec4<f32> = vs_TEXCOORD6;
    let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
    let x_1609 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
    let x_1616 : vec3<f32> = txVec29;
    let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
    u_xlat66 = x_1618;
  }
  let x_1620 : f32 = x_377.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1620) + 1.0f);
  let x_1624 : f32 = u_xlat66;
  let x_1626 : f32 = x_377.x_MainLightShadowParams.x;
  let x_1629 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1624 * x_1626) + x_1629);
  let x_1632 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1632);
  let x_1636 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (x_1636 >= 1.0f);
  let x_1638 : bool = u_xlatb1;
  let x_1639 : bool = u_xlatb68;
  u_xlatb1 = (x_1638 | x_1639);
  let x_1641 : bool = u_xlatb1;
  let x_1642 : f32 = u_xlat66;
  u_xlat66 = select(x_1642, 1.0f, x_1641);
  let x_1644 : vec3<f32> = vs_TEXCOORD1;
  let x_1648 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1650 : vec3<f32> = (x_1644 + -(x_1648));
  let x_1651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec4<f32> = u_xlat4;
  let x_1655 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1653.x, x_1653.y, x_1653.z), vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1660 : f32 = u_xlat1.x;
  let x_1662 : f32 = x_377.x_MainLightShadowParams.z;
  let x_1665 : f32 = x_377.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1660 * x_1662) + x_1665);
  let x_1667 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1667, 0.0f, 1.0f);
  let x_1669 : f32 = u_xlat66;
  u_xlat69 = (-(x_1669) + 1.0f);
  let x_1672 : f32 = u_xlat68;
  let x_1673 : f32 = u_xlat69;
  let x_1675 : f32 = u_xlat66;
  u_xlat66 = ((x_1672 * x_1673) + x_1675);
  let x_1677 : f32 = u_xlat66;
  let x_1679 : f32 = x_186.unity_LightData.z;
  u_xlat66 = (x_1677 * x_1679);
  let x_1681 : f32 = u_xlat66;
  let x_1684 : vec4<f32> = x_45.x_MainLightColor;
  let x_1686 : vec3<f32> = (vec3<f32>(x_1681, x_1681, x_1681) * vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
  let x_1687 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
  let x_1689 : vec4<f32> = u_xlat2;
  let x_1692 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_1689.x, x_1689.y, x_1689.z), vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
  let x_1695 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1695, 0.0f, 1.0f);
  let x_1697 : f32 = u_xlat66;
  let x_1699 : vec4<f32> = u_xlat4;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1697, x_1697, x_1697) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat1;
  let x_1706 : vec4<f32> = u_xlat4;
  let x_1708 : vec3<f32> = (vec3<f32>(x_1704.y, x_1704.z, x_1704.w) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1712 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1714 : f32 = x_186.unity_LightData.y;
  u_xlat66 = min(x_1712, x_1714);
  let x_1718 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1718));
  let x_1722 : f32 = u_xlat1.x;
  let x_1725 : f32 = x_377.x_AdditionalShadowFadeParams.x;
  let x_1728 : f32 = x_377.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1722 * x_1725) + x_1728);
  let x_1732 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1732, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1745 : u32 = u_xlatu_loop_1;
    let x_1746 : u32 = u_xlatu66;
    if ((x_1745 < x_1746)) {
    } else {
      break;
    }
    let x_1749 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1749 >> 2u);
    let x_1753 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1753 & 3u));
    let x_1756 : u32 = u_xlatu69;
    let x_1759 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1756)];
    let x_1769 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1774 : vec4<u32> = indexable[x_1769];
    u_xlat69 = dot(x_1759, bitcast<vec4<f32>>(x_1774));
    let x_1778 : f32 = u_xlat69;
    u_xlati69 = i32(x_1778);
    let x_1780 : vec3<f32> = vs_TEXCOORD1;
    let x_1791 : i32 = u_xlati69;
    let x_1793 : vec4<f32> = x_1790.x_AdditionalLightsPosition[x_1791];
    let x_1796 : i32 = u_xlati69;
    let x_1798 : vec4<f32> = x_1790.x_AdditionalLightsPosition[x_1796];
    let x_1800 : vec3<f32> = ((-(x_1780) * vec3<f32>(x_1793.w, x_1793.w, x_1793.w)) + vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
    let x_1804 : vec4<f32> = u_xlat6;
    let x_1806 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1804.x, x_1804.y, x_1804.z), vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
    let x_1809 : f32 = u_xlat70;
    u_xlat70 = max(x_1809, 0.00006103515625f);
    let x_1813 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1813);
    let x_1815 : f32 = u_xlat71;
    let x_1817 : vec4<f32> = u_xlat6;
    let x_1819 : vec3<f32> = (vec3<f32>(x_1815, x_1815, x_1815) * vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
    let x_1820 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
    let x_1822 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1822);
    let x_1824 : f32 = u_xlat70;
    let x_1825 : i32 = u_xlati69;
    let x_1827 : f32 = x_1790.x_AdditionalLightsAttenuation[x_1825].x;
    u_xlat70 = (x_1824 * x_1827);
    let x_1829 : f32 = u_xlat70;
    let x_1831 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1829) * x_1831) + 1.0f);
    let x_1834 : f32 = u_xlat70;
    u_xlat70 = max(x_1834, 0.0f);
    let x_1836 : f32 = u_xlat70;
    let x_1837 : f32 = u_xlat70;
    u_xlat70 = (x_1836 * x_1837);
    let x_1839 : f32 = u_xlat70;
    let x_1840 : f32 = u_xlat71;
    u_xlat70 = (x_1839 * x_1840);
    let x_1842 : i32 = u_xlati69;
    let x_1844 : vec4<f32> = x_1790.x_AdditionalLightsSpotDir[x_1842];
    let x_1846 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : f32 = u_xlat71;
    let x_1850 : i32 = u_xlati69;
    let x_1852 : f32 = x_1790.x_AdditionalLightsAttenuation[x_1850].z;
    let x_1854 : i32 = u_xlati69;
    let x_1856 : f32 = x_1790.x_AdditionalLightsAttenuation[x_1854].w;
    u_xlat71 = ((x_1849 * x_1852) + x_1856);
    let x_1858 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1858, 0.0f, 1.0f);
    let x_1860 : f32 = u_xlat71;
    let x_1861 : f32 = u_xlat71;
    u_xlat71 = (x_1860 * x_1861);
    let x_1863 : f32 = u_xlat70;
    let x_1864 : f32 = u_xlat71;
    u_xlat70 = (x_1863 * x_1864);
    let x_1868 : i32 = u_xlati69;
    let x_1870 : f32 = x_377.x_AdditionalShadowParams[x_1868].w;
    u_xlati71 = i32(x_1870);
    let x_1873 : i32 = u_xlati71;
    u_xlatb72 = (x_1873 >= 0i);
    let x_1875 : bool = u_xlatb72;
    if (x_1875) {
      let x_1879 : i32 = u_xlati69;
      let x_1881 : f32 = x_377.x_AdditionalShadowParams[x_1879].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1881, x_1881, x_1881, x_1881))));
      let x_1886 : bool = u_xlatb72;
      if (x_1886) {
        let x_1891 : vec4<f32> = u_xlat6;
        let x_1894 : vec4<f32> = u_xlat6;
        let x_1897 : vec4<bool> = (abs(vec4<f32>(x_1891.z, x_1891.z, x_1891.y, x_1891.z)) >= abs(vec4<f32>(x_1894.x, x_1894.y, x_1894.x, x_1894.x)));
        let x_1899 : vec3<bool> = vec3<bool>(x_1897.x, x_1897.y, x_1897.z);
        let x_1900 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
        let x_1903 : bool = u_xlatb7.y;
        let x_1905 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1903 & x_1905);
        let x_1907 : vec4<f32> = u_xlat6;
        let x_1910 : vec4<bool> = (-(vec4<f32>(x_1907.z, x_1907.y, x_1907.z, x_1907.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1911 : vec3<bool> = vec3<bool>(x_1910.x, x_1910.y, x_1910.w);
        let x_1912 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1911.x, x_1911.y, x_1912.z, x_1911.z);
        let x_1915 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1915);
        let x_1921 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1921);
        let x_1927 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1927);
        let x_1931 : bool = u_xlatb7.z;
        if (x_1931) {
          let x_1936 : f32 = u_xlat7.y;
          x_1932 = x_1936;
        } else {
          let x_1938 : f32 = u_xlat73;
          x_1932 = x_1938;
        }
        let x_1939 : f32 = x_1932;
        u_xlat29 = x_1939;
        let x_1941 : bool = u_xlatb72;
        if (x_1941) {
          let x_1946 : f32 = u_xlat7.x;
          x_1942 = x_1946;
        } else {
          let x_1948 : f32 = u_xlat29;
          x_1942 = x_1948;
        }
        let x_1949 : f32 = x_1942;
        u_xlat72 = x_1949;
        let x_1950 : i32 = u_xlati69;
        let x_1952 : f32 = x_377.x_AdditionalShadowParams[x_1950].w;
        u_xlat7.x = trunc(x_1952);
        let x_1955 : f32 = u_xlat72;
        let x_1957 : f32 = u_xlat7.x;
        u_xlat72 = (x_1955 + x_1957);
        let x_1959 : f32 = u_xlat72;
        u_xlati71 = i32(x_1959);
      }
      let x_1961 : i32 = u_xlati71;
      u_xlati71 = (x_1961 << bitcast<u32>(2i));
      let x_1963 : vec3<f32> = vs_TEXCOORD1;
      let x_1966 : i32 = u_xlati71;
      let x_1969 : i32 = u_xlati71;
      let x_1973 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_1966 + 1i) / 4i)][((x_1969 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1963.y, x_1963.y, x_1963.y, x_1963.y) * x_1973);
      let x_1975 : i32 = u_xlati71;
      let x_1977 : i32 = u_xlati71;
      let x_1980 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[(x_1975 / 4i)][(x_1977 % 4i)];
      let x_1981 : vec3<f32> = vs_TEXCOORD1;
      let x_1984 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1980 * vec4<f32>(x_1981.x, x_1981.x, x_1981.x, x_1981.x)) + x_1984);
      let x_1986 : i32 = u_xlati71;
      let x_1989 : i32 = u_xlati71;
      let x_1993 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_1986 + 2i) / 4i)][((x_1989 + 2i) % 4i)];
      let x_1994 : vec3<f32> = vs_TEXCOORD1;
      let x_1997 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1993 * vec4<f32>(x_1994.z, x_1994.z, x_1994.z, x_1994.z)) + x_1997);
      let x_1999 : vec4<f32> = u_xlat7;
      let x_2000 : i32 = u_xlati71;
      let x_2003 : i32 = u_xlati71;
      let x_2007 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2000 + 3i) / 4i)][((x_2003 + 3i) % 4i)];
      u_xlat7 = (x_1999 + x_2007);
      let x_2009 : vec4<f32> = u_xlat7;
      let x_2011 : vec4<f32> = u_xlat7;
      let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.y, x_2009.z) / vec3<f32>(x_2011.w, x_2011.w, x_2011.w));
      let x_2014 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
      let x_2017 : i32 = u_xlati69;
      let x_2019 : f32 = x_377.x_AdditionalShadowParams[x_2017].y;
      u_xlatb71 = (0.0f < x_2019);
      let x_2021 : bool = u_xlatb71;
      if (x_2021) {
        let x_2024 : i32 = u_xlati69;
        let x_2026 : f32 = x_377.x_AdditionalShadowParams[x_2024].y;
        u_xlatb71 = (1.0f == x_2026);
        let x_2028 : bool = u_xlatb71;
        if (x_2028) {
          let x_2031 : vec4<f32> = u_xlat7;
          let x_2034 : vec4<f32> = x_377.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2031.x, x_2031.y, x_2031.x, x_2031.y) + x_2034);
          let x_2037 : vec4<f32> = u_xlat8;
          let x_2038 : vec2<f32> = vec2<f32>(x_2037.x, x_2037.y);
          let x_2040 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2038.x, x_2038.y, x_2040);
          let x_2048 : vec3<f32> = txVec30;
          let x_2050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2048.xy, x_2048.z);
          u_xlat9.x = x_2050;
          let x_2053 : vec4<f32> = u_xlat8;
          let x_2054 : vec2<f32> = vec2<f32>(x_2053.z, x_2053.w);
          let x_2056 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
          let x_2063 : vec3<f32> = txVec31;
          let x_2065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
          u_xlat9.y = x_2065;
          let x_2067 : vec4<f32> = u_xlat7;
          let x_2071 : vec4<f32> = x_377.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2067.x, x_2067.y, x_2067.x, x_2067.y) + x_2071);
          let x_2074 : vec4<f32> = u_xlat8;
          let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
          let x_2077 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
          let x_2084 : vec3<f32> = txVec32;
          let x_2086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
          u_xlat9.z = x_2086;
          let x_2089 : vec4<f32> = u_xlat8;
          let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
          let x_2092 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
          let x_2099 : vec3<f32> = txVec33;
          let x_2101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
          u_xlat9.w = x_2101;
          let x_2103 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2103, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2106 : i32 = u_xlati69;
          let x_2108 : f32 = x_377.x_AdditionalShadowParams[x_2106].y;
          u_xlatb72 = (2.0f == x_2108);
          let x_2110 : bool = u_xlatb72;
          if (x_2110) {
            let x_2113 : vec4<f32> = u_xlat7;
            let x_2117 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2120 : vec2<f32> = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(x_2117.z, x_2117.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2121 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2120.x, x_2120.y, x_2121.z, x_2121.w);
            let x_2123 : vec4<f32> = u_xlat8;
            let x_2125 : vec2<f32> = floor(vec2<f32>(x_2123.x, x_2123.y));
            let x_2126 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2125.x, x_2125.y, x_2126.z, x_2126.w);
            let x_2129 : vec4<f32> = u_xlat7;
            let x_2132 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2135 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2132.z, x_2132.w)) + -(vec2<f32>(x_2135.x, x_2135.y)));
            let x_2139 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2139.x, x_2139.x, x_2139.y, x_2139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2142 : vec4<f32> = u_xlat9;
            let x_2144 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2142.x, x_2142.x, x_2142.z, x_2142.z) * vec4<f32>(x_2144.x, x_2144.x, x_2144.z, x_2144.z));
            let x_2147 : vec4<f32> = u_xlat10;
            let x_2149 : vec2<f32> = (vec2<f32>(x_2147.y, x_2147.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2150 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2149.x, x_2150.y, x_2149.y, x_2150.w);
            let x_2152 : vec4<f32> = u_xlat10;
            let x_2155 : vec2<f32> = u_xlat52;
            let x_2157 : vec2<f32> = ((vec2<f32>(x_2152.x, x_2152.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2155));
            let x_2158 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2157.x, x_2157.y, x_2158.z, x_2158.w);
            let x_2161 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2161) + vec2<f32>(1.0f, 1.0f));
            let x_2164 : vec2<f32> = u_xlat52;
            let x_2165 : vec2<f32> = min(x_2164, vec2<f32>(0.0f, 0.0f));
            let x_2166 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
            let x_2168 : vec4<f32> = u_xlat11;
            let x_2171 : vec4<f32> = u_xlat11;
            let x_2174 : vec2<f32> = u_xlat54;
            let x_2175 : vec2<f32> = ((-(vec2<f32>(x_2168.x, x_2168.y)) * vec2<f32>(x_2171.x, x_2171.y)) + x_2174);
            let x_2176 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
            let x_2178 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2178, vec2<f32>(0.0f, 0.0f));
            let x_2180 : vec2<f32> = u_xlat52;
            let x_2182 : vec2<f32> = u_xlat52;
            let x_2184 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2180) * x_2182) + vec2<f32>(x_2184.y, x_2184.w));
            let x_2187 : vec4<f32> = u_xlat11;
            let x_2189 : vec2<f32> = (vec2<f32>(x_2187.x, x_2187.y) + vec2<f32>(1.0f, 1.0f));
            let x_2190 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2190.w);
            let x_2192 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2192 + vec2<f32>(1.0f, 1.0f));
            let x_2194 : vec4<f32> = u_xlat10;
            let x_2196 : vec2<f32> = (vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2197 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
            let x_2199 : vec2<f32> = u_xlat54;
            let x_2200 : vec2<f32> = (x_2199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2201 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2203 : vec4<f32> = u_xlat11;
            let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2206 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
            let x_2208 : vec2<f32> = u_xlat52;
            let x_2209 : vec2<f32> = (x_2208 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2210 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
            let x_2212 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2212.y, x_2212.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2216 : f32 = u_xlat11.x;
            u_xlat12.z = x_2216;
            let x_2219 : f32 = u_xlat52.x;
            u_xlat12.w = x_2219;
            let x_2222 : f32 = u_xlat13.x;
            u_xlat10.z = x_2222;
            let x_2225 : f32 = u_xlat9.x;
            u_xlat10.w = x_2225;
            let x_2227 : vec4<f32> = u_xlat10;
            let x_2229 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2227.z, x_2227.w, x_2227.x, x_2227.z) + vec4<f32>(x_2229.z, x_2229.w, x_2229.x, x_2229.z));
            let x_2233 : f32 = u_xlat12.y;
            u_xlat11.z = x_2233;
            let x_2236 : f32 = u_xlat52.y;
            u_xlat11.w = x_2236;
            let x_2239 : f32 = u_xlat10.y;
            u_xlat13.z = x_2239;
            let x_2242 : f32 = u_xlat9.z;
            u_xlat13.w = x_2242;
            let x_2244 : vec4<f32> = u_xlat11;
            let x_2246 : vec4<f32> = u_xlat13;
            let x_2248 : vec3<f32> = (vec3<f32>(x_2244.z, x_2244.y, x_2244.w) + vec3<f32>(x_2246.z, x_2246.y, x_2246.w));
            let x_2249 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
            let x_2251 : vec4<f32> = u_xlat10;
            let x_2253 : vec4<f32> = u_xlat14;
            let x_2255 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.z, x_2251.w) / vec3<f32>(x_2253.z, x_2253.w, x_2253.y));
            let x_2256 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat10;
            let x_2260 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.y, x_2258.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2261 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
            let x_2263 : vec4<f32> = u_xlat13;
            let x_2265 : vec4<f32> = u_xlat9;
            let x_2267 : vec3<f32> = (vec3<f32>(x_2263.z, x_2263.y, x_2263.w) / vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
            let x_2268 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
            let x_2270 : vec4<f32> = u_xlat11;
            let x_2272 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2273 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
            let x_2275 : vec4<f32> = u_xlat10;
            let x_2278 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2280 : vec3<f32> = (vec3<f32>(x_2275.y, x_2275.x, x_2275.z) * vec3<f32>(x_2278.x, x_2278.x, x_2278.x));
            let x_2281 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
            let x_2283 : vec4<f32> = u_xlat11;
            let x_2286 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2288 : vec3<f32> = (vec3<f32>(x_2283.x, x_2283.y, x_2283.z) * vec3<f32>(x_2286.y, x_2286.y, x_2286.y));
            let x_2289 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
            let x_2292 : f32 = u_xlat11.x;
            u_xlat10.w = x_2292;
            let x_2294 : vec4<f32> = u_xlat8;
            let x_2297 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y) * vec4<f32>(x_2297.x, x_2297.y, x_2297.x, x_2297.y)) + vec4<f32>(x_2300.y, x_2300.w, x_2300.x, x_2300.w));
            let x_2303 : vec4<f32> = u_xlat8;
            let x_2306 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2309 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2303.x, x_2303.y) * vec2<f32>(x_2306.x, x_2306.y)) + vec2<f32>(x_2309.z, x_2309.w));
            let x_2313 : f32 = u_xlat10.y;
            u_xlat11.w = x_2313;
            let x_2315 : vec4<f32> = u_xlat11;
            let x_2316 : vec2<f32> = vec2<f32>(x_2315.y, x_2315.z);
            let x_2317 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2317.x, x_2316.x, x_2317.z, x_2316.y);
            let x_2319 : vec4<f32> = u_xlat8;
            let x_2322 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2325 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y) * vec4<f32>(x_2322.x, x_2322.y, x_2322.x, x_2322.y)) + vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2325.y));
            let x_2328 : vec4<f32> = u_xlat8;
            let x_2331 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) * vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.w, x_2334.y, x_2334.w, x_2334.z));
            let x_2337 : vec4<f32> = u_xlat8;
            let x_2340 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2343 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y) * vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y)) + vec4<f32>(x_2343.x, x_2343.w, x_2343.z, x_2343.w));
            let x_2346 : vec4<f32> = u_xlat9;
            let x_2348 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2346.x, x_2346.x, x_2346.x, x_2346.y) * vec4<f32>(x_2348.z, x_2348.w, x_2348.y, x_2348.z));
            let x_2351 : vec4<f32> = u_xlat9;
            let x_2353 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2351.y, x_2351.y, x_2351.z, x_2351.z) * x_2353);
            let x_2356 : f32 = u_xlat9.z;
            let x_2358 : f32 = u_xlat14.y;
            u_xlat72 = (x_2356 * x_2358);
            let x_2361 : vec4<f32> = u_xlat12;
            let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
            let x_2364 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
            let x_2371 : vec3<f32> = txVec34;
            let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
            u_xlat73 = x_2373;
            let x_2375 : vec4<f32> = u_xlat12;
            let x_2376 : vec2<f32> = vec2<f32>(x_2375.z, x_2375.w);
            let x_2378 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
            let x_2385 : vec3<f32> = txVec35;
            let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
            u_xlat8.x = x_2387;
            let x_2390 : f32 = u_xlat8.x;
            let x_2392 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2390 * x_2392);
            let x_2396 : f32 = u_xlat15.x;
            let x_2397 : f32 = u_xlat73;
            let x_2400 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2396 * x_2397) + x_2400);
            let x_2403 : vec2<f32> = u_xlat52;
            let x_2405 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2403.x, x_2403.y, x_2405);
            let x_2412 : vec3<f32> = txVec36;
            let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
            u_xlat8.x = x_2414;
            let x_2417 : f32 = u_xlat15.z;
            let x_2419 : f32 = u_xlat8.x;
            let x_2421 : f32 = u_xlat73;
            u_xlat73 = ((x_2417 * x_2419) + x_2421);
            let x_2424 : vec4<f32> = u_xlat11;
            let x_2425 : vec2<f32> = vec2<f32>(x_2424.x, x_2424.y);
            let x_2427 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2425.x, x_2425.y, x_2427);
            let x_2434 : vec3<f32> = txVec37;
            let x_2436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2434.xy, x_2434.z);
            u_xlat8.x = x_2436;
            let x_2439 : f32 = u_xlat15.w;
            let x_2441 : f32 = u_xlat8.x;
            let x_2443 : f32 = u_xlat73;
            u_xlat73 = ((x_2439 * x_2441) + x_2443);
            let x_2446 : vec4<f32> = u_xlat13;
            let x_2447 : vec2<f32> = vec2<f32>(x_2446.x, x_2446.y);
            let x_2449 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
            let x_2456 : vec3<f32> = txVec38;
            let x_2458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
            u_xlat8.x = x_2458;
            let x_2461 : f32 = u_xlat16.x;
            let x_2463 : f32 = u_xlat8.x;
            let x_2465 : f32 = u_xlat73;
            u_xlat73 = ((x_2461 * x_2463) + x_2465);
            let x_2468 : vec4<f32> = u_xlat13;
            let x_2469 : vec2<f32> = vec2<f32>(x_2468.z, x_2468.w);
            let x_2471 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
            let x_2478 : vec3<f32> = txVec39;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat8.x = x_2480;
            let x_2483 : f32 = u_xlat16.y;
            let x_2485 : f32 = u_xlat8.x;
            let x_2487 : f32 = u_xlat73;
            u_xlat73 = ((x_2483 * x_2485) + x_2487);
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.z, x_2490.w);
            let x_2493 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
            let x_2500 : vec3<f32> = txVec40;
            let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
            u_xlat8.x = x_2502;
            let x_2505 : f32 = u_xlat16.z;
            let x_2507 : f32 = u_xlat8.x;
            let x_2509 : f32 = u_xlat73;
            u_xlat73 = ((x_2505 * x_2507) + x_2509);
            let x_2512 : vec4<f32> = u_xlat10;
            let x_2513 : vec2<f32> = vec2<f32>(x_2512.x, x_2512.y);
            let x_2515 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
            let x_2522 : vec3<f32> = txVec41;
            let x_2524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
            u_xlat8.x = x_2524;
            let x_2527 : f32 = u_xlat16.w;
            let x_2529 : f32 = u_xlat8.x;
            let x_2531 : f32 = u_xlat73;
            u_xlat73 = ((x_2527 * x_2529) + x_2531);
            let x_2534 : vec4<f32> = u_xlat10;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.z, x_2534.w);
            let x_2537 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2544 : vec3<f32> = txVec42;
            let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
            u_xlat8.x = x_2546;
            let x_2548 : f32 = u_xlat72;
            let x_2550 : f32 = u_xlat8.x;
            let x_2552 : f32 = u_xlat73;
            u_xlat71 = ((x_2548 * x_2550) + x_2552);
          } else {
            let x_2555 : vec4<f32> = u_xlat7;
            let x_2558 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2561 : vec2<f32> = ((vec2<f32>(x_2555.x, x_2555.y) * vec2<f32>(x_2558.z, x_2558.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2562 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
            let x_2564 : vec4<f32> = u_xlat8;
            let x_2566 : vec2<f32> = floor(vec2<f32>(x_2564.x, x_2564.y));
            let x_2567 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat7;
            let x_2572 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2575 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2569.x, x_2569.y) * vec2<f32>(x_2572.z, x_2572.w)) + -(vec2<f32>(x_2575.x, x_2575.y)));
            let x_2579 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2579.x, x_2579.x, x_2579.y, x_2579.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2582 : vec4<f32> = u_xlat9;
            let x_2584 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2582.x, x_2582.x, x_2582.z, x_2582.z) * vec4<f32>(x_2584.x, x_2584.x, x_2584.z, x_2584.z));
            let x_2587 : vec4<f32> = u_xlat10;
            let x_2589 : vec2<f32> = (vec2<f32>(x_2587.y, x_2587.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2590 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2590.x, x_2589.x, x_2590.z, x_2589.y);
            let x_2592 : vec4<f32> = u_xlat10;
            let x_2595 : vec2<f32> = u_xlat52;
            let x_2597 : vec2<f32> = ((vec2<f32>(x_2592.x, x_2592.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2595));
            let x_2598 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2597.x, x_2598.y, x_2597.y, x_2598.w);
            let x_2600 : vec2<f32> = u_xlat52;
            let x_2602 : vec2<f32> = (-(x_2600) + vec2<f32>(1.0f, 1.0f));
            let x_2603 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2605 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2605, vec2<f32>(0.0f, 0.0f));
            let x_2607 : vec2<f32> = u_xlat54;
            let x_2609 : vec2<f32> = u_xlat54;
            let x_2611 : vec4<f32> = u_xlat10;
            let x_2613 : vec2<f32> = ((-(x_2607) * x_2609) + vec2<f32>(x_2611.x, x_2611.y));
            let x_2614 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2613.x, x_2613.y, x_2614.z, x_2614.w);
            let x_2616 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2616, vec2<f32>(0.0f, 0.0f));
            let x_2619 : vec2<f32> = u_xlat54;
            let x_2621 : vec2<f32> = u_xlat54;
            let x_2623 : vec4<f32> = u_xlat9;
            let x_2625 : vec2<f32> = ((-(x_2619) * x_2621) + vec2<f32>(x_2623.y, x_2623.w));
            let x_2626 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2625.x, x_2626.y, x_2625.y);
            let x_2628 : vec4<f32> = u_xlat10;
            let x_2630 : vec2<f32> = (vec2<f32>(x_2628.x, x_2628.y) + vec2<f32>(2.0f, 2.0f));
            let x_2631 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
            let x_2633 : vec3<f32> = u_xlat31;
            let x_2635 : vec2<f32> = (vec2<f32>(x_2633.x, x_2633.z) + vec2<f32>(2.0f, 2.0f));
            let x_2636 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
            let x_2639 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2639 * 0.08163200318813323975f);
            let x_2642 : vec4<f32> = u_xlat9;
            let x_2644 : vec3<f32> = (vec3<f32>(x_2642.z, x_2642.x, x_2642.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
            let x_2647 : vec4<f32> = u_xlat10;
            let x_2649 : vec2<f32> = (vec2<f32>(x_2647.x, x_2647.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2650 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2649.x, x_2649.y, x_2650.z, x_2650.w);
            let x_2653 : f32 = u_xlat13.y;
            u_xlat12.x = x_2653;
            let x_2655 : vec2<f32> = u_xlat52;
            let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2659 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2659.x, x_2658.x, x_2659.z, x_2658.y);
            let x_2661 : vec2<f32> = u_xlat52;
            let x_2664 : vec2<f32> = ((vec2<f32>(x_2661.x, x_2661.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2665 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2664.x, x_2665.y, x_2664.y, x_2665.w);
            let x_2668 : f32 = u_xlat9.x;
            u_xlat10.y = x_2668;
            let x_2671 : f32 = u_xlat11.y;
            u_xlat10.w = x_2671;
            let x_2673 : vec4<f32> = u_xlat10;
            let x_2674 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2673 + x_2674);
            let x_2676 : vec2<f32> = u_xlat52;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.y, x_2676.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2680 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2680.x, x_2679.x, x_2680.z, x_2679.y);
            let x_2682 : vec2<f32> = u_xlat52;
            let x_2685 : vec2<f32> = ((vec2<f32>(x_2682.y, x_2682.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2686 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2685.x, x_2686.y, x_2685.y, x_2686.w);
            let x_2689 : f32 = u_xlat9.y;
            u_xlat11.y = x_2689;
            let x_2691 : vec4<f32> = u_xlat11;
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2691 + x_2692);
            let x_2694 : vec4<f32> = u_xlat10;
            let x_2695 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2694 / x_2695);
            let x_2697 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2697 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2699 : vec4<f32> = u_xlat11;
            let x_2700 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2699 / x_2700);
            let x_2702 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2702 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2704 : vec4<f32> = u_xlat10;
            let x_2707 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2704.w, x_2704.x, x_2704.y, x_2704.z) * vec4<f32>(x_2707.x, x_2707.x, x_2707.x, x_2707.x));
            let x_2710 : vec4<f32> = u_xlat11;
            let x_2713 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2710.x, x_2710.w, x_2710.y, x_2710.z) * vec4<f32>(x_2713.y, x_2713.y, x_2713.y, x_2713.y));
            let x_2716 : vec4<f32> = u_xlat10;
            let x_2717 : vec3<f32> = vec3<f32>(x_2716.y, x_2716.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2717.x, x_2718.y, x_2717.y, x_2717.z);
            let x_2721 : f32 = u_xlat11.x;
            u_xlat13.y = x_2721;
            let x_2723 : vec4<f32> = u_xlat8;
            let x_2726 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2729 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y) * vec4<f32>(x_2726.x, x_2726.y, x_2726.x, x_2726.y)) + vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2729.y));
            let x_2732 : vec4<f32> = u_xlat8;
            let x_2735 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2738 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2732.x, x_2732.y) * vec2<f32>(x_2735.x, x_2735.y)) + vec2<f32>(x_2738.w, x_2738.y));
            let x_2742 : f32 = u_xlat13.y;
            u_xlat10.y = x_2742;
            let x_2745 : f32 = u_xlat11.z;
            u_xlat13.y = x_2745;
            let x_2747 : vec4<f32> = u_xlat8;
            let x_2750 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y) * vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y)) + vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2753.y));
            let x_2756 : vec4<f32> = u_xlat8;
            let x_2759 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat13;
            let x_2764 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.y) * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.w, x_2762.y));
            let x_2765 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
            let x_2768 : f32 = u_xlat13.y;
            u_xlat10.z = x_2768;
            let x_2770 : vec4<f32> = u_xlat8;
            let x_2773 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2776 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2770.x, x_2770.y, x_2770.x, x_2770.y) * vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y)) + vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.z));
            let x_2780 : f32 = u_xlat11.w;
            u_xlat13.y = x_2780;
            let x_2783 : vec4<f32> = u_xlat8;
            let x_2786 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y) * vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y)) + vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2789.y));
            let x_2793 : vec4<f32> = u_xlat8;
            let x_2796 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2793.x, x_2793.y) * vec2<f32>(x_2796.x, x_2796.y)) + vec2<f32>(x_2799.w, x_2799.y));
            let x_2803 : f32 = u_xlat13.y;
            u_xlat10.w = x_2803;
            let x_2806 : vec4<f32> = u_xlat8;
            let x_2809 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2809.x, x_2809.y)) + vec2<f32>(x_2812.x, x_2812.w));
            let x_2815 : vec4<f32> = u_xlat13;
            let x_2816 : vec3<f32> = vec3<f32>(x_2815.x, x_2815.z, x_2815.w);
            let x_2817 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2816.x, x_2817.y, x_2816.y, x_2816.z);
            let x_2819 : vec4<f32> = u_xlat8;
            let x_2822 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2825 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y) * vec4<f32>(x_2822.x, x_2822.y, x_2822.x, x_2822.y)) + vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2825.y));
            let x_2829 : vec4<f32> = u_xlat8;
            let x_2832 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2835 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2829.x, x_2829.y) * vec2<f32>(x_2832.x, x_2832.y)) + vec2<f32>(x_2835.w, x_2835.y));
            let x_2839 : f32 = u_xlat10.x;
            u_xlat11.x = x_2839;
            let x_2841 : vec4<f32> = u_xlat8;
            let x_2844 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2847 : vec4<f32> = u_xlat11;
            let x_2849 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.y) * vec2<f32>(x_2844.x, x_2844.y)) + vec2<f32>(x_2847.x, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2853 : vec4<f32> = u_xlat9;
            let x_2855 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2853.x, x_2853.x, x_2853.x, x_2853.x) * x_2855);
            let x_2858 : vec4<f32> = u_xlat9;
            let x_2860 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2858.y, x_2858.y, x_2858.y, x_2858.y) * x_2860);
            let x_2863 : vec4<f32> = u_xlat9;
            let x_2865 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2863.z, x_2863.z, x_2863.z, x_2863.z) * x_2865);
            let x_2867 : vec4<f32> = u_xlat9;
            let x_2869 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2867.w, x_2867.w, x_2867.w, x_2867.w) * x_2869);
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
            let x_2875 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec43;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat72 = x_2884;
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2887 : vec2<f32> = vec2<f32>(x_2886.z, x_2886.w);
            let x_2889 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
            let x_2896 : vec3<f32> = txVec44;
            let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
            u_xlat73 = x_2898;
            let x_2899 : f32 = u_xlat73;
            let x_2901 : f32 = u_xlat19.y;
            u_xlat73 = (x_2899 * x_2901);
            let x_2904 : f32 = u_xlat19.x;
            let x_2905 : f32 = u_xlat72;
            let x_2907 : f32 = u_xlat73;
            u_xlat72 = ((x_2904 * x_2905) + x_2907);
            let x_2910 : vec2<f32> = u_xlat52;
            let x_2912 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2910.x, x_2910.y, x_2912);
            let x_2919 : vec3<f32> = txVec45;
            let x_2921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2919.xy, x_2919.z);
            u_xlat73 = x_2921;
            let x_2923 : f32 = u_xlat19.z;
            let x_2924 : f32 = u_xlat73;
            let x_2926 : f32 = u_xlat72;
            u_xlat72 = ((x_2923 * x_2924) + x_2926);
            let x_2929 : vec4<f32> = u_xlat17;
            let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
            let x_2932 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
            let x_2939 : vec3<f32> = txVec46;
            let x_2941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
            u_xlat73 = x_2941;
            let x_2943 : f32 = u_xlat19.w;
            let x_2944 : f32 = u_xlat73;
            let x_2946 : f32 = u_xlat72;
            u_xlat72 = ((x_2943 * x_2944) + x_2946);
            let x_2949 : vec4<f32> = u_xlat15;
            let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
            let x_2952 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
            let x_2959 : vec3<f32> = txVec47;
            let x_2961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
            u_xlat73 = x_2961;
            let x_2963 : f32 = u_xlat20.x;
            let x_2964 : f32 = u_xlat73;
            let x_2966 : f32 = u_xlat72;
            u_xlat72 = ((x_2963 * x_2964) + x_2966);
            let x_2969 : vec4<f32> = u_xlat15;
            let x_2970 : vec2<f32> = vec2<f32>(x_2969.z, x_2969.w);
            let x_2972 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2970.x, x_2970.y, x_2972);
            let x_2979 : vec3<f32> = txVec48;
            let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
            u_xlat73 = x_2981;
            let x_2983 : f32 = u_xlat20.y;
            let x_2984 : f32 = u_xlat73;
            let x_2986 : f32 = u_xlat72;
            u_xlat72 = ((x_2983 * x_2984) + x_2986);
            let x_2989 : vec4<f32> = u_xlat16;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.x, x_2989.y);
            let x_2992 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec49;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat73 = x_3001;
            let x_3003 : f32 = u_xlat20.z;
            let x_3004 : f32 = u_xlat73;
            let x_3006 : f32 = u_xlat72;
            u_xlat72 = ((x_3003 * x_3004) + x_3006);
            let x_3009 : vec4<f32> = u_xlat17;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.z, x_3009.w);
            let x_3012 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec50;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat73 = x_3021;
            let x_3023 : f32 = u_xlat20.w;
            let x_3024 : f32 = u_xlat73;
            let x_3026 : f32 = u_xlat72;
            u_xlat72 = ((x_3023 * x_3024) + x_3026);
            let x_3029 : vec4<f32> = u_xlat18;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec51;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat73 = x_3041;
            let x_3043 : f32 = u_xlat21.x;
            let x_3044 : f32 = u_xlat73;
            let x_3046 : f32 = u_xlat72;
            u_xlat72 = ((x_3043 * x_3044) + x_3046);
            let x_3049 : vec4<f32> = u_xlat18;
            let x_3050 : vec2<f32> = vec2<f32>(x_3049.z, x_3049.w);
            let x_3052 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
            let x_3059 : vec3<f32> = txVec52;
            let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
            u_xlat73 = x_3061;
            let x_3063 : f32 = u_xlat21.y;
            let x_3064 : f32 = u_xlat73;
            let x_3066 : f32 = u_xlat72;
            u_xlat72 = ((x_3063 * x_3064) + x_3066);
            let x_3069 : vec2<f32> = u_xlat32;
            let x_3071 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
            let x_3078 : vec3<f32> = txVec53;
            let x_3080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
            u_xlat73 = x_3080;
            let x_3082 : f32 = u_xlat21.z;
            let x_3083 : f32 = u_xlat73;
            let x_3085 : f32 = u_xlat72;
            u_xlat72 = ((x_3082 * x_3083) + x_3085);
            let x_3088 : vec2<f32> = u_xlat60;
            let x_3090 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec54;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat73 = x_3099;
            let x_3101 : f32 = u_xlat21.w;
            let x_3102 : f32 = u_xlat73;
            let x_3104 : f32 = u_xlat72;
            u_xlat72 = ((x_3101 * x_3102) + x_3104);
            let x_3107 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.x, x_3107.y);
            let x_3110 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec55;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat73 = x_3119;
            let x_3121 : f32 = u_xlat9.x;
            let x_3122 : f32 = u_xlat73;
            let x_3124 : f32 = u_xlat72;
            u_xlat72 = ((x_3121 * x_3122) + x_3124);
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3128 : vec2<f32> = vec2<f32>(x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec56;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat73 = x_3139;
            let x_3141 : f32 = u_xlat9.y;
            let x_3142 : f32 = u_xlat73;
            let x_3144 : f32 = u_xlat72;
            u_xlat72 = ((x_3141 * x_3142) + x_3144);
            let x_3147 : vec2<f32> = u_xlat55;
            let x_3149 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec57;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat73 = x_3158;
            let x_3160 : f32 = u_xlat9.z;
            let x_3161 : f32 = u_xlat73;
            let x_3163 : f32 = u_xlat72;
            u_xlat72 = ((x_3160 * x_3161) + x_3163);
            let x_3166 : vec4<f32> = u_xlat8;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.x, x_3166.y);
            let x_3169 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec58;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat73 = x_3178;
            let x_3180 : f32 = u_xlat9.w;
            let x_3181 : f32 = u_xlat73;
            let x_3183 : f32 = u_xlat72;
            u_xlat71 = ((x_3180 * x_3181) + x_3183);
          }
        }
      } else {
        let x_3187 : vec4<f32> = u_xlat7;
        let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
        let x_3190 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
        let x_3197 : vec3<f32> = txVec59;
        let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
        u_xlat71 = x_3199;
      }
      let x_3200 : i32 = u_xlati69;
      let x_3202 : f32 = x_377.x_AdditionalShadowParams[x_3200].x;
      u_xlat72 = (1.0f + -(x_3202));
      let x_3205 : f32 = u_xlat71;
      let x_3206 : i32 = u_xlati69;
      let x_3208 : f32 = x_377.x_AdditionalShadowParams[x_3206].x;
      let x_3210 : f32 = u_xlat72;
      u_xlat71 = ((x_3205 * x_3208) + x_3210);
      let x_3213 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3213);
      let x_3216 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3216 >= 1.0f);
      let x_3219 : bool = u_xlatb72;
      let x_3221 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3219 | x_3221);
      let x_3223 : bool = u_xlatb72;
      let x_3224 : f32 = u_xlat71;
      u_xlat71 = select(x_3224, 1.0f, x_3223);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3227 : f32 = u_xlat71;
    u_xlat72 = (-(x_3227) + 1.0f);
    let x_3231 : f32 = u_xlat1.x;
    let x_3232 : f32 = u_xlat72;
    let x_3234 : f32 = u_xlat71;
    u_xlat71 = ((x_3231 * x_3232) + x_3234);
    let x_3236 : f32 = u_xlat70;
    let x_3237 : f32 = u_xlat71;
    u_xlat70 = (x_3236 * x_3237);
    let x_3239 : f32 = u_xlat70;
    let x_3241 : i32 = u_xlati69;
    let x_3243 : vec4<f32> = x_1790.x_AdditionalLightsColor[x_3241];
    let x_3245 : vec3<f32> = (vec3<f32>(x_3239, x_3239, x_3239) * vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
    let x_3246 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
    let x_3248 : vec4<f32> = u_xlat2;
    let x_3250 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_3248.x, x_3248.y, x_3248.z), vec3<f32>(x_3250.x, x_3250.y, x_3250.z));
    let x_3253 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3253, 0.0f, 1.0f);
    let x_3255 : f32 = u_xlat69;
    let x_3257 : vec4<f32> = u_xlat7;
    let x_3259 : vec3<f32> = (vec3<f32>(x_3255, x_3255, x_3255) * vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
    let x_3260 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
    let x_3262 : vec4<f32> = u_xlat6;
    let x_3264 : vec4<f32> = u_xlat1;
    let x_3267 : vec4<f32> = u_xlat5;
    let x_3269 : vec3<f32> = ((vec3<f32>(x_3262.x, x_3262.y, x_3262.z) * vec3<f32>(x_3264.y, x_3264.z, x_3264.w)) + vec3<f32>(x_3267.x, x_3267.y, x_3267.z));
    let x_3270 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);

    continuing {
      let x_3272 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3272 + bitcast<u32>(1i));
    }
  }
  let x_3274 : vec3<f32> = u_xlat3;
  let x_3275 : vec4<f32> = u_xlat1;
  let x_3278 : vec4<f32> = u_xlat4;
  let x_3280 : vec3<f32> = ((x_3274 * vec3<f32>(x_3275.y, x_3275.z, x_3275.w)) + vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
  let x_3281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
  let x_3283 : vec4<f32> = u_xlat5;
  let x_3285 : vec4<f32> = u_xlat1;
  let x_3287 : vec3<f32> = (vec3<f32>(x_3283.x, x_3283.y, x_3283.z) + vec3<f32>(x_3285.x, x_3285.y, x_3285.z));
  let x_3288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3287.x, x_3287.y, x_3287.z, x_3288.w);
  let x_3291 : f32 = u_xlat22.x;
  let x_3293 : f32 = u_xlat22.x;
  u_xlat22.x = (x_3291 * -(x_3293));
  let x_3298 : f32 = u_xlat22.x;
  u_xlat22.x = exp2(x_3298);
  let x_3301 : vec4<f32> = u_xlat1;
  let x_3304 : vec4<f32> = x_45.unity_FogColor;
  let x_3307 : vec3<f32> = (vec3<f32>(x_3301.x, x_3301.y, x_3301.z) + -(vec3<f32>(x_3304.x, x_3304.y, x_3304.z)));
  let x_3308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
  let x_3312 : vec3<f32> = u_xlat22;
  let x_3314 : vec4<f32> = u_xlat1;
  let x_3318 : vec4<f32> = x_45.unity_FogColor;
  let x_3320 : vec3<f32> = ((vec3<f32>(x_3312.x, x_3312.x, x_3312.x) * vec3<f32>(x_3314.x, x_3314.y, x_3314.z)) + vec3<f32>(x_3318.x, x_3318.y, x_3318.z));
  let x_3321 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);
  let x_3324 : f32 = x_58.x_Surface;
  u_xlatb22 = (x_3324 == 1.0f);
  let x_3326 : bool = u_xlatb22;
  let x_3327 : bool = u_xlatb44;
  u_xlatb22 = (x_3326 | x_3327);
  let x_3329 : bool = u_xlatb22;
  if (x_3329) {
    let x_3334 : f32 = u_xlat0.x;
    x_3330 = x_3334;
  } else {
    x_3330 = 1.0f;
  }
  let x_3336 : f32 = x_3330;
  SV_Target0.w = x_3336;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


