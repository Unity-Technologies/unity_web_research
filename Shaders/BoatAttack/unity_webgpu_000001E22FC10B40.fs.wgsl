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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1088 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb4 : bool;
  var u_xlatb15 : bool;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : bool;
  var x_261 : f32;
  var u_xlat12 : f32;
  var u_xlat23 : f32;
  var u_xlatb12 : bool;
  var x_308 : f32;
  var u_xlatb1 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var x_454 : f32;
  var x_467 : f32;
  var x_479 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_44.x, x_44.x, x_44.x) * x_46);
  let x_61 : vec4<f32> = vs_INTERP3;
  let x_71 : f32 = x_66.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_61.x, x_61.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_78.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_90 : vec4<f32> = vs_INTERP3;
  let x_93 : f32 = x_66.x_GlobalMipBias.x;
  let x_94 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_90.x, x_90.y), x_93);
  u_xlat3 = vec4<f32>(x_94.w, x_94.x, x_94.y, x_94.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_97.y, x_97.z, x_97.w, x_97.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_106 : vec4<f32> = u_xlat4;
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat33;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat33 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat33;
  u_xlat33 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat33;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_142 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][0i];
  let x_150 : vec3<f32> = vs_INTERP0;
  let x_153 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_160 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][2i];
  let x_162 : vec3<f32> = vs_INTERP0;
  let x_165 : vec4<f32> = u_xlat4;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat4;
  let x_174 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][3i];
  let x_176 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat4;
  let x_181 : vec2<f32> = vec2<f32>(x_180.x, x_180.y);
  let x_184 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_181.x, x_181.y, x_184);
  let x_196 : vec3<f32> = txVec0;
  let x_199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_196.xy, x_196.z);
  u_xlat33 = x_199;
  let x_203 : f32 = x_139.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_203) + 1.0f);
  let x_206 : f32 = u_xlat33;
  let x_208 : f32 = x_139.x_MainLightShadowParams.x;
  let x_210 : f32 = u_xlat35;
  u_xlat33 = ((x_206 * x_208) + x_210);
  let x_216 : f32 = u_xlat4.z;
  u_xlatb4 = (0.0f >= x_216);
  let x_220 : f32 = u_xlat4.z;
  u_xlatb15 = (x_220 >= 1.0f);
  let x_222 : bool = u_xlatb15;
  let x_223 : bool = u_xlatb4;
  u_xlatb4 = (x_222 | x_223);
  let x_225 : bool = u_xlatb4;
  let x_226 : f32 = u_xlat33;
  u_xlat33 = select(x_226, 1.0f, x_225);
  let x_228 : vec3<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_228, -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_236 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_236, 0.0f, 1.0f);
  let x_240 : f32 = u_xlat33;
  let x_244 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat11 = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = u_xlat11;
  let x_248 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_247 * vec3<f32>(x_248.x, x_248.x, x_248.x));
  let x_251 : vec3<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_251 * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_257 : f32 = u_xlat1.w;
  u_xlatb33 = (x_257 >= 0.400000006f);
  let x_260 : bool = u_xlatb33;
  if (x_260) {
    let x_265 : f32 = u_xlat1.w;
    x_261 = x_265;
  } else {
    x_261 = 0.0f;
  }
  let x_267 : f32 = x_261;
  u_xlat33 = x_267;
  let x_269 : f32 = u_xlat1.w;
  u_xlat1.x = (x_269 + -0.400000006f);
  let x_275 : f32 = u_xlat1.w;
  u_xlat12 = dpdxCoarse(x_275);
  let x_279 : f32 = u_xlat1.w;
  u_xlat23 = dpdyCoarse(x_279);
  let x_281 : f32 = u_xlat23;
  let x_283 : f32 = u_xlat12;
  u_xlat12 = (abs(x_281) + abs(x_283));
  let x_286 : f32 = u_xlat12;
  u_xlat12 = max(x_286, 0.0001f);
  let x_290 : f32 = u_xlat1.x;
  let x_291 : f32 = u_xlat12;
  u_xlat1.x = (x_290 / x_291);
  let x_295 : f32 = u_xlat1.x;
  u_xlat1.x = (x_295 + 0.5f);
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_300, 0.0f, 1.0f);
  let x_305 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb12 = !((x_305 == 0.0f));
  let x_307 : bool = u_xlatb12;
  if (x_307) {
    let x_312 : f32 = u_xlat1.x;
    x_308 = x_312;
  } else {
    let x_314 : f32 = u_xlat33;
    x_308 = x_314;
  }
  let x_315 : f32 = x_308;
  u_xlat33 = x_315;
  let x_316 : f32 = u_xlat33;
  u_xlat1.x = (x_316 + -0.0001f);
  let x_324 : f32 = u_xlat1.x;
  u_xlatb1.x = (x_324 < 0.0f);
  let x_328 : bool = u_xlatb1.x;
  if (((select(0i, 1i, x_328) * -1i) != 0i)) {
    discard;
  }
  let x_338 : f32 = vs_INTERP2.w;
  u_xlatb1.x = (0.0f < x_338);
  let x_346 : f32 = x_344.unity_WorldTransformParams.w;
  u_xlatb1.z = (x_346 >= 0.0f);
  let x_350 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb1.z;
  u_xlat1.z = select(-1.0f, 1.0f, x_354);
  let x_358 : f32 = u_xlat1.z;
  let x_360 : f32 = u_xlat1.x;
  u_xlat1.x = (x_358 * x_360);
  let x_363 : vec3<f32> = vs_INTERP1;
  let x_365 : vec4<f32> = vs_INTERP2;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.z, x_363.x, x_363.y) * vec3<f32>(x_365.y, x_365.z, x_365.x));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec3<f32> = vs_INTERP1;
  let x_372 : vec4<f32> = vs_INTERP2;
  let x_375 : vec4<f32> = u_xlat4;
  let x_378 : vec3<f32> = ((vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_372.z, x_372.x, x_372.y)) + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.x, x_381.x) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_388 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = u_xlat14;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.z, x_388.w) * vec3<f32>(x_390.y, x_390.y, x_390.y));
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_393.y, x_392.y, x_392.z);
  let x_395 : vec3<f32> = u_xlat14;
  let x_397 : vec4<f32> = vs_INTERP2;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.x, x_395.x) * vec3<f32>(x_397.x, x_397.y, x_397.z)) + vec3<f32>(x_400.x, x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_402.z);
  let x_405 : vec3<f32> = u_xlat14;
  let x_407 : vec3<f32> = vs_INTERP1;
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.z, x_405.z, x_405.z) * x_407) + vec3<f32>(x_409.x, x_409.z, x_409.w));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_412.y, x_411.y, x_411.z);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat14.x = dot(vec3<f32>(x_414.x, x_414.z, x_414.w), vec3<f32>(x_416.x, x_416.z, x_416.w));
  let x_421 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_421);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat14;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.z, x_424.w) * vec3<f32>(x_426.x, x_426.x, x_426.x));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb1.x = (x_432 == 0.0f);
  let x_435 : vec3<f32> = vs_INTERP0;
  let x_440 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat14 = (-(x_435) + x_440);
  let x_442 : vec3<f32> = u_xlat14;
  let x_443 : vec3<f32> = u_xlat14;
  u_xlat23 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_445);
  let x_447 : f32 = u_xlat23;
  let x_449 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_453 : bool = u_xlatb1.x;
  if (x_453) {
    let x_458 : f32 = u_xlat14.x;
    x_454 = x_458;
  } else {
    let x_462 : f32 = x_66.unity_MatrixV[0i].z;
    x_454 = x_462;
  }
  let x_463 : f32 = x_454;
  u_xlat5.x = x_463;
  let x_466 : bool = u_xlatb1.x;
  if (x_466) {
    let x_471 : f32 = u_xlat14.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = x_66.unity_MatrixV[1i].z;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat5.y = x_475;
  let x_478 : bool = u_xlatb1.x;
  if (x_478) {
    let x_483 : f32 = u_xlat14.z;
    x_479 = x_483;
  } else {
    let x_486 : f32 = x_66.unity_MatrixV[2i].z;
    x_479 = x_486;
  }
  let x_487 : f32 = x_479;
  u_xlat5.z = x_487;
  u_xlat4.w = 1.0f;
  let x_493 : vec4<f32> = x_344.unity_SHAr;
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_493, x_494);
  let x_499 : vec4<f32> = x_344.unity_SHAg;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_499, x_500);
  let x_505 : vec4<f32> = x_344.unity_SHAb;
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_505, x_506);
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_510.y, x_510.z, x_510.z, x_510.x) * vec4<f32>(x_512.x, x_512.y, x_512.z, x_512.z));
  let x_518 : vec4<f32> = x_344.unity_SHBr;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_518, x_519);
  let x_524 : vec4<f32> = x_344.unity_SHBg;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_524, x_525);
  let x_530 : vec4<f32> = x_344.unity_SHBb;
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_530, x_531);
  let x_535 : f32 = u_xlat4.y;
  let x_537 : f32 = u_xlat4.y;
  u_xlat1.x = (x_535 * x_537);
  let x_541 : f32 = u_xlat4.x;
  let x_543 : f32 = u_xlat4.x;
  let x_546 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_541 * x_543) + -(x_546));
  let x_552 : vec4<f32> = x_344.unity_SHC;
  let x_554 : vec4<f32> = u_xlat1;
  let x_557 : vec4<f32> = u_xlat8;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_554.x, x_554.x, x_554.x)) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_559.z);
  let x_562 : vec4<f32> = u_xlat1;
  let x_564 : vec3<f32> = u_xlat6;
  let x_565 : vec3<f32> = (vec3<f32>(x_562.x, x_562.z, x_562.w) + x_564);
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_566.y, x_565.y, x_565.z);
  let x_568 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = max(vec3<f32>(x_568.x, x_568.z, x_568.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_572.y, x_571.y, x_571.z);
  let x_576 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_577 : vec2<f32> = vec2<f32>(x_576.x, x_576.y);
  let x_581 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_577.x, x_577.y));
  let x_582 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_581.x, x_581.y, x_582.z);
  let x_584 : vec3<f32> = u_xlat14;
  let x_586 : vec4<f32> = hlslcc_FragCoord;
  let x_588 : vec2<f32> = (vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_586.x, x_586.y));
  let x_589 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_588.x, x_588.y, x_589.z);
  let x_592 : f32 = u_xlat6.y;
  let x_595 : f32 = x_66.x_ScaleBiasRt.x;
  let x_598 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_592 * x_595) + x_598);
  let x_602 : f32 = u_xlat14.x;
  u_xlat6.z = (-(x_602) + 1.0f);
  let x_607 : f32 = u_xlat3.x;
  u_xlat3.x = x_607;
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_610, 0.0f, 1.0f);
  let x_613 : f32 = u_xlat33;
  u_xlat33 = min(x_613, 1.0f);
  let x_615 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_615 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_620 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_620) + 1.0f);
  let x_626 : f32 = u_xlat14.x;
  let x_628 : f32 = u_xlat14.x;
  u_xlat25 = (x_626 * x_628);
  let x_630 : f32 = u_xlat25;
  u_xlat25 = max(x_630, 0.0078125f);
  let x_634 : f32 = u_xlat25;
  let x_635 : f32 = u_xlat25;
  u_xlat36 = (x_634 * x_635);
  let x_638 : f32 = u_xlat3.x;
  u_xlat3.x = (x_638 + 0.040000021f);
  let x_643 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_643, 1.0f);
  let x_647 : f32 = u_xlat25;
  u_xlat37 = ((x_647 * 4.0f) + 2.0f);
  let x_657 : vec3<f32> = u_xlat6;
  let x_660 : f32 = x_66.x_GlobalMipBias.x;
  let x_661 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_657.x, x_657.z), x_660);
  u_xlat38 = x_661.x;
  let x_663 : f32 = u_xlat38;
  u_xlat6.x = (x_663 + -1.0f);
  let x_668 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_670 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_668 * x_670) + 1.0f);
  let x_674 : f32 = u_xlat38;
  let x_676 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_674, x_676);
  let x_680 : vec4<f32> = vs_INTERP9;
  let x_681 : vec2<f32> = vec2<f32>(x_680.x, x_680.y);
  let x_683 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_681.x, x_681.y, x_683);
  let x_691 : vec3<f32> = txVec1;
  let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_691.xy, x_691.z);
  u_xlat17.x = x_693;
  let x_696 : f32 = u_xlat17.x;
  let x_698 : f32 = x_139.x_MainLightShadowParams.x;
  let x_700 : f32 = u_xlat35;
  u_xlat35 = ((x_696 * x_698) + x_700);
  let x_704 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_704);
  let x_708 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_708 >= 1.0f);
  let x_710 : bool = u_xlatb28;
  let x_711 : bool = u_xlatb17;
  u_xlatb17 = (x_710 | x_711);
  let x_713 : bool = u_xlatb17;
  let x_714 : f32 = u_xlat35;
  u_xlat35 = select(x_714, 1.0f, x_713);
  let x_716 : vec3<f32> = vs_INTERP0;
  let x_718 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_716 + -(x_718));
  let x_721 : vec3<f32> = u_xlat17;
  let x_722 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_721, x_722);
  let x_726 : f32 = u_xlat17.x;
  let x_728 : f32 = x_139.x_MainLightShadowParams.z;
  let x_731 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_726 * x_728) + x_731);
  let x_735 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_735, 0.0f, 1.0f);
  let x_739 : f32 = u_xlat35;
  u_xlat28 = (-(x_739) + 1.0f);
  let x_743 : f32 = u_xlat17.x;
  let x_744 : f32 = u_xlat28;
  let x_746 : f32 = u_xlat35;
  u_xlat35 = ((x_743 * x_744) + x_746);
  let x_748 : vec3<f32> = u_xlat6;
  let x_751 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec3<f32> = u_xlat5;
  let x_756 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_754), vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_761 : f32 = u_xlat7.x;
  let x_763 : f32 = u_xlat7.x;
  u_xlat7.x = (x_761 + x_763);
  let x_766 : vec4<f32> = u_xlat4;
  let x_768 : vec4<f32> = u_xlat7;
  let x_772 : vec3<f32> = u_xlat5;
  let x_774 : vec3<f32> = ((vec3<f32>(x_766.x, x_766.y, x_766.z) * -(vec3<f32>(x_768.x, x_768.x, x_768.x))) + -(x_772));
  let x_775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : vec4<f32> = u_xlat4;
  let x_780 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), x_780);
  let x_782 : f32 = u_xlat40;
  u_xlat40 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat40;
  u_xlat40 = (-(x_784) + 1.0f);
  let x_787 : f32 = u_xlat40;
  let x_788 : f32 = u_xlat40;
  u_xlat40 = (x_787 * x_788);
  let x_790 : f32 = u_xlat40;
  let x_791 : f32 = u_xlat40;
  u_xlat40 = (x_790 * x_791);
  let x_794 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_794) * 0.699999988f) + 1.700000048f);
  let x_802 : f32 = u_xlat14.x;
  let x_804 : f32 = u_xlat8.x;
  u_xlat14.x = (x_802 * x_804);
  let x_808 : f32 = u_xlat14.x;
  u_xlat14.x = (x_808 * 6.0f);
  let x_820 : vec4<f32> = u_xlat7;
  let x_823 : f32 = u_xlat14.x;
  let x_824 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_820.x, x_820.y, x_820.z), x_823);
  u_xlat8 = x_824;
  let x_826 : f32 = u_xlat8.w;
  u_xlat14.x = (x_826 + -1.0f);
  let x_830 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_832 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_830 * x_832) + 1.0f);
  let x_837 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_837, 0.0f);
  let x_841 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_841);
  let x_845 : f32 = u_xlat14.x;
  let x_847 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_845 * x_847);
  let x_851 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_851);
  let x_855 : f32 = u_xlat14.x;
  let x_857 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_855 * x_857);
  let x_860 : vec4<f32> = u_xlat8;
  let x_862 : vec3<f32> = u_xlat14;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(x_862.x, x_862.x, x_862.x));
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : f32 = u_xlat25;
  let x_869 : f32 = u_xlat25;
  let x_873 : vec2<f32> = ((vec2<f32>(x_867, x_867) * vec2<f32>(x_869, x_869)) + vec2<f32>(-1.0f, 1.0f));
  let x_874 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_873.x, x_873.y, x_874.z);
  let x_877 : f32 = u_xlat14.y;
  u_xlat25 = (1.0f / x_877);
  let x_880 : f32 = u_xlat3.x;
  u_xlat3.x = (x_880 + -0.039999999f);
  let x_884 : f32 = u_xlat40;
  let x_886 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_884 * x_886) + 0.039999999f);
  let x_892 : f32 = u_xlat3.x;
  let x_893 : f32 = u_xlat25;
  u_xlat3.x = (x_892 * x_893);
  let x_896 : vec4<f32> = u_xlat3;
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : vec3<f32> = (vec3<f32>(x_896.x, x_896.x, x_896.x) * vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec3<f32> = u_xlat2;
  let x_907 : vec4<f32> = u_xlat7;
  let x_909 : vec3<f32> = ((vec3<f32>(x_903.x, x_903.z, x_903.w) * x_905) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_909.z);
  let x_912 : f32 = u_xlat35;
  let x_914 : f32 = x_344.unity_LightData.z;
  u_xlat35 = (x_912 * x_914);
  let x_916 : vec4<f32> = u_xlat4;
  let x_919 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_924 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_924, 0.0f, 1.0f);
  let x_927 : f32 = u_xlat35;
  let x_929 : f32 = u_xlat3.x;
  u_xlat35 = (x_927 * x_929);
  let x_931 : f32 = u_xlat35;
  let x_933 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_931, x_931, x_931) * x_933);
  let x_935 : vec3<f32> = u_xlat5;
  let x_937 : vec4<f32> = x_66.x_MainLightPosition;
  let x_939 : vec3<f32> = (x_935 + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec4<f32> = u_xlat7;
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : f32 = u_xlat35;
  u_xlat35 = max(x_947, 1.17549435e-37f);
  let x_950 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_950);
  let x_952 : f32 = u_xlat35;
  let x_954 : vec4<f32> = u_xlat7;
  let x_956 : vec3<f32> = (vec3<f32>(x_952, x_952, x_952) * vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat4;
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : f32 = u_xlat35;
  u_xlat35 = clamp(x_964, 0.0f, 1.0f);
  let x_967 : vec4<f32> = x_66.x_MainLightPosition;
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_974 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_974, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat35;
  let x_978 : f32 = u_xlat35;
  u_xlat35 = (x_977 * x_978);
  let x_980 : f32 = u_xlat35;
  let x_982 : f32 = u_xlat14.x;
  u_xlat35 = ((x_980 * x_982) + 1.000010014f);
  let x_987 : f32 = u_xlat3.x;
  let x_989 : f32 = u_xlat3.x;
  u_xlat3.x = (x_987 * x_989);
  let x_992 : f32 = u_xlat35;
  let x_993 : f32 = u_xlat35;
  u_xlat35 = (x_992 * x_993);
  let x_996 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_996, 0.100000001f);
  let x_1000 : f32 = u_xlat35;
  let x_1002 : f32 = u_xlat3.x;
  u_xlat35 = (x_1000 * x_1002);
  let x_1004 : f32 = u_xlat37;
  let x_1005 : f32 = u_xlat35;
  u_xlat35 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat36;
  let x_1008 : f32 = u_xlat35;
  u_xlat35 = (x_1007 / x_1008);
  let x_1010 : f32 = u_xlat35;
  let x_1014 : vec3<f32> = u_xlat2;
  let x_1015 : vec3<f32> = ((vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1014);
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec3<f32> = u_xlat17;
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1018 * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1024 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1026 : f32 = x_344.unity_LightData.y;
  u_xlat35 = min(x_1024, x_1026);
  let x_1030 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_1030));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1042 : u32 = u_xlatu_loop_1;
    let x_1043 : u32 = u_xlatu35;
    if ((x_1042 < x_1043)) {
    } else {
      break;
    }
    let x_1046 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_1046 >> 2u);
    let x_1050 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1050 & 3u));
    let x_1053 : u32 = u_xlatu25;
    let x_1056 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1053)];
    let x_1066 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1071 : vec4<u32> = indexable[x_1066];
    u_xlat25 = dot(x_1056, bitcast<vec4<f32>>(x_1071));
    let x_1075 : f32 = u_xlat25;
    u_xlati25 = i32(x_1075);
    let x_1077 : vec3<f32> = vs_INTERP0;
    let x_1089 : i32 = u_xlati25;
    let x_1091 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1089];
    let x_1094 : i32 = u_xlati25;
    let x_1096 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1094];
    let x_1098 : vec3<f32> = ((-(x_1077) * vec3<f32>(x_1091.w, x_1091.w, x_1091.w)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
    let x_1099 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
    let x_1101 : vec4<f32> = u_xlat8;
    let x_1103 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
    let x_1106 : f32 = u_xlat40;
    u_xlat40 = max(x_1106, 6.10351562e-05f);
    let x_1110 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1110);
    let x_1113 : f32 = u_xlat41;
    let x_1115 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
    let x_1119 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1119);
    let x_1121 : f32 = u_xlat40;
    let x_1122 : i32 = u_xlati25;
    let x_1124 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1122].x;
    u_xlat40 = (x_1121 * x_1124);
    let x_1126 : f32 = u_xlat40;
    let x_1128 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1126) * x_1128) + 1.0f);
    let x_1131 : f32 = u_xlat40;
    u_xlat40 = max(x_1131, 0.0f);
    let x_1133 : f32 = u_xlat40;
    let x_1134 : f32 = u_xlat40;
    u_xlat40 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat40;
    let x_1137 : f32 = u_xlat42;
    u_xlat40 = (x_1136 * x_1137);
    let x_1139 : i32 = u_xlati25;
    let x_1141 : vec4<f32> = x_1088.x_AdditionalLightsSpotDir[x_1139];
    let x_1143 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), x_1143);
    let x_1145 : f32 = u_xlat42;
    let x_1146 : i32 = u_xlati25;
    let x_1148 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1146].z;
    let x_1150 : i32 = u_xlati25;
    let x_1152 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1150].w;
    u_xlat42 = ((x_1145 * x_1148) + x_1152);
    let x_1154 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1154, 0.0f, 1.0f);
    let x_1156 : f32 = u_xlat42;
    let x_1157 : f32 = u_xlat42;
    u_xlat42 = (x_1156 * x_1157);
    let x_1159 : f32 = u_xlat40;
    let x_1160 : f32 = u_xlat42;
    u_xlat40 = (x_1159 * x_1160);
    let x_1163 : vec3<f32> = u_xlat6;
    let x_1165 : i32 = u_xlati25;
    let x_1167 : vec4<f32> = x_1088.x_AdditionalLightsColor[x_1165];
    u_xlat10 = (vec3<f32>(x_1163.x, x_1163.x, x_1163.x) * vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
    let x_1170 : vec4<f32> = u_xlat4;
    let x_1172 : vec3<f32> = u_xlat9;
    u_xlat25 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), x_1172);
    let x_1174 : f32 = u_xlat25;
    u_xlat25 = clamp(x_1174, 0.0f, 1.0f);
    let x_1176 : f32 = u_xlat25;
    let x_1177 : f32 = u_xlat40;
    u_xlat25 = (x_1176 * x_1177);
    let x_1179 : f32 = u_xlat25;
    let x_1181 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1179, x_1179, x_1179) * x_1181);
    let x_1183 : vec4<f32> = u_xlat8;
    let x_1185 : f32 = u_xlat41;
    let x_1188 : vec3<f32> = u_xlat5;
    let x_1189 : vec3<f32> = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185, x_1185, x_1185)) + x_1188);
    let x_1190 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
    let x_1192 : vec4<f32> = u_xlat8;
    let x_1194 : vec4<f32> = u_xlat8;
    u_xlat25 = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
    let x_1197 : f32 = u_xlat25;
    u_xlat25 = max(x_1197, 1.17549435e-37f);
    let x_1199 : f32 = u_xlat25;
    u_xlat25 = inverseSqrt(x_1199);
    let x_1201 : f32 = u_xlat25;
    let x_1203 : vec4<f32> = u_xlat8;
    let x_1205 : vec3<f32> = (vec3<f32>(x_1201, x_1201, x_1201) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
    let x_1208 : vec4<f32> = u_xlat4;
    let x_1210 : vec4<f32> = u_xlat8;
    u_xlat25 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
    let x_1213 : f32 = u_xlat25;
    u_xlat25 = clamp(x_1213, 0.0f, 1.0f);
    let x_1215 : vec3<f32> = u_xlat9;
    let x_1216 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1215, vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1219 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1219, 0.0f, 1.0f);
    let x_1221 : f32 = u_xlat25;
    let x_1222 : f32 = u_xlat25;
    u_xlat25 = (x_1221 * x_1222);
    let x_1224 : f32 = u_xlat25;
    let x_1226 : f32 = u_xlat14.x;
    u_xlat25 = ((x_1224 * x_1226) + 1.000010014f);
    let x_1229 : f32 = u_xlat40;
    let x_1230 : f32 = u_xlat40;
    u_xlat40 = (x_1229 * x_1230);
    let x_1232 : f32 = u_xlat25;
    let x_1233 : f32 = u_xlat25;
    u_xlat25 = (x_1232 * x_1233);
    let x_1235 : f32 = u_xlat40;
    u_xlat40 = max(x_1235, 0.100000001f);
    let x_1237 : f32 = u_xlat25;
    let x_1238 : f32 = u_xlat40;
    u_xlat25 = (x_1237 * x_1238);
    let x_1240 : f32 = u_xlat37;
    let x_1241 : f32 = u_xlat25;
    u_xlat25 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat36;
    let x_1244 : f32 = u_xlat25;
    u_xlat25 = (x_1243 / x_1244);
    let x_1246 : f32 = u_xlat25;
    let x_1249 : vec3<f32> = u_xlat2;
    let x_1250 : vec3<f32> = ((vec3<f32>(x_1246, x_1246, x_1246) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1249);
    let x_1251 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    let x_1253 : vec4<f32> = u_xlat8;
    let x_1255 : vec3<f32> = u_xlat10;
    let x_1257 : vec4<f32> = u_xlat7;
    let x_1259 : vec3<f32> = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * x_1255) + vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1260 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);

    continuing {
      let x_1262 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1262 + bitcast<u32>(1i));
    }
  }
  let x_1264 : vec4<f32> = u_xlat1;
  let x_1266 : f32 = u_xlat38;
  let x_1269 : vec3<f32> = u_xlat17;
  let x_1270 : vec3<f32> = ((vec3<f32>(x_1264.x, x_1264.z, x_1264.w) * vec3<f32>(x_1266, x_1266, x_1266)) + x_1269);
  let x_1271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1270.x, x_1271.y, x_1270.y, x_1270.z);
  let x_1273 : vec4<f32> = u_xlat7;
  let x_1275 : vec4<f32> = u_xlat1;
  let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + vec3<f32>(x_1275.x, x_1275.z, x_1275.w));
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
  let x_1282 : vec4<f32> = vs_INTERP4;
  let x_1284 : vec3<f32> = u_xlat0;
  let x_1286 : vec4<f32> = u_xlat1;
  let x_1288 : vec3<f32> = ((vec3<f32>(x_1282.w, x_1282.w, x_1282.w) * x_1284) + vec3<f32>(x_1286.x, x_1286.z, x_1286.w));
  let x_1289 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : bool = u_xlatb12;
  let x_1292 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1292, x_1291);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

