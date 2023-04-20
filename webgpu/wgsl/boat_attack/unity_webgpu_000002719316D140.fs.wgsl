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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_336 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb32 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : f32;

@group(1) @binding(2) var<uniform> x_401 : UnityPerDraw;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu32 : u32;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_561 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_695 : f32;
  var x_705 : f32;
  var txVec1 : vec3<f32>;
  var x_927 : f32;
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
  u_xlat2 = vec3<f32>(x_154.x, x_154.y, x_154.w);
  let x_157 : f32 = u_xlat2.x;
  let x_160 : f32 = u_xlat2.z;
  u_xlat2.x = (x_157 * x_160);
  let x_163 : vec3<f32> = u_xlat2;
  let x_170 : vec2<f32> = ((vec2<f32>(x_163.x, x_163.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_171 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_170.x, x_171.y, x_170.y);
  let x_173 : vec3<f32> = u_xlat10;
  let x_175 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_173.x, x_173.z), vec2<f32>(x_175.x, x_175.z));
  let x_180 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_180, 1.0f);
  let x_184 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_184) + 1.0f);
  let x_189 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_189);
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_193, 0.0000000000000001f);
  let x_197 : vec3<f32> = u_xlat10;
  let x_201 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_197.z, x_197.z, x_197.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec3<f32> = u_xlat10;
  let x_207 : vec4<f32> = vs_TEXCOORD3;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_204.x, x_204.x, x_204.x) * vec3<f32>(x_207.x, x_207.y, x_207.z)) + x_210);
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = vs_TEXCOORD2;
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + x_218);
  let x_220 : vec3<f32> = u_xlat2;
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_220, x_221);
  let x_225 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_225);
  let x_228 : vec3<f32> = u_xlat10;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_228.x, x_228.x, x_228.x) * x_230);
  let x_235 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_235;
  let x_238 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_238;
  let x_242 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_242;
  let x_244 : vec3<f32> = u_xlat3;
  let x_245 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_244, x_245);
  let x_249 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_249, 0.00006103515625f);
  let x_254 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_254);
  let x_264 : vec2<f32> = vs_TEXCOORD7;
  let x_266 : f32 = x_27.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_264, x_266);
  u_xlat4 = x_267;
  let x_273 : vec2<f32> = vs_TEXCOORD7;
  let x_275 : f32 = x_27.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  u_xlat5 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_278 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec3<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_285, vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : f32 = u_xlat30;
  u_xlat30 = (x_289 + 0.5f);
  let x_291 : f32 = u_xlat30;
  let x_293 : vec3<f32> = u_xlat5;
  let x_294 : vec3<f32> = (vec3<f32>(x_291, x_291, x_291) * x_293);
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : f32 = u_xlat4.w;
  u_xlat30 = max(x_298, 0.00009999999747378752f);
  let x_300 : vec4<f32> = u_xlat4;
  let x_302 : f32 = u_xlat30;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) / vec3<f32>(x_302, x_302, x_302));
  let x_305 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_313 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_311.x, x_311.y, x_313);
  let x_325 : vec3<f32> = txVec0;
  let x_327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_325.xy, x_325.z);
  u_xlat30 = x_327;
  let x_339 : f32 = x_336.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_339) + 1.0f);
  let x_343 : f32 = u_xlat30;
  let x_345 : f32 = x_336.x_MainLightShadowParams.x;
  let x_348 : f32 = u_xlat1.x;
  u_xlat30 = ((x_343 * x_345) + x_348);
  let x_352 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_352);
  let x_356 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (x_356 >= 1.0f);
  let x_358 : bool = u_xlatb1;
  let x_359 : bool = u_xlatb32;
  u_xlatb1 = (x_358 | x_359);
  let x_361 : bool = u_xlatb1;
  let x_362 : f32 = u_xlat30;
  u_xlat30 = select(x_362, 1.0f, x_361);
  let x_366 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat5 = (x_366 + -(x_370));
  let x_373 : vec3<f32> = u_xlat5;
  let x_374 : vec3<f32> = u_xlat5;
  u_xlat1.x = dot(x_373, x_374);
  let x_379 : f32 = u_xlat1.x;
  let x_381 : f32 = x_336.x_MainLightShadowParams.z;
  let x_384 : f32 = x_336.x_MainLightShadowParams.w;
  u_xlat32 = ((x_379 * x_381) + x_384);
  let x_386 : f32 = u_xlat32;
  u_xlat32 = clamp(x_386, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat30;
  u_xlat33 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat32;
  let x_393 : f32 = u_xlat33;
  let x_395 : f32 = u_xlat30;
  u_xlat30 = ((x_392 * x_393) + x_395);
  let x_397 : f32 = u_xlat30;
  let x_403 : f32 = x_401.unity_LightData.z;
  u_xlat30 = (x_397 * x_403);
  let x_405 : f32 = u_xlat30;
  let x_409 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec3<f32> = u_xlat2;
  let x_415 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat30 = dot(x_412, vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : f32 = u_xlat30;
  u_xlat30 = clamp(x_418, 0.0f, 1.0f);
  let x_421 : f32 = u_xlat30;
  let x_423 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_421, x_421, x_421) * x_423);
  let x_426 : f32 = x_41.x_SpecColor.w;
  u_xlat30 = ((x_426 * 10.0f) + 1.0f);
  let x_430 : f32 = u_xlat30;
  u_xlat30 = exp2(x_430);
  let x_433 : vec3<f32> = u_xlat3;
  let x_434 : vec3<f32> = u_xlat10;
  let x_438 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat7 = ((x_433 * vec3<f32>(x_434.x, x_434.x, x_434.x)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec3<f32> = u_xlat7;
  let x_442 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_441, x_442);
  let x_444 : f32 = u_xlat32;
  u_xlat32 = max(x_444, 1.17549435e-38f);
  let x_447 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat32;
  let x_451 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_453 : vec3<f32> = u_xlat2;
  let x_454 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_453, x_454);
  let x_456 : f32 = u_xlat32;
  u_xlat32 = clamp(x_456, 0.0f, 1.0f);
  let x_458 : f32 = u_xlat32;
  u_xlat32 = log2(x_458);
  let x_460 : f32 = u_xlat30;
  let x_461 : f32 = u_xlat32;
  u_xlat32 = (x_460 * x_461);
  let x_463 : f32 = u_xlat32;
  u_xlat32 = exp2(x_463);
  let x_465 : f32 = u_xlat32;
  let x_468 : vec4<f32> = x_41.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec3<f32> = u_xlat5;
  let x_472 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_471 * x_472);
  let x_474 : vec3<f32> = u_xlat6;
  let x_475 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_474 * vec3<f32>(x_475.y, x_475.z, x_475.w)) + x_478);
  let x_481 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_483 : f32 = x_401.unity_LightData.y;
  u_xlat32 = min(x_481, x_483);
  let x_487 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_487));
  let x_491 : f32 = u_xlat1.x;
  let x_494 : f32 = x_336.x_AdditionalShadowFadeParams.x;
  let x_497 : f32 = x_336.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_491 * x_494) + x_497);
  let x_501 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_501, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_514 : u32 = u_xlatu_loop_1;
    let x_515 : u32 = u_xlatu32;
    if ((x_514 < x_515)) {
    } else {
      break;
    }
    let x_518 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_518 >> 2u);
    let x_522 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_522 & 3u));
    let x_527 : u32 = u_xlatu34;
    let x_530 : vec4<f32> = x_401.unity_LightIndices[bitcast<i32>(x_527)];
    let x_540 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_545 : vec4<u32> = indexable[x_540];
    u_xlat34 = dot(x_530, bitcast<vec4<f32>>(x_545));
    let x_549 : f32 = u_xlat34;
    u_xlati34 = i32(x_549);
    let x_551 : vec3<f32> = vs_TEXCOORD1;
    let x_562 : i32 = u_xlati34;
    let x_564 : vec4<f32> = x_561.x_AdditionalLightsPosition[x_562];
    let x_567 : i32 = u_xlati34;
    let x_569 : vec4<f32> = x_561.x_AdditionalLightsPosition[x_567];
    u_xlat7 = ((-(x_551) * vec3<f32>(x_564.w, x_564.w, x_564.w)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
    let x_573 : vec3<f32> = u_xlat7;
    let x_574 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_573, x_574);
    let x_576 : f32 = u_xlat35;
    u_xlat35 = max(x_576, 0.00006103515625f);
    let x_579 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_579);
    let x_581 : f32 = u_xlat36;
    let x_583 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_581, x_581, x_581) * x_583);
    let x_585 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_585);
    let x_587 : f32 = u_xlat35;
    let x_588 : i32 = u_xlati34;
    let x_590 : f32 = x_561.x_AdditionalLightsAttenuation[x_588].x;
    u_xlat35 = (x_587 * x_590);
    let x_592 : f32 = u_xlat35;
    let x_594 : f32 = u_xlat35;
    u_xlat35 = ((-(x_592) * x_594) + 1.0f);
    let x_597 : f32 = u_xlat35;
    u_xlat35 = max(x_597, 0.0f);
    let x_599 : f32 = u_xlat35;
    let x_600 : f32 = u_xlat35;
    u_xlat35 = (x_599 * x_600);
    let x_602 : f32 = u_xlat35;
    let x_603 : f32 = u_xlat36;
    u_xlat35 = (x_602 * x_603);
    let x_605 : i32 = u_xlati34;
    let x_607 : vec4<f32> = x_561.x_AdditionalLightsSpotDir[x_605];
    let x_609 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_607.x, x_607.y, x_607.z), x_609);
    let x_611 : f32 = u_xlat36;
    let x_612 : i32 = u_xlati34;
    let x_614 : f32 = x_561.x_AdditionalLightsAttenuation[x_612].z;
    let x_616 : i32 = u_xlati34;
    let x_618 : f32 = x_561.x_AdditionalLightsAttenuation[x_616].w;
    u_xlat36 = ((x_611 * x_614) + x_618);
    let x_620 : f32 = u_xlat36;
    u_xlat36 = clamp(x_620, 0.0f, 1.0f);
    let x_622 : f32 = u_xlat36;
    let x_623 : f32 = u_xlat36;
    u_xlat36 = (x_622 * x_623);
    let x_625 : f32 = u_xlat35;
    let x_626 : f32 = u_xlat36;
    u_xlat35 = (x_625 * x_626);
    let x_630 : i32 = u_xlati34;
    let x_632 : f32 = x_336.x_AdditionalShadowParams[x_630].w;
    u_xlati36 = i32(x_632);
    let x_635 : i32 = u_xlati36;
    u_xlatb37 = (x_635 >= 0i);
    let x_637 : bool = u_xlatb37;
    if (x_637) {
      let x_641 : i32 = u_xlati34;
      let x_643 : f32 = x_336.x_AdditionalShadowParams[x_641].z;
      u_xlatb37 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_643, x_643, x_643, x_643))));
      let x_648 : bool = u_xlatb37;
      if (x_648) {
        let x_653 : vec3<f32> = u_xlat7;
        let x_656 : vec3<f32> = u_xlat7;
        let x_659 : vec4<bool> = (abs(vec4<f32>(x_653.z, x_653.z, x_653.y, x_653.z)) >= abs(vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.x)));
        let x_661 : vec3<bool> = vec3<bool>(x_659.x, x_659.y, x_659.z);
        let x_662 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_665 : bool = u_xlatb8.y;
        let x_667 : bool = u_xlatb8.x;
        u_xlatb37 = (x_665 & x_667);
        let x_669 : vec3<f32> = u_xlat7;
        let x_672 : vec4<bool> = (-(vec4<f32>(x_669.z, x_669.y, x_669.z, x_669.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_673 : vec3<bool> = vec3<bool>(x_672.x, x_672.y, x_672.w);
        let x_674 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_673.x, x_673.y, x_674.z, x_673.z);
        let x_678 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_678);
        let x_684 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_684);
        let x_690 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_690);
        let x_694 : bool = u_xlatb8.z;
        if (x_694) {
          let x_699 : f32 = u_xlat8.y;
          x_695 = x_699;
        } else {
          let x_701 : f32 = u_xlat38;
          x_695 = x_701;
        }
        let x_702 : f32 = x_695;
        u_xlat18 = x_702;
        let x_704 : bool = u_xlatb37;
        if (x_704) {
          let x_709 : f32 = u_xlat8.x;
          x_705 = x_709;
        } else {
          let x_711 : f32 = u_xlat18;
          x_705 = x_711;
        }
        let x_712 : f32 = x_705;
        u_xlat37 = x_712;
        let x_713 : i32 = u_xlati34;
        let x_715 : f32 = x_336.x_AdditionalShadowParams[x_713].w;
        u_xlat8.x = trunc(x_715);
        let x_718 : f32 = u_xlat37;
        let x_720 : f32 = u_xlat8.x;
        u_xlat37 = (x_718 + x_720);
        let x_722 : f32 = u_xlat37;
        u_xlati36 = i32(x_722);
      }
      let x_724 : i32 = u_xlati36;
      u_xlati36 = (x_724 << bitcast<u32>(2i));
      let x_726 : vec3<f32> = vs_TEXCOORD1;
      let x_729 : i32 = u_xlati36;
      let x_732 : i32 = u_xlati36;
      let x_736 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_729 + 1i) / 4i)][((x_732 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_726.y, x_726.y, x_726.y, x_726.y) * x_736);
      let x_738 : i32 = u_xlati36;
      let x_740 : i32 = u_xlati36;
      let x_743 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[(x_738 / 4i)][(x_740 % 4i)];
      let x_744 : vec3<f32> = vs_TEXCOORD1;
      let x_747 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_743 * vec4<f32>(x_744.x, x_744.x, x_744.x, x_744.x)) + x_747);
      let x_749 : i32 = u_xlati36;
      let x_752 : i32 = u_xlati36;
      let x_756 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_749 + 2i) / 4i)][((x_752 + 2i) % 4i)];
      let x_757 : vec3<f32> = vs_TEXCOORD1;
      let x_760 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_756 * vec4<f32>(x_757.z, x_757.z, x_757.z, x_757.z)) + x_760);
      let x_762 : vec4<f32> = u_xlat8;
      let x_763 : i32 = u_xlati36;
      let x_766 : i32 = u_xlati36;
      let x_770 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_763 + 3i) / 4i)][((x_766 + 3i) % 4i)];
      u_xlat8 = (x_762 + x_770);
      let x_772 : vec4<f32> = u_xlat8;
      let x_774 : vec4<f32> = u_xlat8;
      let x_776 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) / vec3<f32>(x_774.w, x_774.w, x_774.w));
      let x_777 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
      let x_780 : vec4<f32> = u_xlat8;
      let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
      let x_783 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_781.x, x_781.y, x_783);
      let x_791 : vec3<f32> = txVec1;
      let x_793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
      u_xlat36 = x_793;
      let x_794 : i32 = u_xlati34;
      let x_796 : f32 = x_336.x_AdditionalShadowParams[x_794].x;
      u_xlat37 = (1.0f + -(x_796));
      let x_799 : f32 = u_xlat36;
      let x_800 : i32 = u_xlati34;
      let x_802 : f32 = x_336.x_AdditionalShadowParams[x_800].x;
      let x_804 : f32 = u_xlat37;
      u_xlat36 = ((x_799 * x_802) + x_804);
      let x_807 : f32 = u_xlat8.z;
      u_xlatb37 = (0.0f >= x_807);
      let x_810 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_810 >= 1.0f);
      let x_813 : bool = u_xlatb37;
      let x_815 : bool = u_xlatb8.x;
      u_xlatb37 = (x_813 | x_815);
      let x_817 : bool = u_xlatb37;
      let x_818 : f32 = u_xlat36;
      u_xlat36 = select(x_818, 1.0f, x_817);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_821 : f32 = u_xlat36;
    u_xlat37 = (-(x_821) + 1.0f);
    let x_825 : f32 = u_xlat1.x;
    let x_826 : f32 = u_xlat37;
    let x_828 : f32 = u_xlat36;
    u_xlat36 = ((x_825 * x_826) + x_828);
    let x_830 : f32 = u_xlat35;
    let x_831 : f32 = u_xlat36;
    u_xlat35 = (x_830 * x_831);
    let x_833 : f32 = u_xlat35;
    let x_835 : i32 = u_xlati34;
    let x_837 : vec4<f32> = x_561.x_AdditionalLightsColor[x_835];
    let x_839 : vec3<f32> = (vec3<f32>(x_833, x_833, x_833) * vec3<f32>(x_837.x, x_837.y, x_837.z));
    let x_840 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
    let x_842 : vec3<f32> = u_xlat2;
    let x_843 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_842, x_843);
    let x_845 : f32 = u_xlat34;
    u_xlat34 = clamp(x_845, 0.0f, 1.0f);
    let x_848 : f32 = u_xlat34;
    let x_850 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec3<f32> = u_xlat3;
    let x_854 : vec3<f32> = u_xlat10;
    let x_857 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_853 * vec3<f32>(x_854.x, x_854.x, x_854.x)) + x_857);
    let x_859 : vec3<f32> = u_xlat7;
    let x_860 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_859, x_860);
    let x_862 : f32 = u_xlat34;
    u_xlat34 = max(x_862, 1.17549435e-38f);
    let x_864 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_864);
    let x_866 : f32 = u_xlat34;
    let x_868 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_866, x_866, x_866) * x_868);
    let x_870 : vec3<f32> = u_xlat2;
    let x_871 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_870, x_871);
    let x_873 : f32 = u_xlat34;
    u_xlat34 = clamp(x_873, 0.0f, 1.0f);
    let x_875 : f32 = u_xlat34;
    u_xlat34 = log2(x_875);
    let x_877 : f32 = u_xlat30;
    let x_878 : f32 = u_xlat34;
    u_xlat34 = (x_877 * x_878);
    let x_880 : f32 = u_xlat34;
    u_xlat34 = exp2(x_880);
    let x_882 : f32 = u_xlat34;
    let x_885 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_885.x, x_885.y, x_885.z));
    let x_888 : vec3<f32> = u_xlat7;
    let x_889 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_888 * vec3<f32>(x_889.x, x_889.y, x_889.z));
    let x_892 : vec3<f32> = u_xlat9;
    let x_893 : vec4<f32> = u_xlat1;
    let x_896 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_892 * vec3<f32>(x_893.y, x_893.z, x_893.w)) + x_896);
    let x_898 : vec3<f32> = u_xlat6;
    let x_899 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_898 + x_899);

    continuing {
      let x_901 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_901 + bitcast<u32>(1i));
    }
  }
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec4<f32> = u_xlat1;
  let x_908 : vec3<f32> = u_xlat5;
  let x_909 : vec3<f32> = ((vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(x_905.y, x_905.z, x_905.w)) + x_908);
  let x_910 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_914 : vec3<f32> = u_xlat6;
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : vec3<f32> = (x_914 + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_921 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_921 == 1.0f);
  let x_923 : bool = u_xlatb10;
  let x_924 : bool = u_xlatb20;
  u_xlatb10 = (x_923 | x_924);
  let x_926 : bool = u_xlatb10;
  if (x_926) {
    let x_931 : f32 = u_xlat0.x;
    x_927 = x_931;
  } else {
    x_927 = 1.0f;
  }
  let x_933 : f32 = x_927;
  SV_Target0.w = x_933;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


