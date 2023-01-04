struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_374 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_551 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var x_399 : f32;
  var u_xlat27 : f32;
  var u_xlatu8 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_671 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat8.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat24;
  let x_104 : f32 = u_xlat16;
  u_xlat16 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat16;
  u_xlat16 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat8.x;
  let x_112 : f32 = u_xlat16;
  u_xlat8.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat8.x;
  u_xlat8.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
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
  let x_207 : f32 = x_185.unity_LODFade.x;
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
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = x_245;
  let x_251 : vec2<f32> = vs_TEXCOORD7;
  let x_253 : f32 = x_43.x_GlobalMipBias.x;
  let x_254 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_251, x_253);
  u_xlat4 = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat3;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(x_263, vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_269 : f32 = u_xlat8.x;
  u_xlat8.x = (x_269 + 0.5f);
  let x_272 : vec3<f32> = u_xlat8;
  let x_274 : vec3<f32> = u_xlat4;
  let x_275 : vec3<f32> = (vec3<f32>(x_272.x, x_272.x, x_272.x) * x_274);
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : f32 = u_xlat3.w;
  u_xlat8.x = max(x_279, 0.0001f);
  let x_282 : vec4<f32> = u_xlat3;
  let x_284 : vec3<f32> = u_xlat8;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) / vec3<f32>(x_284.x, x_284.x, x_284.x));
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_291 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_292 : vec2<f32> = vec2<f32>(x_291.x, x_291.y);
  let x_296 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_292.x, x_292.y));
  let x_297 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_296.x, x_297.y, x_296.y);
  let x_299 : vec3<f32> = u_xlat8;
  let x_301 : vec4<f32> = hlslcc_FragCoord;
  let x_303 : vec2<f32> = (vec2<f32>(x_299.x, x_299.z) * vec2<f32>(x_301.x, x_301.y));
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_303.x, x_303.y, x_304.z);
  let x_308 : f32 = u_xlat4.y;
  let x_311 : f32 = x_43.x_ScaleBiasRt.x;
  let x_314 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_308 * x_311) + x_314);
  let x_318 : f32 = u_xlat8.x;
  u_xlat4.z = (-(x_318) + 1.0f);
  let x_327 : vec3<f32> = u_xlat4;
  let x_330 : f32 = x_43.x_GlobalMipBias.x;
  let x_331 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_327.x, x_327.z), x_330);
  u_xlat8.x = x_331.x;
  let x_335 : f32 = u_xlat8.x;
  u_xlat24 = (x_335 + -1.0f);
  let x_340 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_341 : f32 = u_xlat24;
  u_xlat24 = ((x_340 * x_341) + 1.0f);
  let x_345 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_345, 1.0f);
  let x_350 : vec4<f32> = vs_TEXCOORD6;
  let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
  let x_353 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_351.x, x_351.y, x_353);
  let x_365 : vec3<f32> = txVec0;
  let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_365.xy, x_365.z);
  u_xlat1.x = x_367;
  let x_376 : f32 = x_374.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_376) + 1.0f);
  let x_380 : f32 = u_xlat1.x;
  let x_382 : f32 = x_374.x_MainLightShadowParams.x;
  let x_384 : f32 = u_xlat26;
  u_xlat1.x = ((x_380 * x_382) + x_384);
  let x_389 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_389);
  let x_393 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_393 >= 1.0f);
  let x_395 : bool = u_xlatb26;
  let x_396 : bool = u_xlatb27;
  u_xlatb26 = (x_395 | x_396);
  let x_398 : bool = u_xlatb26;
  if (x_398) {
    x_399 = 1.0f;
  } else {
    let x_404 : f32 = u_xlat1.x;
    x_399 = x_404;
  }
  let x_405 : f32 = x_399;
  u_xlat1.x = x_405;
  let x_408 : vec3<f32> = vs_TEXCOORD1;
  let x_412 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_408 + -(x_412));
  let x_415 : vec3<f32> = u_xlat4;
  let x_416 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_415, x_416);
  let x_418 : f32 = u_xlat26;
  let x_420 : f32 = x_374.x_MainLightShadowParams.z;
  let x_423 : f32 = x_374.x_MainLightShadowParams.w;
  u_xlat26 = ((x_418 * x_420) + x_423);
  let x_425 : f32 = u_xlat26;
  u_xlat26 = clamp(x_425, 0.0f, 1.0f);
  let x_429 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_429) + 1.0f);
  let x_432 : f32 = u_xlat26;
  let x_433 : f32 = u_xlat27;
  let x_436 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_432 * x_433) + x_436);
  let x_439 : f32 = u_xlat24;
  let x_442 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_439, x_439, x_439) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec3<f32> = u_xlat8;
  let x_447 : vec4<f32> = u_xlat3;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.x, x_445.x) * vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat1.x;
  let x_455 : f32 = x_185.unity_LightData.z;
  u_xlat8.x = (x_453 * x_455);
  let x_458 : vec3<f32> = u_xlat8;
  let x_460 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_458.x, x_458.x, x_458.x) * x_460);
  let x_462 : vec3<f32> = u_xlat2;
  let x_465 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(x_462, vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_470 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_470, 0.0f, 1.0f);
  let x_473 : vec3<f32> = u_xlat8;
  let x_475 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_473.x, x_473.x, x_473.x) * x_475);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_477.y, x_477.z, x_477.w) * x_479);
  let x_483 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_485 : f32 = x_185.unity_LightData.y;
  u_xlat8.x = min(x_483, x_485);
  let x_491 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_491));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_504 : u32 = u_xlatu_loop_1;
    let x_505 : u32 = u_xlatu8;
    if ((x_504 < x_505)) {
    } else {
      break;
    }
    let x_508 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_508 >> 2u);
    let x_512 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_512 & 3u));
    let x_515 : u32 = u_xlatu26;
    let x_518 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_515)];
    let x_528 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_533 : vec4<u32> = indexable[x_528];
    u_xlat26 = dot(x_518, bitcast<vec4<f32>>(x_533));
    let x_537 : f32 = u_xlat26;
    u_xlati26 = i32(x_537);
    let x_540 : vec3<f32> = vs_TEXCOORD1;
    let x_552 : i32 = u_xlati26;
    let x_554 : vec4<f32> = x_551.x_AdditionalLightsPosition[x_552];
    let x_557 : i32 = u_xlati26;
    let x_559 : vec4<f32> = x_551.x_AdditionalLightsPosition[x_557];
    u_xlat6 = ((-(x_540) * vec3<f32>(x_554.w, x_554.w, x_554.w)) + vec3<f32>(x_559.x, x_559.y, x_559.z));
    let x_562 : vec3<f32> = u_xlat6;
    let x_563 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_562, x_563);
    let x_565 : f32 = u_xlat27;
    u_xlat27 = max(x_565, 6.10351562e-05f);
    let x_569 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_569);
    let x_571 : f32 = u_xlat28;
    let x_573 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_571, x_571, x_571) * x_573);
    let x_575 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_575);
    let x_577 : f32 = u_xlat27;
    let x_578 : i32 = u_xlati26;
    let x_580 : f32 = x_551.x_AdditionalLightsAttenuation[x_578].x;
    u_xlat27 = (x_577 * x_580);
    let x_582 : f32 = u_xlat27;
    let x_584 : f32 = u_xlat27;
    u_xlat27 = ((-(x_582) * x_584) + 1.0f);
    let x_587 : f32 = u_xlat27;
    u_xlat27 = max(x_587, 0.0f);
    let x_589 : f32 = u_xlat27;
    let x_590 : f32 = u_xlat27;
    u_xlat27 = (x_589 * x_590);
    let x_592 : f32 = u_xlat27;
    let x_593 : f32 = u_xlat28;
    u_xlat27 = (x_592 * x_593);
    let x_595 : i32 = u_xlati26;
    let x_597 : vec4<f32> = x_551.x_AdditionalLightsSpotDir[x_595];
    let x_599 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_597.x, x_597.y, x_597.z), x_599);
    let x_601 : f32 = u_xlat28;
    let x_602 : i32 = u_xlati26;
    let x_604 : f32 = x_551.x_AdditionalLightsAttenuation[x_602].z;
    let x_606 : i32 = u_xlati26;
    let x_608 : f32 = x_551.x_AdditionalLightsAttenuation[x_606].w;
    u_xlat28 = ((x_601 * x_604) + x_608);
    let x_610 : f32 = u_xlat28;
    u_xlat28 = clamp(x_610, 0.0f, 1.0f);
    let x_612 : f32 = u_xlat28;
    let x_613 : f32 = u_xlat28;
    u_xlat28 = (x_612 * x_613);
    let x_615 : f32 = u_xlat27;
    let x_616 : f32 = u_xlat28;
    u_xlat27 = (x_615 * x_616);
    let x_619 : f32 = u_xlat24;
    let x_621 : i32 = u_xlati26;
    let x_623 : vec4<f32> = x_551.x_AdditionalLightsColor[x_621];
    u_xlat7 = (vec3<f32>(x_619, x_619, x_619) * vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_626 : f32 = u_xlat27;
    let x_628 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_626, x_626, x_626) * x_628);
    let x_630 : vec3<f32> = u_xlat2;
    let x_631 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_630, x_631);
    let x_633 : f32 = u_xlat26;
    u_xlat26 = clamp(x_633, 0.0f, 1.0f);
    let x_635 : f32 = u_xlat26;
    let x_637 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_635, x_635, x_635) * x_637);
    let x_639 : vec3<f32> = u_xlat6;
    let x_640 : vec4<f32> = u_xlat1;
    let x_643 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_639 * vec3<f32>(x_640.y, x_640.z, x_640.w)) + x_643);

    continuing {
      let x_645 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_645 + bitcast<u32>(1i));
    }
  }
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat1;
  let x_652 : vec3<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_649.y, x_649.z, x_649.w)) + x_652);
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_658 : vec3<f32> = u_xlat5;
  let x_659 : vec4<f32> = u_xlat1;
  let x_661 : vec3<f32> = (x_658 + vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_665 == 1.0f);
  let x_667 : bool = u_xlatb8;
  let x_668 : bool = u_xlatb16;
  u_xlatb8 = (x_667 | x_668);
  let x_670 : bool = u_xlatb8;
  if (x_670) {
    let x_675 : f32 = u_xlat0.x;
    x_671 = x_675;
  } else {
    x_671 = 1.0f;
  }
  let x_677 : f32 = x_671;
  SV_Target0.w = x_677;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

