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

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_990 : AdditionalLights;

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
  var u_xlatb14 : bool;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_461 : f32;
  var x_473 : f32;
  var x_484 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat6 : f32;
  var u_xlat26 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
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
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_429.y, x_428.y, x_428.z);
  let x_433 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb14 = (x_433 == 0.0f);
  let x_435 : vec3<f32> = vs_INTERP0;
  let x_440 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_441 : vec3<f32> = (-(x_435) + x_440);
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_450);
  let x_452 : f32 = u_xlat25;
  let x_454 : vec4<f32> = u_xlat4;
  let x_456 : vec3<f32> = (vec3<f32>(x_452, x_452, x_452) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_460 : bool = u_xlatb14;
  if (x_460) {
    let x_465 : f32 = u_xlat4.x;
    x_461 = x_465;
  } else {
    let x_469 : f32 = x_66.unity_MatrixV[0i].z;
    x_461 = x_469;
  }
  let x_470 : f32 = x_461;
  u_xlat5.x = x_470;
  let x_472 : bool = u_xlatb14;
  if (x_472) {
    let x_477 : f32 = u_xlat4.y;
    x_473 = x_477;
  } else {
    let x_480 : f32 = x_66.unity_MatrixV[1i].z;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat5.y = x_481;
  let x_483 : bool = u_xlatb14;
  if (x_483) {
    let x_488 : f32 = u_xlat4.z;
    x_484 = x_488;
  } else {
    let x_491 : f32 = x_66.unity_MatrixV[2i].z;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat5.z = x_492;
  let x_501 : vec2<f32> = vs_INTERP5;
  let x_503 : f32 = x_66.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_501, x_503);
  u_xlat14 = vec3<f32>(x_504.x, x_504.y, x_504.z);
  let x_508 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_509 : vec2<f32> = vec2<f32>(x_508.x, x_508.y);
  let x_513 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_509.x, x_509.y));
  let x_514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : vec4<f32> = hlslcc_FragCoord;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.x, x_518.y));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_525 : f32 = u_xlat4.y;
  let x_528 : f32 = x_66.x_ScaleBiasRt.x;
  let x_531 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_525 * x_528) + x_531);
  let x_535 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_535) + 1.0f);
  let x_540 : f32 = u_xlat3.x;
  u_xlat3.x = x_540;
  let x_543 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_543, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat33;
  u_xlat33 = min(x_546, 1.0f);
  let x_548 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_548 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_553 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_553) + 1.0f);
  let x_559 : f32 = u_xlat15.x;
  let x_561 : f32 = u_xlat15.x;
  u_xlat37 = (x_559 * x_561);
  let x_563 : f32 = u_xlat37;
  u_xlat37 = max(x_563, 0.0078125f);
  let x_567 : f32 = u_xlat37;
  let x_568 : f32 = u_xlat37;
  u_xlat38 = (x_567 * x_568);
  let x_571 : f32 = u_xlat3.x;
  u_xlat3.x = (x_571 + 0.040000021f);
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_576, 1.0f);
  let x_580 : f32 = u_xlat37;
  u_xlat6 = ((x_580 * 4.0f) + 2.0f);
  let x_589 : vec4<f32> = u_xlat4;
  let x_592 : f32 = x_66.x_GlobalMipBias.x;
  let x_593 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_589.x, x_589.z), x_592);
  u_xlat4.x = x_593.x;
  let x_598 : f32 = u_xlat4.x;
  u_xlat26 = (x_598 + -1.0f);
  let x_602 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_603 : f32 = u_xlat26;
  u_xlat26 = ((x_602 * x_603) + 1.0f);
  let x_607 : f32 = u_xlat4.x;
  let x_609 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_607, x_609);
  let x_614 : vec4<f32> = vs_INTERP9;
  let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
  let x_617 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_615.x, x_615.y, x_617);
  let x_625 : vec3<f32> = txVec1;
  let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_625.xy, x_625.z);
  u_xlat17.x = x_627;
  let x_630 : f32 = u_xlat17.x;
  let x_632 : f32 = x_139.x_MainLightShadowParams.x;
  let x_634 : f32 = u_xlat35;
  u_xlat35 = ((x_630 * x_632) + x_634);
  let x_638 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_638);
  let x_642 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_642 >= 1.0f);
  let x_644 : bool = u_xlatb28;
  let x_645 : bool = u_xlatb17;
  u_xlatb17 = (x_644 | x_645);
  let x_647 : bool = u_xlatb17;
  let x_648 : f32 = u_xlat35;
  u_xlat35 = select(x_648, 1.0f, x_647);
  let x_650 : vec3<f32> = vs_INTERP0;
  let x_652 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_650 + -(x_652));
  let x_655 : vec3<f32> = u_xlat17;
  let x_656 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_655, x_656);
  let x_660 : f32 = u_xlat17.x;
  let x_662 : f32 = x_139.x_MainLightShadowParams.z;
  let x_665 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_660 * x_662) + x_665);
  let x_669 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_669, 0.0f, 1.0f);
  let x_673 : f32 = u_xlat35;
  u_xlat28 = (-(x_673) + 1.0f);
  let x_677 : f32 = u_xlat17.x;
  let x_678 : f32 = u_xlat28;
  let x_680 : f32 = u_xlat35;
  u_xlat35 = ((x_677 * x_678) + x_680);
  let x_682 : f32 = u_xlat26;
  let x_685 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_682, x_682, x_682) * vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_689 : vec3<f32> = u_xlat5;
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_689), vec3<f32>(x_691.x, x_691.z, x_691.w));
  let x_696 : f32 = u_xlat7.x;
  let x_698 : f32 = u_xlat7.x;
  u_xlat7.x = (x_696 + x_698);
  let x_701 : vec4<f32> = u_xlat1;
  let x_703 : vec3<f32> = u_xlat7;
  let x_707 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_701.x, x_701.z, x_701.w) * -(vec3<f32>(x_703.x, x_703.x, x_703.x))) + -(x_707));
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_711.x, x_711.z, x_711.w), x_713);
  let x_715 : f32 = u_xlat40;
  u_xlat40 = clamp(x_715, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat40;
  u_xlat40 = (-(x_717) + 1.0f);
  let x_720 : f32 = u_xlat40;
  let x_721 : f32 = u_xlat40;
  u_xlat40 = (x_720 * x_721);
  let x_723 : f32 = u_xlat40;
  let x_724 : f32 = u_xlat40;
  u_xlat40 = (x_723 * x_724);
  let x_728 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_728) * 0.699999988f) + 1.700000048f);
  let x_736 : f32 = u_xlat15.x;
  let x_738 : f32 = u_xlat8.x;
  u_xlat15.x = (x_736 * x_738);
  let x_742 : f32 = u_xlat15.x;
  u_xlat15.x = (x_742 * 6.0f);
  let x_754 : vec3<f32> = u_xlat7;
  let x_756 : f32 = u_xlat15.x;
  let x_757 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_754, x_756);
  u_xlat8 = x_757;
  let x_759 : f32 = u_xlat8.w;
  u_xlat15.x = (x_759 + -1.0f);
  let x_763 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_765 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_763 * x_765) + 1.0f);
  let x_770 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_770, 0.0f);
  let x_774 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_774);
  let x_778 : f32 = u_xlat15.x;
  let x_780 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_778 * x_780);
  let x_784 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_784);
  let x_788 : f32 = u_xlat15.x;
  let x_790 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_788 * x_790);
  let x_793 : vec4<f32> = u_xlat8;
  let x_795 : vec3<f32> = u_xlat15;
  u_xlat7 = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(x_795.x, x_795.x, x_795.x));
  let x_798 : f32 = u_xlat37;
  let x_800 : f32 = u_xlat37;
  let x_804 : vec2<f32> = ((vec2<f32>(x_798, x_798) * vec2<f32>(x_800, x_800)) + vec2<f32>(-1.0f, 1.0f));
  let x_805 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_804.x, x_805.y, x_804.y);
  let x_808 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_808);
  let x_811 : f32 = u_xlat3.x;
  u_xlat3.x = (x_811 + -0.039999999f);
  let x_815 : f32 = u_xlat40;
  let x_817 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_815 * x_817) + 0.039999999f);
  let x_823 : f32 = u_xlat3.x;
  let x_824 : f32 = u_xlat37;
  u_xlat3.x = (x_823 * x_824);
  let x_827 : vec4<f32> = u_xlat3;
  let x_829 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_827.x, x_827.x, x_827.x) * x_829);
  let x_831 : vec3<f32> = u_xlat14;
  let x_832 : vec3<f32> = u_xlat2;
  let x_834 : vec3<f32> = u_xlat7;
  let x_835 : vec3<f32> = ((x_831 * x_832) + x_834);
  let x_836 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : f32 = u_xlat35;
  let x_840 : f32 = x_344.unity_LightData.z;
  u_xlat35 = (x_838 * x_840);
  let x_843 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_843.x, x_843.z, x_843.w), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat36;
  u_xlat36 = clamp(x_849, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat35;
  let x_852 : f32 = u_xlat36;
  u_xlat35 = (x_851 * x_852);
  let x_854 : f32 = u_xlat35;
  let x_856 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_854, x_854, x_854) * x_856);
  let x_858 : vec3<f32> = u_xlat5;
  let x_860 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat7 = (x_858 + vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec3<f32> = u_xlat7;
  let x_864 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_863, x_864);
  let x_866 : f32 = u_xlat35;
  u_xlat35 = max(x_866, 1.17549435e-37f);
  let x_869 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_869);
  let x_871 : f32 = u_xlat35;
  let x_873 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_871, x_871, x_871) * x_873);
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_875.x, x_875.z, x_875.w), x_877);
  let x_879 : f32 = u_xlat35;
  u_xlat35 = clamp(x_879, 0.0f, 1.0f);
  let x_882 : vec4<f32> = x_66.x_MainLightPosition;
  let x_884 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), x_884);
  let x_886 : f32 = u_xlat36;
  u_xlat36 = clamp(x_886, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat35;
  let x_889 : f32 = u_xlat35;
  u_xlat35 = (x_888 * x_889);
  let x_891 : f32 = u_xlat35;
  let x_893 : f32 = u_xlat15.x;
  u_xlat35 = ((x_891 * x_893) + 1.000010014f);
  let x_897 : f32 = u_xlat36;
  let x_898 : f32 = u_xlat36;
  u_xlat36 = (x_897 * x_898);
  let x_900 : f32 = u_xlat35;
  let x_901 : f32 = u_xlat35;
  u_xlat35 = (x_900 * x_901);
  let x_903 : f32 = u_xlat36;
  u_xlat36 = max(x_903, 0.100000001f);
  let x_906 : f32 = u_xlat35;
  let x_907 : f32 = u_xlat36;
  u_xlat35 = (x_906 * x_907);
  let x_909 : f32 = u_xlat6;
  let x_910 : f32 = u_xlat35;
  u_xlat35 = (x_909 * x_910);
  let x_912 : f32 = u_xlat38;
  let x_913 : f32 = u_xlat35;
  u_xlat35 = (x_912 / x_913);
  let x_915 : f32 = u_xlat35;
  let x_919 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_915, x_915, x_915) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_919);
  let x_921 : vec3<f32> = u_xlat17;
  let x_922 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_921 * x_922);
  let x_926 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_928 : f32 = x_344.unity_LightData.y;
  u_xlat35 = min(x_926, x_928);
  let x_932 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_932));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_944 : u32 = u_xlatu_loop_1;
    let x_945 : u32 = u_xlatu35;
    if ((x_944 < x_945)) {
    } else {
      break;
    }
    let x_948 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_948 >> 2u);
    let x_952 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_952 & 3u));
    let x_955 : u32 = u_xlatu37;
    let x_958 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_955)];
    let x_968 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_973 : vec4<u32> = indexable[x_968];
    u_xlat37 = dot(x_958, bitcast<vec4<f32>>(x_973));
    let x_977 : f32 = u_xlat37;
    u_xlati37 = i32(x_977);
    let x_979 : vec3<f32> = vs_INTERP0;
    let x_991 : i32 = u_xlati37;
    let x_993 : vec4<f32> = x_990.x_AdditionalLightsPosition[x_991];
    let x_996 : i32 = u_xlati37;
    let x_998 : vec4<f32> = x_990.x_AdditionalLightsPosition[x_996];
    let x_1000 : vec3<f32> = ((-(x_979) * vec3<f32>(x_993.w, x_993.w, x_993.w)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
    let x_1001 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec4<f32> = u_xlat8;
    let x_1005 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : f32 = u_xlat40;
    u_xlat40 = max(x_1008, 6.10351562e-05f);
    let x_1012 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1012);
    let x_1015 : f32 = u_xlat41;
    let x_1017 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1015, x_1015, x_1015) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
    let x_1021 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1021);
    let x_1023 : f32 = u_xlat40;
    let x_1024 : i32 = u_xlati37;
    let x_1026 : f32 = x_990.x_AdditionalLightsAttenuation[x_1024].x;
    u_xlat40 = (x_1023 * x_1026);
    let x_1028 : f32 = u_xlat40;
    let x_1030 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1028) * x_1030) + 1.0f);
    let x_1033 : f32 = u_xlat40;
    u_xlat40 = max(x_1033, 0.0f);
    let x_1035 : f32 = u_xlat40;
    let x_1036 : f32 = u_xlat40;
    u_xlat40 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat40;
    let x_1039 : f32 = u_xlat42;
    u_xlat40 = (x_1038 * x_1039);
    let x_1041 : i32 = u_xlati37;
    let x_1043 : vec4<f32> = x_990.x_AdditionalLightsSpotDir[x_1041];
    let x_1045 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), x_1045);
    let x_1047 : f32 = u_xlat42;
    let x_1048 : i32 = u_xlati37;
    let x_1050 : f32 = x_990.x_AdditionalLightsAttenuation[x_1048].z;
    let x_1052 : i32 = u_xlati37;
    let x_1054 : f32 = x_990.x_AdditionalLightsAttenuation[x_1052].w;
    u_xlat42 = ((x_1047 * x_1050) + x_1054);
    let x_1056 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1056, 0.0f, 1.0f);
    let x_1058 : f32 = u_xlat42;
    let x_1059 : f32 = u_xlat42;
    u_xlat42 = (x_1058 * x_1059);
    let x_1061 : f32 = u_xlat40;
    let x_1062 : f32 = u_xlat42;
    u_xlat40 = (x_1061 * x_1062);
    let x_1065 : f32 = u_xlat26;
    let x_1067 : i32 = u_xlati37;
    let x_1069 : vec4<f32> = x_990.x_AdditionalLightsColor[x_1067];
    u_xlat10 = (vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : vec4<f32> = u_xlat1;
    let x_1074 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1072.x, x_1072.z, x_1072.w), x_1074);
    let x_1076 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1076, 0.0f, 1.0f);
    let x_1078 : f32 = u_xlat37;
    let x_1079 : f32 = u_xlat40;
    u_xlat37 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat37;
    let x_1083 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1081, x_1081, x_1081) * x_1083);
    let x_1085 : vec4<f32> = u_xlat8;
    let x_1087 : f32 = u_xlat41;
    let x_1090 : vec3<f32> = u_xlat5;
    let x_1091 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087, x_1087, x_1087)) + x_1090);
    let x_1092 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
    let x_1094 : vec4<f32> = u_xlat8;
    let x_1096 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1094.x, x_1094.y, x_1094.z), vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
    let x_1099 : f32 = u_xlat37;
    u_xlat37 = max(x_1099, 1.17549435e-37f);
    let x_1101 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1101);
    let x_1103 : f32 = u_xlat37;
    let x_1105 : vec4<f32> = u_xlat8;
    let x_1107 : vec3<f32> = (vec3<f32>(x_1103, x_1103, x_1103) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
    let x_1108 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
    let x_1110 : vec4<f32> = u_xlat1;
    let x_1112 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1110.x, x_1110.z, x_1110.w), vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1115 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1115, 0.0f, 1.0f);
    let x_1117 : vec3<f32> = u_xlat9;
    let x_1118 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1117, vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
    let x_1121 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1121, 0.0f, 1.0f);
    let x_1123 : f32 = u_xlat37;
    let x_1124 : f32 = u_xlat37;
    u_xlat37 = (x_1123 * x_1124);
    let x_1126 : f32 = u_xlat37;
    let x_1128 : f32 = u_xlat15.x;
    u_xlat37 = ((x_1126 * x_1128) + 1.000010014f);
    let x_1131 : f32 = u_xlat40;
    let x_1132 : f32 = u_xlat40;
    u_xlat40 = (x_1131 * x_1132);
    let x_1134 : f32 = u_xlat37;
    let x_1135 : f32 = u_xlat37;
    u_xlat37 = (x_1134 * x_1135);
    let x_1137 : f32 = u_xlat40;
    u_xlat40 = max(x_1137, 0.100000001f);
    let x_1139 : f32 = u_xlat37;
    let x_1140 : f32 = u_xlat40;
    u_xlat37 = (x_1139 * x_1140);
    let x_1142 : f32 = u_xlat6;
    let x_1143 : f32 = u_xlat37;
    u_xlat37 = (x_1142 * x_1143);
    let x_1145 : f32 = u_xlat38;
    let x_1146 : f32 = u_xlat37;
    u_xlat37 = (x_1145 / x_1146);
    let x_1148 : f32 = u_xlat37;
    let x_1151 : vec3<f32> = u_xlat2;
    let x_1152 : vec3<f32> = ((vec3<f32>(x_1148, x_1148, x_1148) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1151);
    let x_1153 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
    let x_1155 : vec4<f32> = u_xlat8;
    let x_1157 : vec3<f32> = u_xlat10;
    let x_1159 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * x_1157) + x_1159);

    continuing {
      let x_1161 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1161 + bitcast<u32>(1i));
    }
  }
  let x_1163 : vec4<f32> = u_xlat3;
  let x_1165 : vec4<f32> = u_xlat4;
  let x_1168 : vec3<f32> = u_xlat17;
  let x_1169 : vec3<f32> = ((vec3<f32>(x_1163.x, x_1163.y, x_1163.z) * vec3<f32>(x_1165.x, x_1165.x, x_1165.x)) + x_1168);
  let x_1170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1169.z);
  let x_1172 : vec3<f32> = u_xlat7;
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1175 : vec3<f32> = (x_1172 + vec3<f32>(x_1173.x, x_1173.z, x_1173.w));
  let x_1176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1175.z);
  let x_1180 : vec4<f32> = vs_INTERP4;
  let x_1182 : vec3<f32> = u_xlat0;
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1180.w, x_1180.w, x_1180.w) * x_1182) + vec3<f32>(x_1184.x, x_1184.z, x_1184.w));
  let x_1187 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : bool = u_xlatb12;
  let x_1190 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1190, x_1189);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

