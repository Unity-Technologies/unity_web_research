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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_619 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1021 : AdditionalLights;

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
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_396 : f32;
  var x_409 : f32;
  var x_420 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat40 : f32;
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
  let x_175 : vec3<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_174 * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_180.x, x_180.y, x_180.z)) + x_183);
  let x_185 : f32 = u_xlat23;
  let x_187 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_185, x_185, x_185) * x_187) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = (x_193 + -0.150000006f);
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_202) + 1.0f);
  let x_206 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_211);
  let x_217 : vec4<f32> = vs_INTERP3;
  let x_220 : f32 = x_44.x_GlobalMipBias.x;
  let x_221 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_217.x, x_217.y), x_220);
  let x_222 : vec3<f32> = vec3<f32>(x_221.x, x_221.y, x_221.w);
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat3.x;
  let x_228 : f32 = u_xlat3.z;
  u_xlat3.x = (x_226 * x_228);
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat11 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_241 : vec2<f32> = u_xlat11;
  let x_242 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat23;
  u_xlat23 = min(x_244, 1.0f);
  let x_246 : f32 = u_xlat23;
  u_xlat23 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_249);
  let x_251 : f32 = u_xlat23;
  u_xlat23 = max(x_251, 1.00000002e-16f);
  let x_255 : f32 = u_xlat1.x;
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_261, 0.0f, 1.0f);
  let x_265 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_265, 0.0f);
  let x_269 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_269, 0.850000024f);
  let x_276 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_276);
  let x_284 : f32 = x_282.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_284 >= 0.0f);
  let x_289 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_293);
  let x_297 : f32 = u_xlat12.z;
  let x_299 : f32 = u_xlat12.x;
  u_xlat12.x = (x_297 * x_299);
  let x_304 : vec3<f32> = vs_INTERP1;
  let x_306 : vec4<f32> = vs_INTERP2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat12;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec2<f32> = u_xlat11;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat11;
  let x_338 : vec4<f32> = vs_INTERP2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat23;
  let x_348 : vec3<f32> = vs_INTERP1;
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_346, x_346, x_346) * x_348) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat12;
  let x_354 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_353, x_354);
  let x_358 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_358);
  let x_361 : vec2<f32> = u_xlat11;
  let x_363 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_361.x, x_361.x, x_361.x) * x_363);
  let x_368 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_368 == 0.0f);
  let x_371 : vec3<f32> = vs_INTERP0;
  let x_376 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_377 : vec3<f32> = (-(x_371) + x_376);
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_386);
  let x_388 : f32 = u_xlat22;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : bool = u_xlatb11;
  if (x_395) {
    let x_400 : f32 = u_xlat3.x;
    x_396 = x_400;
  } else {
    let x_405 : f32 = x_44.unity_MatrixV[0i].z;
    x_396 = x_405;
  }
  let x_406 : f32 = x_396;
  u_xlat4.x = x_406;
  let x_408 : bool = u_xlatb11;
  if (x_408) {
    let x_413 : f32 = u_xlat3.y;
    x_409 = x_413;
  } else {
    let x_416 : f32 = x_44.unity_MatrixV[1i].z;
    x_409 = x_416;
  }
  let x_417 : f32 = x_409;
  u_xlat4.y = x_417;
  let x_419 : bool = u_xlatb11;
  if (x_419) {
    let x_424 : f32 = u_xlat3.z;
    x_420 = x_424;
  } else {
    let x_428 : f32 = x_44.unity_MatrixV[2i].z;
    x_420 = x_428;
  }
  let x_429 : f32 = x_420;
  u_xlat4.z = x_429;
  let x_438 : vec2<f32> = vs_INTERP4;
  let x_440 : f32 = x_44.x_GlobalMipBias.x;
  let x_441 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_438, x_440);
  u_xlat3 = x_441;
  let x_446 : vec2<f32> = vs_INTERP4;
  let x_448 : f32 = x_44.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_446, x_448);
  u_xlat5 = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : vec4<f32> = u_xlat3;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec3<f32> = u_xlat12;
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat11.x = dot(x_458, vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_464 : f32 = u_xlat11.x;
  u_xlat11.x = (x_464 + 0.5f);
  let x_467 : vec2<f32> = u_xlat11;
  let x_469 : vec3<f32> = u_xlat5;
  let x_470 : vec3<f32> = (vec3<f32>(x_467.x, x_467.x, x_467.x) * x_469);
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = u_xlat3.w;
  u_xlat11.x = max(x_474, 0.0001f);
  let x_478 : vec4<f32> = u_xlat3;
  let x_480 : vec2<f32> = u_xlat11;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) / vec3<f32>(x_480.x, x_480.x, x_480.x));
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_487 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_488 : vec2<f32> = vec2<f32>(x_487.x, x_487.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_488.x, x_488.y));
  let x_493 : vec2<f32> = u_xlat11;
  let x_494 : vec4<f32> = hlslcc_FragCoord;
  let x_496 : vec2<f32> = (x_493 * vec2<f32>(x_494.x, x_494.y));
  let x_497 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_496.x, x_496.y, x_497.z);
  let x_500 : f32 = u_xlat5.y;
  let x_503 : f32 = x_44.x_ScaleBiasRt.x;
  let x_506 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_500 * x_503) + x_506);
  let x_510 : f32 = u_xlat11.x;
  u_xlat5.z = (-(x_510) + 1.0f);
  let x_515 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_515) * 0.959999979f) + 0.959999979f);
  let x_522 : f32 = u_xlat11.x;
  let x_525 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_522) + x_525);
  let x_528 : vec2<f32> = u_xlat11;
  let x_530 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_528.x, x_528.x, x_528.x) * x_530);
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_532 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_536 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_536.x, x_536.x, x_536.x) * x_538) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_544 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_544) + 1.0f);
  let x_549 : f32 = u_xlat0.x;
  let x_551 : f32 = u_xlat0.x;
  u_xlat11.x = (x_549 * x_551);
  let x_555 : f32 = u_xlat11.x;
  let x_557 : f32 = u_xlat11.x;
  u_xlat1.x = (x_555 * x_557);
  let x_560 : f32 = u_xlat22;
  u_xlat22 = (x_560 + 1.0f);
  let x_562 : f32 = u_xlat22;
  u_xlat22 = min(x_562, 1.0f);
  let x_566 : f32 = u_xlat11.x;
  u_xlat35 = ((x_566 * 4.0f) + 2.0f);
  let x_576 : vec3<f32> = u_xlat5;
  let x_579 : f32 = x_44.x_GlobalMipBias.x;
  let x_580 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_576.x, x_576.z), x_579);
  u_xlat36 = x_580.x;
  let x_583 : f32 = u_xlat36;
  u_xlat37 = (x_583 + -1.0f);
  let x_586 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_587 : f32 = u_xlat37;
  u_xlat37 = ((x_586 * x_587) + 1.0f);
  let x_592 : f32 = u_xlat0.w;
  let x_593 : f32 = u_xlat36;
  u_xlat33 = min(x_592, x_593);
  let x_597 : vec4<f32> = vs_INTERP8;
  let x_598 : vec2<f32> = vec2<f32>(x_597.x, x_597.y);
  let x_600 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_598.x, x_598.y, x_600);
  let x_612 : vec3<f32> = txVec0;
  let x_614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_612.xy, x_612.z);
  u_xlat36 = x_614;
  let x_621 : f32 = x_619.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_621) + 1.0f);
  let x_625 : f32 = u_xlat36;
  let x_627 : f32 = x_619.x_MainLightShadowParams.x;
  let x_630 : f32 = u_xlat5.x;
  u_xlat36 = ((x_625 * x_627) + x_630);
  let x_634 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_634);
  let x_638 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_638 >= 1.0f);
  let x_640 : bool = u_xlatb16;
  let x_641 : bool = u_xlatb5;
  u_xlatb5 = (x_640 | x_641);
  let x_643 : bool = u_xlatb5;
  let x_644 : f32 = u_xlat36;
  u_xlat36 = select(x_644, 1.0f, x_643);
  let x_646 : vec3<f32> = vs_INTERP0;
  let x_648 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_646 + -(x_648));
  let x_651 : vec3<f32> = u_xlat5;
  let x_652 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_651, x_652);
  let x_656 : f32 = u_xlat5.x;
  let x_658 : f32 = x_619.x_MainLightShadowParams.z;
  let x_661 : f32 = x_619.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_656 * x_658) + x_661);
  let x_665 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_665, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat36;
  u_xlat16 = (-(x_669) + 1.0f);
  let x_673 : f32 = u_xlat5.x;
  let x_674 : f32 = u_xlat16;
  let x_676 : f32 = u_xlat36;
  u_xlat36 = ((x_673 * x_674) + x_676);
  let x_678 : f32 = u_xlat37;
  let x_681 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_685 : vec3<f32> = u_xlat4;
  let x_687 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_685), x_687);
  let x_689 : f32 = u_xlat38;
  let x_690 : f32 = u_xlat38;
  u_xlat38 = (x_689 + x_690);
  let x_693 : vec3<f32> = u_xlat12;
  let x_694 : f32 = u_xlat38;
  let x_698 : vec3<f32> = u_xlat4;
  let x_700 : vec3<f32> = ((x_693 * -(vec3<f32>(x_694, x_694, x_694))) + -(x_698));
  let x_701 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = u_xlat12;
  let x_704 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_703, x_704);
  let x_706 : f32 = u_xlat38;
  u_xlat38 = clamp(x_706, 0.0f, 1.0f);
  let x_708 : f32 = u_xlat38;
  u_xlat38 = (-(x_708) + 1.0f);
  let x_711 : f32 = u_xlat38;
  let x_712 : f32 = u_xlat38;
  u_xlat38 = (x_711 * x_712);
  let x_714 : f32 = u_xlat38;
  let x_715 : f32 = u_xlat38;
  u_xlat38 = (x_714 * x_715);
  let x_719 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_719) * 0.699999988f) + 1.700000048f);
  let x_726 : f32 = u_xlat0.x;
  let x_727 : f32 = u_xlat39;
  u_xlat0.x = (x_726 * x_727);
  let x_731 : f32 = u_xlat0.x;
  u_xlat0.x = (x_731 * 6.0f);
  let x_743 : vec4<f32> = u_xlat7;
  let x_746 : f32 = u_xlat0.x;
  let x_747 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_743.x, x_743.y, x_743.z), x_746);
  u_xlat7 = x_747;
  let x_749 : f32 = u_xlat7.w;
  u_xlat0.x = (x_749 + -1.0f);
  let x_753 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_755 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_753 * x_755) + 1.0f);
  let x_760 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_760, 0.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_764);
  let x_768 : f32 = u_xlat0.x;
  let x_770 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_768 * x_770);
  let x_774 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_774);
  let x_778 : f32 = u_xlat0.x;
  let x_780 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_778 * x_780);
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785.x, x_785.x, x_785.x));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec2<f32> = u_xlat11;
  let x_792 : vec2<f32> = u_xlat11;
  let x_796 : vec2<f32> = ((vec2<f32>(x_790.x, x_790.x) * vec2<f32>(x_792.x, x_792.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
  let x_800 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_800);
  let x_804 : vec3<f32> = u_xlat2;
  let x_806 : f32 = u_xlat22;
  u_xlat8 = (-(x_804) + vec3<f32>(x_806, x_806, x_806));
  let x_809 : f32 = u_xlat38;
  let x_811 : vec3<f32> = u_xlat8;
  let x_813 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_809, x_809, x_809) * x_811) + x_813);
  let x_815 : vec2<f32> = u_xlat11;
  let x_817 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_815.x, x_815.x, x_815.x) * x_817);
  let x_819 : vec4<f32> = u_xlat7;
  let x_821 : vec3<f32> = u_xlat8;
  let x_822 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) * x_821);
  let x_823 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat3;
  let x_827 : vec3<f32> = u_xlat6;
  let x_829 : vec4<f32> = u_xlat7;
  let x_831 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.z) * x_827) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : f32 = u_xlat36;
  let x_837 : f32 = x_282.unity_LightData.z;
  u_xlat11.x = (x_834 * x_837);
  let x_840 : vec3<f32> = u_xlat12;
  let x_842 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(x_840, vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : f32 = u_xlat22;
  u_xlat22 = clamp(x_845, 0.0f, 1.0f);
  let x_847 : f32 = u_xlat22;
  let x_849 : f32 = u_xlat11.x;
  u_xlat11.x = (x_847 * x_849);
  let x_852 : vec2<f32> = u_xlat11;
  let x_854 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_852.x, x_852.x, x_852.x) * x_854);
  let x_856 : vec3<f32> = u_xlat4;
  let x_858 : vec4<f32> = x_44.x_MainLightPosition;
  let x_860 : vec3<f32> = (x_856 + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat7;
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_870 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_870, 1.17549435e-37f);
  let x_875 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_875);
  let x_878 : vec2<f32> = u_xlat11;
  let x_880 : vec4<f32> = u_xlat7;
  let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.x, x_878.x) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec3<f32> = u_xlat12;
  let x_886 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(x_885, vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_891 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_891, 0.0f, 1.0f);
  let x_895 : vec4<f32> = x_44.x_MainLightPosition;
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat11.y = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_902 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_902, 0.0f, 1.0f);
  let x_905 : vec2<f32> = u_xlat11;
  let x_906 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_905 * x_906);
  let x_909 : f32 = u_xlat11.x;
  let x_911 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_909 * x_911) + 1.000010014f);
  let x_917 : f32 = u_xlat11.x;
  let x_919 : f32 = u_xlat11.x;
  u_xlat11.x = (x_917 * x_919);
  let x_923 : f32 = u_xlat11.y;
  u_xlat22 = max(x_923, 0.100000001f);
  let x_926 : f32 = u_xlat22;
  let x_928 : f32 = u_xlat11.x;
  u_xlat11.x = (x_926 * x_928);
  let x_931 : f32 = u_xlat35;
  let x_933 : f32 = u_xlat11.x;
  u_xlat11.x = (x_931 * x_933);
  let x_937 : f32 = u_xlat1.x;
  let x_939 : f32 = u_xlat11.x;
  u_xlat11.x = (x_937 / x_939);
  let x_942 : vec3<f32> = u_xlat2;
  let x_943 : vec2<f32> = u_xlat11;
  let x_946 : vec3<f32> = u_xlat6;
  let x_947 : vec3<f32> = ((x_942 * vec3<f32>(x_943.x, x_943.x, x_943.x)) + x_946);
  let x_948 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec3<f32> = u_xlat5;
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_950 * vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_955 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_957 : f32 = x_282.unity_LightData.y;
  u_xlat11.x = min(x_955, x_957);
  let x_963 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_963));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_975 : u32 = u_xlatu_loop_1;
    let x_976 : u32 = u_xlatu11;
    if ((x_975 < x_976)) {
    } else {
      break;
    }
    let x_979 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_979 >> 2u);
    let x_983 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_983 & 3u));
    let x_986 : u32 = u_xlatu36;
    let x_989 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_986)];
    let x_999 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1004 : vec4<u32> = indexable[x_999];
    u_xlat36 = dot(x_989, bitcast<vec4<f32>>(x_1004));
    let x_1008 : f32 = u_xlat36;
    u_xlati36 = i32(x_1008);
    let x_1010 : vec3<f32> = vs_INTERP0;
    let x_1022 : i32 = u_xlati36;
    let x_1024 : vec4<f32> = x_1021.x_AdditionalLightsPosition[x_1022];
    let x_1027 : i32 = u_xlati36;
    let x_1029 : vec4<f32> = x_1021.x_AdditionalLightsPosition[x_1027];
    u_xlat8 = ((-(x_1010) * vec3<f32>(x_1024.w, x_1024.w, x_1024.w)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec3<f32> = u_xlat8;
    let x_1033 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1032, x_1033);
    let x_1035 : f32 = u_xlat38;
    u_xlat38 = max(x_1035, 6.10351562e-05f);
    let x_1038 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1038);
    let x_1041 : f32 = u_xlat39;
    let x_1043 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
    let x_1046 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1046);
    let x_1048 : f32 = u_xlat38;
    let x_1049 : i32 = u_xlati36;
    let x_1051 : f32 = x_1021.x_AdditionalLightsAttenuation[x_1049].x;
    u_xlat38 = (x_1048 * x_1051);
    let x_1053 : f32 = u_xlat38;
    let x_1055 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1053) * x_1055) + 1.0f);
    let x_1058 : f32 = u_xlat38;
    u_xlat38 = max(x_1058, 0.0f);
    let x_1060 : f32 = u_xlat38;
    let x_1061 : f32 = u_xlat38;
    u_xlat38 = (x_1060 * x_1061);
    let x_1063 : f32 = u_xlat38;
    let x_1064 : f32 = u_xlat40;
    u_xlat38 = (x_1063 * x_1064);
    let x_1066 : i32 = u_xlati36;
    let x_1068 : vec4<f32> = x_1021.x_AdditionalLightsSpotDir[x_1066];
    let x_1070 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), x_1070);
    let x_1072 : f32 = u_xlat40;
    let x_1073 : i32 = u_xlati36;
    let x_1075 : f32 = x_1021.x_AdditionalLightsAttenuation[x_1073].z;
    let x_1077 : i32 = u_xlati36;
    let x_1079 : f32 = x_1021.x_AdditionalLightsAttenuation[x_1077].w;
    u_xlat40 = ((x_1072 * x_1075) + x_1079);
    let x_1081 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1081, 0.0f, 1.0f);
    let x_1083 : f32 = u_xlat40;
    let x_1084 : f32 = u_xlat40;
    u_xlat40 = (x_1083 * x_1084);
    let x_1086 : f32 = u_xlat38;
    let x_1087 : f32 = u_xlat40;
    u_xlat38 = (x_1086 * x_1087);
    let x_1090 : f32 = u_xlat37;
    let x_1092 : i32 = u_xlati36;
    let x_1094 : vec4<f32> = x_1021.x_AdditionalLightsColor[x_1092];
    u_xlat10 = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec3<f32> = u_xlat12;
    let x_1098 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1097, x_1098);
    let x_1100 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1100, 0.0f, 1.0f);
    let x_1102 : f32 = u_xlat36;
    let x_1103 : f32 = u_xlat38;
    u_xlat36 = (x_1102 * x_1103);
    let x_1105 : f32 = u_xlat36;
    let x_1107 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1105, x_1105, x_1105) * x_1107);
    let x_1109 : vec3<f32> = u_xlat8;
    let x_1110 : f32 = u_xlat39;
    let x_1113 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1109 * vec3<f32>(x_1110, x_1110, x_1110)) + x_1113);
    let x_1115 : vec3<f32> = u_xlat8;
    let x_1116 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1115, x_1116);
    let x_1118 : f32 = u_xlat36;
    u_xlat36 = max(x_1118, 1.17549435e-37f);
    let x_1120 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1120);
    let x_1122 : f32 = u_xlat36;
    let x_1124 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1122, x_1122, x_1122) * x_1124);
    let x_1126 : vec3<f32> = u_xlat12;
    let x_1127 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1126, x_1127);
    let x_1129 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1129, 0.0f, 1.0f);
    let x_1131 : vec3<f32> = u_xlat9;
    let x_1132 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1131, x_1132);
    let x_1134 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1134, 0.0f, 1.0f);
    let x_1136 : f32 = u_xlat36;
    let x_1137 : f32 = u_xlat36;
    u_xlat36 = (x_1136 * x_1137);
    let x_1139 : f32 = u_xlat36;
    let x_1141 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1139 * x_1141) + 1.000010014f);
    let x_1144 : f32 = u_xlat38;
    let x_1145 : f32 = u_xlat38;
    u_xlat38 = (x_1144 * x_1145);
    let x_1147 : f32 = u_xlat36;
    let x_1148 : f32 = u_xlat36;
    u_xlat36 = (x_1147 * x_1148);
    let x_1150 : f32 = u_xlat38;
    u_xlat38 = max(x_1150, 0.100000001f);
    let x_1152 : f32 = u_xlat36;
    let x_1153 : f32 = u_xlat38;
    u_xlat36 = (x_1152 * x_1153);
    let x_1155 : f32 = u_xlat35;
    let x_1156 : f32 = u_xlat36;
    u_xlat36 = (x_1155 * x_1156);
    let x_1159 : f32 = u_xlat1.x;
    let x_1160 : f32 = u_xlat36;
    u_xlat36 = (x_1159 / x_1160);
    let x_1162 : vec3<f32> = u_xlat2;
    let x_1163 : f32 = u_xlat36;
    let x_1166 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1162 * vec3<f32>(x_1163, x_1163, x_1163)) + x_1166);
    let x_1168 : vec3<f32> = u_xlat8;
    let x_1169 : vec3<f32> = u_xlat10;
    let x_1171 : vec4<f32> = u_xlat7;
    let x_1173 : vec3<f32> = ((x_1168 * x_1169) + vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);

    continuing {
      let x_1176 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1176 + bitcast<u32>(1i));
    }
  }
  let x_1178 : vec4<f32> = u_xlat3;
  let x_1180 : f32 = u_xlat33;
  let x_1183 : vec3<f32> = u_xlat5;
  let x_1184 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180, x_1180, x_1180)) + x_1183);
  let x_1185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1189 : vec4<f32> = u_xlat7;
  let x_1191 : vec4<f32> = u_xlat0;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) + vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

