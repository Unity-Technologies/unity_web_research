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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb10 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat29 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_301 : LightShadows;

var<private> u_xlatb30 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat13 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati15 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_514 : AdditionalLights;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatu32 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_163 : f32;
  var x_175 : f32;
  var x_187 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_679 : f32;
  var x_689 : f32;
  var txVec1 : vec3<f32>;
  var x_800 : f32;
  var x_928 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb10 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb10;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat10;
  let x_151 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat10;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_162 : bool = u_xlatb1;
  if (x_162) {
    let x_167 : f32 = u_xlat10.x;
    x_163 = x_167;
  } else {
    let x_171 : f32 = x_45.unity_MatrixV[0i].z;
    x_163 = x_171;
  }
  let x_172 : f32 = x_163;
  u_xlat2.x = x_172;
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_180 : f32 = u_xlat10.y;
    x_175 = x_180;
  } else {
    let x_183 : f32 = x_45.unity_MatrixV[1i].z;
    x_175 = x_183;
  }
  let x_184 : f32 = x_175;
  u_xlat2.y = x_184;
  let x_186 : bool = u_xlatb1;
  if (x_186) {
    let x_191 : f32 = u_xlat10.z;
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
  let x_206 : vec3<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_211 : vec3<f32> = u_xlat2;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat28;
  u_xlat28 = max(x_214, 0.00006103515625f);
  let x_217 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_217);
  let x_226 : vec2<f32> = vs_TEXCOORD7;
  let x_228 : f32 = x_45.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_226, x_228);
  u_xlat3 = x_229;
  let x_235 : vec2<f32> = vs_TEXCOORD7;
  let x_237 : f32 = x_45.x_GlobalMipBias.x;
  let x_238 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_235, x_237);
  u_xlat4 = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat3;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec3<f32> = u_xlat1;
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat29 = dot(x_248, vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : f32 = u_xlat29;
  u_xlat29 = (x_252 + 0.5f);
  let x_255 : f32 = u_xlat29;
  let x_257 : vec3<f32> = u_xlat4;
  let x_258 : vec3<f32> = (vec3<f32>(x_255, x_255, x_255) * x_257);
  let x_259 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : f32 = u_xlat3.w;
  u_xlat29 = max(x_262, 0.00009999999747378752f);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : f32 = u_xlat29;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) / vec3<f32>(x_267, x_267, x_267));
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_275 : vec4<f32> = vs_TEXCOORD6;
  let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
  let x_278 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_276.x, x_276.y, x_278);
  let x_290 : vec3<f32> = txVec0;
  let x_292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_290.xy, x_290.z);
  u_xlat29 = x_292;
  let x_304 : f32 = x_301.x_MainLightShadowParams.x;
  u_xlat30 = (-(x_304) + 1.0f);
  let x_307 : f32 = u_xlat29;
  let x_309 : f32 = x_301.x_MainLightShadowParams.x;
  let x_311 : f32 = u_xlat30;
  u_xlat29 = ((x_307 * x_309) + x_311);
  let x_315 : f32 = vs_TEXCOORD6.z;
  u_xlatb30 = (0.0f >= x_315);
  let x_319 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_319 >= 1.0f);
  let x_321 : bool = u_xlatb30;
  let x_322 : bool = u_xlatb4;
  u_xlatb30 = (x_321 | x_322);
  let x_324 : bool = u_xlatb30;
  let x_325 : f32 = u_xlat29;
  u_xlat29 = select(x_325, 1.0f, x_324);
  let x_327 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (x_327 + -(x_329));
  let x_332 : vec3<f32> = u_xlat4;
  let x_333 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(x_332, x_333);
  let x_335 : f32 = u_xlat30;
  let x_337 : f32 = x_301.x_MainLightShadowParams.z;
  let x_340 : f32 = x_301.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_335 * x_337) + x_340);
  let x_344 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_344, 0.0f, 1.0f);
  let x_348 : f32 = u_xlat29;
  u_xlat13 = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat4.x;
  let x_353 : f32 = u_xlat13;
  let x_355 : f32 = u_xlat29;
  u_xlat29 = ((x_352 * x_353) + x_355);
  let x_357 : f32 = u_xlat29;
  let x_359 : f32 = x_95.unity_LightData.z;
  u_xlat29 = (x_357 * x_359);
  let x_361 : f32 = u_xlat29;
  let x_364 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_361, x_361, x_361) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec3<f32> = u_xlat1;
  let x_369 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat29 = dot(x_367, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : f32 = u_xlat29;
  u_xlat29 = clamp(x_372, 0.0f, 1.0f);
  let x_375 : f32 = u_xlat29;
  let x_377 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_375, x_375, x_375) * x_377);
  let x_380 : f32 = u_xlat0.x;
  u_xlat29 = ((x_380 * 10.0f) + 1.0f);
  let x_384 : f32 = u_xlat29;
  u_xlat29 = exp2(x_384);
  let x_387 : vec3<f32> = u_xlat2;
  let x_388 : f32 = u_xlat28;
  let x_392 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_387 * vec3<f32>(x_388, x_388, x_388)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_396 : vec3<f32> = u_xlat6;
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_396, x_397);
  let x_399 : f32 = u_xlat31;
  u_xlat31 = max(x_399, 1.17549435e-38f);
  let x_402 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_402);
  let x_404 : f32 = u_xlat31;
  let x_406 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_404, x_404, x_404) * x_406);
  let x_408 : vec3<f32> = u_xlat1;
  let x_409 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_408, x_409);
  let x_411 : f32 = u_xlat31;
  u_xlat31 = clamp(x_411, 0.0f, 1.0f);
  let x_413 : f32 = u_xlat31;
  u_xlat31 = log2(x_413);
  let x_415 : f32 = u_xlat29;
  let x_416 : f32 = u_xlat31;
  u_xlat31 = (x_415 * x_416);
  let x_418 : f32 = u_xlat31;
  u_xlat31 = exp2(x_418);
  let x_420 : f32 = u_xlat31;
  let x_423 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_420, x_420, x_420) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec3<f32> = u_xlat4;
  let x_427 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_426 * x_427);
  let x_429 : vec3<f32> = u_xlat5;
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_429 * vec3<f32>(x_430.y, x_430.z, x_430.w)) + x_433);
  let x_437 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_439 : f32 = x_95.unity_LightData.y;
  u_xlat31 = min(x_437, x_439);
  let x_443 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_443));
  let x_446 : f32 = u_xlat30;
  let x_449 : f32 = x_301.x_AdditionalShadowFadeParams.x;
  let x_452 : f32 = x_301.x_AdditionalShadowFadeParams.y;
  u_xlat30 = ((x_446 * x_449) + x_452);
  let x_454 : f32 = u_xlat30;
  u_xlat30 = clamp(x_454, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_466 : u32 = u_xlatu_loop_1;
    let x_467 : u32 = u_xlatu31;
    if ((x_466 < x_467)) {
    } else {
      break;
    }
    let x_470 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_470 >> 2u);
    let x_474 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_474 & 3u));
    let x_477 : u32 = u_xlatu6;
    let x_480 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_477)];
    let x_490 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_495 : vec4<u32> = indexable[x_490];
    u_xlat6.x = dot(x_480, bitcast<vec4<f32>>(x_495));
    let x_501 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_501);
    let x_504 : vec3<f32> = vs_TEXCOORD1;
    let x_515 : i32 = u_xlati6;
    let x_517 : vec4<f32> = x_514.x_AdditionalLightsPosition[x_515];
    let x_520 : i32 = u_xlati6;
    let x_522 : vec4<f32> = x_514.x_AdditionalLightsPosition[x_520];
    u_xlat15 = ((-(x_504) * vec3<f32>(x_517.w, x_517.w, x_517.w)) + vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_526 : vec3<f32> = u_xlat15;
    let x_527 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_526, x_527);
    let x_531 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_531, 0.00006103515625f);
    let x_536 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_536);
    let x_539 : vec3<f32> = u_xlat15;
    let x_540 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_539 * vec3<f32>(x_540.x, x_540.x, x_540.x));
    let x_544 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_544);
    let x_548 : f32 = u_xlat7.x;
    let x_549 : i32 = u_xlati6;
    let x_551 : f32 = x_514.x_AdditionalLightsAttenuation[x_549].x;
    u_xlat7.x = (x_548 * x_551);
    let x_555 : f32 = u_xlat7.x;
    let x_558 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_555) * x_558) + 1.0f);
    let x_563 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_563, 0.0f);
    let x_567 : f32 = u_xlat7.x;
    let x_569 : f32 = u_xlat7.x;
    u_xlat7.x = (x_567 * x_569);
    let x_573 : f32 = u_xlat7.x;
    let x_575 : f32 = u_xlat16.x;
    u_xlat7.x = (x_573 * x_575);
    let x_578 : i32 = u_xlati6;
    let x_580 : vec4<f32> = x_514.x_AdditionalLightsSpotDir[x_578];
    let x_582 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), x_582);
    let x_586 : f32 = u_xlat16.x;
    let x_587 : i32 = u_xlati6;
    let x_589 : f32 = x_514.x_AdditionalLightsAttenuation[x_587].z;
    let x_591 : i32 = u_xlati6;
    let x_593 : f32 = x_514.x_AdditionalLightsAttenuation[x_591].w;
    u_xlat16.x = ((x_586 * x_589) + x_593);
    let x_597 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_597, 0.0f, 1.0f);
    let x_601 : f32 = u_xlat16.x;
    let x_603 : f32 = u_xlat16.x;
    u_xlat16.x = (x_601 * x_603);
    let x_607 : f32 = u_xlat16.x;
    let x_609 : f32 = u_xlat7.x;
    u_xlat7.x = (x_607 * x_609);
    let x_614 : i32 = u_xlati6;
    let x_616 : f32 = x_301.x_AdditionalShadowParams[x_614].w;
    u_xlati16 = i32(x_616);
    let x_619 : i32 = u_xlati16;
    u_xlatb25 = (x_619 >= 0i);
    let x_621 : bool = u_xlatb25;
    if (x_621) {
      let x_625 : i32 = u_xlati6;
      let x_627 : f32 = x_301.x_AdditionalShadowParams[x_625].z;
      u_xlatb25 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_627, x_627, x_627, x_627))));
      let x_632 : bool = u_xlatb25;
      if (x_632) {
        let x_637 : vec3<f32> = u_xlat15;
        let x_640 : vec3<f32> = u_xlat15;
        let x_643 : vec4<bool> = (abs(vec4<f32>(x_637.z, x_637.z, x_637.y, x_637.z)) >= abs(vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.x)));
        let x_645 : vec3<bool> = vec3<bool>(x_643.x, x_643.y, x_643.z);
        let x_646 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_649 : bool = u_xlatb8.y;
        let x_651 : bool = u_xlatb8.x;
        u_xlatb25 = (x_649 & x_651);
        let x_653 : vec3<f32> = u_xlat15;
        let x_656 : vec4<bool> = (-(vec4<f32>(x_653.z, x_653.y, x_653.z, x_653.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_657 : vec3<bool> = vec3<bool>(x_656.x, x_656.y, x_656.w);
        let x_658 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_657.x, x_657.y, x_658.z, x_657.z);
        let x_662 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_662);
        let x_668 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_668);
        let x_675 : bool = u_xlatb8.w;
        u_xlat34 = select(0.0f, 1.0f, x_675);
        let x_678 : bool = u_xlatb8.z;
        if (x_678) {
          let x_683 : f32 = u_xlat8.y;
          x_679 = x_683;
        } else {
          let x_685 : f32 = u_xlat34;
          x_679 = x_685;
        }
        let x_686 : f32 = x_679;
        u_xlat34 = x_686;
        let x_688 : bool = u_xlatb25;
        if (x_688) {
          let x_693 : f32 = u_xlat8.x;
          x_689 = x_693;
        } else {
          let x_695 : f32 = u_xlat34;
          x_689 = x_695;
        }
        let x_696 : f32 = x_689;
        u_xlat25 = x_696;
        let x_697 : i32 = u_xlati6;
        let x_699 : f32 = x_301.x_AdditionalShadowParams[x_697].w;
        u_xlat34 = trunc(x_699);
        let x_701 : f32 = u_xlat25;
        let x_702 : f32 = u_xlat34;
        u_xlat25 = (x_701 + x_702);
        let x_704 : f32 = u_xlat25;
        u_xlati16 = i32(x_704);
      }
      let x_706 : i32 = u_xlati16;
      u_xlati16 = (x_706 << bitcast<u32>(2i));
      let x_708 : vec3<f32> = vs_TEXCOORD1;
      let x_711 : i32 = u_xlati16;
      let x_714 : i32 = u_xlati16;
      let x_718 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_711 + 1i) / 4i)][((x_714 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_708.y, x_708.y, x_708.y, x_708.y) * x_718);
      let x_720 : i32 = u_xlati16;
      let x_722 : i32 = u_xlati16;
      let x_725 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[(x_720 / 4i)][(x_722 % 4i)];
      let x_726 : vec3<f32> = vs_TEXCOORD1;
      let x_729 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_725 * vec4<f32>(x_726.x, x_726.x, x_726.x, x_726.x)) + x_729);
      let x_731 : i32 = u_xlati16;
      let x_734 : i32 = u_xlati16;
      let x_738 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
      let x_739 : vec3<f32> = vs_TEXCOORD1;
      let x_742 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_738 * vec4<f32>(x_739.z, x_739.z, x_739.z, x_739.z)) + x_742);
      let x_744 : vec4<f32> = u_xlat8;
      let x_745 : i32 = u_xlati16;
      let x_748 : i32 = u_xlati16;
      let x_752 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
      u_xlat8 = (x_744 + x_752);
      let x_754 : vec4<f32> = u_xlat8;
      let x_756 : vec4<f32> = u_xlat8;
      u_xlat16 = (vec3<f32>(x_754.x, x_754.y, x_754.z) / vec3<f32>(x_756.w, x_756.w, x_756.w));
      let x_760 : vec3<f32> = u_xlat16;
      let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
      let x_763 : f32 = u_xlat16.z;
      txVec1 = vec3<f32>(x_761.x, x_761.y, x_763);
      let x_771 : vec3<f32> = txVec1;
      let x_773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
      u_xlat16.x = x_773;
      let x_775 : i32 = u_xlati6;
      let x_777 : f32 = x_301.x_AdditionalShadowParams[x_775].x;
      u_xlat25 = (1.0f + -(x_777));
      let x_781 : f32 = u_xlat16.x;
      let x_782 : i32 = u_xlati6;
      let x_784 : f32 = x_301.x_AdditionalShadowParams[x_782].x;
      let x_786 : f32 = u_xlat25;
      u_xlat16.x = ((x_781 * x_784) + x_786);
      let x_790 : f32 = u_xlat16.z;
      u_xlatb25 = (0.0f >= x_790);
      let x_794 : f32 = u_xlat16.z;
      u_xlatb34 = (x_794 >= 1.0f);
      let x_796 : bool = u_xlatb34;
      let x_797 : bool = u_xlatb25;
      u_xlatb25 = (x_796 | x_797);
      let x_799 : bool = u_xlatb25;
      if (x_799) {
        x_800 = 1.0f;
      } else {
        let x_805 : f32 = u_xlat16.x;
        x_800 = x_805;
      }
      let x_806 : f32 = x_800;
      u_xlat16.x = x_806;
    } else {
      u_xlat16.x = 1.0f;
    }
    let x_811 : f32 = u_xlat16.x;
    u_xlat25 = (-(x_811) + 1.0f);
    let x_814 : f32 = u_xlat30;
    let x_815 : f32 = u_xlat25;
    let x_818 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_814 * x_815) + x_818);
    let x_822 : f32 = u_xlat16.x;
    let x_824 : f32 = u_xlat7.x;
    u_xlat7.x = (x_822 * x_824);
    let x_827 : vec3<f32> = u_xlat7;
    let x_829 : i32 = u_xlati6;
    let x_831 : vec4<f32> = x_514.x_AdditionalLightsColor[x_829];
    u_xlat7 = (vec3<f32>(x_827.x, x_827.x, x_827.x) * vec3<f32>(x_831.x, x_831.y, x_831.z));
    let x_834 : vec3<f32> = u_xlat1;
    let x_835 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_834, x_835);
    let x_839 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_839, 0.0f, 1.0f);
    let x_842 : vec3<f32> = u_xlat6;
    let x_844 : vec3<f32> = u_xlat7;
    let x_845 : vec3<f32> = (vec3<f32>(x_842.x, x_842.x, x_842.x) * x_844);
    let x_846 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
    let x_848 : vec3<f32> = u_xlat2;
    let x_849 : f32 = u_xlat28;
    let x_852 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_848 * vec3<f32>(x_849, x_849, x_849)) + x_852);
    let x_855 : vec3<f32> = u_xlat6;
    let x_856 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_855, x_856);
    let x_858 : f32 = u_xlat33;
    u_xlat33 = max(x_858, 1.17549435e-38f);
    let x_860 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_860);
    let x_862 : f32 = u_xlat33;
    let x_864 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_862, x_862, x_862) * x_864);
    let x_866 : vec3<f32> = u_xlat1;
    let x_867 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_866, x_867);
    let x_871 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_871, 0.0f, 1.0f);
    let x_875 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_875);
    let x_878 : f32 = u_xlat29;
    let x_880 : f32 = u_xlat6.x;
    u_xlat6.x = (x_878 * x_880);
    let x_884 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_884);
    let x_887 : vec3<f32> = u_xlat6;
    let x_890 : vec4<f32> = x_57.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_887.x, x_887.x, x_887.x) * vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec3<f32> = u_xlat6;
    let x_894 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_893 * x_894);
    let x_896 : vec4<f32> = u_xlat8;
    let x_898 : vec4<f32> = u_xlat0;
    let x_901 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_896.x, x_896.y, x_896.z) * vec3<f32>(x_898.y, x_898.z, x_898.w)) + x_901);
    let x_903 : vec3<f32> = u_xlat5;
    let x_904 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_903 + x_904);

    continuing {
      let x_906 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_906 + bitcast<u32>(1i));
    }
  }
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.y, x_911.z, x_911.w)) + x_914);
  let x_918 : vec3<f32> = u_xlat5;
  let x_919 : vec3<f32> = u_xlat9;
  let x_920 : vec3<f32> = (x_918 + x_919);
  let x_921 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_925 : f32 = x_57.x_Surface;
  u_xlatb9 = (x_925 == 1.0f);
  let x_927 : bool = u_xlatb9;
  if (x_927) {
    let x_932 : f32 = u_xlat0.x;
    x_928 = x_932;
  } else {
    x_928 = 1.0f;
  }
  let x_934 : f32 = x_928;
  SV_Target0.w = x_934;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


