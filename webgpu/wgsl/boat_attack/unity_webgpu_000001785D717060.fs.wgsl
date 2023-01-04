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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_283 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1045 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_404 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat23 = (x_87 + x_90);
  let x_92 : f32 = u_xlat23;
  u_xlat23 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat4;
  let x_119 : vec3<f32> = ((-(vec3<f32>(x_114.x, x_114.y, x_114.z)) * x_117) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_122.x, x_122.y, x_122.z) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec3<f32> = u_xlat2;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_127 * x_128);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_136.x, x_136.y, x_136.z, x_136.x));
  u_xlatb4 = vec3<bool>(x_139.x, x_139.y, x_139.z);
  let x_144 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_144);
  let x_149 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_157);
  let x_161 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_165);
  let x_168 : vec4<f32> = u_xlat3;
  let x_170 : vec3<f32> = u_xlat4;
  let x_171 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) * x_170);
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat5;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_174 * vec3<f32>(x_175.x, x_175.y, x_175.z)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_181.x, x_181.y, x_181.z)) + x_184);
  let x_186 : f32 = u_xlat23;
  let x_188 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_186, x_186, x_186) * x_188) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : f32 = u_xlat0.x;
  u_xlat0.x = (x_194 + -0.150000006f);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_199);
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_203) + 1.0f);
  let x_207 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_212);
  let x_218 : vec4<f32> = vs_INTERP3;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_218.x, x_218.y), x_221);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.w);
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : f32 = u_xlat3.x;
  let x_229 : f32 = u_xlat3.z;
  u_xlat3.x = (x_227 * x_229);
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat11 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_242 : vec2<f32> = u_xlat11;
  let x_243 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat23;
  u_xlat23 = min(x_245, 1.0f);
  let x_247 : f32 = u_xlat23;
  u_xlat23 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_250);
  let x_252 : f32 = u_xlat23;
  u_xlat23 = max(x_252, 1.00000002e-16f);
  let x_256 : f32 = u_xlat1.x;
  let x_258 : f32 = u_xlat0.x;
  u_xlat0.x = (x_256 + x_258);
  let x_262 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_262, 0.0f, 1.0f);
  let x_266 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_266, 0.0f);
  let x_270 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_270, 0.850000024f);
  let x_277 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_277);
  let x_285 : f32 = x_283.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_285 >= 0.0f);
  let x_290 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat12.z;
  let x_300 : f32 = u_xlat12.x;
  u_xlat12.x = (x_298 * x_300);
  let x_305 : vec3<f32> = vs_INTERP1;
  let x_307 : vec4<f32> = vs_INTERP2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.z, x_305.x, x_305.y) * vec3<f32>(x_307.y, x_307.z, x_307.x));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = vs_INTERP1;
  let x_314 : vec4<f32> = vs_INTERP2;
  let x_317 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat12;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat11;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat11;
  let x_339 : vec4<f32> = vs_INTERP2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat23;
  let x_349 : vec3<f32> = vs_INTERP1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_347, x_347, x_347) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat12;
  let x_355 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_359);
  let x_362 : vec2<f32> = u_xlat11;
  let x_364 : vec3<f32> = u_xlat12;
  let x_365 : vec3<f32> = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_371 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_371 == 0.0f);
  let x_374 : vec3<f32> = vs_INTERP0;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_374) + x_379);
  let x_382 : vec3<f32> = u_xlat12;
  let x_383 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_382, x_383);
  let x_385 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_385);
  let x_387 : f32 = u_xlat22;
  let x_389 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_387, x_387, x_387) * x_389);
  let x_394 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_394;
  let x_397 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_397;
  let x_401 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_401;
  let x_403 : bool = u_xlatb11;
  if (x_403) {
    let x_407 : vec3<f32> = u_xlat12;
    x_404 = x_407;
  } else {
    let x_409 : vec3<f32> = u_xlat4;
    x_404 = x_409;
  }
  let x_410 : vec3<f32> = x_404;
  u_xlat12 = x_410;
  let x_412 : f32 = vs_INTERP0.y;
  let x_414 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_412 * x_414);
  let x_418 : f32 = x_44.unity_MatrixV[0i].z;
  let x_420 : f32 = vs_INTERP0.x;
  let x_423 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_418 * x_420) + x_423);
  let x_427 : f32 = x_44.unity_MatrixV[2i].z;
  let x_429 : f32 = vs_INTERP0.z;
  let x_432 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_427 * x_429) + x_432);
  let x_436 : f32 = u_xlat11.x;
  let x_438 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_436 + x_438);
  let x_442 : f32 = u_xlat11.x;
  let x_446 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_442) + -(x_446));
  let x_451 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_451, 0.0f);
  let x_455 : f32 = u_xlat11.x;
  let x_458 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_455 * x_458);
  u_xlat3.w = 1.0f;
  let x_464 : vec4<f32> = x_283.unity_SHAr;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_464, x_465);
  let x_470 : vec4<f32> = x_283.unity_SHAg;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_470, x_471);
  let x_476 : vec4<f32> = x_283.unity_SHAb;
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_476, x_477);
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_480.y, x_480.z, x_480.z, x_480.x) * vec4<f32>(x_482.x, x_482.y, x_482.z, x_482.z));
  let x_488 : vec4<f32> = x_283.unity_SHBr;
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_488, x_489);
  let x_494 : vec4<f32> = x_283.unity_SHBg;
  let x_495 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_494, x_495);
  let x_500 : vec4<f32> = x_283.unity_SHBb;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_500, x_501);
  let x_505 : f32 = u_xlat3.y;
  let x_507 : f32 = u_xlat3.y;
  u_xlat22 = (x_505 * x_507);
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat3.x;
  let x_514 : f32 = u_xlat22;
  u_xlat22 = ((x_510 * x_512) + -(x_514));
  let x_519 : vec4<f32> = x_283.unity_SHC;
  let x_521 : f32 = u_xlat22;
  let x_524 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521, x_521, x_521)) + x_524);
  let x_526 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec3<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_528 + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_532, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_538 : vec2<f32> = vec2<f32>(x_537.x, x_537.y);
  let x_542 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_538.x, x_538.y));
  let x_543 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat5;
  let x_547 : vec4<f32> = hlslcc_FragCoord;
  let x_549 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_547.x, x_547.y));
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_553 : f32 = u_xlat5.y;
  let x_556 : f32 = x_44.x_ScaleBiasRt.x;
  let x_559 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_553 * x_556) + x_559);
  let x_561 : f32 = u_xlat22;
  u_xlat5.z = (-(x_561) + 1.0f);
  let x_566 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_566) * 0.959999979f) + 0.959999979f);
  let x_572 : f32 = u_xlat22;
  let x_575 : f32 = u_xlat1.x;
  u_xlat35 = (-(x_572) + x_575);
  let x_577 : f32 = u_xlat22;
  let x_579 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_581 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_593 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_593) + 1.0f);
  let x_598 : f32 = u_xlat0.x;
  let x_600 : f32 = u_xlat0.x;
  u_xlat22 = (x_598 * x_600);
  let x_602 : f32 = u_xlat22;
  let x_603 : f32 = u_xlat22;
  u_xlat1.x = (x_602 * x_603);
  let x_606 : f32 = u_xlat35;
  u_xlat35 = (x_606 + 1.0f);
  let x_608 : f32 = u_xlat35;
  u_xlat35 = min(x_608, 1.0f);
  let x_611 : f32 = u_xlat22;
  u_xlat36 = ((x_611 * 4.0f) + 2.0f);
  let x_621 : vec4<f32> = u_xlat5;
  let x_624 : f32 = x_44.x_GlobalMipBias.x;
  let x_625 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_621.x, x_621.z), x_624);
  u_xlat37 = x_625.x;
  let x_627 : f32 = u_xlat37;
  u_xlat5.x = (x_627 + -1.0f);
  let x_631 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_633 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_631 * x_633) + 1.0f);
  let x_639 : f32 = u_xlat0.w;
  let x_640 : f32 = u_xlat37;
  u_xlat33 = min(x_639, x_640);
  let x_644 : vec4<f32> = vs_INTERP8;
  let x_645 : vec2<f32> = vec2<f32>(x_644.x, x_644.y);
  let x_647 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_645.x, x_645.y, x_647);
  let x_659 : vec3<f32> = txVec0;
  let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_659.xy, x_659.z);
  u_xlat37 = x_661;
  let x_669 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_669) + 1.0f);
  let x_673 : f32 = u_xlat37;
  let x_675 : f32 = x_667.x_MainLightShadowParams.x;
  let x_678 : f32 = u_xlat16.x;
  u_xlat37 = ((x_673 * x_675) + x_678);
  let x_682 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_682);
  let x_686 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_686 >= 1.0f);
  let x_688 : bool = u_xlatb27;
  let x_689 : bool = u_xlatb16;
  u_xlatb16 = (x_688 | x_689);
  let x_691 : bool = u_xlatb16;
  let x_692 : f32 = u_xlat37;
  u_xlat37 = select(x_692, 1.0f, x_691);
  let x_694 : vec3<f32> = vs_INTERP0;
  let x_696 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_694 + -(x_696));
  let x_699 : vec3<f32> = u_xlat16;
  let x_700 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_699, x_700);
  let x_704 : f32 = u_xlat16.x;
  let x_706 : f32 = x_667.x_MainLightShadowParams.z;
  let x_709 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_704 * x_706) + x_709);
  let x_713 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_713, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat37;
  u_xlat27 = (-(x_717) + 1.0f);
  let x_721 : f32 = u_xlat16.x;
  let x_722 : f32 = u_xlat27;
  let x_724 : f32 = u_xlat37;
  u_xlat37 = ((x_721 * x_722) + x_724);
  let x_726 : vec4<f32> = u_xlat5;
  let x_729 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_726.x, x_726.x, x_726.x) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_733 : vec3<f32> = u_xlat12;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(-(x_733), vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : f32 = u_xlat39;
  let x_739 : f32 = u_xlat39;
  u_xlat39 = (x_738 + x_739);
  let x_742 : vec4<f32> = u_xlat3;
  let x_744 : f32 = u_xlat39;
  let x_748 : vec3<f32> = u_xlat12;
  let x_750 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.y, x_742.z) * -(vec3<f32>(x_744, x_744, x_744))) + -(x_748));
  let x_751 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), x_755);
  let x_757 : f32 = u_xlat39;
  u_xlat39 = clamp(x_757, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat39;
  u_xlat39 = (-(x_759) + 1.0f);
  let x_762 : f32 = u_xlat39;
  let x_763 : f32 = u_xlat39;
  u_xlat39 = (x_762 * x_763);
  let x_765 : f32 = u_xlat39;
  let x_766 : f32 = u_xlat39;
  u_xlat39 = (x_765 * x_766);
  let x_770 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_770) * 0.699999988f) + 1.700000048f);
  let x_777 : f32 = u_xlat0.x;
  let x_778 : f32 = u_xlat40;
  u_xlat0.x = (x_777 * x_778);
  let x_782 : f32 = u_xlat0.x;
  u_xlat0.x = (x_782 * 6.0f);
  let x_794 : vec4<f32> = u_xlat7;
  let x_797 : f32 = u_xlat0.x;
  let x_798 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_794.x, x_794.y, x_794.z), x_797);
  u_xlat7 = x_798;
  let x_800 : f32 = u_xlat7.w;
  u_xlat0.x = (x_800 + -1.0f);
  let x_804 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_806 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_804 * x_806) + 1.0f);
  let x_811 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_811, 0.0f);
  let x_815 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_815);
  let x_819 : f32 = u_xlat0.x;
  let x_821 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_819 * x_821);
  let x_825 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_825);
  let x_829 : f32 = u_xlat0.x;
  let x_831 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_829 * x_831);
  let x_834 : vec4<f32> = u_xlat7;
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(x_836.x, x_836.x, x_836.x));
  let x_839 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : f32 = u_xlat22;
  let x_843 : f32 = u_xlat22;
  let x_847 : vec2<f32> = ((vec2<f32>(x_841, x_841) * vec2<f32>(x_843, x_843)) + vec2<f32>(-1.0f, 1.0f));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_848.y, x_847.y, x_848.w);
  let x_851 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_851);
  let x_854 : vec3<f32> = u_xlat2;
  let x_856 : f32 = u_xlat35;
  u_xlat8 = (-(x_854) + vec3<f32>(x_856, x_856, x_856));
  let x_859 : f32 = u_xlat39;
  let x_861 : vec3<f32> = u_xlat8;
  let x_863 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_859, x_859, x_859) * x_861) + x_863);
  let x_865 : f32 = u_xlat22;
  let x_867 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_865, x_865, x_865) * x_867);
  let x_869 : vec4<f32> = u_xlat7;
  let x_871 : vec3<f32> = u_xlat8;
  let x_872 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * x_871);
  let x_873 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec3<f32> = u_xlat4;
  let x_876 : vec3<f32> = u_xlat6;
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_875 * x_876) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : f32 = u_xlat37;
  let x_884 : f32 = x_283.unity_LightData.z;
  u_xlat22 = (x_881 * x_884);
  let x_886 : vec4<f32> = u_xlat3;
  let x_889 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat35;
  u_xlat35 = clamp(x_892, 0.0f, 1.0f);
  let x_894 : f32 = u_xlat22;
  let x_895 : f32 = u_xlat35;
  u_xlat22 = (x_894 * x_895);
  let x_897 : f32 = u_xlat22;
  let x_899 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_897, x_897, x_897) * x_899);
  let x_901 : vec3<f32> = u_xlat12;
  let x_903 : vec4<f32> = x_44.x_MainLightPosition;
  let x_905 : vec3<f32> = (x_901 + vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat7;
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : f32 = u_xlat22;
  u_xlat22 = max(x_913, 1.17549435e-37f);
  let x_916 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_916);
  let x_918 : f32 = u_xlat22;
  let x_920 : vec4<f32> = u_xlat7;
  let x_922 : vec3<f32> = (vec3<f32>(x_918, x_918, x_918) * vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat3;
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : f32 = u_xlat22;
  u_xlat22 = clamp(x_930, 0.0f, 1.0f);
  let x_933 : vec4<f32> = x_44.x_MainLightPosition;
  let x_935 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : f32 = u_xlat35;
  u_xlat35 = clamp(x_938, 0.0f, 1.0f);
  let x_940 : f32 = u_xlat22;
  let x_941 : f32 = u_xlat22;
  u_xlat22 = (x_940 * x_941);
  let x_943 : f32 = u_xlat22;
  let x_945 : f32 = u_xlat0.x;
  u_xlat22 = ((x_943 * x_945) + 1.000010014f);
  let x_949 : f32 = u_xlat35;
  let x_950 : f32 = u_xlat35;
  u_xlat35 = (x_949 * x_950);
  let x_952 : f32 = u_xlat22;
  let x_953 : f32 = u_xlat22;
  u_xlat22 = (x_952 * x_953);
  let x_955 : f32 = u_xlat35;
  u_xlat35 = max(x_955, 0.100000001f);
  let x_958 : f32 = u_xlat22;
  let x_959 : f32 = u_xlat35;
  u_xlat22 = (x_958 * x_959);
  let x_961 : f32 = u_xlat36;
  let x_962 : f32 = u_xlat22;
  u_xlat22 = (x_961 * x_962);
  let x_965 : f32 = u_xlat1.x;
  let x_966 : f32 = u_xlat22;
  u_xlat22 = (x_965 / x_966);
  let x_968 : vec3<f32> = u_xlat2;
  let x_969 : f32 = u_xlat22;
  let x_972 : vec3<f32> = u_xlat6;
  let x_973 : vec3<f32> = ((x_968 * vec3<f32>(x_969, x_969, x_969)) + x_972);
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec3<f32> = u_xlat16;
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_976 * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_981 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_983 : f32 = x_283.unity_LightData.y;
  u_xlat22 = min(x_981, x_983);
  let x_987 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_987));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_999 : u32 = u_xlatu_loop_1;
    let x_1000 : u32 = u_xlatu22;
    if ((x_999 < x_1000)) {
    } else {
      break;
    }
    let x_1003 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1003 >> 2u);
    let x_1007 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1007 & 3u));
    let x_1010 : u32 = u_xlatu37;
    let x_1013 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_1010)];
    let x_1023 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1028 : vec4<u32> = indexable[x_1023];
    u_xlat37 = dot(x_1013, bitcast<vec4<f32>>(x_1028));
    let x_1032 : f32 = u_xlat37;
    u_xlati37 = i32(x_1032);
    let x_1034 : vec3<f32> = vs_INTERP0;
    let x_1046 : i32 = u_xlati37;
    let x_1048 : vec4<f32> = x_1045.x_AdditionalLightsPosition[x_1046];
    let x_1051 : i32 = u_xlati37;
    let x_1053 : vec4<f32> = x_1045.x_AdditionalLightsPosition[x_1051];
    u_xlat8 = ((-(x_1034) * vec3<f32>(x_1048.w, x_1048.w, x_1048.w)) + vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
    let x_1056 : vec3<f32> = u_xlat8;
    let x_1057 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1056, x_1057);
    let x_1059 : f32 = u_xlat39;
    u_xlat39 = max(x_1059, 6.10351562e-05f);
    let x_1062 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1062);
    let x_1065 : f32 = u_xlat40;
    let x_1067 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1065, x_1065, x_1065) * x_1067);
    let x_1070 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1070);
    let x_1072 : f32 = u_xlat39;
    let x_1073 : i32 = u_xlati37;
    let x_1075 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1073].x;
    u_xlat39 = (x_1072 * x_1075);
    let x_1077 : f32 = u_xlat39;
    let x_1079 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1077) * x_1079) + 1.0f);
    let x_1082 : f32 = u_xlat39;
    u_xlat39 = max(x_1082, 0.0f);
    let x_1084 : f32 = u_xlat39;
    let x_1085 : f32 = u_xlat39;
    u_xlat39 = (x_1084 * x_1085);
    let x_1087 : f32 = u_xlat39;
    let x_1088 : f32 = u_xlat41;
    u_xlat39 = (x_1087 * x_1088);
    let x_1090 : i32 = u_xlati37;
    let x_1092 : vec4<f32> = x_1045.x_AdditionalLightsSpotDir[x_1090];
    let x_1094 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1092.x, x_1092.y, x_1092.z), x_1094);
    let x_1096 : f32 = u_xlat41;
    let x_1097 : i32 = u_xlati37;
    let x_1099 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1097].z;
    let x_1101 : i32 = u_xlati37;
    let x_1103 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1101].w;
    u_xlat41 = ((x_1096 * x_1099) + x_1103);
    let x_1105 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1105, 0.0f, 1.0f);
    let x_1107 : f32 = u_xlat41;
    let x_1108 : f32 = u_xlat41;
    u_xlat41 = (x_1107 * x_1108);
    let x_1110 : f32 = u_xlat39;
    let x_1111 : f32 = u_xlat41;
    u_xlat39 = (x_1110 * x_1111);
    let x_1114 : vec4<f32> = u_xlat5;
    let x_1116 : i32 = u_xlati37;
    let x_1118 : vec4<f32> = x_1045.x_AdditionalLightsColor[x_1116];
    u_xlat10 = (vec3<f32>(x_1114.x, x_1114.x, x_1114.x) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
    let x_1121 : vec4<f32> = u_xlat3;
    let x_1123 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), x_1123);
    let x_1125 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1125, 0.0f, 1.0f);
    let x_1127 : f32 = u_xlat37;
    let x_1128 : f32 = u_xlat39;
    u_xlat37 = (x_1127 * x_1128);
    let x_1130 : f32 = u_xlat37;
    let x_1132 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1130, x_1130, x_1130) * x_1132);
    let x_1134 : vec3<f32> = u_xlat8;
    let x_1135 : f32 = u_xlat40;
    let x_1138 : vec3<f32> = u_xlat12;
    u_xlat8 = ((x_1134 * vec3<f32>(x_1135, x_1135, x_1135)) + x_1138);
    let x_1140 : vec3<f32> = u_xlat8;
    let x_1141 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1140, x_1141);
    let x_1143 : f32 = u_xlat37;
    u_xlat37 = max(x_1143, 1.17549435e-37f);
    let x_1145 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1145);
    let x_1147 : f32 = u_xlat37;
    let x_1149 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
    let x_1151 : vec4<f32> = u_xlat3;
    let x_1153 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), x_1153);
    let x_1155 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1155, 0.0f, 1.0f);
    let x_1157 : vec3<f32> = u_xlat9;
    let x_1158 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1157, x_1158);
    let x_1160 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1160, 0.0f, 1.0f);
    let x_1162 : f32 = u_xlat37;
    let x_1163 : f32 = u_xlat37;
    u_xlat37 = (x_1162 * x_1163);
    let x_1165 : f32 = u_xlat37;
    let x_1167 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1165 * x_1167) + 1.000010014f);
    let x_1170 : f32 = u_xlat39;
    let x_1171 : f32 = u_xlat39;
    u_xlat39 = (x_1170 * x_1171);
    let x_1173 : f32 = u_xlat37;
    let x_1174 : f32 = u_xlat37;
    u_xlat37 = (x_1173 * x_1174);
    let x_1176 : f32 = u_xlat39;
    u_xlat39 = max(x_1176, 0.100000001f);
    let x_1178 : f32 = u_xlat37;
    let x_1179 : f32 = u_xlat39;
    u_xlat37 = (x_1178 * x_1179);
    let x_1181 : f32 = u_xlat36;
    let x_1182 : f32 = u_xlat37;
    u_xlat37 = (x_1181 * x_1182);
    let x_1185 : f32 = u_xlat1.x;
    let x_1186 : f32 = u_xlat37;
    u_xlat37 = (x_1185 / x_1186);
    let x_1188 : vec3<f32> = u_xlat2;
    let x_1189 : f32 = u_xlat37;
    let x_1192 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1188 * vec3<f32>(x_1189, x_1189, x_1189)) + x_1192);
    let x_1194 : vec3<f32> = u_xlat8;
    let x_1195 : vec3<f32> = u_xlat10;
    let x_1197 : vec4<f32> = u_xlat7;
    let x_1199 : vec3<f32> = ((x_1194 * x_1195) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);

    continuing {
      let x_1202 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1202 + bitcast<u32>(1i));
    }
  }
  let x_1204 : vec3<f32> = u_xlat4;
  let x_1205 : f32 = u_xlat33;
  let x_1208 : vec3<f32> = u_xlat16;
  let x_1209 : vec3<f32> = ((x_1204 * vec3<f32>(x_1205, x_1205, x_1205)) + x_1208);
  let x_1210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1209.z);
  let x_1212 : vec4<f32> = u_xlat7;
  let x_1214 : vec4<f32> = u_xlat0;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) + vec3<f32>(x_1214.x, x_1214.z, x_1214.w));
  let x_1217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1216.x, x_1217.y, x_1216.y, x_1216.z);
  let x_1220 : f32 = u_xlat11.x;
  let x_1222 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1220 * -(x_1222));
  let x_1227 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1227);
  let x_1230 : vec4<f32> = u_xlat0;
  let x_1234 : vec4<f32> = x_44.unity_FogColor;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.z, x_1230.w) + -(vec3<f32>(x_1234.x, x_1234.y, x_1234.z)));
  let x_1238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1237.x, x_1238.y, x_1237.y, x_1237.z);
  let x_1242 : vec2<f32> = u_xlat11;
  let x_1244 : vec4<f32> = u_xlat0;
  let x_1248 : vec4<f32> = x_44.unity_FogColor;
  let x_1250 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.x, x_1242.x) * vec3<f32>(x_1244.x, x_1244.z, x_1244.w)) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

