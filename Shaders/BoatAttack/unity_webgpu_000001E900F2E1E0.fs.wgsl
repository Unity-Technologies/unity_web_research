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

@group(1) @binding(1) var<uniform> x_1044 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  let x_515 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_511) + -(x_515));
  let x_520 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_520, 0.0f);
  let x_524 : f32 = u_xlat4.x;
  let x_527 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_524 * x_527);
  let x_538 : vec2<f32> = vs_INTERP5;
  let x_540 : f32 = x_66.x_GlobalMipBias.x;
  let x_541 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_538, x_540);
  u_xlat16 = vec3<f32>(x_541.x, x_541.y, x_541.z);
  let x_545 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_550 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_550.x, x_550.y, x_551.z);
  let x_553 : vec3<f32> = u_xlat5;
  let x_555 : vec4<f32> = hlslcc_FragCoord;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_557.x, x_557.y, x_558.z);
  let x_562 : f32 = u_xlat5.y;
  let x_565 : f32 = x_66.x_ScaleBiasRt.x;
  let x_568 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_562 * x_565) + x_568);
  let x_572 : f32 = u_xlat17.x;
  u_xlat5.z = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = x_577;
  let x_580 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_580, 0.0f, 1.0f);
  let x_583 : f32 = u_xlat36;
  u_xlat36 = min(x_583, 1.0f);
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_585 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_590 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_590) + 1.0f);
  let x_596 : f32 = u_xlat17.x;
  let x_598 : f32 = u_xlat17.x;
  u_xlat41 = (x_596 * x_598);
  let x_600 : f32 = u_xlat41;
  u_xlat41 = max(x_600, 0.0078125f);
  let x_604 : f32 = u_xlat41;
  let x_605 : f32 = u_xlat41;
  u_xlat6 = (x_604 * x_605);
  let x_608 : f32 = u_xlat3.x;
  u_xlat3.x = (x_608 + 0.040000021f);
  let x_613 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_613, 1.0f);
  let x_617 : f32 = u_xlat41;
  u_xlat18 = ((x_617 * 4.0f) + 2.0f);
  let x_626 : vec3<f32> = u_xlat5;
  let x_629 : f32 = x_66.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_626.x, x_626.z), x_629);
  u_xlat5.x = x_630.x;
  let x_635 : f32 = u_xlat5.x;
  u_xlat29 = (x_635 + -1.0f);
  let x_639 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_640 : f32 = u_xlat29;
  u_xlat29 = ((x_639 * x_640) + 1.0f);
  let x_644 : f32 = u_xlat5.x;
  let x_646 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_644, x_646);
  let x_651 : vec4<f32> = vs_INTERP9;
  let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
  let x_654 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_652.x, x_652.y, x_654);
  let x_662 : vec3<f32> = txVec1;
  let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
  u_xlat30 = x_664;
  let x_665 : f32 = u_xlat30;
  let x_667 : f32 = x_139.x_MainLightShadowParams.x;
  let x_669 : f32 = u_xlat38;
  u_xlat38 = ((x_665 * x_667) + x_669);
  let x_673 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_673);
  let x_677 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_677 >= 1.0f);
  let x_679 : bool = u_xlatb42;
  let x_680 : bool = u_xlatb30;
  u_xlatb30 = (x_679 | x_680);
  let x_682 : bool = u_xlatb30;
  let x_683 : f32 = u_xlat38;
  u_xlat38 = select(x_683, 1.0f, x_682);
  let x_686 : vec3<f32> = vs_INTERP0;
  let x_688 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_686 + -(x_688));
  let x_691 : vec3<f32> = u_xlat7;
  let x_692 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_691, x_692);
  let x_694 : f32 = u_xlat30;
  let x_696 : f32 = x_139.x_MainLightShadowParams.z;
  let x_699 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat30 = ((x_694 * x_696) + x_699);
  let x_701 : f32 = u_xlat30;
  u_xlat30 = clamp(x_701, 0.0f, 1.0f);
  let x_704 : f32 = u_xlat38;
  u_xlat42 = (-(x_704) + 1.0f);
  let x_707 : f32 = u_xlat30;
  let x_708 : f32 = u_xlat42;
  let x_710 : f32 = u_xlat38;
  u_xlat38 = ((x_707 * x_708) + x_710);
  let x_712 : f32 = u_xlat29;
  let x_715 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec3<f32> = u_xlat15;
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(x_718), vec3<f32>(x_720.x, x_720.z, x_720.w));
  let x_723 : f32 = u_xlat30;
  let x_724 : f32 = u_xlat30;
  u_xlat30 = (x_723 + x_724);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : f32 = u_xlat30;
  let x_733 : vec3<f32> = u_xlat15;
  let x_735 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.z, x_727.w) * -(vec3<f32>(x_729, x_729, x_729))) + -(x_733));
  let x_736 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_738.x, x_738.z, x_738.w), x_740);
  let x_742 : f32 = u_xlat30;
  u_xlat30 = clamp(x_742, 0.0f, 1.0f);
  let x_744 : f32 = u_xlat30;
  u_xlat30 = (-(x_744) + 1.0f);
  let x_747 : f32 = u_xlat30;
  let x_748 : f32 = u_xlat30;
  u_xlat30 = (x_747 * x_748);
  let x_750 : f32 = u_xlat30;
  let x_751 : f32 = u_xlat30;
  u_xlat30 = (x_750 * x_751);
  let x_754 : f32 = u_xlat17.x;
  u_xlat42 = ((-(x_754) * 0.699999988f) + 1.700000048f);
  let x_761 : f32 = u_xlat17.x;
  let x_762 : f32 = u_xlat42;
  u_xlat17.x = (x_761 * x_762);
  let x_766 : f32 = u_xlat17.x;
  u_xlat17.x = (x_766 * 6.0f);
  let x_778 : vec4<f32> = u_xlat8;
  let x_781 : f32 = u_xlat17.x;
  let x_782 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_778.x, x_778.y, x_778.z), x_781);
  u_xlat8 = x_782;
  let x_784 : f32 = u_xlat8.w;
  u_xlat17.x = (x_784 + -1.0f);
  let x_788 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_790 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_788 * x_790) + 1.0f);
  let x_795 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_795, 0.0f);
  let x_799 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_799);
  let x_803 : f32 = u_xlat17.x;
  let x_805 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_803 * x_805);
  let x_809 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_809);
  let x_813 : f32 = u_xlat17.x;
  let x_815 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_813 * x_815);
  let x_818 : vec4<f32> = u_xlat8;
  let x_820 : vec3<f32> = u_xlat17;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(x_820.x, x_820.x, x_820.x));
  let x_823 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : f32 = u_xlat41;
  let x_827 : f32 = u_xlat41;
  let x_831 : vec2<f32> = ((vec2<f32>(x_825, x_825) * vec2<f32>(x_827, x_827)) + vec2<f32>(-1.0f, 1.0f));
  let x_832 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_831.x, x_832.y, x_831.y);
  let x_835 : f32 = u_xlat17.z;
  u_xlat41 = (1.0f / x_835);
  let x_838 : f32 = u_xlat3.x;
  u_xlat3.x = (x_838 + -0.039999999f);
  let x_842 : f32 = u_xlat30;
  let x_844 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_842 * x_844) + 0.039999999f);
  let x_850 : f32 = u_xlat3.x;
  let x_851 : f32 = u_xlat41;
  u_xlat3.x = (x_850 * x_851);
  let x_854 : vec4<f32> = u_xlat3;
  let x_856 : vec4<f32> = u_xlat8;
  let x_858 : vec3<f32> = (vec3<f32>(x_854.x, x_854.x, x_854.x) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = u_xlat16;
  let x_862 : vec3<f32> = u_xlat2;
  let x_864 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_861 * x_862) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : f32 = u_xlat38;
  let x_869 : f32 = x_344.unity_LightData.z;
  u_xlat38 = (x_867 * x_869);
  let x_871 : vec4<f32> = u_xlat1;
  let x_874 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_871.x, x_871.z, x_871.w), vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_879 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_879, 0.0f, 1.0f);
  let x_882 : f32 = u_xlat38;
  let x_884 : f32 = u_xlat3.x;
  u_xlat38 = (x_882 * x_884);
  let x_886 : f32 = u_xlat38;
  let x_888 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_886, x_886, x_886) * x_888);
  let x_890 : vec3<f32> = u_xlat15;
  let x_892 : vec4<f32> = x_66.x_MainLightPosition;
  let x_894 : vec3<f32> = (x_890 + vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat8;
  let x_899 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_897.x, x_897.y, x_897.z), vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : f32 = u_xlat38;
  u_xlat38 = max(x_902, 1.17549435e-37f);
  let x_905 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_905);
  let x_907 : f32 = u_xlat38;
  let x_909 : vec4<f32> = u_xlat8;
  let x_911 : vec3<f32> = (vec3<f32>(x_907, x_907, x_907) * vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat1;
  let x_916 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_914.x, x_914.z, x_914.w), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat38;
  u_xlat38 = clamp(x_919, 0.0f, 1.0f);
  let x_922 : vec4<f32> = x_66.x_MainLightPosition;
  let x_924 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_929 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_929, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat38;
  let x_933 : f32 = u_xlat38;
  u_xlat38 = (x_932 * x_933);
  let x_935 : f32 = u_xlat38;
  let x_937 : f32 = u_xlat17.x;
  u_xlat38 = ((x_935 * x_937) + 1.000010014f);
  let x_942 : f32 = u_xlat3.x;
  let x_944 : f32 = u_xlat3.x;
  u_xlat3.x = (x_942 * x_944);
  let x_947 : f32 = u_xlat38;
  let x_948 : f32 = u_xlat38;
  u_xlat38 = (x_947 * x_948);
  let x_951 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_951, 0.100000001f);
  let x_955 : f32 = u_xlat38;
  let x_957 : f32 = u_xlat3.x;
  u_xlat38 = (x_955 * x_957);
  let x_959 : f32 = u_xlat18;
  let x_960 : f32 = u_xlat38;
  u_xlat38 = (x_959 * x_960);
  let x_962 : f32 = u_xlat6;
  let x_963 : f32 = u_xlat38;
  u_xlat38 = (x_962 / x_963);
  let x_965 : f32 = u_xlat38;
  let x_969 : vec3<f32> = u_xlat2;
  let x_970 : vec3<f32> = ((vec3<f32>(x_965, x_965, x_965) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_969);
  let x_971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec3<f32> = u_xlat7;
  let x_974 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_973 * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_979 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_981 : f32 = x_344.unity_LightData.y;
  u_xlat38 = min(x_979, x_981);
  let x_985 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_985));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_997 : u32 = u_xlatu_loop_1;
    let x_998 : u32 = u_xlatu38;
    if ((x_997 < x_998)) {
    } else {
      break;
    }
    let x_1001 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_1001 >> 2u);
    let x_1005 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1005 & 3u));
    let x_1008 : u32 = u_xlatu41;
    let x_1011 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1008)];
    let x_1021 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1026 : vec4<u32> = indexable[x_1021];
    u_xlat41 = dot(x_1011, bitcast<vec4<f32>>(x_1026));
    let x_1030 : f32 = u_xlat41;
    u_xlati41 = i32(x_1030);
    let x_1033 : vec3<f32> = vs_INTERP0;
    let x_1045 : i32 = u_xlati41;
    let x_1047 : vec4<f32> = x_1044.x_AdditionalLightsPosition[x_1045];
    let x_1050 : i32 = u_xlati41;
    let x_1052 : vec4<f32> = x_1044.x_AdditionalLightsPosition[x_1050];
    u_xlat9 = ((-(x_1033) * vec3<f32>(x_1047.w, x_1047.w, x_1047.w)) + vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
    let x_1055 : vec3<f32> = u_xlat9;
    let x_1056 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1055, x_1056);
    let x_1058 : f32 = u_xlat30;
    u_xlat30 = max(x_1058, 6.10351562e-05f);
    let x_1061 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1061);
    let x_1064 : f32 = u_xlat42;
    let x_1066 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1064, x_1064, x_1064) * x_1066);
    let x_1069 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1069);
    let x_1071 : f32 = u_xlat30;
    let x_1072 : i32 = u_xlati41;
    let x_1074 : f32 = x_1044.x_AdditionalLightsAttenuation[x_1072].x;
    u_xlat30 = (x_1071 * x_1074);
    let x_1076 : f32 = u_xlat30;
    let x_1078 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1076) * x_1078) + 1.0f);
    let x_1081 : f32 = u_xlat30;
    u_xlat30 = max(x_1081, 0.0f);
    let x_1083 : f32 = u_xlat30;
    let x_1084 : f32 = u_xlat30;
    u_xlat30 = (x_1083 * x_1084);
    let x_1086 : f32 = u_xlat30;
    let x_1087 : f32 = u_xlat43;
    u_xlat30 = (x_1086 * x_1087);
    let x_1089 : i32 = u_xlati41;
    let x_1091 : vec4<f32> = x_1044.x_AdditionalLightsSpotDir[x_1089];
    let x_1093 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), x_1093);
    let x_1095 : f32 = u_xlat43;
    let x_1096 : i32 = u_xlati41;
    let x_1098 : f32 = x_1044.x_AdditionalLightsAttenuation[x_1096].z;
    let x_1100 : i32 = u_xlati41;
    let x_1102 : f32 = x_1044.x_AdditionalLightsAttenuation[x_1100].w;
    u_xlat43 = ((x_1095 * x_1098) + x_1102);
    let x_1104 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1104, 0.0f, 1.0f);
    let x_1106 : f32 = u_xlat43;
    let x_1107 : f32 = u_xlat43;
    u_xlat43 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat30;
    let x_1110 : f32 = u_xlat43;
    u_xlat30 = (x_1109 * x_1110);
    let x_1113 : f32 = u_xlat29;
    let x_1115 : i32 = u_xlati41;
    let x_1117 : vec4<f32> = x_1044.x_AdditionalLightsColor[x_1115];
    u_xlat11 = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
    let x_1120 : vec4<f32> = u_xlat1;
    let x_1122 : vec3<f32> = u_xlat10;
    u_xlat41 = dot(vec3<f32>(x_1120.x, x_1120.z, x_1120.w), x_1122);
    let x_1124 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1124, 0.0f, 1.0f);
    let x_1126 : f32 = u_xlat41;
    let x_1127 : f32 = u_xlat30;
    u_xlat41 = (x_1126 * x_1127);
    let x_1129 : f32 = u_xlat41;
    let x_1131 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1129, x_1129, x_1129) * x_1131);
    let x_1133 : vec3<f32> = u_xlat9;
    let x_1134 : f32 = u_xlat42;
    let x_1137 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1133 * vec3<f32>(x_1134, x_1134, x_1134)) + x_1137);
    let x_1139 : vec3<f32> = u_xlat9;
    let x_1140 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1139, x_1140);
    let x_1142 : f32 = u_xlat41;
    u_xlat41 = max(x_1142, 1.17549435e-37f);
    let x_1144 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1144);
    let x_1146 : f32 = u_xlat41;
    let x_1148 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1146, x_1146, x_1146) * x_1148);
    let x_1150 : vec4<f32> = u_xlat1;
    let x_1152 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1150.x, x_1150.z, x_1150.w), x_1152);
    let x_1154 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1154, 0.0f, 1.0f);
    let x_1156 : vec3<f32> = u_xlat10;
    let x_1157 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1156, x_1157);
    let x_1159 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1159, 0.0f, 1.0f);
    let x_1161 : f32 = u_xlat41;
    let x_1162 : f32 = u_xlat41;
    u_xlat41 = (x_1161 * x_1162);
    let x_1164 : f32 = u_xlat41;
    let x_1166 : f32 = u_xlat17.x;
    u_xlat41 = ((x_1164 * x_1166) + 1.000010014f);
    let x_1169 : f32 = u_xlat30;
    let x_1170 : f32 = u_xlat30;
    u_xlat30 = (x_1169 * x_1170);
    let x_1172 : f32 = u_xlat41;
    let x_1173 : f32 = u_xlat41;
    u_xlat41 = (x_1172 * x_1173);
    let x_1175 : f32 = u_xlat30;
    u_xlat30 = max(x_1175, 0.100000001f);
    let x_1177 : f32 = u_xlat41;
    let x_1178 : f32 = u_xlat30;
    u_xlat41 = (x_1177 * x_1178);
    let x_1180 : f32 = u_xlat18;
    let x_1181 : f32 = u_xlat41;
    u_xlat41 = (x_1180 * x_1181);
    let x_1183 : f32 = u_xlat6;
    let x_1184 : f32 = u_xlat41;
    u_xlat41 = (x_1183 / x_1184);
    let x_1186 : f32 = u_xlat41;
    let x_1189 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1189);
    let x_1191 : vec3<f32> = u_xlat9;
    let x_1192 : vec3<f32> = u_xlat11;
    let x_1194 : vec4<f32> = u_xlat8;
    let x_1196 : vec3<f32> = ((x_1191 * x_1192) + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
    let x_1197 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);

    continuing {
      let x_1199 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1199 + bitcast<u32>(1i));
    }
  }
  let x_1201 : vec3<f32> = u_xlat16;
  let x_1202 : vec3<f32> = u_xlat5;
  let x_1205 : vec3<f32> = u_xlat7;
  let x_1206 : vec3<f32> = ((x_1201 * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1206.z);
  let x_1209 : vec4<f32> = u_xlat8;
  let x_1211 : vec4<f32> = u_xlat1;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1209.x, x_1209.y, x_1209.z) + vec3<f32>(x_1211.x, x_1211.z, x_1211.w));
  let x_1214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1213.x, x_1214.y, x_1213.y, x_1213.z);
  let x_1216 : vec4<f32> = vs_INTERP4;
  let x_1218 : vec3<f32> = u_xlat0;
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1216.w, x_1216.w, x_1216.w) * x_1218) + vec3<f32>(x_1220.x, x_1220.z, x_1220.w));
  let x_1224 : f32 = u_xlat4.x;
  let x_1226 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1224 * -(x_1226));
  let x_1231 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1231);
  let x_1234 : vec3<f32> = u_xlat0;
  let x_1237 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1234 + -(vec3<f32>(x_1237.x, x_1237.y, x_1237.z)));
  let x_1243 : vec4<f32> = u_xlat1;
  let x_1245 : vec3<f32> = u_xlat0;
  let x_1248 : vec4<f32> = x_66.unity_FogColor;
  let x_1250 : vec3<f32> = ((vec3<f32>(x_1243.x, x_1243.x, x_1243.x) * x_1245) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : bool = u_xlatb13;
  let x_1254 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1254, x_1253);
  let x_1262 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1264 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1262 & bitcast<u32>(x_1264));
  let x_1267 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1267);
  let x_1272 : f32 = u_xlat0.x;
  let x_1274 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1272 * x_1274);
  let x_1278 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1278, 0.0f, 1.0f);
  let x_1282 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1282.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

