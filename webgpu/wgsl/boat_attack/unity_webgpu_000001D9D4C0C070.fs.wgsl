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

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

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

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_381 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb32 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu32 : u32;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_616 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_750 : f32;
  var x_760 : f32;
  var txVec1 : vec3<f32>;
  var x_984 : f32;
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
  u_xlat10.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat30;
  let x_92 : f32 = u_xlat20;
  u_xlat20 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat20;
  u_xlat20 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat10.x;
  let x_100 : f32 = u_xlat20;
  u_xlat10.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat10.x;
  u_xlat10.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb20;
  if (x_117) {
    let x_122 : f32 = u_xlat10.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat10.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat10.x;
  u_xlatb10 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb10;
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
  let x_173 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_172.x, x_173.y, x_172.y);
  let x_175 : vec3<f32> = u_xlat10;
  let x_177 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_175.x, x_175.z), vec2<f32>(x_177.x, x_177.z));
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_195, 0.0000000000000001f);
  let x_199 : vec3<f32> = u_xlat10;
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec3<f32> = (vec3<f32>(x_199.z, x_199.z, x_199.z) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec3<f32> = u_xlat10;
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
  u_xlat10.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat10;
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
  u_xlat10.x = dot(x_259, x_260);
  let x_264 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_264, 0.00006103515625f);
  let x_269 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_269);
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
  u_xlat30 = (x_323 * x_325);
  let x_328 : f32 = u_xlat2.x;
  let x_330 : f32 = u_xlat2.x;
  let x_332 : f32 = u_xlat30;
  u_xlat30 = ((x_328 * x_330) + -(x_332));
  let x_337 : vec4<f32> = x_278.unity_SHC;
  let x_339 : f32 = u_xlat30;
  let x_342 : vec3<f32> = u_xlat6;
  let x_343 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339, x_339, x_339)) + x_342);
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_346 + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_350, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_356 : vec4<f32> = vs_TEXCOORD6;
  let x_357 : vec2<f32> = vec2<f32>(x_356.x, x_356.y);
  let x_359 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_357.x, x_357.y, x_359);
  let x_371 : vec3<f32> = txVec0;
  let x_373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_371.xy, x_371.z);
  u_xlat30 = x_373;
  let x_384 : f32 = x_381.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_384) + 1.0f);
  let x_388 : f32 = u_xlat30;
  let x_390 : f32 = x_381.x_MainLightShadowParams.x;
  let x_393 : f32 = u_xlat1.x;
  u_xlat30 = ((x_388 * x_390) + x_393);
  let x_397 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_397);
  let x_401 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (x_401 >= 1.0f);
  let x_403 : bool = u_xlatb1;
  let x_404 : bool = u_xlatb32;
  u_xlatb1 = (x_403 | x_404);
  let x_406 : bool = u_xlatb1;
  let x_407 : f32 = u_xlat30;
  u_xlat30 = select(x_407, 1.0f, x_406);
  let x_411 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_417 : vec3<f32> = (x_411 + -(x_415));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_428 : f32 = u_xlat1.x;
  let x_430 : f32 = x_381.x_MainLightShadowParams.z;
  let x_433 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat32 = ((x_428 * x_430) + x_433);
  let x_435 : f32 = u_xlat32;
  u_xlat32 = clamp(x_435, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat30;
  u_xlat33 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat32;
  let x_442 : f32 = u_xlat33;
  let x_444 : f32 = u_xlat30;
  u_xlat30 = ((x_441 * x_442) + x_444);
  let x_446 : f32 = u_xlat30;
  let x_448 : f32 = x_278.unity_LightData.z;
  u_xlat30 = (x_446 * x_448);
  let x_450 : f32 = u_xlat30;
  let x_454 : vec4<f32> = x_27.x_MainLightColor;
  let x_456 : vec3<f32> = (vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat2;
  let x_463 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat30 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat30;
  u_xlat30 = clamp(x_466, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat30;
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : f32 = x_41.x_SpecColor.w;
  u_xlat30 = ((x_474 * 10.0f) + 1.0f);
  let x_478 : f32 = u_xlat30;
  u_xlat30 = exp2(x_478);
  let x_481 : vec3<f32> = u_xlat3;
  let x_482 : vec3<f32> = u_xlat10;
  let x_486 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat7 = ((x_481 * vec3<f32>(x_482.x, x_482.x, x_482.x)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec3<f32> = u_xlat7;
  let x_490 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_489, x_490);
  let x_492 : f32 = u_xlat32;
  u_xlat32 = max(x_492, 1.17549435e-38f);
  let x_495 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_495);
  let x_497 : f32 = u_xlat32;
  let x_499 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_497, x_497, x_497) * x_499);
  let x_501 : vec4<f32> = u_xlat2;
  let x_503 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_501.x, x_501.y, x_501.z), x_503);
  let x_505 : f32 = u_xlat32;
  u_xlat32 = clamp(x_505, 0.0f, 1.0f);
  let x_507 : f32 = u_xlat32;
  u_xlat32 = log2(x_507);
  let x_509 : f32 = u_xlat30;
  let x_510 : f32 = u_xlat32;
  u_xlat32 = (x_509 * x_510);
  let x_512 : f32 = u_xlat32;
  u_xlat32 = exp2(x_512);
  let x_514 : f32 = u_xlat32;
  let x_517 : vec4<f32> = x_41.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat5;
  let x_522 : vec3<f32> = u_xlat7;
  let x_523 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * x_522);
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec3<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat1;
  let x_530 : vec4<f32> = u_xlat5;
  let x_532 : vec3<f32> = ((x_526 * vec3<f32>(x_527.y, x_527.z, x_527.w)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_538 : f32 = x_278.unity_LightData.y;
  u_xlat32 = min(x_536, x_538);
  let x_542 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_542));
  let x_546 : f32 = u_xlat1.x;
  let x_549 : f32 = x_381.x_AdditionalShadowFadeParams.x;
  let x_552 : f32 = x_381.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_546 * x_549) + x_552);
  let x_556 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_556, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_569 : u32 = u_xlatu_loop_1;
    let x_570 : u32 = u_xlatu32;
    if ((x_569 < x_570)) {
    } else {
      break;
    }
    let x_573 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_573 >> 2u);
    let x_577 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_577 & 3u));
    let x_582 : u32 = u_xlatu34;
    let x_585 : vec4<f32> = x_278.unity_LightIndices[bitcast<i32>(x_582)];
    let x_595 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_600 : vec4<u32> = indexable[x_595];
    u_xlat34 = dot(x_585, bitcast<vec4<f32>>(x_600));
    let x_604 : f32 = u_xlat34;
    u_xlati34 = i32(x_604);
    let x_606 : vec3<f32> = vs_TEXCOORD1;
    let x_617 : i32 = u_xlati34;
    let x_619 : vec4<f32> = x_616.x_AdditionalLightsPosition[x_617];
    let x_622 : i32 = u_xlati34;
    let x_624 : vec4<f32> = x_616.x_AdditionalLightsPosition[x_622];
    u_xlat7 = ((-(x_606) * vec3<f32>(x_619.w, x_619.w, x_619.w)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_628 : vec3<f32> = u_xlat7;
    let x_629 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_628, x_629);
    let x_631 : f32 = u_xlat35;
    u_xlat35 = max(x_631, 0.00006103515625f);
    let x_634 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_634);
    let x_636 : f32 = u_xlat36;
    let x_638 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_636, x_636, x_636) * x_638);
    let x_640 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_640);
    let x_642 : f32 = u_xlat35;
    let x_643 : i32 = u_xlati34;
    let x_645 : f32 = x_616.x_AdditionalLightsAttenuation[x_643].x;
    u_xlat35 = (x_642 * x_645);
    let x_647 : f32 = u_xlat35;
    let x_649 : f32 = u_xlat35;
    u_xlat35 = ((-(x_647) * x_649) + 1.0f);
    let x_652 : f32 = u_xlat35;
    u_xlat35 = max(x_652, 0.0f);
    let x_654 : f32 = u_xlat35;
    let x_655 : f32 = u_xlat35;
    u_xlat35 = (x_654 * x_655);
    let x_657 : f32 = u_xlat35;
    let x_658 : f32 = u_xlat36;
    u_xlat35 = (x_657 * x_658);
    let x_660 : i32 = u_xlati34;
    let x_662 : vec4<f32> = x_616.x_AdditionalLightsSpotDir[x_660];
    let x_664 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), x_664);
    let x_666 : f32 = u_xlat36;
    let x_667 : i32 = u_xlati34;
    let x_669 : f32 = x_616.x_AdditionalLightsAttenuation[x_667].z;
    let x_671 : i32 = u_xlati34;
    let x_673 : f32 = x_616.x_AdditionalLightsAttenuation[x_671].w;
    u_xlat36 = ((x_666 * x_669) + x_673);
    let x_675 : f32 = u_xlat36;
    u_xlat36 = clamp(x_675, 0.0f, 1.0f);
    let x_677 : f32 = u_xlat36;
    let x_678 : f32 = u_xlat36;
    u_xlat36 = (x_677 * x_678);
    let x_680 : f32 = u_xlat35;
    let x_681 : f32 = u_xlat36;
    u_xlat35 = (x_680 * x_681);
    let x_685 : i32 = u_xlati34;
    let x_687 : f32 = x_381.x_AdditionalShadowParams[x_685].w;
    u_xlati36 = i32(x_687);
    let x_690 : i32 = u_xlati36;
    u_xlatb37 = (x_690 >= 0i);
    let x_692 : bool = u_xlatb37;
    if (x_692) {
      let x_696 : i32 = u_xlati34;
      let x_698 : f32 = x_381.x_AdditionalShadowParams[x_696].z;
      u_xlatb37 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_698, x_698, x_698, x_698))));
      let x_703 : bool = u_xlatb37;
      if (x_703) {
        let x_708 : vec3<f32> = u_xlat7;
        let x_711 : vec3<f32> = u_xlat7;
        let x_714 : vec4<bool> = (abs(vec4<f32>(x_708.z, x_708.z, x_708.y, x_708.z)) >= abs(vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.x)));
        let x_716 : vec3<bool> = vec3<bool>(x_714.x, x_714.y, x_714.z);
        let x_717 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_720 : bool = u_xlatb8.y;
        let x_722 : bool = u_xlatb8.x;
        u_xlatb37 = (x_720 & x_722);
        let x_724 : vec3<f32> = u_xlat7;
        let x_727 : vec4<bool> = (-(vec4<f32>(x_724.z, x_724.y, x_724.z, x_724.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_728 : vec3<bool> = vec3<bool>(x_727.x, x_727.y, x_727.w);
        let x_729 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_728.x, x_728.y, x_729.z, x_728.z);
        let x_733 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_733);
        let x_739 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_739);
        let x_745 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_745);
        let x_749 : bool = u_xlatb8.z;
        if (x_749) {
          let x_754 : f32 = u_xlat8.y;
          x_750 = x_754;
        } else {
          let x_756 : f32 = u_xlat38;
          x_750 = x_756;
        }
        let x_757 : f32 = x_750;
        u_xlat18 = x_757;
        let x_759 : bool = u_xlatb37;
        if (x_759) {
          let x_764 : f32 = u_xlat8.x;
          x_760 = x_764;
        } else {
          let x_766 : f32 = u_xlat18;
          x_760 = x_766;
        }
        let x_767 : f32 = x_760;
        u_xlat37 = x_767;
        let x_768 : i32 = u_xlati34;
        let x_770 : f32 = x_381.x_AdditionalShadowParams[x_768].w;
        u_xlat8.x = trunc(x_770);
        let x_773 : f32 = u_xlat37;
        let x_775 : f32 = u_xlat8.x;
        u_xlat37 = (x_773 + x_775);
        let x_777 : f32 = u_xlat37;
        u_xlati36 = i32(x_777);
      }
      let x_779 : i32 = u_xlati36;
      u_xlati36 = (x_779 << bitcast<u32>(2i));
      let x_781 : vec3<f32> = vs_TEXCOORD1;
      let x_784 : i32 = u_xlati36;
      let x_787 : i32 = u_xlati36;
      let x_791 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_784 + 1i) / 4i)][((x_787 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_781.y, x_781.y, x_781.y, x_781.y) * x_791);
      let x_793 : i32 = u_xlati36;
      let x_795 : i32 = u_xlati36;
      let x_798 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[(x_793 / 4i)][(x_795 % 4i)];
      let x_799 : vec3<f32> = vs_TEXCOORD1;
      let x_802 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_798 * vec4<f32>(x_799.x, x_799.x, x_799.x, x_799.x)) + x_802);
      let x_804 : i32 = u_xlati36;
      let x_807 : i32 = u_xlati36;
      let x_811 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_804 + 2i) / 4i)][((x_807 + 2i) % 4i)];
      let x_812 : vec3<f32> = vs_TEXCOORD1;
      let x_815 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_811 * vec4<f32>(x_812.z, x_812.z, x_812.z, x_812.z)) + x_815);
      let x_817 : vec4<f32> = u_xlat8;
      let x_818 : i32 = u_xlati36;
      let x_821 : i32 = u_xlati36;
      let x_825 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_818 + 3i) / 4i)][((x_821 + 3i) % 4i)];
      u_xlat8 = (x_817 + x_825);
      let x_827 : vec4<f32> = u_xlat8;
      let x_829 : vec4<f32> = u_xlat8;
      let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) / vec3<f32>(x_829.w, x_829.w, x_829.w));
      let x_832 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
      let x_835 : vec4<f32> = u_xlat8;
      let x_836 : vec2<f32> = vec2<f32>(x_835.x, x_835.y);
      let x_838 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_836.x, x_836.y, x_838);
      let x_846 : vec3<f32> = txVec1;
      let x_848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_846.xy, x_846.z);
      u_xlat36 = x_848;
      let x_849 : i32 = u_xlati34;
      let x_851 : f32 = x_381.x_AdditionalShadowParams[x_849].x;
      u_xlat37 = (1.0f + -(x_851));
      let x_854 : f32 = u_xlat36;
      let x_855 : i32 = u_xlati34;
      let x_857 : f32 = x_381.x_AdditionalShadowParams[x_855].x;
      let x_859 : f32 = u_xlat37;
      u_xlat36 = ((x_854 * x_857) + x_859);
      let x_862 : f32 = u_xlat8.z;
      u_xlatb37 = (0.0f >= x_862);
      let x_865 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_865 >= 1.0f);
      let x_868 : bool = u_xlatb37;
      let x_870 : bool = u_xlatb8.x;
      u_xlatb37 = (x_868 | x_870);
      let x_872 : bool = u_xlatb37;
      let x_873 : f32 = u_xlat36;
      u_xlat36 = select(x_873, 1.0f, x_872);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_876 : f32 = u_xlat36;
    u_xlat37 = (-(x_876) + 1.0f);
    let x_880 : f32 = u_xlat1.x;
    let x_881 : f32 = u_xlat37;
    let x_883 : f32 = u_xlat36;
    u_xlat36 = ((x_880 * x_881) + x_883);
    let x_885 : f32 = u_xlat35;
    let x_886 : f32 = u_xlat36;
    u_xlat35 = (x_885 * x_886);
    let x_888 : f32 = u_xlat35;
    let x_890 : i32 = u_xlati34;
    let x_892 : vec4<f32> = x_616.x_AdditionalLightsColor[x_890];
    let x_894 : vec3<f32> = (vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_892.x, x_892.y, x_892.z));
    let x_895 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
    let x_897 : vec4<f32> = u_xlat2;
    let x_899 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_897.x, x_897.y, x_897.z), x_899);
    let x_901 : f32 = u_xlat34;
    u_xlat34 = clamp(x_901, 0.0f, 1.0f);
    let x_904 : f32 = u_xlat34;
    let x_906 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
    let x_909 : vec3<f32> = u_xlat3;
    let x_910 : vec3<f32> = u_xlat10;
    let x_913 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_909 * vec3<f32>(x_910.x, x_910.x, x_910.x)) + x_913);
    let x_915 : vec3<f32> = u_xlat7;
    let x_916 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_915, x_916);
    let x_918 : f32 = u_xlat34;
    u_xlat34 = max(x_918, 1.17549435e-38f);
    let x_920 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_920);
    let x_922 : f32 = u_xlat34;
    let x_924 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_922, x_922, x_922) * x_924);
    let x_926 : vec4<f32> = u_xlat2;
    let x_928 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_926.x, x_926.y, x_926.z), x_928);
    let x_930 : f32 = u_xlat34;
    u_xlat34 = clamp(x_930, 0.0f, 1.0f);
    let x_932 : f32 = u_xlat34;
    u_xlat34 = log2(x_932);
    let x_934 : f32 = u_xlat30;
    let x_935 : f32 = u_xlat34;
    u_xlat34 = (x_934 * x_935);
    let x_937 : f32 = u_xlat34;
    u_xlat34 = exp2(x_937);
    let x_939 : f32 = u_xlat34;
    let x_942 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_942.x, x_942.y, x_942.z));
    let x_945 : vec3<f32> = u_xlat7;
    let x_946 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_945 * vec3<f32>(x_946.x, x_946.y, x_946.z));
    let x_949 : vec3<f32> = u_xlat9;
    let x_950 : vec4<f32> = u_xlat1;
    let x_953 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_949 * vec3<f32>(x_950.y, x_950.z, x_950.w)) + x_953);
    let x_955 : vec3<f32> = u_xlat6;
    let x_956 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_955 + x_956);

    continuing {
      let x_958 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_958 + bitcast<u32>(1i));
    }
  }
  let x_960 : vec3<f32> = u_xlat4;
  let x_961 : vec4<f32> = u_xlat1;
  let x_964 : vec4<f32> = u_xlat5;
  let x_966 : vec3<f32> = ((x_960 * vec3<f32>(x_961.y, x_961.z, x_961.w)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_971 : vec3<f32> = u_xlat6;
  let x_972 : vec4<f32> = u_xlat1;
  let x_974 : vec3<f32> = (x_971 + vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_978 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_978 == 1.0f);
  let x_980 : bool = u_xlatb10;
  let x_981 : bool = u_xlatb20;
  u_xlatb10 = (x_980 | x_981);
  let x_983 : bool = u_xlatb10;
  if (x_983) {
    let x_988 : f32 = u_xlat0.x;
    x_984 = x_988;
  } else {
    x_984 = 1.0f;
  }
  let x_990 : f32 = x_984;
  SV_Target0.w = x_990;
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


