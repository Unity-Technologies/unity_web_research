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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(1) var<uniform> x_991 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_462 : f32;
  var x_474 : f32;
  var x_485 : f32;
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
  var u_xlatu0 : u32;
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
  let x_434 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb14 = (x_434 == 0.0f);
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_441 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_442 : vec3<f32> = (-(x_436) + x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_451);
  let x_453 : f32 = u_xlat25;
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : bool = u_xlatb14;
  if (x_461) {
    let x_466 : f32 = u_xlat4.x;
    x_462 = x_466;
  } else {
    let x_470 : f32 = x_66.unity_MatrixV[0i].z;
    x_462 = x_470;
  }
  let x_471 : f32 = x_462;
  u_xlat5.x = x_471;
  let x_473 : bool = u_xlatb14;
  if (x_473) {
    let x_478 : f32 = u_xlat4.y;
    x_474 = x_478;
  } else {
    let x_481 : f32 = x_66.unity_MatrixV[1i].z;
    x_474 = x_481;
  }
  let x_482 : f32 = x_474;
  u_xlat5.y = x_482;
  let x_484 : bool = u_xlatb14;
  if (x_484) {
    let x_489 : f32 = u_xlat4.z;
    x_485 = x_489;
  } else {
    let x_492 : f32 = x_66.unity_MatrixV[2i].z;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat5.z = x_493;
  let x_502 : vec2<f32> = vs_INTERP5;
  let x_504 : f32 = x_66.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_502, x_504);
  u_xlat14 = vec3<f32>(x_505.x, x_505.y, x_505.z);
  let x_509 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_510 : vec2<f32> = vec2<f32>(x_509.x, x_509.y);
  let x_514 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_510.x, x_510.y));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec4<f32> = hlslcc_FragCoord;
  let x_521 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_519.x, x_519.y));
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_526 : f32 = u_xlat4.y;
  let x_529 : f32 = x_66.x_ScaleBiasRt.x;
  let x_532 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_526 * x_529) + x_532);
  let x_536 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_536) + 1.0f);
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = x_541;
  let x_544 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_544, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat33;
  u_xlat33 = min(x_547, 1.0f);
  let x_549 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_549 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_554 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_554) + 1.0f);
  let x_560 : f32 = u_xlat15.x;
  let x_562 : f32 = u_xlat15.x;
  u_xlat37 = (x_560 * x_562);
  let x_564 : f32 = u_xlat37;
  u_xlat37 = max(x_564, 0.0078125f);
  let x_568 : f32 = u_xlat37;
  let x_569 : f32 = u_xlat37;
  u_xlat38 = (x_568 * x_569);
  let x_572 : f32 = u_xlat3.x;
  u_xlat3.x = (x_572 + 0.040000021f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_577, 1.0f);
  let x_581 : f32 = u_xlat37;
  u_xlat6 = ((x_581 * 4.0f) + 2.0f);
  let x_590 : vec4<f32> = u_xlat4;
  let x_593 : f32 = x_66.x_GlobalMipBias.x;
  let x_594 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_590.x, x_590.z), x_593);
  u_xlat4.x = x_594.x;
  let x_599 : f32 = u_xlat4.x;
  u_xlat26 = (x_599 + -1.0f);
  let x_603 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_604 : f32 = u_xlat26;
  u_xlat26 = ((x_603 * x_604) + 1.0f);
  let x_608 : f32 = u_xlat4.x;
  let x_610 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_608, x_610);
  let x_615 : vec4<f32> = vs_INTERP9;
  let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
  let x_618 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_616.x, x_616.y, x_618);
  let x_626 : vec3<f32> = txVec1;
  let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
  u_xlat17.x = x_628;
  let x_631 : f32 = u_xlat17.x;
  let x_633 : f32 = x_139.x_MainLightShadowParams.x;
  let x_635 : f32 = u_xlat35;
  u_xlat35 = ((x_631 * x_633) + x_635);
  let x_639 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_639);
  let x_643 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_643 >= 1.0f);
  let x_645 : bool = u_xlatb28;
  let x_646 : bool = u_xlatb17;
  u_xlatb17 = (x_645 | x_646);
  let x_648 : bool = u_xlatb17;
  let x_649 : f32 = u_xlat35;
  u_xlat35 = select(x_649, 1.0f, x_648);
  let x_651 : vec3<f32> = vs_INTERP0;
  let x_653 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_651 + -(x_653));
  let x_656 : vec3<f32> = u_xlat17;
  let x_657 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_656, x_657);
  let x_661 : f32 = u_xlat17.x;
  let x_663 : f32 = x_139.x_MainLightShadowParams.z;
  let x_666 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_661 * x_663) + x_666);
  let x_670 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_670, 0.0f, 1.0f);
  let x_674 : f32 = u_xlat35;
  u_xlat28 = (-(x_674) + 1.0f);
  let x_678 : f32 = u_xlat17.x;
  let x_679 : f32 = u_xlat28;
  let x_681 : f32 = u_xlat35;
  u_xlat35 = ((x_678 * x_679) + x_681);
  let x_683 : f32 = u_xlat26;
  let x_686 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_683, x_683, x_683) * vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_690 : vec3<f32> = u_xlat5;
  let x_692 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_690), vec3<f32>(x_692.x, x_692.z, x_692.w));
  let x_697 : f32 = u_xlat7.x;
  let x_699 : f32 = u_xlat7.x;
  u_xlat7.x = (x_697 + x_699);
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec3<f32> = u_xlat7;
  let x_708 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_702.x, x_702.z, x_702.w) * -(vec3<f32>(x_704.x, x_704.x, x_704.x))) + -(x_708));
  let x_712 : vec4<f32> = u_xlat1;
  let x_714 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_712.x, x_712.z, x_712.w), x_714);
  let x_716 : f32 = u_xlat40;
  u_xlat40 = clamp(x_716, 0.0f, 1.0f);
  let x_718 : f32 = u_xlat40;
  u_xlat40 = (-(x_718) + 1.0f);
  let x_721 : f32 = u_xlat40;
  let x_722 : f32 = u_xlat40;
  u_xlat40 = (x_721 * x_722);
  let x_724 : f32 = u_xlat40;
  let x_725 : f32 = u_xlat40;
  u_xlat40 = (x_724 * x_725);
  let x_729 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_729) * 0.699999988f) + 1.700000048f);
  let x_737 : f32 = u_xlat15.x;
  let x_739 : f32 = u_xlat8.x;
  u_xlat15.x = (x_737 * x_739);
  let x_743 : f32 = u_xlat15.x;
  u_xlat15.x = (x_743 * 6.0f);
  let x_755 : vec3<f32> = u_xlat7;
  let x_757 : f32 = u_xlat15.x;
  let x_758 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_755, x_757);
  u_xlat8 = x_758;
  let x_760 : f32 = u_xlat8.w;
  u_xlat15.x = (x_760 + -1.0f);
  let x_764 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_766 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_764 * x_766) + 1.0f);
  let x_771 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_771, 0.0f);
  let x_775 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_775);
  let x_779 : f32 = u_xlat15.x;
  let x_781 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_779 * x_781);
  let x_785 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_785);
  let x_789 : f32 = u_xlat15.x;
  let x_791 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_789 * x_791);
  let x_794 : vec4<f32> = u_xlat8;
  let x_796 : vec3<f32> = u_xlat15;
  u_xlat7 = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.x, x_796.x));
  let x_799 : f32 = u_xlat37;
  let x_801 : f32 = u_xlat37;
  let x_805 : vec2<f32> = ((vec2<f32>(x_799, x_799) * vec2<f32>(x_801, x_801)) + vec2<f32>(-1.0f, 1.0f));
  let x_806 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_805.x, x_806.y, x_805.y);
  let x_809 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_809);
  let x_812 : f32 = u_xlat3.x;
  u_xlat3.x = (x_812 + -0.039999999f);
  let x_816 : f32 = u_xlat40;
  let x_818 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_816 * x_818) + 0.039999999f);
  let x_824 : f32 = u_xlat3.x;
  let x_825 : f32 = u_xlat37;
  u_xlat3.x = (x_824 * x_825);
  let x_828 : vec4<f32> = u_xlat3;
  let x_830 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_828.x, x_828.x, x_828.x) * x_830);
  let x_832 : vec3<f32> = u_xlat14;
  let x_833 : vec3<f32> = u_xlat2;
  let x_835 : vec3<f32> = u_xlat7;
  let x_836 : vec3<f32> = ((x_832 * x_833) + x_835);
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : f32 = u_xlat35;
  let x_841 : f32 = x_344.unity_LightData.z;
  u_xlat35 = (x_839 * x_841);
  let x_844 : vec4<f32> = u_xlat1;
  let x_847 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_844.x, x_844.z, x_844.w), vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : f32 = u_xlat36;
  u_xlat36 = clamp(x_850, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat35;
  let x_853 : f32 = u_xlat36;
  u_xlat35 = (x_852 * x_853);
  let x_855 : f32 = u_xlat35;
  let x_857 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_855, x_855, x_855) * x_857);
  let x_859 : vec3<f32> = u_xlat5;
  let x_861 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat7 = (x_859 + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec3<f32> = u_xlat7;
  let x_865 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_864, x_865);
  let x_867 : f32 = u_xlat35;
  u_xlat35 = max(x_867, 1.17549435e-37f);
  let x_870 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_870);
  let x_872 : f32 = u_xlat35;
  let x_874 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_872, x_872, x_872) * x_874);
  let x_876 : vec4<f32> = u_xlat1;
  let x_878 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_876.x, x_876.z, x_876.w), x_878);
  let x_880 : f32 = u_xlat35;
  u_xlat35 = clamp(x_880, 0.0f, 1.0f);
  let x_883 : vec4<f32> = x_66.x_MainLightPosition;
  let x_885 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), x_885);
  let x_887 : f32 = u_xlat36;
  u_xlat36 = clamp(x_887, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat35;
  let x_890 : f32 = u_xlat35;
  u_xlat35 = (x_889 * x_890);
  let x_892 : f32 = u_xlat35;
  let x_894 : f32 = u_xlat15.x;
  u_xlat35 = ((x_892 * x_894) + 1.000010014f);
  let x_898 : f32 = u_xlat36;
  let x_899 : f32 = u_xlat36;
  u_xlat36 = (x_898 * x_899);
  let x_901 : f32 = u_xlat35;
  let x_902 : f32 = u_xlat35;
  u_xlat35 = (x_901 * x_902);
  let x_904 : f32 = u_xlat36;
  u_xlat36 = max(x_904, 0.100000001f);
  let x_907 : f32 = u_xlat35;
  let x_908 : f32 = u_xlat36;
  u_xlat35 = (x_907 * x_908);
  let x_910 : f32 = u_xlat6;
  let x_911 : f32 = u_xlat35;
  u_xlat35 = (x_910 * x_911);
  let x_913 : f32 = u_xlat38;
  let x_914 : f32 = u_xlat35;
  u_xlat35 = (x_913 / x_914);
  let x_916 : f32 = u_xlat35;
  let x_920 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_916, x_916, x_916) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_920);
  let x_922 : vec3<f32> = u_xlat17;
  let x_923 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_922 * x_923);
  let x_927 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_929 : f32 = x_344.unity_LightData.y;
  u_xlat35 = min(x_927, x_929);
  let x_933 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_933));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_945 : u32 = u_xlatu_loop_1;
    let x_946 : u32 = u_xlatu35;
    if ((x_945 < x_946)) {
    } else {
      break;
    }
    let x_949 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_949 >> 2u);
    let x_953 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_953 & 3u));
    let x_956 : u32 = u_xlatu37;
    let x_959 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_956)];
    let x_969 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_974 : vec4<u32> = indexable[x_969];
    u_xlat37 = dot(x_959, bitcast<vec4<f32>>(x_974));
    let x_978 : f32 = u_xlat37;
    u_xlati37 = i32(x_978);
    let x_980 : vec3<f32> = vs_INTERP0;
    let x_992 : i32 = u_xlati37;
    let x_994 : vec4<f32> = x_991.x_AdditionalLightsPosition[x_992];
    let x_997 : i32 = u_xlati37;
    let x_999 : vec4<f32> = x_991.x_AdditionalLightsPosition[x_997];
    let x_1001 : vec3<f32> = ((-(x_980) * vec3<f32>(x_994.w, x_994.w, x_994.w)) + vec3<f32>(x_999.x, x_999.y, x_999.z));
    let x_1002 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    let x_1004 : vec4<f32> = u_xlat8;
    let x_1006 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
    let x_1009 : f32 = u_xlat40;
    u_xlat40 = max(x_1009, 6.10351562e-05f);
    let x_1013 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1013);
    let x_1016 : f32 = u_xlat41;
    let x_1018 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1016, x_1016, x_1016) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
    let x_1022 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1022);
    let x_1024 : f32 = u_xlat40;
    let x_1025 : i32 = u_xlati37;
    let x_1027 : f32 = x_991.x_AdditionalLightsAttenuation[x_1025].x;
    u_xlat40 = (x_1024 * x_1027);
    let x_1029 : f32 = u_xlat40;
    let x_1031 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1029) * x_1031) + 1.0f);
    let x_1034 : f32 = u_xlat40;
    u_xlat40 = max(x_1034, 0.0f);
    let x_1036 : f32 = u_xlat40;
    let x_1037 : f32 = u_xlat40;
    u_xlat40 = (x_1036 * x_1037);
    let x_1039 : f32 = u_xlat40;
    let x_1040 : f32 = u_xlat42;
    u_xlat40 = (x_1039 * x_1040);
    let x_1042 : i32 = u_xlati37;
    let x_1044 : vec4<f32> = x_991.x_AdditionalLightsSpotDir[x_1042];
    let x_1046 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1046);
    let x_1048 : f32 = u_xlat42;
    let x_1049 : i32 = u_xlati37;
    let x_1051 : f32 = x_991.x_AdditionalLightsAttenuation[x_1049].z;
    let x_1053 : i32 = u_xlati37;
    let x_1055 : f32 = x_991.x_AdditionalLightsAttenuation[x_1053].w;
    u_xlat42 = ((x_1048 * x_1051) + x_1055);
    let x_1057 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1057, 0.0f, 1.0f);
    let x_1059 : f32 = u_xlat42;
    let x_1060 : f32 = u_xlat42;
    u_xlat42 = (x_1059 * x_1060);
    let x_1062 : f32 = u_xlat40;
    let x_1063 : f32 = u_xlat42;
    u_xlat40 = (x_1062 * x_1063);
    let x_1066 : f32 = u_xlat26;
    let x_1068 : i32 = u_xlati37;
    let x_1070 : vec4<f32> = x_991.x_AdditionalLightsColor[x_1068];
    u_xlat10 = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat1;
    let x_1075 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1073.x, x_1073.z, x_1073.w), x_1075);
    let x_1077 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1077, 0.0f, 1.0f);
    let x_1079 : f32 = u_xlat37;
    let x_1080 : f32 = u_xlat40;
    u_xlat37 = (x_1079 * x_1080);
    let x_1082 : f32 = u_xlat37;
    let x_1084 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1082, x_1082, x_1082) * x_1084);
    let x_1086 : vec4<f32> = u_xlat8;
    let x_1088 : f32 = u_xlat41;
    let x_1091 : vec3<f32> = u_xlat5;
    let x_1092 : vec3<f32> = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * vec3<f32>(x_1088, x_1088, x_1088)) + x_1091);
    let x_1093 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
    let x_1095 : vec4<f32> = u_xlat8;
    let x_1097 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
    let x_1100 : f32 = u_xlat37;
    u_xlat37 = max(x_1100, 1.17549435e-37f);
    let x_1102 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1102);
    let x_1104 : f32 = u_xlat37;
    let x_1106 : vec4<f32> = u_xlat8;
    let x_1108 : vec3<f32> = (vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1109 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
    let x_1111 : vec4<f32> = u_xlat1;
    let x_1113 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1111.x, x_1111.z, x_1111.w), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
    let x_1116 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1116, 0.0f, 1.0f);
    let x_1118 : vec3<f32> = u_xlat9;
    let x_1119 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1118, vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
    let x_1122 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1122, 0.0f, 1.0f);
    let x_1124 : f32 = u_xlat37;
    let x_1125 : f32 = u_xlat37;
    u_xlat37 = (x_1124 * x_1125);
    let x_1127 : f32 = u_xlat37;
    let x_1129 : f32 = u_xlat15.x;
    u_xlat37 = ((x_1127 * x_1129) + 1.000010014f);
    let x_1132 : f32 = u_xlat40;
    let x_1133 : f32 = u_xlat40;
    u_xlat40 = (x_1132 * x_1133);
    let x_1135 : f32 = u_xlat37;
    let x_1136 : f32 = u_xlat37;
    u_xlat37 = (x_1135 * x_1136);
    let x_1138 : f32 = u_xlat40;
    u_xlat40 = max(x_1138, 0.100000001f);
    let x_1140 : f32 = u_xlat37;
    let x_1141 : f32 = u_xlat40;
    u_xlat37 = (x_1140 * x_1141);
    let x_1143 : f32 = u_xlat6;
    let x_1144 : f32 = u_xlat37;
    u_xlat37 = (x_1143 * x_1144);
    let x_1146 : f32 = u_xlat38;
    let x_1147 : f32 = u_xlat37;
    u_xlat37 = (x_1146 / x_1147);
    let x_1149 : f32 = u_xlat37;
    let x_1152 : vec3<f32> = u_xlat2;
    let x_1153 : vec3<f32> = ((vec3<f32>(x_1149, x_1149, x_1149) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1152);
    let x_1154 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1156 : vec4<f32> = u_xlat8;
    let x_1158 : vec3<f32> = u_xlat10;
    let x_1160 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1156.x, x_1156.y, x_1156.z) * x_1158) + x_1160);

    continuing {
      let x_1162 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1162 + bitcast<u32>(1i));
    }
  }
  let x_1164 : vec4<f32> = u_xlat3;
  let x_1166 : vec4<f32> = u_xlat4;
  let x_1169 : vec3<f32> = u_xlat17;
  let x_1170 : vec3<f32> = ((vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1166.x, x_1166.x, x_1166.x)) + x_1169);
  let x_1171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1170.z);
  let x_1173 : vec3<f32> = u_xlat7;
  let x_1174 : vec4<f32> = u_xlat1;
  let x_1176 : vec3<f32> = (x_1173 + vec3<f32>(x_1174.x, x_1174.z, x_1174.w));
  let x_1177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1176.z);
  let x_1181 : vec4<f32> = vs_INTERP4;
  let x_1183 : vec3<f32> = u_xlat0;
  let x_1185 : vec4<f32> = u_xlat1;
  let x_1187 : vec3<f32> = ((vec3<f32>(x_1181.w, x_1181.w, x_1181.w) * x_1183) + vec3<f32>(x_1185.x, x_1185.z, x_1185.w));
  let x_1188 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : bool = u_xlatb12;
  let x_1191 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1191, x_1190);
  let x_1199 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1201 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1199 & bitcast<u32>(x_1201));
  let x_1204 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1204);
  let x_1209 : f32 = u_xlat0.x;
  let x_1211 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1209 * x_1211);
  let x_1215 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1215, 0.0f, 1.0f);
  let x_1219 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1219.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

