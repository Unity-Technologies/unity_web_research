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

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(6) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1176 : AdditionalLights;

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
  var x_396 : f32;
  var x_409 : f32;
  var x_420 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlatb25 : bool;
  var x_789 : f32;
  var u_xlat25 : f32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat8 : vec3<f32>;
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
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_124);
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_126 + x_127);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.x));
  u_xlatb4 = vec3<bool>(x_138.x, x_138.y, x_138.z);
  let x_143 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_143);
  let x_148 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_164);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = u_xlat4;
  let x_170 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
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
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_438 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres0;
  let x_441 : vec3<f32> = (x_431 + -(vec3<f32>(x_438.x, x_438.y, x_438.z)));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_446 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres1;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_455 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres2;
  let x_458 : vec3<f32> = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
  let x_459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec3<f32> = vs_INTERP0;
  let x_464 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_462 + -(vec3<f32>(x_464.x, x_464.y, x_464.z)));
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_486 : vec3<f32> = u_xlat7;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_486, x_487);
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = x_436.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_492 < x_495);
  let x_498 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_510);
  let x_514 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_514);
  let x_519 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_519);
  let x_523 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_523);
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec4<f32> = u_xlat5;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat11.x = dot(x_539, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_546 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_546) + 4.0f);
  let x_553 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_553);
  let x_557 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_557) << bitcast<u32>(2i));
  let x_560 : vec3<f32> = vs_INTERP0;
  let x_562 : i32 = u_xlati11;
  let x_565 : i32 = u_xlati11;
  let x_569 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_562 + 1i) / 4i)][((x_565 + 1i) % 4i)];
  let x_571 : vec3<f32> = (vec3<f32>(x_560.y, x_560.y, x_560.y) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati11;
  let x_576 : i32 = u_xlati11;
  let x_579 : vec4<f32> = x_436.x_MainLightWorldToShadow[(x_574 / 4i)][(x_576 % 4i)];
  let x_581 : vec3<f32> = vs_INTERP0;
  let x_584 : vec4<f32> = u_xlat3;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(x_581.x, x_581.x, x_581.x)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : i32 = u_xlati11;
  let x_592 : i32 = u_xlati11;
  let x_596 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_589 + 2i) / 4i)][((x_592 + 2i) % 4i)];
  let x_598 : vec3<f32> = vs_INTERP0;
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598.z, x_598.z, x_598.z)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : i32 = u_xlati11;
  let x_611 : i32 = u_xlati11;
  let x_615 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_608 + 3i) / 4i)][((x_611 + 3i) % 4i)];
  let x_617 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_627 : vec2<f32> = vs_INTERP4;
  let x_629 : f32 = x_44.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_627, x_629);
  let x_631 : vec3<f32> = vec3<f32>(x_630.x, x_630.y, x_630.z);
  let x_632 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_637 : vec2<f32> = vec2<f32>(x_636.x, x_636.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_637.x, x_637.y));
  let x_642 : vec2<f32> = u_xlat11;
  let x_643 : vec4<f32> = hlslcc_FragCoord;
  let x_645 : vec2<f32> = (x_642 * vec2<f32>(x_643.x, x_643.y));
  let x_646 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
  let x_649 : f32 = u_xlat6.y;
  let x_652 : f32 = x_44.x_ScaleBiasRt.x;
  let x_655 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_649 * x_652) + x_655);
  let x_659 : f32 = u_xlat11.x;
  u_xlat6.z = (-(x_659) + 1.0f);
  let x_664 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_664) * 0.959999979f) + 0.959999979f);
  let x_671 : f32 = u_xlat11.x;
  let x_674 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_671) + x_674);
  let x_676 : vec2<f32> = u_xlat11;
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678);
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_680 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_692 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat11.x = (x_697 * x_699);
  let x_703 : f32 = u_xlat11.x;
  let x_705 : f32 = u_xlat11.x;
  u_xlat1.x = (x_703 * x_705);
  let x_708 : f32 = u_xlat22;
  u_xlat22 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat22;
  u_xlat22 = min(x_710, 1.0f);
  let x_714 : f32 = u_xlat11.x;
  u_xlat35 = ((x_714 * 4.0f) + 2.0f);
  let x_723 : vec4<f32> = u_xlat6;
  let x_726 : f32 = x_44.x_GlobalMipBias.x;
  let x_727 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_723.x, x_723.z), x_726);
  u_xlat36 = x_727.x;
  let x_730 : f32 = u_xlat36;
  u_xlat37 = (x_730 + -1.0f);
  let x_733 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat37;
  u_xlat37 = ((x_733 * x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.w;
  let x_740 : f32 = u_xlat36;
  u_xlat33 = min(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat3;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_746 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_744.x, x_744.y, x_746);
  let x_758 : vec3<f32> = txVec0;
  let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
  u_xlat3.x = x_760;
  let x_764 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_764) + 1.0f);
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = x_436.x_MainLightShadowParams.x;
  let x_774 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_769 * x_771) + x_774);
  let x_779 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_779);
  let x_783 : f32 = u_xlat3.z;
  u_xlatb25 = (x_783 >= 1.0f);
  let x_785 : bool = u_xlatb25;
  let x_786 : bool = u_xlatb14;
  u_xlatb14 = (x_785 | x_786);
  let x_788 : bool = u_xlatb14;
  if (x_788) {
    x_789 = 1.0f;
  } else {
    let x_794 : f32 = u_xlat3.x;
    x_789 = x_794;
  }
  let x_795 : f32 = x_789;
  u_xlat3.x = x_795;
  let x_797 : vec3<f32> = vs_INTERP0;
  let x_799 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat14 = (x_797 + -(x_799));
  let x_802 : vec3<f32> = u_xlat14;
  let x_803 : vec3<f32> = u_xlat14;
  u_xlat14.x = dot(x_802, x_803);
  let x_807 : f32 = u_xlat14.x;
  let x_809 : f32 = x_436.x_MainLightShadowParams.z;
  let x_812 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_807 * x_809) + x_812);
  let x_816 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_816, 0.0f, 1.0f);
  let x_821 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_821) + 1.0f);
  let x_825 : f32 = u_xlat14.x;
  let x_826 : f32 = u_xlat25;
  let x_829 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_825 * x_826) + x_829);
  let x_832 : f32 = u_xlat37;
  let x_835 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_839 : vec3<f32> = u_xlat4;
  let x_841 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_839), x_841);
  let x_843 : f32 = u_xlat38;
  let x_844 : f32 = u_xlat38;
  u_xlat38 = (x_843 + x_844);
  let x_846 : vec3<f32> = u_xlat12;
  let x_847 : f32 = u_xlat38;
  let x_851 : vec3<f32> = u_xlat4;
  let x_853 : vec3<f32> = ((x_846 * -(vec3<f32>(x_847, x_847, x_847))) + -(x_851));
  let x_854 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec3<f32> = u_xlat12;
  let x_857 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_856, x_857);
  let x_859 : f32 = u_xlat38;
  u_xlat38 = clamp(x_859, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat38;
  u_xlat38 = (-(x_861) + 1.0f);
  let x_864 : f32 = u_xlat38;
  let x_865 : f32 = u_xlat38;
  u_xlat38 = (x_864 * x_865);
  let x_867 : f32 = u_xlat38;
  let x_868 : f32 = u_xlat38;
  u_xlat38 = (x_867 * x_868);
  let x_872 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_872) * 0.699999988f) + 1.700000048f);
  let x_879 : f32 = u_xlat0.x;
  let x_880 : f32 = u_xlat39;
  u_xlat0.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat0.x;
  u_xlat0.x = (x_884 * 6.0f);
  let x_896 : vec4<f32> = u_xlat6;
  let x_899 : f32 = u_xlat0.x;
  let x_900 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_896.x, x_896.y, x_896.z), x_899);
  u_xlat6 = x_900;
  let x_902 : f32 = u_xlat6.w;
  u_xlat0.x = (x_902 + -1.0f);
  let x_906 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_908 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_906 * x_908) + 1.0f);
  let x_913 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_913, 0.0f);
  let x_917 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_917);
  let x_921 : f32 = u_xlat0.x;
  let x_923 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_921 * x_923);
  let x_927 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_927);
  let x_931 : f32 = u_xlat0.x;
  let x_933 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_931 * x_933);
  let x_936 : vec4<f32> = u_xlat6;
  let x_938 : vec4<f32> = u_xlat0;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(x_938.x, x_938.x, x_938.x));
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec2<f32> = u_xlat11;
  let x_945 : vec2<f32> = u_xlat11;
  let x_949 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.x) * vec2<f32>(x_945.x, x_945.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_950 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
  let x_953 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_953);
  let x_957 : vec3<f32> = u_xlat2;
  let x_959 : f32 = u_xlat22;
  u_xlat8 = (-(x_957) + vec3<f32>(x_959, x_959, x_959));
  let x_962 : f32 = u_xlat38;
  let x_964 : vec3<f32> = u_xlat8;
  let x_966 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_962, x_962, x_962) * x_964) + x_966);
  let x_968 : vec2<f32> = u_xlat11;
  let x_970 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_968.x, x_968.x, x_968.x) * x_970);
  let x_972 : vec4<f32> = u_xlat6;
  let x_974 : vec3<f32> = u_xlat8;
  let x_975 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) * x_974);
  let x_976 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat5;
  let x_980 : vec3<f32> = u_xlat7;
  let x_982 : vec4<f32> = u_xlat6;
  let x_984 : vec3<f32> = ((vec3<f32>(x_978.x, x_978.y, x_978.z) * x_980) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_988 : f32 = u_xlat3.x;
  let x_990 : f32 = x_282.unity_LightData.z;
  u_xlat11.x = (x_988 * x_990);
  let x_993 : vec3<f32> = u_xlat12;
  let x_995 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(x_993, vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat22;
  u_xlat22 = clamp(x_998, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat22;
  let x_1002 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1000 * x_1002);
  let x_1005 : vec2<f32> = u_xlat11;
  let x_1007 : vec3<f32> = u_xlat14;
  let x_1008 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.x, x_1005.x) * x_1007);
  let x_1009 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec3<f32> = u_xlat4;
  let x_1013 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1015 : vec3<f32> = (x_1011 + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat6;
  let x_1020 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(vec3<f32>(x_1018.x, x_1018.y, x_1018.z), vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1025 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_1025, 1.17549435e-37f);
  let x_1030 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_1030);
  let x_1033 : vec2<f32> = u_xlat11;
  let x_1035 : vec4<f32> = u_xlat6;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.x, x_1033.x) * vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec3<f32> = u_xlat12;
  let x_1041 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(x_1040, vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1046 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1046, 0.0f, 1.0f);
  let x_1050 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1052 : vec4<f32> = u_xlat6;
  u_xlat11.y = dot(vec3<f32>(x_1050.x, x_1050.y, x_1050.z), vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1057 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_1057, 0.0f, 1.0f);
  let x_1060 : vec2<f32> = u_xlat11;
  let x_1061 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_1060 * x_1061);
  let x_1064 : f32 = u_xlat11.x;
  let x_1066 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_1064 * x_1066) + 1.000010014f);
  let x_1072 : f32 = u_xlat11.x;
  let x_1074 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1072 * x_1074);
  let x_1078 : f32 = u_xlat11.y;
  u_xlat22 = max(x_1078, 0.100000001f);
  let x_1081 : f32 = u_xlat22;
  let x_1083 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1081 * x_1083);
  let x_1086 : f32 = u_xlat35;
  let x_1088 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1086 * x_1088);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1092 / x_1094);
  let x_1097 : vec3<f32> = u_xlat2;
  let x_1098 : vec2<f32> = u_xlat11;
  let x_1101 : vec3<f32> = u_xlat7;
  let x_1102 : vec3<f32> = ((x_1097 * vec3<f32>(x_1098.x, x_1098.x, x_1098.x)) + x_1101);
  let x_1103 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat3;
  let x_1107 : vec4<f32> = u_xlat6;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1113 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1115 : f32 = x_282.unity_LightData.y;
  u_xlat11.x = min(x_1113, x_1115);
  let x_1119 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_1119));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1131 : u32 = u_xlatu_loop_1;
    let x_1132 : u32 = u_xlatu11;
    if ((x_1131 < x_1132)) {
    } else {
      break;
    }
    let x_1135 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1135 >> 2u);
    let x_1138 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1138 & 3u));
    let x_1141 : u32 = u_xlatu36;
    let x_1144 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_1141)];
    let x_1154 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1159 : vec4<u32> = indexable[x_1154];
    u_xlat36 = dot(x_1144, bitcast<vec4<f32>>(x_1159));
    let x_1163 : f32 = u_xlat36;
    u_xlati36 = i32(x_1163);
    let x_1165 : vec3<f32> = vs_INTERP0;
    let x_1177 : i32 = u_xlati36;
    let x_1179 : vec4<f32> = x_1176.x_AdditionalLightsPosition[x_1177];
    let x_1182 : i32 = u_xlati36;
    let x_1184 : vec4<f32> = x_1176.x_AdditionalLightsPosition[x_1182];
    u_xlat8 = ((-(x_1165) * vec3<f32>(x_1179.w, x_1179.w, x_1179.w)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
    let x_1187 : vec3<f32> = u_xlat8;
    let x_1188 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1187, x_1188);
    let x_1190 : f32 = u_xlat38;
    u_xlat38 = max(x_1190, 6.10351562e-05f);
    let x_1193 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1193);
    let x_1196 : f32 = u_xlat39;
    let x_1198 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1196, x_1196, x_1196) * x_1198);
    let x_1201 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1201);
    let x_1203 : f32 = u_xlat38;
    let x_1204 : i32 = u_xlati36;
    let x_1206 : f32 = x_1176.x_AdditionalLightsAttenuation[x_1204].x;
    u_xlat38 = (x_1203 * x_1206);
    let x_1208 : f32 = u_xlat38;
    let x_1210 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1208) * x_1210) + 1.0f);
    let x_1213 : f32 = u_xlat38;
    u_xlat38 = max(x_1213, 0.0f);
    let x_1215 : f32 = u_xlat38;
    let x_1216 : f32 = u_xlat38;
    u_xlat38 = (x_1215 * x_1216);
    let x_1218 : f32 = u_xlat38;
    let x_1219 : f32 = u_xlat40;
    u_xlat38 = (x_1218 * x_1219);
    let x_1221 : i32 = u_xlati36;
    let x_1223 : vec4<f32> = x_1176.x_AdditionalLightsSpotDir[x_1221];
    let x_1225 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), x_1225);
    let x_1227 : f32 = u_xlat40;
    let x_1228 : i32 = u_xlati36;
    let x_1230 : f32 = x_1176.x_AdditionalLightsAttenuation[x_1228].z;
    let x_1232 : i32 = u_xlati36;
    let x_1234 : f32 = x_1176.x_AdditionalLightsAttenuation[x_1232].w;
    u_xlat40 = ((x_1227 * x_1230) + x_1234);
    let x_1236 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1236, 0.0f, 1.0f);
    let x_1238 : f32 = u_xlat40;
    let x_1239 : f32 = u_xlat40;
    u_xlat40 = (x_1238 * x_1239);
    let x_1241 : f32 = u_xlat38;
    let x_1242 : f32 = u_xlat40;
    u_xlat38 = (x_1241 * x_1242);
    let x_1245 : f32 = u_xlat37;
    let x_1247 : i32 = u_xlati36;
    let x_1249 : vec4<f32> = x_1176.x_AdditionalLightsColor[x_1247];
    u_xlat10 = (vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
    let x_1252 : vec3<f32> = u_xlat12;
    let x_1253 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1252, x_1253);
    let x_1255 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1255, 0.0f, 1.0f);
    let x_1257 : f32 = u_xlat36;
    let x_1258 : f32 = u_xlat38;
    u_xlat36 = (x_1257 * x_1258);
    let x_1260 : f32 = u_xlat36;
    let x_1262 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1260, x_1260, x_1260) * x_1262);
    let x_1264 : vec3<f32> = u_xlat8;
    let x_1265 : f32 = u_xlat39;
    let x_1268 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1264 * vec3<f32>(x_1265, x_1265, x_1265)) + x_1268);
    let x_1270 : vec3<f32> = u_xlat8;
    let x_1271 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1270, x_1271);
    let x_1273 : f32 = u_xlat36;
    u_xlat36 = max(x_1273, 1.17549435e-37f);
    let x_1275 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1275);
    let x_1277 : f32 = u_xlat36;
    let x_1279 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1277, x_1277, x_1277) * x_1279);
    let x_1281 : vec3<f32> = u_xlat12;
    let x_1282 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1281, x_1282);
    let x_1284 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1284, 0.0f, 1.0f);
    let x_1286 : vec3<f32> = u_xlat9;
    let x_1287 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1286, x_1287);
    let x_1289 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1289, 0.0f, 1.0f);
    let x_1291 : f32 = u_xlat36;
    let x_1292 : f32 = u_xlat36;
    u_xlat36 = (x_1291 * x_1292);
    let x_1294 : f32 = u_xlat36;
    let x_1296 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1294 * x_1296) + 1.000010014f);
    let x_1299 : f32 = u_xlat38;
    let x_1300 : f32 = u_xlat38;
    u_xlat38 = (x_1299 * x_1300);
    let x_1302 : f32 = u_xlat36;
    let x_1303 : f32 = u_xlat36;
    u_xlat36 = (x_1302 * x_1303);
    let x_1305 : f32 = u_xlat38;
    u_xlat38 = max(x_1305, 0.100000001f);
    let x_1307 : f32 = u_xlat36;
    let x_1308 : f32 = u_xlat38;
    u_xlat36 = (x_1307 * x_1308);
    let x_1310 : f32 = u_xlat35;
    let x_1311 : f32 = u_xlat36;
    u_xlat36 = (x_1310 * x_1311);
    let x_1314 : f32 = u_xlat1.x;
    let x_1315 : f32 = u_xlat36;
    u_xlat36 = (x_1314 / x_1315);
    let x_1317 : vec3<f32> = u_xlat2;
    let x_1318 : f32 = u_xlat36;
    let x_1321 : vec3<f32> = u_xlat7;
    u_xlat8 = ((x_1317 * vec3<f32>(x_1318, x_1318, x_1318)) + x_1321);
    let x_1323 : vec3<f32> = u_xlat8;
    let x_1324 : vec3<f32> = u_xlat10;
    let x_1326 : vec4<f32> = u_xlat6;
    let x_1328 : vec3<f32> = ((x_1323 * x_1324) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);

    continuing {
      let x_1331 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1331 + bitcast<u32>(1i));
    }
  }
  let x_1333 : vec4<f32> = u_xlat5;
  let x_1335 : f32 = u_xlat33;
  let x_1338 : vec4<f32> = u_xlat3;
  let x_1340 : vec3<f32> = ((vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335, x_1335, x_1335)) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
  let x_1345 : vec4<f32> = u_xlat6;
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1349 : vec3<f32> = (vec3<f32>(x_1345.x, x_1345.y, x_1345.z) + vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
  let x_1350 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

