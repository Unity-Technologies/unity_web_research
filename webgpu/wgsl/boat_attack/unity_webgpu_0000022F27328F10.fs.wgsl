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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(1) var<uniform> x_1101 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat15 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb4 : bool;
  var u_xlatb16 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb36 : bool;
  var x_261 : f32;
  var u_xlat13 : f32;
  var u_xlat25 : f32;
  var u_xlatb13 : bool;
  var x_308 : f32;
  var u_xlatb1 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var x_465 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
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
  u_xlat36 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat36;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat36;
  u_xlat36 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat36;
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
  u_xlat36 = x_199;
  let x_203 : f32 = x_139.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_203) + 1.0f);
  let x_206 : f32 = u_xlat36;
  let x_208 : f32 = x_139.x_MainLightShadowParams.x;
  let x_210 : f32 = u_xlat38;
  u_xlat36 = ((x_206 * x_208) + x_210);
  let x_216 : f32 = u_xlat4.z;
  u_xlatb4 = (0.0f >= x_216);
  let x_220 : f32 = u_xlat4.z;
  u_xlatb16 = (x_220 >= 1.0f);
  let x_222 : bool = u_xlatb16;
  let x_223 : bool = u_xlatb4;
  u_xlatb4 = (x_222 | x_223);
  let x_225 : bool = u_xlatb4;
  let x_226 : f32 = u_xlat36;
  u_xlat36 = select(x_226, 1.0f, x_225);
  let x_228 : vec3<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_228, -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_236 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_236, 0.0f, 1.0f);
  let x_240 : f32 = u_xlat36;
  let x_244 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = u_xlat12;
  let x_248 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_247 * vec3<f32>(x_248.x, x_248.x, x_248.x));
  let x_251 : vec3<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_251 * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_257 : f32 = u_xlat1.w;
  u_xlatb36 = (x_257 >= 0.400000006f);
  let x_260 : bool = u_xlatb36;
  if (x_260) {
    let x_265 : f32 = u_xlat1.w;
    x_261 = x_265;
  } else {
    x_261 = 0.0f;
  }
  let x_267 : f32 = x_261;
  u_xlat36 = x_267;
  let x_269 : f32 = u_xlat1.w;
  u_xlat1.x = (x_269 + -0.400000006f);
  let x_275 : f32 = u_xlat1.w;
  u_xlat13 = dpdxCoarse(x_275);
  let x_279 : f32 = u_xlat1.w;
  u_xlat25 = dpdyCoarse(x_279);
  let x_281 : f32 = u_xlat25;
  let x_283 : f32 = u_xlat13;
  u_xlat13 = (abs(x_281) + abs(x_283));
  let x_286 : f32 = u_xlat13;
  u_xlat13 = max(x_286, 0.0001f);
  let x_290 : f32 = u_xlat1.x;
  let x_291 : f32 = u_xlat13;
  u_xlat1.x = (x_290 / x_291);
  let x_295 : f32 = u_xlat1.x;
  u_xlat1.x = (x_295 + 0.5f);
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_300, 0.0f, 1.0f);
  let x_305 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_305 == 0.0f));
  let x_307 : bool = u_xlatb13;
  if (x_307) {
    let x_312 : f32 = u_xlat1.x;
    x_308 = x_312;
  } else {
    let x_314 : f32 = u_xlat36;
    x_308 = x_314;
  }
  let x_315 : f32 = x_308;
  u_xlat36 = x_315;
  let x_316 : f32 = u_xlat36;
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
  let x_390 : vec3<f32> = u_xlat15;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.z, x_388.w) * vec3<f32>(x_390.y, x_390.y, x_390.y));
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_393.y, x_392.y, x_392.z);
  let x_395 : vec3<f32> = u_xlat15;
  let x_397 : vec4<f32> = vs_INTERP2;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.x, x_395.x) * vec3<f32>(x_397.x, x_397.y, x_397.z)) + vec3<f32>(x_400.x, x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_402.z);
  let x_405 : vec3<f32> = u_xlat15;
  let x_407 : vec3<f32> = vs_INTERP1;
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.z, x_405.z, x_405.z) * x_407) + vec3<f32>(x_409.x, x_409.z, x_409.w));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_412.y, x_411.y, x_411.z);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat15.x = dot(vec3<f32>(x_414.x, x_414.z, x_414.w), vec3<f32>(x_416.x, x_416.z, x_416.w));
  let x_421 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_421);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat15;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.z, x_424.w) * vec3<f32>(x_426.x, x_426.x, x_426.x));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb1.x = (x_433 == 0.0f);
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_441 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_436) + x_441);
  let x_443 : vec3<f32> = u_xlat15;
  let x_444 : vec3<f32> = u_xlat15;
  u_xlat25 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_446);
  let x_448 : f32 = u_xlat25;
  let x_450 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_455 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_455;
  let x_458 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_458;
  let x_461 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_461;
  let x_464 : bool = u_xlatb1.x;
  if (x_464) {
    let x_468 : vec3<f32> = u_xlat15;
    x_465 = x_468;
  } else {
    let x_470 : vec3<f32> = u_xlat5;
    x_465 = x_470;
  }
  let x_471 : vec3<f32> = x_465;
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_472.y, x_471.y, x_471.z);
  let x_475 : f32 = vs_INTERP0.y;
  let x_477 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat15.x = (x_475 * x_477);
  let x_481 : f32 = x_66.unity_MatrixV[0i].z;
  let x_483 : f32 = vs_INTERP0.x;
  let x_486 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_481 * x_483) + x_486);
  let x_490 : f32 = x_66.unity_MatrixV[2i].z;
  let x_492 : f32 = vs_INTERP0.z;
  let x_495 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_490 * x_492) + x_495);
  let x_499 : f32 = u_xlat15.x;
  let x_501 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat15.x = (x_499 + x_501);
  let x_505 : f32 = u_xlat15.x;
  let x_508 : f32 = x_66.x_ProjectionParams.y;
  u_xlat15.x = (-(x_505) + -(x_508));
  let x_513 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_513, 0.0f);
  let x_517 : f32 = u_xlat15.x;
  let x_520 : f32 = x_66.unity_FogParams.x;
  u_xlat15.x = (x_517 * x_520);
  u_xlat4.w = 1.0f;
  let x_526 : vec4<f32> = x_344.unity_SHAr;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_344.unity_SHAg;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_532, x_533);
  let x_538 : vec4<f32> = x_344.unity_SHAb;
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_538, x_539);
  let x_543 : vec4<f32> = u_xlat4;
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_543.y, x_543.z, x_543.z, x_543.x) * vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.z));
  let x_551 : vec4<f32> = x_344.unity_SHBr;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_344.unity_SHBg;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_557, x_558);
  let x_563 : vec4<f32> = x_344.unity_SHBb;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_563, x_564);
  let x_570 : f32 = u_xlat4.y;
  let x_572 : f32 = u_xlat4.y;
  u_xlat27.x = (x_570 * x_572);
  let x_576 : f32 = u_xlat4.x;
  let x_578 : f32 = u_xlat4.x;
  let x_581 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_576 * x_578) + -(x_581));
  let x_587 : vec4<f32> = x_344.unity_SHC;
  let x_589 : vec2<f32> = u_xlat27;
  let x_592 : vec3<f32> = u_xlat7;
  let x_593 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589.x, x_589.x, x_589.x)) + x_592);
  let x_594 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = u_xlat5;
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_596 + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_600, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_605 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
  u_xlat27 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_606.x, x_606.y));
  let x_611 : vec2<f32> = u_xlat27;
  let x_612 : vec4<f32> = hlslcc_FragCoord;
  let x_614 : vec2<f32> = (x_611 * vec2<f32>(x_612.x, x_612.y));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
  let x_618 : f32 = u_xlat6.y;
  let x_621 : f32 = x_66.x_ScaleBiasRt.x;
  let x_624 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat27.x = ((x_618 * x_621) + x_624);
  let x_628 : f32 = u_xlat27.x;
  u_xlat6.z = (-(x_628) + 1.0f);
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = x_633;
  let x_636 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_636, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat36;
  u_xlat36 = min(x_639, 1.0f);
  let x_641 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_641 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_646 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_646) + 1.0f);
  let x_652 : f32 = u_xlat27.x;
  let x_654 : f32 = u_xlat27.x;
  u_xlat39 = (x_652 * x_654);
  let x_656 : f32 = u_xlat39;
  u_xlat39 = max(x_656, 0.0078125f);
  let x_660 : f32 = u_xlat39;
  let x_661 : f32 = u_xlat39;
  u_xlat40 = (x_660 * x_661);
  let x_664 : f32 = u_xlat3.x;
  u_xlat3.x = (x_664 + 0.040000021f);
  let x_669 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_669, 1.0f);
  let x_673 : f32 = u_xlat39;
  u_xlat41 = ((x_673 * 4.0f) + 2.0f);
  let x_682 : vec4<f32> = u_xlat6;
  let x_685 : f32 = x_66.x_GlobalMipBias.x;
  let x_686 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_682.x, x_682.z), x_685);
  u_xlat6.x = x_686.x;
  let x_691 : f32 = u_xlat6.x;
  u_xlat18 = (x_691 + -1.0f);
  let x_695 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_696 : f32 = u_xlat18;
  u_xlat18 = ((x_695 * x_696) + 1.0f);
  let x_700 : f32 = u_xlat6.x;
  let x_702 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_700, x_702);
  let x_707 : vec4<f32> = vs_INTERP9;
  let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
  let x_710 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_708.x, x_708.y, x_710);
  let x_718 : vec3<f32> = txVec1;
  let x_720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_718.xy, x_718.z);
  u_xlat30 = x_720;
  let x_721 : f32 = u_xlat30;
  let x_723 : f32 = x_139.x_MainLightShadowParams.x;
  let x_725 : f32 = u_xlat38;
  u_xlat38 = ((x_721 * x_723) + x_725);
  let x_729 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_729);
  let x_733 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_733 >= 1.0f);
  let x_735 : bool = u_xlatb42;
  let x_736 : bool = u_xlatb30;
  u_xlatb30 = (x_735 | x_736);
  let x_738 : bool = u_xlatb30;
  let x_739 : f32 = u_xlat38;
  u_xlat38 = select(x_739, 1.0f, x_738);
  let x_741 : vec3<f32> = vs_INTERP0;
  let x_743 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_741 + -(x_743));
  let x_746 : vec3<f32> = u_xlat7;
  let x_747 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_746, x_747);
  let x_749 : f32 = u_xlat30;
  let x_751 : f32 = x_139.x_MainLightShadowParams.z;
  let x_754 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat30 = ((x_749 * x_751) + x_754);
  let x_756 : f32 = u_xlat30;
  u_xlat30 = clamp(x_756, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat38;
  u_xlat42 = (-(x_759) + 1.0f);
  let x_762 : f32 = u_xlat30;
  let x_763 : f32 = u_xlat42;
  let x_765 : f32 = u_xlat38;
  u_xlat38 = ((x_762 * x_763) + x_765);
  let x_767 : f32 = u_xlat18;
  let x_770 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_767, x_767, x_767) * vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat1;
  let x_776 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(-(vec3<f32>(x_773.x, x_773.z, x_773.w)), vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : f32 = u_xlat30;
  let x_780 : f32 = u_xlat30;
  u_xlat30 = (x_779 + x_780);
  let x_783 : vec4<f32> = u_xlat4;
  let x_785 : f32 = u_xlat30;
  let x_789 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * -(vec3<f32>(x_785, x_785, x_785))) + -(vec3<f32>(x_789.x, x_789.z, x_789.w)));
  let x_793 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat4;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(x_797.x, x_797.z, x_797.w));
  let x_800 : f32 = u_xlat30;
  u_xlat30 = clamp(x_800, 0.0f, 1.0f);
  let x_802 : f32 = u_xlat30;
  u_xlat30 = (-(x_802) + 1.0f);
  let x_805 : f32 = u_xlat30;
  let x_806 : f32 = u_xlat30;
  u_xlat30 = (x_805 * x_806);
  let x_808 : f32 = u_xlat30;
  let x_809 : f32 = u_xlat30;
  u_xlat30 = (x_808 * x_809);
  let x_812 : f32 = u_xlat27.x;
  u_xlat42 = ((-(x_812) * 0.699999988f) + 1.700000048f);
  let x_819 : f32 = u_xlat27.x;
  let x_820 : f32 = u_xlat42;
  u_xlat27.x = (x_819 * x_820);
  let x_824 : f32 = u_xlat27.x;
  u_xlat27.x = (x_824 * 6.0f);
  let x_836 : vec4<f32> = u_xlat8;
  let x_839 : f32 = u_xlat27.x;
  let x_840 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_836.x, x_836.y, x_836.z), x_839);
  u_xlat8 = x_840;
  let x_842 : f32 = u_xlat8.w;
  u_xlat27.x = (x_842 + -1.0f);
  let x_846 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_848 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_846 * x_848) + 1.0f);
  let x_853 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_853, 0.0f);
  let x_857 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_857);
  let x_861 : f32 = u_xlat27.x;
  let x_863 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_861 * x_863);
  let x_867 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_867);
  let x_871 : f32 = u_xlat27.x;
  let x_873 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_871 * x_873);
  let x_876 : vec4<f32> = u_xlat8;
  let x_878 : vec2<f32> = u_xlat27;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878.x, x_878.x, x_878.x));
  let x_881 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : f32 = u_xlat39;
  let x_885 : f32 = u_xlat39;
  u_xlat27 = ((vec2<f32>(x_883, x_883) * vec2<f32>(x_885, x_885)) + vec2<f32>(-1.0f, 1.0f));
  let x_891 : f32 = u_xlat27.y;
  u_xlat39 = (1.0f / x_891);
  let x_894 : f32 = u_xlat3.x;
  u_xlat3.x = (x_894 + -0.039999999f);
  let x_898 : f32 = u_xlat30;
  let x_900 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_898 * x_900) + 0.039999999f);
  let x_906 : f32 = u_xlat3.x;
  let x_907 : f32 = u_xlat39;
  u_xlat3.x = (x_906 * x_907);
  let x_910 : vec4<f32> = u_xlat3;
  let x_912 : vec4<f32> = u_xlat8;
  let x_914 : vec3<f32> = (vec3<f32>(x_910.x, x_910.x, x_910.x) * vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec3<f32> = u_xlat5;
  let x_918 : vec3<f32> = u_xlat2;
  let x_920 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_917 * x_918) + vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : f32 = u_xlat38;
  let x_925 : f32 = x_344.unity_LightData.z;
  u_xlat38 = (x_923 * x_925);
  let x_927 : vec4<f32> = u_xlat4;
  let x_930 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_935 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_935, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat38;
  let x_940 : f32 = u_xlat3.x;
  u_xlat38 = (x_938 * x_940);
  let x_942 : f32 = u_xlat38;
  let x_944 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_942, x_942, x_942) * x_944);
  let x_946 : vec4<f32> = u_xlat1;
  let x_949 : vec4<f32> = x_66.x_MainLightPosition;
  let x_951 : vec3<f32> = (vec3<f32>(x_946.x, x_946.z, x_946.w) + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec4<f32> = u_xlat8;
  let x_956 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : f32 = u_xlat38;
  u_xlat38 = max(x_959, 1.17549435e-37f);
  let x_962 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_962);
  let x_964 : f32 = u_xlat38;
  let x_966 : vec4<f32> = u_xlat8;
  let x_968 : vec3<f32> = (vec3<f32>(x_964, x_964, x_964) * vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat4;
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat38;
  u_xlat38 = clamp(x_976, 0.0f, 1.0f);
  let x_979 : vec4<f32> = x_66.x_MainLightPosition;
  let x_981 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_986 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_986, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat38;
  let x_990 : f32 = u_xlat38;
  u_xlat38 = (x_989 * x_990);
  let x_992 : f32 = u_xlat38;
  let x_994 : f32 = u_xlat27.x;
  u_xlat38 = ((x_992 * x_994) + 1.000010014f);
  let x_999 : f32 = u_xlat3.x;
  let x_1001 : f32 = u_xlat3.x;
  u_xlat3.x = (x_999 * x_1001);
  let x_1004 : f32 = u_xlat38;
  let x_1005 : f32 = u_xlat38;
  u_xlat38 = (x_1004 * x_1005);
  let x_1008 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1008, 0.100000001f);
  let x_1012 : f32 = u_xlat38;
  let x_1014 : f32 = u_xlat3.x;
  u_xlat38 = (x_1012 * x_1014);
  let x_1016 : f32 = u_xlat41;
  let x_1017 : f32 = u_xlat38;
  u_xlat38 = (x_1016 * x_1017);
  let x_1019 : f32 = u_xlat40;
  let x_1020 : f32 = u_xlat38;
  u_xlat38 = (x_1019 / x_1020);
  let x_1022 : f32 = u_xlat38;
  let x_1026 : vec3<f32> = u_xlat2;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1026);
  let x_1028 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec3<f32> = u_xlat7;
  let x_1031 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1030 * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1038 : f32 = x_344.unity_LightData.y;
  u_xlat38 = min(x_1036, x_1038);
  let x_1042 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_1042));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1054 : u32 = u_xlatu_loop_1;
    let x_1055 : u32 = u_xlatu38;
    if ((x_1054 < x_1055)) {
    } else {
      break;
    }
    let x_1058 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_1058 >> 2u);
    let x_1062 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1062 & 3u));
    let x_1065 : u32 = u_xlatu39;
    let x_1068 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1065)];
    let x_1078 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1083 : vec4<u32> = indexable[x_1078];
    u_xlat39 = dot(x_1068, bitcast<vec4<f32>>(x_1083));
    let x_1087 : f32 = u_xlat39;
    u_xlati39 = i32(x_1087);
    let x_1090 : vec3<f32> = vs_INTERP0;
    let x_1102 : i32 = u_xlati39;
    let x_1104 : vec4<f32> = x_1101.x_AdditionalLightsPosition[x_1102];
    let x_1107 : i32 = u_xlati39;
    let x_1109 : vec4<f32> = x_1101.x_AdditionalLightsPosition[x_1107];
    u_xlat9 = ((-(x_1090) * vec3<f32>(x_1104.w, x_1104.w, x_1104.w)) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
    let x_1112 : vec3<f32> = u_xlat9;
    let x_1113 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1112, x_1113);
    let x_1115 : f32 = u_xlat30;
    u_xlat30 = max(x_1115, 6.10351562e-05f);
    let x_1118 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1118);
    let x_1121 : f32 = u_xlat42;
    let x_1123 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1121, x_1121, x_1121) * x_1123);
    let x_1126 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1126);
    let x_1128 : f32 = u_xlat30;
    let x_1129 : i32 = u_xlati39;
    let x_1131 : f32 = x_1101.x_AdditionalLightsAttenuation[x_1129].x;
    u_xlat30 = (x_1128 * x_1131);
    let x_1133 : f32 = u_xlat30;
    let x_1135 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1133) * x_1135) + 1.0f);
    let x_1138 : f32 = u_xlat30;
    u_xlat30 = max(x_1138, 0.0f);
    let x_1140 : f32 = u_xlat30;
    let x_1141 : f32 = u_xlat30;
    u_xlat30 = (x_1140 * x_1141);
    let x_1143 : f32 = u_xlat30;
    let x_1144 : f32 = u_xlat43;
    u_xlat30 = (x_1143 * x_1144);
    let x_1146 : i32 = u_xlati39;
    let x_1148 : vec4<f32> = x_1101.x_AdditionalLightsSpotDir[x_1146];
    let x_1150 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1148.x, x_1148.y, x_1148.z), x_1150);
    let x_1152 : f32 = u_xlat43;
    let x_1153 : i32 = u_xlati39;
    let x_1155 : f32 = x_1101.x_AdditionalLightsAttenuation[x_1153].z;
    let x_1157 : i32 = u_xlati39;
    let x_1159 : f32 = x_1101.x_AdditionalLightsAttenuation[x_1157].w;
    u_xlat43 = ((x_1152 * x_1155) + x_1159);
    let x_1161 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1161, 0.0f, 1.0f);
    let x_1163 : f32 = u_xlat43;
    let x_1164 : f32 = u_xlat43;
    u_xlat43 = (x_1163 * x_1164);
    let x_1166 : f32 = u_xlat30;
    let x_1167 : f32 = u_xlat43;
    u_xlat30 = (x_1166 * x_1167);
    let x_1170 : f32 = u_xlat18;
    let x_1172 : i32 = u_xlati39;
    let x_1174 : vec4<f32> = x_1101.x_AdditionalLightsColor[x_1172];
    u_xlat11 = (vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
    let x_1177 : vec4<f32> = u_xlat4;
    let x_1179 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), x_1179);
    let x_1181 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : f32 = u_xlat39;
    let x_1184 : f32 = u_xlat30;
    u_xlat39 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat39;
    let x_1188 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1186, x_1186, x_1186) * x_1188);
    let x_1190 : vec3<f32> = u_xlat9;
    let x_1191 : f32 = u_xlat42;
    let x_1194 : vec4<f32> = u_xlat1;
    u_xlat9 = ((x_1190 * vec3<f32>(x_1191, x_1191, x_1191)) + vec3<f32>(x_1194.x, x_1194.z, x_1194.w));
    let x_1197 : vec3<f32> = u_xlat9;
    let x_1198 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(x_1197, x_1198);
    let x_1200 : f32 = u_xlat39;
    u_xlat39 = max(x_1200, 1.17549435e-37f);
    let x_1202 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1202);
    let x_1204 : f32 = u_xlat39;
    let x_1206 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1204, x_1204, x_1204) * x_1206);
    let x_1208 : vec4<f32> = u_xlat4;
    let x_1210 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), x_1210);
    let x_1212 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1212, 0.0f, 1.0f);
    let x_1214 : vec3<f32> = u_xlat10;
    let x_1215 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1214, x_1215);
    let x_1217 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1217, 0.0f, 1.0f);
    let x_1219 : f32 = u_xlat39;
    let x_1220 : f32 = u_xlat39;
    u_xlat39 = (x_1219 * x_1220);
    let x_1222 : f32 = u_xlat39;
    let x_1224 : f32 = u_xlat27.x;
    u_xlat39 = ((x_1222 * x_1224) + 1.000010014f);
    let x_1227 : f32 = u_xlat30;
    let x_1228 : f32 = u_xlat30;
    u_xlat30 = (x_1227 * x_1228);
    let x_1230 : f32 = u_xlat39;
    let x_1231 : f32 = u_xlat39;
    u_xlat39 = (x_1230 * x_1231);
    let x_1233 : f32 = u_xlat30;
    u_xlat30 = max(x_1233, 0.100000001f);
    let x_1235 : f32 = u_xlat39;
    let x_1236 : f32 = u_xlat30;
    u_xlat39 = (x_1235 * x_1236);
    let x_1238 : f32 = u_xlat41;
    let x_1239 : f32 = u_xlat39;
    u_xlat39 = (x_1238 * x_1239);
    let x_1241 : f32 = u_xlat40;
    let x_1242 : f32 = u_xlat39;
    u_xlat39 = (x_1241 / x_1242);
    let x_1244 : f32 = u_xlat39;
    let x_1247 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1244, x_1244, x_1244) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1247);
    let x_1249 : vec3<f32> = u_xlat9;
    let x_1250 : vec3<f32> = u_xlat11;
    let x_1252 : vec4<f32> = u_xlat8;
    let x_1254 : vec3<f32> = ((x_1249 * x_1250) + vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);

    continuing {
      let x_1257 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1257 + bitcast<u32>(1i));
    }
  }
  let x_1259 : vec3<f32> = u_xlat5;
  let x_1260 : vec4<f32> = u_xlat6;
  let x_1263 : vec3<f32> = u_xlat7;
  let x_1264 : vec3<f32> = ((x_1259 * vec3<f32>(x_1260.x, x_1260.x, x_1260.x)) + x_1263);
  let x_1265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1264.z);
  let x_1267 : vec4<f32> = u_xlat8;
  let x_1269 : vec4<f32> = u_xlat1;
  let x_1271 : vec3<f32> = (vec3<f32>(x_1267.x, x_1267.y, x_1267.z) + vec3<f32>(x_1269.x, x_1269.z, x_1269.w));
  let x_1272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1271.z);
  let x_1274 : vec4<f32> = vs_INTERP4;
  let x_1276 : vec3<f32> = u_xlat0;
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1274.w, x_1274.w, x_1274.w) * x_1276) + vec3<f32>(x_1278.x, x_1278.z, x_1278.w));
  let x_1282 : f32 = u_xlat15.x;
  let x_1284 : f32 = u_xlat15.x;
  u_xlat1.x = (x_1282 * -(x_1284));
  let x_1289 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1289);
  let x_1292 : vec3<f32> = u_xlat0;
  let x_1295 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1292 + -(vec3<f32>(x_1295.x, x_1295.y, x_1295.z)));
  let x_1301 : vec4<f32> = u_xlat1;
  let x_1303 : vec3<f32> = u_xlat0;
  let x_1306 : vec4<f32> = x_66.unity_FogColor;
  let x_1308 : vec3<f32> = ((vec3<f32>(x_1301.x, x_1301.x, x_1301.x) * x_1303) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : bool = u_xlatb13;
  let x_1312 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1312, x_1311);
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

