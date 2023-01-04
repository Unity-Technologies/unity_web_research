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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1081 : AdditionalLights;

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
  var u_xlat5 : vec4<f32>;
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
    let x_478 : vec4<f32> = u_xlat5;
    x_472 = vec3<f32>(x_478.x, x_478.y, x_478.z);
  }
  let x_480 : vec3<f32> = x_472;
  u_xlat15 = x_480;
  let x_482 : f32 = vs_INTERP0.y;
  let x_484 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat4.x = (x_482 * x_484);
  let x_488 : f32 = x_66.unity_MatrixV[0i].z;
  let x_490 : f32 = vs_INTERP0.x;
  let x_493 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = x_66.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP0.z;
  let x_502 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_497 * x_499) + x_502);
  let x_506 : f32 = u_xlat4.x;
  let x_508 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat4.x = (x_506 + x_508);
  let x_512 : f32 = u_xlat4.x;
  let x_515 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_512) + -(x_515));
  let x_520 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_520, 0.0f);
  let x_524 : f32 = u_xlat4.x;
  let x_527 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_524 * x_527);
  let x_537 : vec2<f32> = vs_INTERP5;
  let x_539 : f32 = x_66.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_537, x_539);
  u_xlat5 = x_540;
  let x_546 : vec2<f32> = vs_INTERP5;
  let x_548 : f32 = x_66.x_GlobalMipBias.x;
  let x_549 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_546, x_548);
  u_xlat16 = vec3<f32>(x_549.x, x_549.y, x_549.z);
  let x_551 : vec4<f32> = u_xlat5;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_556 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_558.x, x_558.z, x_558.w), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_565 : f32 = u_xlat5.x;
  u_xlat5.x = (x_565 + 0.5f);
  let x_568 : vec3<f32> = u_xlat16;
  let x_569 : vec4<f32> = u_xlat5;
  u_xlat16 = (x_568 * vec3<f32>(x_569.x, x_569.x, x_569.x));
  let x_573 : f32 = u_xlat5.w;
  u_xlat5.x = max(x_573, 0.0001f);
  let x_576 : vec3<f32> = u_xlat16;
  let x_577 : vec4<f32> = u_xlat5;
  u_xlat16 = (x_576 / vec3<f32>(x_577.x, x_577.x, x_577.x));
  let x_582 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_583 : vec2<f32> = vec2<f32>(x_582.x, x_582.y);
  let x_587 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat5;
  let x_592 : vec4<f32> = hlslcc_FragCoord;
  let x_594 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_592.x, x_592.y));
  let x_595 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_599 : f32 = u_xlat5.y;
  let x_602 : f32 = x_66.x_ScaleBiasRt.x;
  let x_605 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_599 * x_602) + x_605);
  let x_609 : f32 = u_xlat17.x;
  u_xlat5.z = (-(x_609) + 1.0f);
  let x_614 : f32 = u_xlat3.x;
  u_xlat3.x = x_614;
  let x_617 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_617, 0.0f, 1.0f);
  let x_620 : f32 = u_xlat36;
  u_xlat36 = min(x_620, 1.0f);
  let x_622 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_622 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_627 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_627) + 1.0f);
  let x_633 : f32 = u_xlat17.x;
  let x_635 : f32 = u_xlat17.x;
  u_xlat41 = (x_633 * x_635);
  let x_637 : f32 = u_xlat41;
  u_xlat41 = max(x_637, 0.0078125f);
  let x_641 : f32 = u_xlat41;
  let x_642 : f32 = u_xlat41;
  u_xlat6 = (x_641 * x_642);
  let x_645 : f32 = u_xlat3.x;
  u_xlat3.x = (x_645 + 0.040000021f);
  let x_650 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_650, 1.0f);
  let x_654 : f32 = u_xlat41;
  u_xlat18 = ((x_654 * 4.0f) + 2.0f);
  let x_663 : vec4<f32> = u_xlat5;
  let x_666 : f32 = x_66.x_GlobalMipBias.x;
  let x_667 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_663.x, x_663.z), x_666);
  u_xlat5.x = x_667.x;
  let x_672 : f32 = u_xlat5.x;
  u_xlat29 = (x_672 + -1.0f);
  let x_676 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_677 : f32 = u_xlat29;
  u_xlat29 = ((x_676 * x_677) + 1.0f);
  let x_681 : f32 = u_xlat5.x;
  let x_683 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_681, x_683);
  let x_688 : vec4<f32> = vs_INTERP9;
  let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
  let x_691 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_689.x, x_689.y, x_691);
  let x_699 : vec3<f32> = txVec1;
  let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_699.xy, x_699.z);
  u_xlat30 = x_701;
  let x_702 : f32 = u_xlat30;
  let x_704 : f32 = x_139.x_MainLightShadowParams.x;
  let x_706 : f32 = u_xlat38;
  u_xlat38 = ((x_702 * x_704) + x_706);
  let x_710 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_710);
  let x_714 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_714 >= 1.0f);
  let x_716 : bool = u_xlatb42;
  let x_717 : bool = u_xlatb30;
  u_xlatb30 = (x_716 | x_717);
  let x_719 : bool = u_xlatb30;
  let x_720 : f32 = u_xlat38;
  u_xlat38 = select(x_720, 1.0f, x_719);
  let x_723 : vec3<f32> = vs_INTERP0;
  let x_725 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_723 + -(x_725));
  let x_728 : vec3<f32> = u_xlat7;
  let x_729 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_728, x_729);
  let x_731 : f32 = u_xlat30;
  let x_733 : f32 = x_139.x_MainLightShadowParams.z;
  let x_736 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat30 = ((x_731 * x_733) + x_736);
  let x_738 : f32 = u_xlat30;
  u_xlat30 = clamp(x_738, 0.0f, 1.0f);
  let x_741 : f32 = u_xlat38;
  u_xlat42 = (-(x_741) + 1.0f);
  let x_744 : f32 = u_xlat30;
  let x_745 : f32 = u_xlat42;
  let x_747 : f32 = u_xlat38;
  u_xlat38 = ((x_744 * x_745) + x_747);
  let x_749 : f32 = u_xlat29;
  let x_752 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_749, x_749, x_749) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec3<f32> = u_xlat15;
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(x_755), vec3<f32>(x_757.x, x_757.z, x_757.w));
  let x_760 : f32 = u_xlat30;
  let x_761 : f32 = u_xlat30;
  u_xlat30 = (x_760 + x_761);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : f32 = u_xlat30;
  let x_770 : vec3<f32> = u_xlat15;
  let x_772 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.z, x_764.w) * -(vec3<f32>(x_766, x_766, x_766))) + -(x_770));
  let x_773 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat1;
  let x_777 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_775.x, x_775.z, x_775.w), x_777);
  let x_779 : f32 = u_xlat30;
  u_xlat30 = clamp(x_779, 0.0f, 1.0f);
  let x_781 : f32 = u_xlat30;
  u_xlat30 = (-(x_781) + 1.0f);
  let x_784 : f32 = u_xlat30;
  let x_785 : f32 = u_xlat30;
  u_xlat30 = (x_784 * x_785);
  let x_787 : f32 = u_xlat30;
  let x_788 : f32 = u_xlat30;
  u_xlat30 = (x_787 * x_788);
  let x_791 : f32 = u_xlat17.x;
  u_xlat42 = ((-(x_791) * 0.699999988f) + 1.700000048f);
  let x_798 : f32 = u_xlat17.x;
  let x_799 : f32 = u_xlat42;
  u_xlat17.x = (x_798 * x_799);
  let x_803 : f32 = u_xlat17.x;
  u_xlat17.x = (x_803 * 6.0f);
  let x_815 : vec4<f32> = u_xlat8;
  let x_818 : f32 = u_xlat17.x;
  let x_819 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_815.x, x_815.y, x_815.z), x_818);
  u_xlat8 = x_819;
  let x_821 : f32 = u_xlat8.w;
  u_xlat17.x = (x_821 + -1.0f);
  let x_825 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_827 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_825 * x_827) + 1.0f);
  let x_832 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_832, 0.0f);
  let x_836 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_836);
  let x_840 : f32 = u_xlat17.x;
  let x_842 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_840 * x_842);
  let x_846 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_846);
  let x_850 : f32 = u_xlat17.x;
  let x_852 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_850 * x_852);
  let x_855 : vec4<f32> = u_xlat8;
  let x_857 : vec3<f32> = u_xlat17;
  let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_857.x, x_857.x, x_857.x));
  let x_860 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : f32 = u_xlat41;
  let x_864 : f32 = u_xlat41;
  let x_868 : vec2<f32> = ((vec2<f32>(x_862, x_862) * vec2<f32>(x_864, x_864)) + vec2<f32>(-1.0f, 1.0f));
  let x_869 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_868.x, x_869.y, x_868.y);
  let x_872 : f32 = u_xlat17.z;
  u_xlat41 = (1.0f / x_872);
  let x_875 : f32 = u_xlat3.x;
  u_xlat3.x = (x_875 + -0.039999999f);
  let x_879 : f32 = u_xlat30;
  let x_881 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_879 * x_881) + 0.039999999f);
  let x_887 : f32 = u_xlat3.x;
  let x_888 : f32 = u_xlat41;
  u_xlat3.x = (x_887 * x_888);
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec4<f32> = u_xlat8;
  let x_895 : vec3<f32> = (vec3<f32>(x_891.x, x_891.x, x_891.x) * vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat16;
  let x_899 : vec3<f32> = u_xlat2;
  let x_901 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_898 * x_899) + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : f32 = u_xlat38;
  let x_906 : f32 = x_344.unity_LightData.z;
  u_xlat38 = (x_904 * x_906);
  let x_908 : vec4<f32> = u_xlat1;
  let x_911 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_908.x, x_908.z, x_908.w), vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_916 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_916, 0.0f, 1.0f);
  let x_919 : f32 = u_xlat38;
  let x_921 : f32 = u_xlat3.x;
  u_xlat38 = (x_919 * x_921);
  let x_923 : f32 = u_xlat38;
  let x_925 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec3<f32> = u_xlat15;
  let x_929 : vec4<f32> = x_66.x_MainLightPosition;
  let x_931 : vec3<f32> = (x_927 + vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat8;
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat38;
  u_xlat38 = max(x_939, 1.17549435e-37f);
  let x_942 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_942);
  let x_944 : f32 = u_xlat38;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat1;
  let x_953 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_951.x, x_951.z, x_951.w), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : f32 = u_xlat38;
  u_xlat38 = clamp(x_956, 0.0f, 1.0f);
  let x_959 : vec4<f32> = x_66.x_MainLightPosition;
  let x_961 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_966 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_966, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat38;
  let x_970 : f32 = u_xlat38;
  u_xlat38 = (x_969 * x_970);
  let x_972 : f32 = u_xlat38;
  let x_974 : f32 = u_xlat17.x;
  u_xlat38 = ((x_972 * x_974) + 1.000010014f);
  let x_979 : f32 = u_xlat3.x;
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_979 * x_981);
  let x_984 : f32 = u_xlat38;
  let x_985 : f32 = u_xlat38;
  u_xlat38 = (x_984 * x_985);
  let x_988 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_988, 0.100000001f);
  let x_992 : f32 = u_xlat38;
  let x_994 : f32 = u_xlat3.x;
  u_xlat38 = (x_992 * x_994);
  let x_996 : f32 = u_xlat18;
  let x_997 : f32 = u_xlat38;
  u_xlat38 = (x_996 * x_997);
  let x_999 : f32 = u_xlat6;
  let x_1000 : f32 = u_xlat38;
  u_xlat38 = (x_999 / x_1000);
  let x_1002 : f32 = u_xlat38;
  let x_1006 : vec3<f32> = u_xlat2;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1006);
  let x_1008 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec3<f32> = u_xlat7;
  let x_1011 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1010 * vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1016 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1018 : f32 = x_344.unity_LightData.y;
  u_xlat38 = min(x_1016, x_1018);
  let x_1022 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_1022));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1034 : u32 = u_xlatu_loop_1;
    let x_1035 : u32 = u_xlatu38;
    if ((x_1034 < x_1035)) {
    } else {
      break;
    }
    let x_1038 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_1038 >> 2u);
    let x_1042 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1042 & 3u));
    let x_1045 : u32 = u_xlatu41;
    let x_1048 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1045)];
    let x_1058 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1063 : vec4<u32> = indexable[x_1058];
    u_xlat41 = dot(x_1048, bitcast<vec4<f32>>(x_1063));
    let x_1067 : f32 = u_xlat41;
    u_xlati41 = i32(x_1067);
    let x_1070 : vec3<f32> = vs_INTERP0;
    let x_1082 : i32 = u_xlati41;
    let x_1084 : vec4<f32> = x_1081.x_AdditionalLightsPosition[x_1082];
    let x_1087 : i32 = u_xlati41;
    let x_1089 : vec4<f32> = x_1081.x_AdditionalLightsPosition[x_1087];
    u_xlat9 = ((-(x_1070) * vec3<f32>(x_1084.w, x_1084.w, x_1084.w)) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
    let x_1092 : vec3<f32> = u_xlat9;
    let x_1093 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1092, x_1093);
    let x_1095 : f32 = u_xlat30;
    u_xlat30 = max(x_1095, 6.10351562e-05f);
    let x_1098 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1098);
    let x_1101 : f32 = u_xlat42;
    let x_1103 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1101, x_1101, x_1101) * x_1103);
    let x_1106 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1106);
    let x_1108 : f32 = u_xlat30;
    let x_1109 : i32 = u_xlati41;
    let x_1111 : f32 = x_1081.x_AdditionalLightsAttenuation[x_1109].x;
    u_xlat30 = (x_1108 * x_1111);
    let x_1113 : f32 = u_xlat30;
    let x_1115 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1113) * x_1115) + 1.0f);
    let x_1118 : f32 = u_xlat30;
    u_xlat30 = max(x_1118, 0.0f);
    let x_1120 : f32 = u_xlat30;
    let x_1121 : f32 = u_xlat30;
    u_xlat30 = (x_1120 * x_1121);
    let x_1123 : f32 = u_xlat30;
    let x_1124 : f32 = u_xlat43;
    u_xlat30 = (x_1123 * x_1124);
    let x_1126 : i32 = u_xlati41;
    let x_1128 : vec4<f32> = x_1081.x_AdditionalLightsSpotDir[x_1126];
    let x_1130 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1128.x, x_1128.y, x_1128.z), x_1130);
    let x_1132 : f32 = u_xlat43;
    let x_1133 : i32 = u_xlati41;
    let x_1135 : f32 = x_1081.x_AdditionalLightsAttenuation[x_1133].z;
    let x_1137 : i32 = u_xlati41;
    let x_1139 : f32 = x_1081.x_AdditionalLightsAttenuation[x_1137].w;
    u_xlat43 = ((x_1132 * x_1135) + x_1139);
    let x_1141 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1141, 0.0f, 1.0f);
    let x_1143 : f32 = u_xlat43;
    let x_1144 : f32 = u_xlat43;
    u_xlat43 = (x_1143 * x_1144);
    let x_1146 : f32 = u_xlat30;
    let x_1147 : f32 = u_xlat43;
    u_xlat30 = (x_1146 * x_1147);
    let x_1150 : f32 = u_xlat29;
    let x_1152 : i32 = u_xlati41;
    let x_1154 : vec4<f32> = x_1081.x_AdditionalLightsColor[x_1152];
    u_xlat11 = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec4<f32> = u_xlat1;
    let x_1159 : vec3<f32> = u_xlat10;
    u_xlat41 = dot(vec3<f32>(x_1157.x, x_1157.z, x_1157.w), x_1159);
    let x_1161 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1161, 0.0f, 1.0f);
    let x_1163 : f32 = u_xlat41;
    let x_1164 : f32 = u_xlat30;
    u_xlat41 = (x_1163 * x_1164);
    let x_1166 : f32 = u_xlat41;
    let x_1168 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1166, x_1166, x_1166) * x_1168);
    let x_1170 : vec3<f32> = u_xlat9;
    let x_1171 : f32 = u_xlat42;
    let x_1174 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1170 * vec3<f32>(x_1171, x_1171, x_1171)) + x_1174);
    let x_1176 : vec3<f32> = u_xlat9;
    let x_1177 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1176, x_1177);
    let x_1179 : f32 = u_xlat41;
    u_xlat41 = max(x_1179, 1.17549435e-37f);
    let x_1181 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1181);
    let x_1183 : f32 = u_xlat41;
    let x_1185 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1183, x_1183, x_1183) * x_1185);
    let x_1187 : vec4<f32> = u_xlat1;
    let x_1189 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1187.x, x_1187.z, x_1187.w), x_1189);
    let x_1191 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1191, 0.0f, 1.0f);
    let x_1193 : vec3<f32> = u_xlat10;
    let x_1194 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1193, x_1194);
    let x_1196 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1196, 0.0f, 1.0f);
    let x_1198 : f32 = u_xlat41;
    let x_1199 : f32 = u_xlat41;
    u_xlat41 = (x_1198 * x_1199);
    let x_1201 : f32 = u_xlat41;
    let x_1203 : f32 = u_xlat17.x;
    u_xlat41 = ((x_1201 * x_1203) + 1.000010014f);
    let x_1206 : f32 = u_xlat30;
    let x_1207 : f32 = u_xlat30;
    u_xlat30 = (x_1206 * x_1207);
    let x_1209 : f32 = u_xlat41;
    let x_1210 : f32 = u_xlat41;
    u_xlat41 = (x_1209 * x_1210);
    let x_1212 : f32 = u_xlat30;
    u_xlat30 = max(x_1212, 0.100000001f);
    let x_1214 : f32 = u_xlat41;
    let x_1215 : f32 = u_xlat30;
    u_xlat41 = (x_1214 * x_1215);
    let x_1217 : f32 = u_xlat18;
    let x_1218 : f32 = u_xlat41;
    u_xlat41 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat6;
    let x_1221 : f32 = u_xlat41;
    u_xlat41 = (x_1220 / x_1221);
    let x_1223 : f32 = u_xlat41;
    let x_1226 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1226);
    let x_1228 : vec3<f32> = u_xlat9;
    let x_1229 : vec3<f32> = u_xlat11;
    let x_1231 : vec4<f32> = u_xlat8;
    let x_1233 : vec3<f32> = ((x_1228 * x_1229) + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
    let x_1234 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);

    continuing {
      let x_1236 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1236 + bitcast<u32>(1i));
    }
  }
  let x_1238 : vec3<f32> = u_xlat16;
  let x_1239 : vec4<f32> = u_xlat5;
  let x_1242 : vec3<f32> = u_xlat7;
  let x_1243 : vec3<f32> = ((x_1238 * vec3<f32>(x_1239.x, x_1239.x, x_1239.x)) + x_1242);
  let x_1244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1243.x, x_1244.y, x_1243.y, x_1243.z);
  let x_1246 : vec4<f32> = u_xlat8;
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) + vec3<f32>(x_1248.x, x_1248.z, x_1248.w));
  let x_1251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1250.x, x_1251.y, x_1250.y, x_1250.z);
  let x_1253 : vec4<f32> = vs_INTERP4;
  let x_1255 : vec3<f32> = u_xlat0;
  let x_1257 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1253.w, x_1253.w, x_1253.w) * x_1255) + vec3<f32>(x_1257.x, x_1257.z, x_1257.w));
  let x_1261 : f32 = u_xlat4.x;
  let x_1263 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1261 * -(x_1263));
  let x_1268 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1268);
  let x_1271 : vec3<f32> = u_xlat0;
  let x_1274 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1271 + -(vec3<f32>(x_1274.x, x_1274.y, x_1274.z)));
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1285 : vec4<f32> = x_66.unity_FogColor;
  let x_1287 : vec3<f32> = ((vec3<f32>(x_1280.x, x_1280.x, x_1280.x) * x_1282) + vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1290 : bool = u_xlatb13;
  let x_1291 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1291, x_1290);
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

