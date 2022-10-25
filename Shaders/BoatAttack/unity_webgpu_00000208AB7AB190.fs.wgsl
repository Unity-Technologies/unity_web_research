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

@group(1) @binding(1) var<uniform> x_1028 : AdditionalLights;

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
  let x_505 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_502, x_504);
  u_xlat4 = x_505;
  let x_510 : vec2<f32> = vs_INTERP5;
  let x_512 : f32 = x_66.x_GlobalMipBias.x;
  let x_513 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_510, x_512);
  u_xlat14 = vec3<f32>(x_513.x, x_513.y, x_513.z);
  let x_515 : vec4<f32> = u_xlat4;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat1;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_522.x, x_522.z, x_522.w), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_529 : f32 = u_xlat4.x;
  u_xlat4.x = (x_529 + 0.5f);
  let x_532 : vec3<f32> = u_xlat14;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_532 * vec3<f32>(x_533.x, x_533.x, x_533.x));
  let x_537 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_537, 0.0001f);
  let x_540 : vec3<f32> = u_xlat14;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_540 / vec3<f32>(x_541.x, x_541.x, x_541.x));
  let x_546 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
  let x_551 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_547.x, x_547.y));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : vec4<f32> = hlslcc_FragCoord;
  let x_558 : vec2<f32> = (vec2<f32>(x_554.x, x_554.y) * vec2<f32>(x_556.x, x_556.y));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_563 : f32 = u_xlat4.y;
  let x_566 : f32 = x_66.x_ScaleBiasRt.x;
  let x_569 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_563 * x_566) + x_569);
  let x_573 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_573) + 1.0f);
  let x_578 : f32 = u_xlat3.x;
  u_xlat3.x = x_578;
  let x_581 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_581, 0.0f, 1.0f);
  let x_584 : f32 = u_xlat33;
  u_xlat33 = min(x_584, 1.0f);
  let x_586 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_586 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_591 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_591) + 1.0f);
  let x_597 : f32 = u_xlat15.x;
  let x_599 : f32 = u_xlat15.x;
  u_xlat37 = (x_597 * x_599);
  let x_601 : f32 = u_xlat37;
  u_xlat37 = max(x_601, 0.0078125f);
  let x_605 : f32 = u_xlat37;
  let x_606 : f32 = u_xlat37;
  u_xlat38 = (x_605 * x_606);
  let x_609 : f32 = u_xlat3.x;
  u_xlat3.x = (x_609 + 0.040000021f);
  let x_614 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_614, 1.0f);
  let x_618 : f32 = u_xlat37;
  u_xlat6 = ((x_618 * 4.0f) + 2.0f);
  let x_627 : vec4<f32> = u_xlat4;
  let x_630 : f32 = x_66.x_GlobalMipBias.x;
  let x_631 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_627.x, x_627.z), x_630);
  u_xlat4.x = x_631.x;
  let x_636 : f32 = u_xlat4.x;
  u_xlat26 = (x_636 + -1.0f);
  let x_640 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_641 : f32 = u_xlat26;
  u_xlat26 = ((x_640 * x_641) + 1.0f);
  let x_645 : f32 = u_xlat4.x;
  let x_647 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_645, x_647);
  let x_652 : vec4<f32> = vs_INTERP9;
  let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
  let x_655 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_653.x, x_653.y, x_655);
  let x_663 : vec3<f32> = txVec1;
  let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_663.xy, x_663.z);
  u_xlat17.x = x_665;
  let x_668 : f32 = u_xlat17.x;
  let x_670 : f32 = x_139.x_MainLightShadowParams.x;
  let x_672 : f32 = u_xlat35;
  u_xlat35 = ((x_668 * x_670) + x_672);
  let x_676 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_676);
  let x_680 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_680 >= 1.0f);
  let x_682 : bool = u_xlatb28;
  let x_683 : bool = u_xlatb17;
  u_xlatb17 = (x_682 | x_683);
  let x_685 : bool = u_xlatb17;
  let x_686 : f32 = u_xlat35;
  u_xlat35 = select(x_686, 1.0f, x_685);
  let x_688 : vec3<f32> = vs_INTERP0;
  let x_690 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_688 + -(x_690));
  let x_693 : vec3<f32> = u_xlat17;
  let x_694 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_693, x_694);
  let x_698 : f32 = u_xlat17.x;
  let x_700 : f32 = x_139.x_MainLightShadowParams.z;
  let x_703 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_698 * x_700) + x_703);
  let x_707 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_707, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat35;
  u_xlat28 = (-(x_711) + 1.0f);
  let x_715 : f32 = u_xlat17.x;
  let x_716 : f32 = u_xlat28;
  let x_718 : f32 = u_xlat35;
  u_xlat35 = ((x_715 * x_716) + x_718);
  let x_720 : f32 = u_xlat26;
  let x_723 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_720, x_720, x_720) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_727 : vec3<f32> = u_xlat5;
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_727), vec3<f32>(x_729.x, x_729.z, x_729.w));
  let x_734 : f32 = u_xlat7.x;
  let x_736 : f32 = u_xlat7.x;
  u_xlat7.x = (x_734 + x_736);
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec3<f32> = u_xlat7;
  let x_745 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_739.x, x_739.z, x_739.w) * -(vec3<f32>(x_741.x, x_741.x, x_741.x))) + -(x_745));
  let x_749 : vec4<f32> = u_xlat1;
  let x_751 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_749.x, x_749.z, x_749.w), x_751);
  let x_753 : f32 = u_xlat40;
  u_xlat40 = clamp(x_753, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat40;
  u_xlat40 = (-(x_755) + 1.0f);
  let x_758 : f32 = u_xlat40;
  let x_759 : f32 = u_xlat40;
  u_xlat40 = (x_758 * x_759);
  let x_761 : f32 = u_xlat40;
  let x_762 : f32 = u_xlat40;
  u_xlat40 = (x_761 * x_762);
  let x_766 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_766) * 0.699999988f) + 1.700000048f);
  let x_774 : f32 = u_xlat15.x;
  let x_776 : f32 = u_xlat8.x;
  u_xlat15.x = (x_774 * x_776);
  let x_780 : f32 = u_xlat15.x;
  u_xlat15.x = (x_780 * 6.0f);
  let x_792 : vec3<f32> = u_xlat7;
  let x_794 : f32 = u_xlat15.x;
  let x_795 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_792, x_794);
  u_xlat8 = x_795;
  let x_797 : f32 = u_xlat8.w;
  u_xlat15.x = (x_797 + -1.0f);
  let x_801 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_803 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_801 * x_803) + 1.0f);
  let x_808 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_808, 0.0f);
  let x_812 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_812);
  let x_816 : f32 = u_xlat15.x;
  let x_818 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_816 * x_818);
  let x_822 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_822);
  let x_826 : f32 = u_xlat15.x;
  let x_828 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_826 * x_828);
  let x_831 : vec4<f32> = u_xlat8;
  let x_833 : vec3<f32> = u_xlat15;
  u_xlat7 = (vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_833.x, x_833.x, x_833.x));
  let x_836 : f32 = u_xlat37;
  let x_838 : f32 = u_xlat37;
  let x_842 : vec2<f32> = ((vec2<f32>(x_836, x_836) * vec2<f32>(x_838, x_838)) + vec2<f32>(-1.0f, 1.0f));
  let x_843 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_842.x, x_843.y, x_842.y);
  let x_846 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_846);
  let x_849 : f32 = u_xlat3.x;
  u_xlat3.x = (x_849 + -0.039999999f);
  let x_853 : f32 = u_xlat40;
  let x_855 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_853 * x_855) + 0.039999999f);
  let x_861 : f32 = u_xlat3.x;
  let x_862 : f32 = u_xlat37;
  u_xlat3.x = (x_861 * x_862);
  let x_865 : vec4<f32> = u_xlat3;
  let x_867 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_865.x, x_865.x, x_865.x) * x_867);
  let x_869 : vec3<f32> = u_xlat14;
  let x_870 : vec3<f32> = u_xlat2;
  let x_872 : vec3<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((x_869 * x_870) + x_872);
  let x_874 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : f32 = u_xlat35;
  let x_878 : f32 = x_344.unity_LightData.z;
  u_xlat35 = (x_876 * x_878);
  let x_881 : vec4<f32> = u_xlat1;
  let x_884 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_881.x, x_881.z, x_881.w), vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : f32 = u_xlat36;
  u_xlat36 = clamp(x_887, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat35;
  let x_890 : f32 = u_xlat36;
  u_xlat35 = (x_889 * x_890);
  let x_892 : f32 = u_xlat35;
  let x_894 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_892, x_892, x_892) * x_894);
  let x_896 : vec3<f32> = u_xlat5;
  let x_898 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat7 = (x_896 + vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec3<f32> = u_xlat7;
  let x_902 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_901, x_902);
  let x_904 : f32 = u_xlat35;
  u_xlat35 = max(x_904, 1.17549435e-37f);
  let x_907 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_907);
  let x_909 : f32 = u_xlat35;
  let x_911 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_909, x_909, x_909) * x_911);
  let x_913 : vec4<f32> = u_xlat1;
  let x_915 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_913.x, x_913.z, x_913.w), x_915);
  let x_917 : f32 = u_xlat35;
  u_xlat35 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : vec4<f32> = x_66.x_MainLightPosition;
  let x_922 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_920.x, x_920.y, x_920.z), x_922);
  let x_924 : f32 = u_xlat36;
  u_xlat36 = clamp(x_924, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat35;
  let x_927 : f32 = u_xlat35;
  u_xlat35 = (x_926 * x_927);
  let x_929 : f32 = u_xlat35;
  let x_931 : f32 = u_xlat15.x;
  u_xlat35 = ((x_929 * x_931) + 1.000010014f);
  let x_935 : f32 = u_xlat36;
  let x_936 : f32 = u_xlat36;
  u_xlat36 = (x_935 * x_936);
  let x_938 : f32 = u_xlat35;
  let x_939 : f32 = u_xlat35;
  u_xlat35 = (x_938 * x_939);
  let x_941 : f32 = u_xlat36;
  u_xlat36 = max(x_941, 0.100000001f);
  let x_944 : f32 = u_xlat35;
  let x_945 : f32 = u_xlat36;
  u_xlat35 = (x_944 * x_945);
  let x_947 : f32 = u_xlat6;
  let x_948 : f32 = u_xlat35;
  u_xlat35 = (x_947 * x_948);
  let x_950 : f32 = u_xlat38;
  let x_951 : f32 = u_xlat35;
  u_xlat35 = (x_950 / x_951);
  let x_953 : f32 = u_xlat35;
  let x_957 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_953, x_953, x_953) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_957);
  let x_959 : vec3<f32> = u_xlat17;
  let x_960 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_959 * x_960);
  let x_964 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_966 : f32 = x_344.unity_LightData.y;
  u_xlat35 = min(x_964, x_966);
  let x_970 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_970));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_982 : u32 = u_xlatu_loop_1;
    let x_983 : u32 = u_xlatu35;
    if ((x_982 < x_983)) {
    } else {
      break;
    }
    let x_986 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_986 >> 2u);
    let x_990 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_990 & 3u));
    let x_993 : u32 = u_xlatu37;
    let x_996 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_993)];
    let x_1006 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1011 : vec4<u32> = indexable[x_1006];
    u_xlat37 = dot(x_996, bitcast<vec4<f32>>(x_1011));
    let x_1015 : f32 = u_xlat37;
    u_xlati37 = i32(x_1015);
    let x_1017 : vec3<f32> = vs_INTERP0;
    let x_1029 : i32 = u_xlati37;
    let x_1031 : vec4<f32> = x_1028.x_AdditionalLightsPosition[x_1029];
    let x_1034 : i32 = u_xlati37;
    let x_1036 : vec4<f32> = x_1028.x_AdditionalLightsPosition[x_1034];
    let x_1038 : vec3<f32> = ((-(x_1017) * vec3<f32>(x_1031.w, x_1031.w, x_1031.w)) + vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
    let x_1039 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
    let x_1041 : vec4<f32> = u_xlat8;
    let x_1043 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
    let x_1046 : f32 = u_xlat40;
    u_xlat40 = max(x_1046, 6.10351562e-05f);
    let x_1050 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1050);
    let x_1053 : f32 = u_xlat41;
    let x_1055 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
    let x_1059 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1059);
    let x_1061 : f32 = u_xlat40;
    let x_1062 : i32 = u_xlati37;
    let x_1064 : f32 = x_1028.x_AdditionalLightsAttenuation[x_1062].x;
    u_xlat40 = (x_1061 * x_1064);
    let x_1066 : f32 = u_xlat40;
    let x_1068 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1066) * x_1068) + 1.0f);
    let x_1071 : f32 = u_xlat40;
    u_xlat40 = max(x_1071, 0.0f);
    let x_1073 : f32 = u_xlat40;
    let x_1074 : f32 = u_xlat40;
    u_xlat40 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat40;
    let x_1077 : f32 = u_xlat42;
    u_xlat40 = (x_1076 * x_1077);
    let x_1079 : i32 = u_xlati37;
    let x_1081 : vec4<f32> = x_1028.x_AdditionalLightsSpotDir[x_1079];
    let x_1083 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), x_1083);
    let x_1085 : f32 = u_xlat42;
    let x_1086 : i32 = u_xlati37;
    let x_1088 : f32 = x_1028.x_AdditionalLightsAttenuation[x_1086].z;
    let x_1090 : i32 = u_xlati37;
    let x_1092 : f32 = x_1028.x_AdditionalLightsAttenuation[x_1090].w;
    u_xlat42 = ((x_1085 * x_1088) + x_1092);
    let x_1094 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1094, 0.0f, 1.0f);
    let x_1096 : f32 = u_xlat42;
    let x_1097 : f32 = u_xlat42;
    u_xlat42 = (x_1096 * x_1097);
    let x_1099 : f32 = u_xlat40;
    let x_1100 : f32 = u_xlat42;
    u_xlat40 = (x_1099 * x_1100);
    let x_1103 : f32 = u_xlat26;
    let x_1105 : i32 = u_xlati37;
    let x_1107 : vec4<f32> = x_1028.x_AdditionalLightsColor[x_1105];
    u_xlat10 = (vec3<f32>(x_1103, x_1103, x_1103) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
    let x_1110 : vec4<f32> = u_xlat1;
    let x_1112 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1110.x, x_1110.z, x_1110.w), x_1112);
    let x_1114 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1114, 0.0f, 1.0f);
    let x_1116 : f32 = u_xlat37;
    let x_1117 : f32 = u_xlat40;
    u_xlat37 = (x_1116 * x_1117);
    let x_1119 : f32 = u_xlat37;
    let x_1121 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1119, x_1119, x_1119) * x_1121);
    let x_1123 : vec4<f32> = u_xlat8;
    let x_1125 : f32 = u_xlat41;
    let x_1128 : vec3<f32> = u_xlat5;
    let x_1129 : vec3<f32> = ((vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(x_1125, x_1125, x_1125)) + x_1128);
    let x_1130 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
    let x_1132 : vec4<f32> = u_xlat8;
    let x_1134 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
    let x_1137 : f32 = u_xlat37;
    u_xlat37 = max(x_1137, 1.17549435e-37f);
    let x_1139 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1139);
    let x_1141 : f32 = u_xlat37;
    let x_1143 : vec4<f32> = u_xlat8;
    let x_1145 : vec3<f32> = (vec3<f32>(x_1141, x_1141, x_1141) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
    let x_1146 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
    let x_1148 : vec4<f32> = u_xlat1;
    let x_1150 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1148.x, x_1148.z, x_1148.w), vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
    let x_1153 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1153, 0.0f, 1.0f);
    let x_1155 : vec3<f32> = u_xlat9;
    let x_1156 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1155, vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
    let x_1159 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1159, 0.0f, 1.0f);
    let x_1161 : f32 = u_xlat37;
    let x_1162 : f32 = u_xlat37;
    u_xlat37 = (x_1161 * x_1162);
    let x_1164 : f32 = u_xlat37;
    let x_1166 : f32 = u_xlat15.x;
    u_xlat37 = ((x_1164 * x_1166) + 1.000010014f);
    let x_1169 : f32 = u_xlat40;
    let x_1170 : f32 = u_xlat40;
    u_xlat40 = (x_1169 * x_1170);
    let x_1172 : f32 = u_xlat37;
    let x_1173 : f32 = u_xlat37;
    u_xlat37 = (x_1172 * x_1173);
    let x_1175 : f32 = u_xlat40;
    u_xlat40 = max(x_1175, 0.100000001f);
    let x_1177 : f32 = u_xlat37;
    let x_1178 : f32 = u_xlat40;
    u_xlat37 = (x_1177 * x_1178);
    let x_1180 : f32 = u_xlat6;
    let x_1181 : f32 = u_xlat37;
    u_xlat37 = (x_1180 * x_1181);
    let x_1183 : f32 = u_xlat38;
    let x_1184 : f32 = u_xlat37;
    u_xlat37 = (x_1183 / x_1184);
    let x_1186 : f32 = u_xlat37;
    let x_1189 : vec3<f32> = u_xlat2;
    let x_1190 : vec3<f32> = ((vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1189);
    let x_1191 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
    let x_1193 : vec4<f32> = u_xlat8;
    let x_1195 : vec3<f32> = u_xlat10;
    let x_1197 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * x_1195) + x_1197);

    continuing {
      let x_1199 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1199 + bitcast<u32>(1i));
    }
  }
  let x_1201 : vec4<f32> = u_xlat3;
  let x_1203 : vec4<f32> = u_xlat4;
  let x_1206 : vec3<f32> = u_xlat17;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1201.x, x_1201.y, x_1201.z) * vec3<f32>(x_1203.x, x_1203.x, x_1203.x)) + x_1206);
  let x_1208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1207.x, x_1208.y, x_1207.y, x_1207.z);
  let x_1210 : vec3<f32> = u_xlat7;
  let x_1211 : vec4<f32> = u_xlat1;
  let x_1213 : vec3<f32> = (x_1210 + vec3<f32>(x_1211.x, x_1211.z, x_1211.w));
  let x_1214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1213.x, x_1214.y, x_1213.y, x_1213.z);
  let x_1218 : vec4<f32> = vs_INTERP4;
  let x_1220 : vec3<f32> = u_xlat0;
  let x_1222 : vec4<f32> = u_xlat1;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1218.w, x_1218.w, x_1218.w) * x_1220) + vec3<f32>(x_1222.x, x_1222.z, x_1222.w));
  let x_1225 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : bool = u_xlatb12;
  let x_1228 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1228, x_1227);
  let x_1236 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1238 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1236 & bitcast<u32>(x_1238));
  let x_1241 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1241);
  let x_1246 : f32 = u_xlat0.x;
  let x_1248 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1246 * x_1248);
  let x_1252 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1252, 0.0f, 1.0f);
  let x_1256 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1256.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

