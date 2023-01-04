struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_391 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_564 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_131 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_717 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat24;
  let x_106 : f32 = u_xlat16;
  u_xlat16 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat16;
  u_xlat16 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat8.x;
  let x_114 : f32 = u_xlat16;
  u_xlat8.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat8.x;
  u_xlat8.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_123, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb16;
  if (x_130) {
    let x_135 : f32 = u_xlat8.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat8.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat8.x;
  u_xlatb8 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb8;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_240 : f32 = vs_TEXCOORD1.y;
  let x_243 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8.x = (x_240 * x_243);
  let x_247 : f32 = x_44.unity_MatrixV[0i].z;
  let x_249 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_247 * x_249) + x_252);
  let x_256 : f32 = x_44.unity_MatrixV[2i].z;
  let x_258 : f32 = vs_TEXCOORD1.z;
  let x_261 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat8.x;
  let x_268 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8.x = (x_265 + x_268);
  let x_272 : f32 = u_xlat8.x;
  let x_276 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8.x = (-(x_272) + -(x_276));
  let x_281 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_281, 0.0f);
  let x_285 : f32 = u_xlat8.x;
  let x_288 : f32 = x_44.unity_FogParams.x;
  u_xlat8.x = (x_285 * x_288);
  u_xlat2.w = 1.0f;
  let x_295 : vec4<f32> = x_184.unity_SHAr;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_295, x_296);
  let x_301 : vec4<f32> = x_184.unity_SHAg;
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_184.unity_SHAb;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_307, x_308);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_320 : vec4<f32> = x_184.unity_SHBr;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_320, x_321);
  let x_326 : vec4<f32> = x_184.unity_SHBg;
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_326, x_327);
  let x_332 : vec4<f32> = x_184.unity_SHBb;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_332, x_333);
  let x_337 : f32 = u_xlat2.y;
  let x_339 : f32 = u_xlat2.y;
  u_xlat24 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat24;
  u_xlat24 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_184.unity_SHC;
  let x_353 : f32 = u_xlat24;
  let x_356 : vec3<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + x_356);
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = u_xlat3;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_360 + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_364, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_369 : vec4<f32> = vs_TEXCOORD6;
  let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
  let x_372 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_370.x, x_370.y, x_372);
  let x_384 : vec3<f32> = txVec0;
  let x_386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_384.xy, x_384.z);
  u_xlat24 = x_386;
  let x_394 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_394) + 1.0f);
  let x_398 : f32 = u_xlat24;
  let x_400 : f32 = x_391.x_MainLightShadowParams.x;
  let x_403 : f32 = u_xlat1.x;
  u_xlat24 = ((x_398 * x_400) + x_403);
  let x_407 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_407);
  let x_411 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_411 >= 1.0f);
  let x_413 : bool = u_xlatb1;
  let x_414 : bool = u_xlatb26;
  u_xlatb1 = (x_413 | x_414);
  let x_416 : bool = u_xlatb1;
  let x_417 : f32 = u_xlat24;
  u_xlat24 = select(x_417, 1.0f, x_416);
  let x_419 : vec3<f32> = vs_TEXCOORD1;
  let x_423 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_425 : vec3<f32> = (x_419 + -(x_423));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_391.x_MainLightShadowParams.z;
  let x_440 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_435 * x_437) + x_440);
  let x_444 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_444, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat24;
  u_xlat26 = (-(x_448) + 1.0f);
  let x_452 : f32 = u_xlat1.x;
  let x_453 : f32 = u_xlat26;
  let x_455 : f32 = u_xlat24;
  u_xlat24 = ((x_452 * x_453) + x_455);
  let x_457 : f32 = u_xlat24;
  let x_459 : f32 = x_184.unity_LightData.z;
  u_xlat24 = (x_457 * x_459);
  let x_461 : f32 = u_xlat24;
  let x_464 : vec4<f32> = x_44.x_MainLightColor;
  let x_466 : vec3<f32> = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat2;
  let x_472 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : f32 = u_xlat24;
  u_xlat24 = clamp(x_475, 0.0f, 1.0f);
  let x_477 : f32 = u_xlat24;
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec3<f32> = (vec3<f32>(x_477, x_477, x_477) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat1;
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.y, x_484.z, x_484.w) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.x, x_491.x) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_501 : f32 = x_184.unity_LightData.y;
  u_xlat24 = min(x_499, x_501);
  let x_505 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_505));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_517 : u32 = u_xlatu_loop_1;
    let x_518 : u32 = u_xlatu24;
    if ((x_517 < x_518)) {
    } else {
      break;
    }
    let x_521 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_521 >> 2u);
    let x_525 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_525 & 3u));
    let x_528 : u32 = u_xlatu26;
    let x_531 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_528)];
    let x_541 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_546 : vec4<u32> = indexable[x_541];
    u_xlat26 = dot(x_531, bitcast<vec4<f32>>(x_546));
    let x_550 : f32 = u_xlat26;
    u_xlati26 = i32(x_550);
    let x_553 : vec3<f32> = vs_TEXCOORD1;
    let x_565 : i32 = u_xlati26;
    let x_567 : vec4<f32> = x_564.x_AdditionalLightsPosition[x_565];
    let x_570 : i32 = u_xlati26;
    let x_572 : vec4<f32> = x_564.x_AdditionalLightsPosition[x_570];
    u_xlat6 = ((-(x_553) * vec3<f32>(x_567.w, x_567.w, x_567.w)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
    let x_576 : vec3<f32> = u_xlat6;
    let x_577 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_576, x_577);
    let x_579 : f32 = u_xlat27;
    u_xlat27 = max(x_579, 6.10351562e-05f);
    let x_583 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_583);
    let x_585 : f32 = u_xlat28;
    let x_587 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_585, x_585, x_585) * x_587);
    let x_589 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_589);
    let x_591 : f32 = u_xlat27;
    let x_592 : i32 = u_xlati26;
    let x_594 : f32 = x_564.x_AdditionalLightsAttenuation[x_592].x;
    u_xlat27 = (x_591 * x_594);
    let x_596 : f32 = u_xlat27;
    let x_598 : f32 = u_xlat27;
    u_xlat27 = ((-(x_596) * x_598) + 1.0f);
    let x_601 : f32 = u_xlat27;
    u_xlat27 = max(x_601, 0.0f);
    let x_603 : f32 = u_xlat27;
    let x_604 : f32 = u_xlat27;
    u_xlat27 = (x_603 * x_604);
    let x_606 : f32 = u_xlat27;
    let x_607 : f32 = u_xlat28;
    u_xlat27 = (x_606 * x_607);
    let x_609 : i32 = u_xlati26;
    let x_611 : vec4<f32> = x_564.x_AdditionalLightsSpotDir[x_609];
    let x_613 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_611.x, x_611.y, x_611.z), x_613);
    let x_615 : f32 = u_xlat28;
    let x_616 : i32 = u_xlati26;
    let x_618 : f32 = x_564.x_AdditionalLightsAttenuation[x_616].z;
    let x_620 : i32 = u_xlati26;
    let x_622 : f32 = x_564.x_AdditionalLightsAttenuation[x_620].w;
    u_xlat28 = ((x_615 * x_618) + x_622);
    let x_624 : f32 = u_xlat28;
    u_xlat28 = clamp(x_624, 0.0f, 1.0f);
    let x_626 : f32 = u_xlat28;
    let x_627 : f32 = u_xlat28;
    u_xlat28 = (x_626 * x_627);
    let x_629 : f32 = u_xlat27;
    let x_630 : f32 = u_xlat28;
    u_xlat27 = (x_629 * x_630);
    let x_633 : f32 = u_xlat27;
    let x_635 : i32 = u_xlati26;
    let x_637 : vec4<f32> = x_564.x_AdditionalLightsColor[x_635];
    u_xlat7 = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_637.x, x_637.y, x_637.z));
    let x_640 : vec4<f32> = u_xlat2;
    let x_642 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), x_642);
    let x_644 : f32 = u_xlat26;
    u_xlat26 = clamp(x_644, 0.0f, 1.0f);
    let x_646 : f32 = u_xlat26;
    let x_648 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_646, x_646, x_646) * x_648);
    let x_650 : vec4<f32> = u_xlat1;
    let x_652 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_650.y, x_650.z, x_650.w) * x_652);
    let x_654 : vec3<f32> = u_xlat6;
    let x_655 : vec4<f32> = u_xlat0;
    let x_658 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_654 * vec3<f32>(x_655.x, x_655.x, x_655.x)) + x_658);

    continuing {
      let x_660 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_660 + bitcast<u32>(1i));
    }
  }
  let x_662 : vec3<f32> = u_xlat3;
  let x_663 : vec4<f32> = u_xlat1;
  let x_666 : vec4<f32> = u_xlat4;
  let x_668 : vec3<f32> = ((x_662 * vec3<f32>(x_663.y, x_663.z, x_663.w)) + vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec3<f32> = u_xlat5;
  let x_672 : vec4<f32> = u_xlat1;
  let x_674 : vec3<f32> = (x_671 + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_678 : f32 = u_xlat8.x;
  let x_680 : f32 = u_xlat8.x;
  u_xlat8.x = (x_678 * -(x_680));
  let x_685 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_685);
  let x_688 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = x_44.unity_FogColor;
  let x_694 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) + -(vec3<f32>(x_691.x, x_691.y, x_691.z)));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_699 : vec3<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat1;
  let x_705 : vec4<f32> = x_44.unity_FogColor;
  let x_707 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.x, x_699.x) * vec3<f32>(x_701.x, x_701.y, x_701.z)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_711 == 1.0f);
  let x_713 : bool = u_xlatb8;
  let x_714 : bool = u_xlatb16;
  u_xlatb8 = (x_713 | x_714);
  let x_716 : bool = u_xlatb8;
  if (x_716) {
    let x_721 : f32 = u_xlat0.x;
    x_717 = x_721;
  } else {
    x_717 = 1.0f;
  }
  let x_723 : f32 = x_717;
  SV_Target0.w = x_723;
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

