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

@group(1) @binding(1) var<uniform> x_1043 : AdditionalLights;

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
  var u_xlatb15 : bool;
  var u_xlat27 : f32;
  var u_xlat5 : vec3<f32>;
  var x_472 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat6 : f32;
  var u_xlat18 : f32;
  var u_xlat29 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati41 : i32;
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
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_429.y, x_428.y, x_428.z);
  let x_434 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15 = (x_434 == 0.0f);
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_441 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_442 : vec3<f32> = (-(x_436) + x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_451);
  let x_453 : f32 = u_xlat27;
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_463 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_463;
  let x_466 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_466;
  let x_469 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_469;
  let x_471 : bool = u_xlatb15;
  if (x_471) {
    let x_475 : vec4<f32> = u_xlat4;
    x_472 = vec3<f32>(x_475.x, x_475.y, x_475.z);
  } else {
    let x_478 : vec3<f32> = u_xlat5;
    x_472 = x_478;
  }
  let x_479 : vec3<f32> = x_472;
  u_xlat15 = x_479;
  let x_481 : f32 = vs_INTERP0.y;
  let x_483 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat4.x = (x_481 * x_483);
  let x_487 : f32 = x_66.unity_MatrixV[0i].z;
  let x_489 : f32 = vs_INTERP0.x;
  let x_492 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_487 * x_489) + x_492);
  let x_496 : f32 = x_66.unity_MatrixV[2i].z;
  let x_498 : f32 = vs_INTERP0.z;
  let x_501 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_496 * x_498) + x_501);
  let x_505 : f32 = u_xlat4.x;
  let x_507 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat4.x = (x_505 + x_507);
  let x_511 : f32 = u_xlat4.x;
  let x_514 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_511) + -(x_514));
  let x_519 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_519, 0.0f);
  let x_523 : f32 = u_xlat4.x;
  let x_526 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_523 * x_526);
  let x_537 : vec2<f32> = vs_INTERP5;
  let x_539 : f32 = x_66.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_537, x_539);
  u_xlat16 = vec3<f32>(x_540.x, x_540.y, x_540.z);
  let x_544 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_545 : vec2<f32> = vec2<f32>(x_544.x, x_544.y);
  let x_549 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_545.x, x_545.y));
  let x_550 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_549.x, x_549.y, x_550.z);
  let x_552 : vec3<f32> = u_xlat5;
  let x_554 : vec4<f32> = hlslcc_FragCoord;
  let x_556 : vec2<f32> = (vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_554.x, x_554.y));
  let x_557 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_556.x, x_556.y, x_557.z);
  let x_561 : f32 = u_xlat5.y;
  let x_564 : f32 = x_66.x_ScaleBiasRt.x;
  let x_567 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_561 * x_564) + x_567);
  let x_571 : f32 = u_xlat17.x;
  u_xlat5.z = (-(x_571) + 1.0f);
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = x_576;
  let x_579 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_579, 0.0f, 1.0f);
  let x_582 : f32 = u_xlat36;
  u_xlat36 = min(x_582, 1.0f);
  let x_584 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_584 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_589 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_589) + 1.0f);
  let x_595 : f32 = u_xlat17.x;
  let x_597 : f32 = u_xlat17.x;
  u_xlat41 = (x_595 * x_597);
  let x_599 : f32 = u_xlat41;
  u_xlat41 = max(x_599, 0.0078125f);
  let x_603 : f32 = u_xlat41;
  let x_604 : f32 = u_xlat41;
  u_xlat6 = (x_603 * x_604);
  let x_607 : f32 = u_xlat3.x;
  u_xlat3.x = (x_607 + 0.040000021f);
  let x_612 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_612, 1.0f);
  let x_616 : f32 = u_xlat41;
  u_xlat18 = ((x_616 * 4.0f) + 2.0f);
  let x_625 : vec3<f32> = u_xlat5;
  let x_628 : f32 = x_66.x_GlobalMipBias.x;
  let x_629 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_625.x, x_625.z), x_628);
  u_xlat5.x = x_629.x;
  let x_634 : f32 = u_xlat5.x;
  u_xlat29 = (x_634 + -1.0f);
  let x_638 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_639 : f32 = u_xlat29;
  u_xlat29 = ((x_638 * x_639) + 1.0f);
  let x_643 : f32 = u_xlat5.x;
  let x_645 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_643, x_645);
  let x_650 : vec4<f32> = vs_INTERP9;
  let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
  let x_653 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_651.x, x_651.y, x_653);
  let x_661 : vec3<f32> = txVec1;
  let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_661.xy, x_661.z);
  u_xlat30 = x_663;
  let x_664 : f32 = u_xlat30;
  let x_666 : f32 = x_139.x_MainLightShadowParams.x;
  let x_668 : f32 = u_xlat38;
  u_xlat38 = ((x_664 * x_666) + x_668);
  let x_672 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_672);
  let x_676 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_676 >= 1.0f);
  let x_678 : bool = u_xlatb42;
  let x_679 : bool = u_xlatb30;
  u_xlatb30 = (x_678 | x_679);
  let x_681 : bool = u_xlatb30;
  let x_682 : f32 = u_xlat38;
  u_xlat38 = select(x_682, 1.0f, x_681);
  let x_685 : vec3<f32> = vs_INTERP0;
  let x_687 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_685 + -(x_687));
  let x_690 : vec3<f32> = u_xlat7;
  let x_691 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_690, x_691);
  let x_693 : f32 = u_xlat30;
  let x_695 : f32 = x_139.x_MainLightShadowParams.z;
  let x_698 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat30 = ((x_693 * x_695) + x_698);
  let x_700 : f32 = u_xlat30;
  u_xlat30 = clamp(x_700, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat38;
  u_xlat42 = (-(x_703) + 1.0f);
  let x_706 : f32 = u_xlat30;
  let x_707 : f32 = u_xlat42;
  let x_709 : f32 = u_xlat38;
  u_xlat38 = ((x_706 * x_707) + x_709);
  let x_711 : f32 = u_xlat29;
  let x_714 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec3<f32> = u_xlat15;
  let x_719 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(x_717), vec3<f32>(x_719.x, x_719.z, x_719.w));
  let x_722 : f32 = u_xlat30;
  let x_723 : f32 = u_xlat30;
  u_xlat30 = (x_722 + x_723);
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : f32 = u_xlat30;
  let x_732 : vec3<f32> = u_xlat15;
  let x_734 : vec3<f32> = ((vec3<f32>(x_726.x, x_726.z, x_726.w) * -(vec3<f32>(x_728, x_728, x_728))) + -(x_732));
  let x_735 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_737.x, x_737.z, x_737.w), x_739);
  let x_741 : f32 = u_xlat30;
  u_xlat30 = clamp(x_741, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat30;
  u_xlat30 = (-(x_743) + 1.0f);
  let x_746 : f32 = u_xlat30;
  let x_747 : f32 = u_xlat30;
  u_xlat30 = (x_746 * x_747);
  let x_749 : f32 = u_xlat30;
  let x_750 : f32 = u_xlat30;
  u_xlat30 = (x_749 * x_750);
  let x_753 : f32 = u_xlat17.x;
  u_xlat42 = ((-(x_753) * 0.699999988f) + 1.700000048f);
  let x_760 : f32 = u_xlat17.x;
  let x_761 : f32 = u_xlat42;
  u_xlat17.x = (x_760 * x_761);
  let x_765 : f32 = u_xlat17.x;
  u_xlat17.x = (x_765 * 6.0f);
  let x_777 : vec4<f32> = u_xlat8;
  let x_780 : f32 = u_xlat17.x;
  let x_781 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_777.x, x_777.y, x_777.z), x_780);
  u_xlat8 = x_781;
  let x_783 : f32 = u_xlat8.w;
  u_xlat17.x = (x_783 + -1.0f);
  let x_787 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_789 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_787 * x_789) + 1.0f);
  let x_794 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_794, 0.0f);
  let x_798 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_798);
  let x_802 : f32 = u_xlat17.x;
  let x_804 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_802 * x_804);
  let x_808 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_808);
  let x_812 : f32 = u_xlat17.x;
  let x_814 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_812 * x_814);
  let x_817 : vec4<f32> = u_xlat8;
  let x_819 : vec3<f32> = u_xlat17;
  let x_821 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819.x, x_819.x, x_819.x));
  let x_822 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : f32 = u_xlat41;
  let x_826 : f32 = u_xlat41;
  let x_830 : vec2<f32> = ((vec2<f32>(x_824, x_824) * vec2<f32>(x_826, x_826)) + vec2<f32>(-1.0f, 1.0f));
  let x_831 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_830.x, x_831.y, x_830.y);
  let x_834 : f32 = u_xlat17.z;
  u_xlat41 = (1.0f / x_834);
  let x_837 : f32 = u_xlat3.x;
  u_xlat3.x = (x_837 + -0.039999999f);
  let x_841 : f32 = u_xlat30;
  let x_843 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_841 * x_843) + 0.039999999f);
  let x_849 : f32 = u_xlat3.x;
  let x_850 : f32 = u_xlat41;
  u_xlat3.x = (x_849 * x_850);
  let x_853 : vec4<f32> = u_xlat3;
  let x_855 : vec4<f32> = u_xlat8;
  let x_857 : vec3<f32> = (vec3<f32>(x_853.x, x_853.x, x_853.x) * vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec3<f32> = u_xlat16;
  let x_861 : vec3<f32> = u_xlat2;
  let x_863 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_860 * x_861) + vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : f32 = u_xlat38;
  let x_868 : f32 = x_344.unity_LightData.z;
  u_xlat38 = (x_866 * x_868);
  let x_870 : vec4<f32> = u_xlat1;
  let x_873 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_870.x, x_870.z, x_870.w), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_878 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_878, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat38;
  let x_883 : f32 = u_xlat3.x;
  u_xlat38 = (x_881 * x_883);
  let x_885 : f32 = u_xlat38;
  let x_887 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_885, x_885, x_885) * x_887);
  let x_889 : vec3<f32> = u_xlat15;
  let x_891 : vec4<f32> = x_66.x_MainLightPosition;
  let x_893 : vec3<f32> = (x_889 + vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat8;
  let x_898 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : f32 = u_xlat38;
  u_xlat38 = max(x_901, 1.17549435e-37f);
  let x_904 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_904);
  let x_906 : f32 = u_xlat38;
  let x_908 : vec4<f32> = u_xlat8;
  let x_910 : vec3<f32> = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat1;
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_913.x, x_913.z, x_913.w), vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : f32 = u_xlat38;
  u_xlat38 = clamp(x_918, 0.0f, 1.0f);
  let x_921 : vec4<f32> = x_66.x_MainLightPosition;
  let x_923 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_928 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_928, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat38;
  let x_932 : f32 = u_xlat38;
  u_xlat38 = (x_931 * x_932);
  let x_934 : f32 = u_xlat38;
  let x_936 : f32 = u_xlat17.x;
  u_xlat38 = ((x_934 * x_936) + 1.000010014f);
  let x_941 : f32 = u_xlat3.x;
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = (x_941 * x_943);
  let x_946 : f32 = u_xlat38;
  let x_947 : f32 = u_xlat38;
  u_xlat38 = (x_946 * x_947);
  let x_950 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_950, 0.100000001f);
  let x_954 : f32 = u_xlat38;
  let x_956 : f32 = u_xlat3.x;
  u_xlat38 = (x_954 * x_956);
  let x_958 : f32 = u_xlat18;
  let x_959 : f32 = u_xlat38;
  u_xlat38 = (x_958 * x_959);
  let x_961 : f32 = u_xlat6;
  let x_962 : f32 = u_xlat38;
  u_xlat38 = (x_961 / x_962);
  let x_964 : f32 = u_xlat38;
  let x_968 : vec3<f32> = u_xlat2;
  let x_969 : vec3<f32> = ((vec3<f32>(x_964, x_964, x_964) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_968);
  let x_970 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec3<f32> = u_xlat7;
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_972 * vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_978 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_980 : f32 = x_344.unity_LightData.y;
  u_xlat38 = min(x_978, x_980);
  let x_984 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_984));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_996 : u32 = u_xlatu_loop_1;
    let x_997 : u32 = u_xlatu38;
    if ((x_996 < x_997)) {
    } else {
      break;
    }
    let x_1000 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_1000 >> 2u);
    let x_1004 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1004 & 3u));
    let x_1007 : u32 = u_xlatu41;
    let x_1010 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1007)];
    let x_1020 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1025 : vec4<u32> = indexable[x_1020];
    u_xlat41 = dot(x_1010, bitcast<vec4<f32>>(x_1025));
    let x_1029 : f32 = u_xlat41;
    u_xlati41 = i32(x_1029);
    let x_1032 : vec3<f32> = vs_INTERP0;
    let x_1044 : i32 = u_xlati41;
    let x_1046 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1044];
    let x_1049 : i32 = u_xlati41;
    let x_1051 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1049];
    u_xlat9 = ((-(x_1032) * vec3<f32>(x_1046.w, x_1046.w, x_1046.w)) + vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
    let x_1054 : vec3<f32> = u_xlat9;
    let x_1055 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1054, x_1055);
    let x_1057 : f32 = u_xlat30;
    u_xlat30 = max(x_1057, 6.10351562e-05f);
    let x_1060 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1060);
    let x_1063 : f32 = u_xlat42;
    let x_1065 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1063, x_1063, x_1063) * x_1065);
    let x_1068 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1068);
    let x_1070 : f32 = u_xlat30;
    let x_1071 : i32 = u_xlati41;
    let x_1073 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1071].x;
    u_xlat30 = (x_1070 * x_1073);
    let x_1075 : f32 = u_xlat30;
    let x_1077 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1075) * x_1077) + 1.0f);
    let x_1080 : f32 = u_xlat30;
    u_xlat30 = max(x_1080, 0.0f);
    let x_1082 : f32 = u_xlat30;
    let x_1083 : f32 = u_xlat30;
    u_xlat30 = (x_1082 * x_1083);
    let x_1085 : f32 = u_xlat30;
    let x_1086 : f32 = u_xlat43;
    u_xlat30 = (x_1085 * x_1086);
    let x_1088 : i32 = u_xlati41;
    let x_1090 : vec4<f32> = x_1043.x_AdditionalLightsSpotDir[x_1088];
    let x_1092 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), x_1092);
    let x_1094 : f32 = u_xlat43;
    let x_1095 : i32 = u_xlati41;
    let x_1097 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1095].z;
    let x_1099 : i32 = u_xlati41;
    let x_1101 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1099].w;
    u_xlat43 = ((x_1094 * x_1097) + x_1101);
    let x_1103 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1103, 0.0f, 1.0f);
    let x_1105 : f32 = u_xlat43;
    let x_1106 : f32 = u_xlat43;
    u_xlat43 = (x_1105 * x_1106);
    let x_1108 : f32 = u_xlat30;
    let x_1109 : f32 = u_xlat43;
    u_xlat30 = (x_1108 * x_1109);
    let x_1112 : f32 = u_xlat29;
    let x_1114 : i32 = u_xlati41;
    let x_1116 : vec4<f32> = x_1043.x_AdditionalLightsColor[x_1114];
    u_xlat11 = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1119 : vec4<f32> = u_xlat1;
    let x_1121 : vec3<f32> = u_xlat10;
    u_xlat41 = dot(vec3<f32>(x_1119.x, x_1119.z, x_1119.w), x_1121);
    let x_1123 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1123, 0.0f, 1.0f);
    let x_1125 : f32 = u_xlat41;
    let x_1126 : f32 = u_xlat30;
    u_xlat41 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat41;
    let x_1130 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1128, x_1128, x_1128) * x_1130);
    let x_1132 : vec3<f32> = u_xlat9;
    let x_1133 : f32 = u_xlat42;
    let x_1136 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1132 * vec3<f32>(x_1133, x_1133, x_1133)) + x_1136);
    let x_1138 : vec3<f32> = u_xlat9;
    let x_1139 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1138, x_1139);
    let x_1141 : f32 = u_xlat41;
    u_xlat41 = max(x_1141, 1.17549435e-37f);
    let x_1143 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1143);
    let x_1145 : f32 = u_xlat41;
    let x_1147 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1145, x_1145, x_1145) * x_1147);
    let x_1149 : vec4<f32> = u_xlat1;
    let x_1151 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1149.x, x_1149.z, x_1149.w), x_1151);
    let x_1153 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1153, 0.0f, 1.0f);
    let x_1155 : vec3<f32> = u_xlat10;
    let x_1156 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1155, x_1156);
    let x_1158 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1158, 0.0f, 1.0f);
    let x_1160 : f32 = u_xlat41;
    let x_1161 : f32 = u_xlat41;
    u_xlat41 = (x_1160 * x_1161);
    let x_1163 : f32 = u_xlat41;
    let x_1165 : f32 = u_xlat17.x;
    u_xlat41 = ((x_1163 * x_1165) + 1.000010014f);
    let x_1168 : f32 = u_xlat30;
    let x_1169 : f32 = u_xlat30;
    u_xlat30 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat41;
    let x_1172 : f32 = u_xlat41;
    u_xlat41 = (x_1171 * x_1172);
    let x_1174 : f32 = u_xlat30;
    u_xlat30 = max(x_1174, 0.100000001f);
    let x_1176 : f32 = u_xlat41;
    let x_1177 : f32 = u_xlat30;
    u_xlat41 = (x_1176 * x_1177);
    let x_1179 : f32 = u_xlat18;
    let x_1180 : f32 = u_xlat41;
    u_xlat41 = (x_1179 * x_1180);
    let x_1182 : f32 = u_xlat6;
    let x_1183 : f32 = u_xlat41;
    u_xlat41 = (x_1182 / x_1183);
    let x_1185 : f32 = u_xlat41;
    let x_1188 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1185, x_1185, x_1185) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1188);
    let x_1190 : vec3<f32> = u_xlat9;
    let x_1191 : vec3<f32> = u_xlat11;
    let x_1193 : vec4<f32> = u_xlat8;
    let x_1195 : vec3<f32> = ((x_1190 * x_1191) + vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);

    continuing {
      let x_1198 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1198 + bitcast<u32>(1i));
    }
  }
  let x_1200 : vec3<f32> = u_xlat16;
  let x_1201 : vec3<f32> = u_xlat5;
  let x_1204 : vec3<f32> = u_xlat7;
  let x_1205 : vec3<f32> = ((x_1200 * vec3<f32>(x_1201.x, x_1201.x, x_1201.x)) + x_1204);
  let x_1206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
  let x_1208 : vec4<f32> = u_xlat8;
  let x_1210 : vec4<f32> = u_xlat1;
  let x_1212 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) + vec3<f32>(x_1210.x, x_1210.z, x_1210.w));
  let x_1213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1212.z);
  let x_1215 : vec4<f32> = vs_INTERP4;
  let x_1217 : vec3<f32> = u_xlat0;
  let x_1219 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1215.w, x_1215.w, x_1215.w) * x_1217) + vec3<f32>(x_1219.x, x_1219.z, x_1219.w));
  let x_1223 : f32 = u_xlat4.x;
  let x_1225 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1223 * -(x_1225));
  let x_1230 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1230);
  let x_1233 : vec3<f32> = u_xlat0;
  let x_1236 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1233 + -(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)));
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1244 : vec3<f32> = u_xlat0;
  let x_1247 : vec4<f32> = x_66.unity_FogColor;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.x, x_1242.x) * x_1244) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : bool = u_xlatb13;
  let x_1253 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1253, x_1252);
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

