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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_363 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_521 : AdditionalLights;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_673 : f32;
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
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_238 : f32 = vs_TEXCOORD1.y;
  let x_241 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8.x = (x_238 * x_241);
  let x_245 : f32 = x_44.unity_MatrixV[0i].z;
  let x_247 : f32 = vs_TEXCOORD1.x;
  let x_250 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_245 * x_247) + x_250);
  let x_254 : f32 = x_44.unity_MatrixV[2i].z;
  let x_256 : f32 = vs_TEXCOORD1.z;
  let x_259 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_254 * x_256) + x_259);
  let x_263 : f32 = u_xlat8.x;
  let x_266 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8.x = (x_263 + x_266);
  let x_270 : f32 = u_xlat8.x;
  let x_274 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8.x = (-(x_270) + -(x_274));
  let x_279 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_279, 0.0f);
  let x_283 : f32 = u_xlat8.x;
  let x_286 : f32 = x_44.unity_FogParams.x;
  u_xlat8.x = (x_283 * x_286);
  let x_296 : vec2<f32> = vs_TEXCOORD7;
  let x_298 : f32 = x_44.x_GlobalMipBias.x;
  let x_299 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_296, x_298);
  u_xlat3 = x_299;
  let x_305 : vec2<f32> = vs_TEXCOORD7;
  let x_307 : f32 = x_44.x_GlobalMipBias.x;
  let x_308 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_305, x_307);
  u_xlat4 = vec3<f32>(x_308.x, x_308.y, x_308.z);
  let x_310 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec3<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_317, vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : f32 = u_xlat24;
  u_xlat24 = (x_321 + 0.5f);
  let x_323 : f32 = u_xlat24;
  let x_325 : vec3<f32> = u_xlat4;
  let x_326 : vec3<f32> = (vec3<f32>(x_323, x_323, x_323) * x_325);
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : f32 = u_xlat3.w;
  u_xlat24 = max(x_330, 0.0001f);
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : f32 = u_xlat24;
  let x_336 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) / vec3<f32>(x_334, x_334, x_334));
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_341 : vec4<f32> = vs_TEXCOORD6;
  let x_342 : vec2<f32> = vec2<f32>(x_341.x, x_341.y);
  let x_344 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_342.x, x_342.y, x_344);
  let x_356 : vec3<f32> = txVec0;
  let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_356.xy, x_356.z);
  u_xlat24 = x_358;
  let x_366 : f32 = x_363.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_366) + 1.0f);
  let x_370 : f32 = u_xlat24;
  let x_372 : f32 = x_363.x_MainLightShadowParams.x;
  let x_375 : f32 = u_xlat1.x;
  u_xlat24 = ((x_370 * x_372) + x_375);
  let x_379 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_379);
  let x_383 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_383 >= 1.0f);
  let x_385 : bool = u_xlatb1;
  let x_386 : bool = u_xlatb26;
  u_xlatb1 = (x_385 | x_386);
  let x_388 : bool = u_xlatb1;
  let x_389 : f32 = u_xlat24;
  u_xlat24 = select(x_389, 1.0f, x_388);
  let x_391 : vec3<f32> = vs_TEXCOORD1;
  let x_395 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_391 + -(x_395));
  let x_398 : vec3<f32> = u_xlat4;
  let x_399 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_398, x_399);
  let x_403 : f32 = u_xlat1.x;
  let x_405 : f32 = x_363.x_MainLightShadowParams.z;
  let x_408 : f32 = x_363.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_403 * x_405) + x_408);
  let x_412 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_412, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat24;
  u_xlat26 = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat1.x;
  let x_421 : f32 = u_xlat26;
  let x_423 : f32 = u_xlat24;
  u_xlat24 = ((x_420 * x_421) + x_423);
  let x_425 : f32 = u_xlat24;
  let x_427 : f32 = x_184.unity_LightData.z;
  u_xlat24 = (x_425 * x_427);
  let x_429 : f32 = u_xlat24;
  let x_432 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec3<f32> = u_xlat2;
  let x_437 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_435, vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : f32 = u_xlat24;
  u_xlat24 = clamp(x_440, 0.0f, 1.0f);
  let x_442 : f32 = u_xlat24;
  let x_444 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_442, x_442, x_442) * x_444);
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_446.y, x_446.z, x_446.w) * x_448);
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_450.x, x_450.x, x_450.x) * x_452);
  let x_455 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_457 : f32 = x_184.unity_LightData.y;
  u_xlat24 = min(x_455, x_457);
  let x_461 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_461));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_474 : u32 = u_xlatu_loop_1;
    let x_475 : u32 = u_xlatu24;
    if ((x_474 < x_475)) {
    } else {
      break;
    }
    let x_478 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_478 >> 2u);
    let x_482 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_482 & 3u));
    let x_485 : u32 = u_xlatu26;
    let x_488 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_485)];
    let x_498 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_503 : vec4<u32> = indexable[x_498];
    u_xlat26 = dot(x_488, bitcast<vec4<f32>>(x_503));
    let x_507 : f32 = u_xlat26;
    u_xlati26 = i32(x_507);
    let x_510 : vec3<f32> = vs_TEXCOORD1;
    let x_522 : i32 = u_xlati26;
    let x_524 : vec4<f32> = x_521.x_AdditionalLightsPosition[x_522];
    let x_527 : i32 = u_xlati26;
    let x_529 : vec4<f32> = x_521.x_AdditionalLightsPosition[x_527];
    u_xlat6 = ((-(x_510) * vec3<f32>(x_524.w, x_524.w, x_524.w)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_533 : vec3<f32> = u_xlat6;
    let x_534 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_533, x_534);
    let x_536 : f32 = u_xlat27;
    u_xlat27 = max(x_536, 6.10351562e-05f);
    let x_540 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_540);
    let x_542 : f32 = u_xlat28;
    let x_544 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_542, x_542, x_542) * x_544);
    let x_546 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_546);
    let x_548 : f32 = u_xlat27;
    let x_549 : i32 = u_xlati26;
    let x_551 : f32 = x_521.x_AdditionalLightsAttenuation[x_549].x;
    u_xlat27 = (x_548 * x_551);
    let x_553 : f32 = u_xlat27;
    let x_555 : f32 = u_xlat27;
    u_xlat27 = ((-(x_553) * x_555) + 1.0f);
    let x_558 : f32 = u_xlat27;
    u_xlat27 = max(x_558, 0.0f);
    let x_560 : f32 = u_xlat27;
    let x_561 : f32 = u_xlat27;
    u_xlat27 = (x_560 * x_561);
    let x_563 : f32 = u_xlat27;
    let x_564 : f32 = u_xlat28;
    u_xlat27 = (x_563 * x_564);
    let x_566 : i32 = u_xlati26;
    let x_568 : vec4<f32> = x_521.x_AdditionalLightsSpotDir[x_566];
    let x_570 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), x_570);
    let x_572 : f32 = u_xlat28;
    let x_573 : i32 = u_xlati26;
    let x_575 : f32 = x_521.x_AdditionalLightsAttenuation[x_573].z;
    let x_577 : i32 = u_xlati26;
    let x_579 : f32 = x_521.x_AdditionalLightsAttenuation[x_577].w;
    u_xlat28 = ((x_572 * x_575) + x_579);
    let x_581 : f32 = u_xlat28;
    u_xlat28 = clamp(x_581, 0.0f, 1.0f);
    let x_583 : f32 = u_xlat28;
    let x_584 : f32 = u_xlat28;
    u_xlat28 = (x_583 * x_584);
    let x_586 : f32 = u_xlat27;
    let x_587 : f32 = u_xlat28;
    u_xlat27 = (x_586 * x_587);
    let x_590 : f32 = u_xlat27;
    let x_592 : i32 = u_xlati26;
    let x_594 : vec4<f32> = x_521.x_AdditionalLightsColor[x_592];
    u_xlat7 = (vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : vec3<f32> = u_xlat2;
    let x_598 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_597, x_598);
    let x_600 : f32 = u_xlat26;
    u_xlat26 = clamp(x_600, 0.0f, 1.0f);
    let x_602 : f32 = u_xlat26;
    let x_604 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_602, x_602, x_602) * x_604);
    let x_606 : vec4<f32> = u_xlat1;
    let x_608 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_606.y, x_606.z, x_606.w) * x_608);
    let x_610 : vec3<f32> = u_xlat6;
    let x_611 : vec4<f32> = u_xlat0;
    let x_614 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x)) + x_614);

    continuing {
      let x_616 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_616 + bitcast<u32>(1i));
    }
  }
  let x_618 : vec4<f32> = u_xlat3;
  let x_620 : vec4<f32> = u_xlat1;
  let x_623 : vec3<f32> = u_xlat4;
  let x_624 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_620.y, x_620.z, x_620.w)) + x_623);
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = u_xlat5;
  let x_628 : vec4<f32> = u_xlat1;
  let x_630 : vec3<f32> = (x_627 + vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = u_xlat8.x;
  let x_636 : f32 = u_xlat8.x;
  u_xlat8.x = (x_634 * -(x_636));
  let x_641 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_641);
  let x_644 : vec4<f32> = u_xlat1;
  let x_647 : vec4<f32> = x_44.unity_FogColor;
  let x_650 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) + -(vec3<f32>(x_647.x, x_647.y, x_647.z)));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_655 : vec3<f32> = u_xlat8;
  let x_657 : vec4<f32> = u_xlat1;
  let x_661 : vec4<f32> = x_44.unity_FogColor;
  let x_663 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_667 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_667 == 1.0f);
  let x_669 : bool = u_xlatb8;
  let x_670 : bool = u_xlatb16;
  u_xlatb8 = (x_669 | x_670);
  let x_672 : bool = u_xlatb8;
  if (x_672) {
    let x_677 : f32 = u_xlat0.x;
    x_673 = x_677;
  } else {
    x_673 = 1.0f;
  }
  let x_679 : f32 = x_673;
  SV_Target0.w = x_679;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

