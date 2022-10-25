struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_285 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_454 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb24 : bool;
  var x_310 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlatu23 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var u_xlat5 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_627 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb8 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb8;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_154 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat22 = (x_151 * x_154);
  let x_157 : f32 = x_44.unity_MatrixV[0i].z;
  let x_159 : f32 = vs_TEXCOORD1.x;
  let x_161 : f32 = u_xlat22;
  u_xlat22 = ((x_157 * x_159) + x_161);
  let x_164 : f32 = x_44.unity_MatrixV[2i].z;
  let x_166 : f32 = vs_TEXCOORD1.z;
  let x_168 : f32 = u_xlat22;
  u_xlat22 = ((x_164 * x_166) + x_168);
  let x_170 : f32 = u_xlat22;
  let x_173 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat22 = (x_170 + x_173);
  let x_175 : f32 = u_xlat22;
  let x_179 : f32 = x_44.x_ProjectionParams.y;
  u_xlat22 = (-(x_175) + -(x_179));
  let x_182 : f32 = u_xlat22;
  u_xlat22 = max(x_182, 0.0f);
  let x_184 : f32 = u_xlat22;
  let x_187 : f32 = x_44.unity_FogParams.x;
  u_xlat22 = (x_184 * x_187);
  let x_196 : vec2<f32> = vs_TEXCOORD7;
  let x_198 : f32 = x_44.x_GlobalMipBias.x;
  let x_199 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_196, x_198);
  u_xlat2 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  let x_204 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
  let x_209 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_205.x, x_205.y));
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_212 : vec3<f32> = u_xlat3;
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_214.x, x_214.y));
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_221 : f32 = u_xlat3.y;
  let x_224 : f32 = x_44.x_ScaleBiasRt.x;
  let x_227 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_221 * x_224) + x_227);
  let x_229 : f32 = u_xlat23;
  u_xlat3.z = (-(x_229) + 1.0f);
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : f32 = x_44.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_238.x, x_238.z), x_241);
  u_xlat23 = x_242.x;
  let x_244 : f32 = u_xlat23;
  u_xlat3.x = (x_244 + -1.0f);
  let x_250 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_252 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_250 * x_252) + 1.0f);
  let x_256 : f32 = u_xlat23;
  u_xlat23 = min(x_256, 1.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD6;
  let x_261 : vec2<f32> = vec2<f32>(x_260.x, x_260.y);
  let x_263 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_261.x, x_261.y, x_263);
  let x_276 : vec3<f32> = txVec0;
  let x_278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_276.xy, x_276.z);
  u_xlat10.x = x_278;
  let x_287 : f32 = x_285.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_287) + 1.0f);
  let x_291 : f32 = u_xlat10.x;
  let x_293 : f32 = x_285.x_MainLightShadowParams.x;
  let x_295 : f32 = u_xlat17;
  u_xlat10.x = ((x_291 * x_293) + x_295);
  let x_300 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_300);
  let x_304 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (x_304 >= 1.0f);
  let x_306 : bool = u_xlatb24;
  let x_307 : bool = u_xlatb17;
  u_xlatb17 = (x_306 | x_307);
  let x_309 : bool = u_xlatb17;
  if (x_309) {
    x_310 = 1.0f;
  } else {
    let x_315 : f32 = u_xlat10.x;
    x_310 = x_315;
  }
  let x_316 : f32 = x_310;
  u_xlat10.x = x_316;
  let x_319 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_319 + -(x_323));
  let x_326 : vec3<f32> = u_xlat4;
  let x_327 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(x_326, x_327);
  let x_329 : f32 = u_xlat17;
  let x_331 : f32 = x_285.x_MainLightShadowParams.z;
  let x_334 : f32 = x_285.x_MainLightShadowParams.w;
  u_xlat17 = ((x_329 * x_331) + x_334);
  let x_336 : f32 = u_xlat17;
  u_xlat17 = clamp(x_336, 0.0f, 1.0f);
  let x_340 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_340) + 1.0f);
  let x_343 : f32 = u_xlat17;
  let x_344 : f32 = u_xlat24;
  let x_347 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_343 * x_344) + x_347);
  let x_350 : vec3<f32> = u_xlat3;
  let x_353 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_350.x, x_350.x, x_350.x) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : f32 = u_xlat23;
  let x_358 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_356, x_356, x_356) * x_358);
  let x_361 : f32 = u_xlat10.x;
  let x_364 : f32 = x_93.unity_LightData.z;
  u_xlat23 = (x_361 * x_364);
  let x_366 : f32 = u_xlat23;
  let x_368 : vec3<f32> = u_xlat4;
  u_xlat10 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_370 : vec3<f32> = u_xlat1;
  let x_372 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23 = dot(x_370, vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat23;
  u_xlat23 = clamp(x_375, 0.0f, 1.0f);
  let x_377 : f32 = u_xlat23;
  let x_379 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_377, x_377, x_377) * x_379);
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_381.y, x_381.z, x_381.w) * x_383);
  let x_386 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_388 : f32 = x_93.unity_LightData.y;
  u_xlat23 = min(x_386, x_388);
  let x_392 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_392));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_404 : u32 = u_xlatu_loop_1;
    let x_405 : u32 = u_xlatu23;
    if ((x_404 < x_405)) {
    } else {
      break;
    }
    let x_408 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_408 >> 2u);
    let x_412 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_412 & 3u));
    let x_416 : u32 = u_xlatu5;
    let x_419 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_416)];
    let x_429 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_434 : vec4<u32> = indexable[x_429];
    u_xlat5.x = dot(x_419, bitcast<vec4<f32>>(x_434));
    let x_440 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_440);
    let x_443 : vec3<f32> = vs_TEXCOORD1;
    let x_455 : i32 = u_xlati5;
    let x_457 : vec4<f32> = x_454.x_AdditionalLightsPosition[x_455];
    let x_460 : i32 = u_xlati5;
    let x_462 : vec4<f32> = x_454.x_AdditionalLightsPosition[x_460];
    u_xlat12 = ((-(x_443) * vec3<f32>(x_457.w, x_457.w, x_457.w)) + vec3<f32>(x_462.x, x_462.y, x_462.z));
    let x_466 : vec3<f32> = u_xlat12;
    let x_467 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_466, x_467);
    let x_471 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_471, 6.10351562e-05f);
    let x_477 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_477);
    let x_480 : vec3<f32> = u_xlat12;
    let x_481 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_480 * vec3<f32>(x_481.x, x_481.x, x_481.x));
    let x_485 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_485);
    let x_489 : f32 = u_xlat6.x;
    let x_490 : i32 = u_xlati5;
    let x_492 : f32 = x_454.x_AdditionalLightsAttenuation[x_490].x;
    u_xlat6.x = (x_489 * x_492);
    let x_496 : f32 = u_xlat6.x;
    let x_499 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_496) * x_499) + 1.0f);
    let x_504 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_504, 0.0f);
    let x_508 : f32 = u_xlat6.x;
    let x_510 : f32 = u_xlat6.x;
    u_xlat6.x = (x_508 * x_510);
    let x_514 : f32 = u_xlat6.x;
    let x_516 : f32 = u_xlat13.x;
    u_xlat6.x = (x_514 * x_516);
    let x_519 : i32 = u_xlati5;
    let x_521 : vec4<f32> = x_454.x_AdditionalLightsSpotDir[x_519];
    let x_523 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), x_523);
    let x_527 : f32 = u_xlat13.x;
    let x_528 : i32 = u_xlati5;
    let x_530 : f32 = x_454.x_AdditionalLightsAttenuation[x_528].z;
    let x_532 : i32 = u_xlati5;
    let x_534 : f32 = x_454.x_AdditionalLightsAttenuation[x_532].w;
    u_xlat13.x = ((x_527 * x_530) + x_534);
    let x_538 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_538, 0.0f, 1.0f);
    let x_542 : f32 = u_xlat13.x;
    let x_544 : f32 = u_xlat13.x;
    u_xlat13.x = (x_542 * x_544);
    let x_548 : f32 = u_xlat13.x;
    let x_550 : f32 = u_xlat6.x;
    u_xlat6.x = (x_548 * x_550);
    let x_553 : vec3<f32> = u_xlat3;
    let x_555 : i32 = u_xlati5;
    let x_557 : vec4<f32> = x_454.x_AdditionalLightsColor[x_555];
    u_xlat13 = (vec3<f32>(x_553.x, x_553.x, x_553.x) * vec3<f32>(x_557.x, x_557.y, x_557.z));
    let x_560 : vec3<f32> = u_xlat6;
    let x_562 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_560.x, x_560.x, x_560.x) * x_562);
    let x_564 : vec3<f32> = u_xlat1;
    let x_565 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(x_564, x_565);
    let x_569 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_569, 0.0f, 1.0f);
    let x_572 : vec3<f32> = u_xlat5;
    let x_574 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574);
    let x_576 : vec3<f32> = u_xlat5;
    let x_577 : vec4<f32> = u_xlat0;
    let x_580 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_576 * vec3<f32>(x_577.y, x_577.z, x_577.w)) + x_580);

    continuing {
      let x_582 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_582 + bitcast<u32>(1i));
    }
  }
  let x_585 : vec3<f32> = u_xlat2;
  let x_586 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = u_xlat10;
  u_xlat7 = ((x_585 * vec3<f32>(x_586.y, x_586.z, x_586.w)) + x_589);
  let x_591 : vec3<f32> = u_xlat4;
  let x_592 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_591 + x_592);
  let x_594 : f32 = u_xlat22;
  let x_595 : f32 = u_xlat22;
  u_xlat1.x = (x_594 * -(x_595));
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_600);
  let x_603 : vec3<f32> = u_xlat7;
  let x_606 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_603 + -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_612 : vec3<f32> = u_xlat1;
  let x_614 : vec3<f32> = u_xlat7;
  let x_617 : vec4<f32> = x_44.unity_FogColor;
  let x_619 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.x, x_612.x) * x_614) + vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_624 == 1.0f);
  let x_626 : bool = u_xlatb7;
  if (x_626) {
    let x_631 : f32 = u_xlat0.x;
    x_627 = x_631;
  } else {
    x_627 = 1.0f;
  }
  let x_633 : f32 = x_627;
  SV_Target0.w = x_633;
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

