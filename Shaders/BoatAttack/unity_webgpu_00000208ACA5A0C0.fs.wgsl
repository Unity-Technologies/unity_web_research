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

@group(1) @binding(1) var<uniform> x_1027 : AdditionalLights;

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
  let x_504 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_501, x_503);
  u_xlat4 = x_504;
  let x_509 : vec2<f32> = vs_INTERP5;
  let x_511 : f32 = x_66.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  u_xlat14 = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat4;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_521.x, x_521.z, x_521.w), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_528 : f32 = u_xlat4.x;
  u_xlat4.x = (x_528 + 0.5f);
  let x_531 : vec3<f32> = u_xlat14;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_536 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_536, 0.0001f);
  let x_539 : vec3<f32> = u_xlat14;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_539 / vec3<f32>(x_540.x, x_540.x, x_540.x));
  let x_545 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_550 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = hlslcc_FragCoord;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_562 : f32 = u_xlat4.y;
  let x_565 : f32 = x_66.x_ScaleBiasRt.x;
  let x_568 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_562 * x_565) + x_568);
  let x_572 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = x_577;
  let x_580 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_580, 0.0f, 1.0f);
  let x_583 : f32 = u_xlat33;
  u_xlat33 = min(x_583, 1.0f);
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_585 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_590 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_590) + 1.0f);
  let x_596 : f32 = u_xlat15.x;
  let x_598 : f32 = u_xlat15.x;
  u_xlat37 = (x_596 * x_598);
  let x_600 : f32 = u_xlat37;
  u_xlat37 = max(x_600, 0.0078125f);
  let x_604 : f32 = u_xlat37;
  let x_605 : f32 = u_xlat37;
  u_xlat38 = (x_604 * x_605);
  let x_608 : f32 = u_xlat3.x;
  u_xlat3.x = (x_608 + 0.040000021f);
  let x_613 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_613, 1.0f);
  let x_617 : f32 = u_xlat37;
  u_xlat6 = ((x_617 * 4.0f) + 2.0f);
  let x_626 : vec4<f32> = u_xlat4;
  let x_629 : f32 = x_66.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_626.x, x_626.z), x_629);
  u_xlat4.x = x_630.x;
  let x_635 : f32 = u_xlat4.x;
  u_xlat26 = (x_635 + -1.0f);
  let x_639 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_640 : f32 = u_xlat26;
  u_xlat26 = ((x_639 * x_640) + 1.0f);
  let x_644 : f32 = u_xlat4.x;
  let x_646 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_644, x_646);
  let x_651 : vec4<f32> = vs_INTERP9;
  let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
  let x_654 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_652.x, x_652.y, x_654);
  let x_662 : vec3<f32> = txVec1;
  let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
  u_xlat17.x = x_664;
  let x_667 : f32 = u_xlat17.x;
  let x_669 : f32 = x_139.x_MainLightShadowParams.x;
  let x_671 : f32 = u_xlat35;
  u_xlat35 = ((x_667 * x_669) + x_671);
  let x_675 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_675);
  let x_679 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_679 >= 1.0f);
  let x_681 : bool = u_xlatb28;
  let x_682 : bool = u_xlatb17;
  u_xlatb17 = (x_681 | x_682);
  let x_684 : bool = u_xlatb17;
  let x_685 : f32 = u_xlat35;
  u_xlat35 = select(x_685, 1.0f, x_684);
  let x_687 : vec3<f32> = vs_INTERP0;
  let x_689 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_687 + -(x_689));
  let x_692 : vec3<f32> = u_xlat17;
  let x_693 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_692, x_693);
  let x_697 : f32 = u_xlat17.x;
  let x_699 : f32 = x_139.x_MainLightShadowParams.z;
  let x_702 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_697 * x_699) + x_702);
  let x_706 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_706, 0.0f, 1.0f);
  let x_710 : f32 = u_xlat35;
  u_xlat28 = (-(x_710) + 1.0f);
  let x_714 : f32 = u_xlat17.x;
  let x_715 : f32 = u_xlat28;
  let x_717 : f32 = u_xlat35;
  u_xlat35 = ((x_714 * x_715) + x_717);
  let x_719 : f32 = u_xlat26;
  let x_722 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_726 : vec3<f32> = u_xlat5;
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_726), vec3<f32>(x_728.x, x_728.z, x_728.w));
  let x_733 : f32 = u_xlat7.x;
  let x_735 : f32 = u_xlat7.x;
  u_xlat7.x = (x_733 + x_735);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = u_xlat7;
  let x_744 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_738.x, x_738.z, x_738.w) * -(vec3<f32>(x_740.x, x_740.x, x_740.x))) + -(x_744));
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_748.x, x_748.z, x_748.w), x_750);
  let x_752 : f32 = u_xlat40;
  u_xlat40 = clamp(x_752, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat40;
  u_xlat40 = (-(x_754) + 1.0f);
  let x_757 : f32 = u_xlat40;
  let x_758 : f32 = u_xlat40;
  u_xlat40 = (x_757 * x_758);
  let x_760 : f32 = u_xlat40;
  let x_761 : f32 = u_xlat40;
  u_xlat40 = (x_760 * x_761);
  let x_765 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_765) * 0.699999988f) + 1.700000048f);
  let x_773 : f32 = u_xlat15.x;
  let x_775 : f32 = u_xlat8.x;
  u_xlat15.x = (x_773 * x_775);
  let x_779 : f32 = u_xlat15.x;
  u_xlat15.x = (x_779 * 6.0f);
  let x_791 : vec3<f32> = u_xlat7;
  let x_793 : f32 = u_xlat15.x;
  let x_794 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_791, x_793);
  u_xlat8 = x_794;
  let x_796 : f32 = u_xlat8.w;
  u_xlat15.x = (x_796 + -1.0f);
  let x_800 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_802 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_800 * x_802) + 1.0f);
  let x_807 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_807, 0.0f);
  let x_811 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_811);
  let x_815 : f32 = u_xlat15.x;
  let x_817 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_815 * x_817);
  let x_821 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_821);
  let x_825 : f32 = u_xlat15.x;
  let x_827 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_825 * x_827);
  let x_830 : vec4<f32> = u_xlat8;
  let x_832 : vec3<f32> = u_xlat15;
  u_xlat7 = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832.x, x_832.x, x_832.x));
  let x_835 : f32 = u_xlat37;
  let x_837 : f32 = u_xlat37;
  let x_841 : vec2<f32> = ((vec2<f32>(x_835, x_835) * vec2<f32>(x_837, x_837)) + vec2<f32>(-1.0f, 1.0f));
  let x_842 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_841.x, x_842.y, x_841.y);
  let x_845 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_845);
  let x_848 : f32 = u_xlat3.x;
  u_xlat3.x = (x_848 + -0.039999999f);
  let x_852 : f32 = u_xlat40;
  let x_854 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_852 * x_854) + 0.039999999f);
  let x_860 : f32 = u_xlat3.x;
  let x_861 : f32 = u_xlat37;
  u_xlat3.x = (x_860 * x_861);
  let x_864 : vec4<f32> = u_xlat3;
  let x_866 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_864.x, x_864.x, x_864.x) * x_866);
  let x_868 : vec3<f32> = u_xlat14;
  let x_869 : vec3<f32> = u_xlat2;
  let x_871 : vec3<f32> = u_xlat7;
  let x_872 : vec3<f32> = ((x_868 * x_869) + x_871);
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : f32 = u_xlat35;
  let x_877 : f32 = x_344.unity_LightData.z;
  u_xlat35 = (x_875 * x_877);
  let x_880 : vec4<f32> = u_xlat1;
  let x_883 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_880.x, x_880.z, x_880.w), vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : f32 = u_xlat36;
  u_xlat36 = clamp(x_886, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat35;
  let x_889 : f32 = u_xlat36;
  u_xlat35 = (x_888 * x_889);
  let x_891 : f32 = u_xlat35;
  let x_893 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_891, x_891, x_891) * x_893);
  let x_895 : vec3<f32> = u_xlat5;
  let x_897 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat7 = (x_895 + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec3<f32> = u_xlat7;
  let x_901 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_900, x_901);
  let x_903 : f32 = u_xlat35;
  u_xlat35 = max(x_903, 1.17549435e-37f);
  let x_906 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_906);
  let x_908 : f32 = u_xlat35;
  let x_910 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_908, x_908, x_908) * x_910);
  let x_912 : vec4<f32> = u_xlat1;
  let x_914 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_912.x, x_912.z, x_912.w), x_914);
  let x_916 : f32 = u_xlat35;
  u_xlat35 = clamp(x_916, 0.0f, 1.0f);
  let x_919 : vec4<f32> = x_66.x_MainLightPosition;
  let x_921 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_919.x, x_919.y, x_919.z), x_921);
  let x_923 : f32 = u_xlat36;
  u_xlat36 = clamp(x_923, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat35;
  let x_926 : f32 = u_xlat35;
  u_xlat35 = (x_925 * x_926);
  let x_928 : f32 = u_xlat35;
  let x_930 : f32 = u_xlat15.x;
  u_xlat35 = ((x_928 * x_930) + 1.000010014f);
  let x_934 : f32 = u_xlat36;
  let x_935 : f32 = u_xlat36;
  u_xlat36 = (x_934 * x_935);
  let x_937 : f32 = u_xlat35;
  let x_938 : f32 = u_xlat35;
  u_xlat35 = (x_937 * x_938);
  let x_940 : f32 = u_xlat36;
  u_xlat36 = max(x_940, 0.100000001f);
  let x_943 : f32 = u_xlat35;
  let x_944 : f32 = u_xlat36;
  u_xlat35 = (x_943 * x_944);
  let x_946 : f32 = u_xlat6;
  let x_947 : f32 = u_xlat35;
  u_xlat35 = (x_946 * x_947);
  let x_949 : f32 = u_xlat38;
  let x_950 : f32 = u_xlat35;
  u_xlat35 = (x_949 / x_950);
  let x_952 : f32 = u_xlat35;
  let x_956 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_952, x_952, x_952) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_956);
  let x_958 : vec3<f32> = u_xlat17;
  let x_959 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_958 * x_959);
  let x_963 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_965 : f32 = x_344.unity_LightData.y;
  u_xlat35 = min(x_963, x_965);
  let x_969 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_969));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_981 : u32 = u_xlatu_loop_1;
    let x_982 : u32 = u_xlatu35;
    if ((x_981 < x_982)) {
    } else {
      break;
    }
    let x_985 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_985 >> 2u);
    let x_989 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_989 & 3u));
    let x_992 : u32 = u_xlatu37;
    let x_995 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_992)];
    let x_1005 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1010 : vec4<u32> = indexable[x_1005];
    u_xlat37 = dot(x_995, bitcast<vec4<f32>>(x_1010));
    let x_1014 : f32 = u_xlat37;
    u_xlati37 = i32(x_1014);
    let x_1016 : vec3<f32> = vs_INTERP0;
    let x_1028 : i32 = u_xlati37;
    let x_1030 : vec4<f32> = x_1027.x_AdditionalLightsPosition[x_1028];
    let x_1033 : i32 = u_xlati37;
    let x_1035 : vec4<f32> = x_1027.x_AdditionalLightsPosition[x_1033];
    let x_1037 : vec3<f32> = ((-(x_1016) * vec3<f32>(x_1030.w, x_1030.w, x_1030.w)) + vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec4<f32> = u_xlat8;
    let x_1042 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : f32 = u_xlat40;
    u_xlat40 = max(x_1045, 6.10351562e-05f);
    let x_1049 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1049);
    let x_1052 : f32 = u_xlat41;
    let x_1054 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1058 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1058);
    let x_1060 : f32 = u_xlat40;
    let x_1061 : i32 = u_xlati37;
    let x_1063 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1061].x;
    u_xlat40 = (x_1060 * x_1063);
    let x_1065 : f32 = u_xlat40;
    let x_1067 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1065) * x_1067) + 1.0f);
    let x_1070 : f32 = u_xlat40;
    u_xlat40 = max(x_1070, 0.0f);
    let x_1072 : f32 = u_xlat40;
    let x_1073 : f32 = u_xlat40;
    u_xlat40 = (x_1072 * x_1073);
    let x_1075 : f32 = u_xlat40;
    let x_1076 : f32 = u_xlat42;
    u_xlat40 = (x_1075 * x_1076);
    let x_1078 : i32 = u_xlati37;
    let x_1080 : vec4<f32> = x_1027.x_AdditionalLightsSpotDir[x_1078];
    let x_1082 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), x_1082);
    let x_1084 : f32 = u_xlat42;
    let x_1085 : i32 = u_xlati37;
    let x_1087 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1085].z;
    let x_1089 : i32 = u_xlati37;
    let x_1091 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1089].w;
    u_xlat42 = ((x_1084 * x_1087) + x_1091);
    let x_1093 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1093, 0.0f, 1.0f);
    let x_1095 : f32 = u_xlat42;
    let x_1096 : f32 = u_xlat42;
    u_xlat42 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat40;
    let x_1099 : f32 = u_xlat42;
    u_xlat40 = (x_1098 * x_1099);
    let x_1102 : f32 = u_xlat26;
    let x_1104 : i32 = u_xlati37;
    let x_1106 : vec4<f32> = x_1027.x_AdditionalLightsColor[x_1104];
    u_xlat10 = (vec3<f32>(x_1102, x_1102, x_1102) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1109 : vec4<f32> = u_xlat1;
    let x_1111 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1109.x, x_1109.z, x_1109.w), x_1111);
    let x_1113 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1113, 0.0f, 1.0f);
    let x_1115 : f32 = u_xlat37;
    let x_1116 : f32 = u_xlat40;
    u_xlat37 = (x_1115 * x_1116);
    let x_1118 : f32 = u_xlat37;
    let x_1120 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1118, x_1118, x_1118) * x_1120);
    let x_1122 : vec4<f32> = u_xlat8;
    let x_1124 : f32 = u_xlat41;
    let x_1127 : vec3<f32> = u_xlat5;
    let x_1128 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124, x_1124, x_1124)) + x_1127);
    let x_1129 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
    let x_1131 : vec4<f32> = u_xlat8;
    let x_1133 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1131.x, x_1131.y, x_1131.z), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
    let x_1136 : f32 = u_xlat37;
    u_xlat37 = max(x_1136, 1.17549435e-37f);
    let x_1138 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1138);
    let x_1140 : f32 = u_xlat37;
    let x_1142 : vec4<f32> = u_xlat8;
    let x_1144 : vec3<f32> = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
    let x_1145 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
    let x_1147 : vec4<f32> = u_xlat1;
    let x_1149 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1147.x, x_1147.z, x_1147.w), vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
    let x_1152 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1152, 0.0f, 1.0f);
    let x_1154 : vec3<f32> = u_xlat9;
    let x_1155 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1154, vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
    let x_1158 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1158, 0.0f, 1.0f);
    let x_1160 : f32 = u_xlat37;
    let x_1161 : f32 = u_xlat37;
    u_xlat37 = (x_1160 * x_1161);
    let x_1163 : f32 = u_xlat37;
    let x_1165 : f32 = u_xlat15.x;
    u_xlat37 = ((x_1163 * x_1165) + 1.000010014f);
    let x_1168 : f32 = u_xlat40;
    let x_1169 : f32 = u_xlat40;
    u_xlat40 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat37;
    let x_1172 : f32 = u_xlat37;
    u_xlat37 = (x_1171 * x_1172);
    let x_1174 : f32 = u_xlat40;
    u_xlat40 = max(x_1174, 0.100000001f);
    let x_1176 : f32 = u_xlat37;
    let x_1177 : f32 = u_xlat40;
    u_xlat37 = (x_1176 * x_1177);
    let x_1179 : f32 = u_xlat6;
    let x_1180 : f32 = u_xlat37;
    u_xlat37 = (x_1179 * x_1180);
    let x_1182 : f32 = u_xlat38;
    let x_1183 : f32 = u_xlat37;
    u_xlat37 = (x_1182 / x_1183);
    let x_1185 : f32 = u_xlat37;
    let x_1188 : vec3<f32> = u_xlat2;
    let x_1189 : vec3<f32> = ((vec3<f32>(x_1185, x_1185, x_1185) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1188);
    let x_1190 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
    let x_1192 : vec4<f32> = u_xlat8;
    let x_1194 : vec3<f32> = u_xlat10;
    let x_1196 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1192.x, x_1192.y, x_1192.z) * x_1194) + x_1196);

    continuing {
      let x_1198 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1198 + bitcast<u32>(1i));
    }
  }
  let x_1200 : vec4<f32> = u_xlat3;
  let x_1202 : vec4<f32> = u_xlat4;
  let x_1205 : vec3<f32> = u_xlat17;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1206.z);
  let x_1209 : vec3<f32> = u_xlat7;
  let x_1210 : vec4<f32> = u_xlat1;
  let x_1212 : vec3<f32> = (x_1209 + vec3<f32>(x_1210.x, x_1210.z, x_1210.w));
  let x_1213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1212.z);
  let x_1217 : vec4<f32> = vs_INTERP4;
  let x_1219 : vec3<f32> = u_xlat0;
  let x_1221 : vec4<f32> = u_xlat1;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1217.w, x_1217.w, x_1217.w) * x_1219) + vec3<f32>(x_1221.x, x_1221.z, x_1221.w));
  let x_1224 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : bool = u_xlatb12;
  let x_1227 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1227, x_1226);
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

