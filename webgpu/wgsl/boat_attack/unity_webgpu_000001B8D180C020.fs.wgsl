struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
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

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1220 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_832 : f32;
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
  var u_xlatu0 : u32;
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
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_627, x_629);
  u_xlat5 = x_630;
  let x_635 : vec2<f32> = vs_INTERP4;
  let x_637 : f32 = x_44.x_GlobalMipBias.x;
  let x_638 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_635, x_637);
  let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat5;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat12;
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat11.x = dot(x_649, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_655 : f32 = u_xlat11.x;
  u_xlat11.x = (x_655 + 0.5f);
  let x_658 : vec2<f32> = u_xlat11;
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat5.w;
  u_xlat11.x = max(x_666, 0.0001f);
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec2<f32> = u_xlat11;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) / vec3<f32>(x_672.x, x_672.x, x_672.x));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_679 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_680.x, x_680.y));
  let x_685 : vec2<f32> = u_xlat11;
  let x_686 : vec4<f32> = hlslcc_FragCoord;
  let x_688 : vec2<f32> = (x_685 * vec2<f32>(x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_692 : f32 = u_xlat6.y;
  let x_695 : f32 = x_44.x_ScaleBiasRt.x;
  let x_698 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_692 * x_695) + x_698);
  let x_702 : f32 = u_xlat11.x;
  u_xlat6.z = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_707) * 0.959999979f) + 0.959999979f);
  let x_714 : f32 = u_xlat11.x;
  let x_717 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_714) + x_717);
  let x_719 : vec2<f32> = u_xlat11;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721);
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_723 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_735 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat11.x = (x_740 * x_742);
  let x_746 : f32 = u_xlat11.x;
  let x_748 : f32 = u_xlat11.x;
  u_xlat1.x = (x_746 * x_748);
  let x_751 : f32 = u_xlat22;
  u_xlat22 = (x_751 + 1.0f);
  let x_753 : f32 = u_xlat22;
  u_xlat22 = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat11.x;
  u_xlat35 = ((x_757 * 4.0f) + 2.0f);
  let x_766 : vec4<f32> = u_xlat6;
  let x_769 : f32 = x_44.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_766.x, x_766.z), x_769);
  u_xlat36 = x_770.x;
  let x_773 : f32 = u_xlat36;
  u_xlat37 = (x_773 + -1.0f);
  let x_776 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_777 : f32 = u_xlat37;
  u_xlat37 = ((x_776 * x_777) + 1.0f);
  let x_782 : f32 = u_xlat0.w;
  let x_783 : f32 = u_xlat36;
  u_xlat33 = min(x_782, x_783);
  let x_786 : vec4<f32> = u_xlat3;
  let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
  let x_789 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_787.x, x_787.y, x_789);
  let x_801 : vec3<f32> = txVec0;
  let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_801.xy, x_801.z);
  u_xlat3.x = x_803;
  let x_807 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_807) + 1.0f);
  let x_812 : f32 = u_xlat3.x;
  let x_814 : f32 = x_436.x_MainLightShadowParams.x;
  let x_817 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_812 * x_814) + x_817);
  let x_822 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_822);
  let x_826 : f32 = u_xlat3.z;
  u_xlatb25 = (x_826 >= 1.0f);
  let x_828 : bool = u_xlatb25;
  let x_829 : bool = u_xlatb14;
  u_xlatb14 = (x_828 | x_829);
  let x_831 : bool = u_xlatb14;
  if (x_831) {
    x_832 = 1.0f;
  } else {
    let x_837 : f32 = u_xlat3.x;
    x_832 = x_837;
  }
  let x_838 : f32 = x_832;
  u_xlat3.x = x_838;
  let x_840 : vec3<f32> = vs_INTERP0;
  let x_842 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat14 = (x_840 + -(x_842));
  let x_845 : vec3<f32> = u_xlat14;
  let x_846 : vec3<f32> = u_xlat14;
  u_xlat14.x = dot(x_845, x_846);
  let x_850 : f32 = u_xlat14.x;
  let x_852 : f32 = x_436.x_MainLightShadowParams.z;
  let x_855 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_850 * x_852) + x_855);
  let x_859 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_859, 0.0f, 1.0f);
  let x_864 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_864) + 1.0f);
  let x_868 : f32 = u_xlat14.x;
  let x_869 : f32 = u_xlat25;
  let x_872 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_868 * x_869) + x_872);
  let x_875 : f32 = u_xlat37;
  let x_878 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_875, x_875, x_875) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_882 : vec3<f32> = u_xlat4;
  let x_884 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_882), x_884);
  let x_886 : f32 = u_xlat38;
  let x_887 : f32 = u_xlat38;
  u_xlat38 = (x_886 + x_887);
  let x_889 : vec3<f32> = u_xlat12;
  let x_890 : f32 = u_xlat38;
  let x_894 : vec3<f32> = u_xlat4;
  let x_896 : vec3<f32> = ((x_889 * -(vec3<f32>(x_890, x_890, x_890))) + -(x_894));
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec3<f32> = u_xlat12;
  let x_900 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_899, x_900);
  let x_902 : f32 = u_xlat38;
  u_xlat38 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat38;
  u_xlat38 = (-(x_904) + 1.0f);
  let x_907 : f32 = u_xlat38;
  let x_908 : f32 = u_xlat38;
  u_xlat38 = (x_907 * x_908);
  let x_910 : f32 = u_xlat38;
  let x_911 : f32 = u_xlat38;
  u_xlat38 = (x_910 * x_911);
  let x_915 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_915) * 0.699999988f) + 1.700000048f);
  let x_922 : f32 = u_xlat0.x;
  let x_923 : f32 = u_xlat39;
  u_xlat0.x = (x_922 * x_923);
  let x_927 : f32 = u_xlat0.x;
  u_xlat0.x = (x_927 * 6.0f);
  let x_939 : vec4<f32> = u_xlat6;
  let x_942 : f32 = u_xlat0.x;
  let x_943 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_939.x, x_939.y, x_939.z), x_942);
  u_xlat6 = x_943;
  let x_945 : f32 = u_xlat6.w;
  u_xlat0.x = (x_945 + -1.0f);
  let x_949 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_951 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_949 * x_951) + 1.0f);
  let x_956 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_956, 0.0f);
  let x_960 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_960);
  let x_964 : f32 = u_xlat0.x;
  let x_966 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_964 * x_966);
  let x_970 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_970);
  let x_974 : f32 = u_xlat0.x;
  let x_976 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_974 * x_976);
  let x_979 : vec4<f32> = u_xlat6;
  let x_981 : vec4<f32> = u_xlat0;
  let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(x_981.x, x_981.x, x_981.x));
  let x_984 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec2<f32> = u_xlat11;
  let x_988 : vec2<f32> = u_xlat11;
  let x_992 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.x) * vec2<f32>(x_988.x, x_988.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_993 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
  let x_996 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_996);
  let x_1000 : vec3<f32> = u_xlat2;
  let x_1002 : f32 = u_xlat22;
  u_xlat8 = (-(x_1000) + vec3<f32>(x_1002, x_1002, x_1002));
  let x_1005 : f32 = u_xlat38;
  let x_1007 : vec3<f32> = u_xlat8;
  let x_1009 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_1005, x_1005, x_1005) * x_1007) + x_1009);
  let x_1011 : vec2<f32> = u_xlat11;
  let x_1013 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1011.x, x_1011.x, x_1011.x) * x_1013);
  let x_1015 : vec4<f32> = u_xlat6;
  let x_1017 : vec3<f32> = u_xlat8;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * x_1017);
  let x_1019 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat5;
  let x_1023 : vec3<f32> = u_xlat7;
  let x_1025 : vec4<f32> = u_xlat6;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1031 : f32 = u_xlat3.x;
  let x_1033 : f32 = x_282.unity_LightData.z;
  u_xlat11.x = (x_1031 * x_1033);
  let x_1036 : vec3<f32> = u_xlat12;
  let x_1038 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(x_1036, vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1041, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat22;
  let x_1045 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1043 * x_1045);
  let x_1048 : vec2<f32> = u_xlat11;
  let x_1050 : vec3<f32> = u_xlat14;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.x, x_1048.x) * x_1050);
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec3<f32> = u_xlat4;
  let x_1056 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1058 : vec3<f32> = (x_1054 + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat6;
  let x_1063 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1068 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_1068, 1.17549435e-37f);
  let x_1073 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_1073);
  let x_1076 : vec2<f32> = u_xlat11;
  let x_1078 : vec4<f32> = u_xlat6;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.x, x_1076.x) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec3<f32> = u_xlat12;
  let x_1084 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(x_1083, vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1089 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1089, 0.0f, 1.0f);
  let x_1093 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1095 : vec4<f32> = u_xlat6;
  u_xlat11.y = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1100 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_1100, 0.0f, 1.0f);
  let x_1103 : vec2<f32> = u_xlat11;
  let x_1104 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_1103 * x_1104);
  let x_1107 : f32 = u_xlat11.x;
  let x_1109 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_1107 * x_1109) + 1.000010014f);
  let x_1115 : f32 = u_xlat11.x;
  let x_1117 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1115 * x_1117);
  let x_1121 : f32 = u_xlat11.y;
  u_xlat22 = max(x_1121, 0.100000001f);
  let x_1124 : f32 = u_xlat22;
  let x_1126 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1124 * x_1126);
  let x_1129 : f32 = u_xlat35;
  let x_1131 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1129 * x_1131);
  let x_1135 : f32 = u_xlat1.x;
  let x_1137 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1135 / x_1137);
  let x_1140 : vec3<f32> = u_xlat2;
  let x_1141 : vec2<f32> = u_xlat11;
  let x_1144 : vec3<f32> = u_xlat7;
  let x_1145 : vec3<f32> = ((x_1140 * vec3<f32>(x_1141.x, x_1141.x, x_1141.x)) + x_1144);
  let x_1146 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat3;
  let x_1150 : vec4<f32> = u_xlat6;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1156 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1158 : f32 = x_282.unity_LightData.y;
  u_xlat11.x = min(x_1156, x_1158);
  let x_1162 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_1162));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1174 : u32 = u_xlatu_loop_1;
    let x_1175 : u32 = u_xlatu11;
    if ((x_1174 < x_1175)) {
    } else {
      break;
    }
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1178 >> 2u);
    let x_1181 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1181 & 3u));
    let x_1185 : u32 = u_xlatu36;
    let x_1188 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_1185)];
    let x_1198 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1203 : vec4<u32> = indexable[x_1198];
    u_xlat36 = dot(x_1188, bitcast<vec4<f32>>(x_1203));
    let x_1207 : f32 = u_xlat36;
    u_xlati36 = i32(x_1207);
    let x_1209 : vec3<f32> = vs_INTERP0;
    let x_1221 : i32 = u_xlati36;
    let x_1223 : vec4<f32> = x_1220.x_AdditionalLightsPosition[x_1221];
    let x_1226 : i32 = u_xlati36;
    let x_1228 : vec4<f32> = x_1220.x_AdditionalLightsPosition[x_1226];
    u_xlat8 = ((-(x_1209) * vec3<f32>(x_1223.w, x_1223.w, x_1223.w)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
    let x_1231 : vec3<f32> = u_xlat8;
    let x_1232 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1231, x_1232);
    let x_1234 : f32 = u_xlat38;
    u_xlat38 = max(x_1234, 6.10351562e-05f);
    let x_1237 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1237);
    let x_1240 : f32 = u_xlat39;
    let x_1242 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1240, x_1240, x_1240) * x_1242);
    let x_1245 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1245);
    let x_1247 : f32 = u_xlat38;
    let x_1248 : i32 = u_xlati36;
    let x_1250 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1248].x;
    u_xlat38 = (x_1247 * x_1250);
    let x_1252 : f32 = u_xlat38;
    let x_1254 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1252) * x_1254) + 1.0f);
    let x_1257 : f32 = u_xlat38;
    u_xlat38 = max(x_1257, 0.0f);
    let x_1259 : f32 = u_xlat38;
    let x_1260 : f32 = u_xlat38;
    u_xlat38 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat38;
    let x_1263 : f32 = u_xlat40;
    u_xlat38 = (x_1262 * x_1263);
    let x_1265 : i32 = u_xlati36;
    let x_1267 : vec4<f32> = x_1220.x_AdditionalLightsSpotDir[x_1265];
    let x_1269 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), x_1269);
    let x_1271 : f32 = u_xlat40;
    let x_1272 : i32 = u_xlati36;
    let x_1274 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1272].z;
    let x_1276 : i32 = u_xlati36;
    let x_1278 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1276].w;
    u_xlat40 = ((x_1271 * x_1274) + x_1278);
    let x_1280 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1280, 0.0f, 1.0f);
    let x_1282 : f32 = u_xlat40;
    let x_1283 : f32 = u_xlat40;
    u_xlat40 = (x_1282 * x_1283);
    let x_1285 : f32 = u_xlat38;
    let x_1286 : f32 = u_xlat40;
    u_xlat38 = (x_1285 * x_1286);
    let x_1289 : f32 = u_xlat37;
    let x_1291 : i32 = u_xlati36;
    let x_1293 : vec4<f32> = x_1220.x_AdditionalLightsColor[x_1291];
    u_xlat10 = (vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1296 : vec3<f32> = u_xlat12;
    let x_1297 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1296, x_1297);
    let x_1299 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1299, 0.0f, 1.0f);
    let x_1301 : f32 = u_xlat36;
    let x_1302 : f32 = u_xlat38;
    u_xlat36 = (x_1301 * x_1302);
    let x_1304 : f32 = u_xlat36;
    let x_1306 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1304, x_1304, x_1304) * x_1306);
    let x_1308 : vec3<f32> = u_xlat8;
    let x_1309 : f32 = u_xlat39;
    let x_1312 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1308 * vec3<f32>(x_1309, x_1309, x_1309)) + x_1312);
    let x_1314 : vec3<f32> = u_xlat8;
    let x_1315 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1314, x_1315);
    let x_1317 : f32 = u_xlat36;
    u_xlat36 = max(x_1317, 1.17549435e-37f);
    let x_1319 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1319);
    let x_1321 : f32 = u_xlat36;
    let x_1323 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1321, x_1321, x_1321) * x_1323);
    let x_1325 : vec3<f32> = u_xlat12;
    let x_1326 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1325, x_1326);
    let x_1328 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1328, 0.0f, 1.0f);
    let x_1330 : vec3<f32> = u_xlat9;
    let x_1331 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1330, x_1331);
    let x_1333 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1333, 0.0f, 1.0f);
    let x_1335 : f32 = u_xlat36;
    let x_1336 : f32 = u_xlat36;
    u_xlat36 = (x_1335 * x_1336);
    let x_1338 : f32 = u_xlat36;
    let x_1340 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1338 * x_1340) + 1.000010014f);
    let x_1343 : f32 = u_xlat38;
    let x_1344 : f32 = u_xlat38;
    u_xlat38 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat36;
    let x_1347 : f32 = u_xlat36;
    u_xlat36 = (x_1346 * x_1347);
    let x_1349 : f32 = u_xlat38;
    u_xlat38 = max(x_1349, 0.100000001f);
    let x_1351 : f32 = u_xlat36;
    let x_1352 : f32 = u_xlat38;
    u_xlat36 = (x_1351 * x_1352);
    let x_1354 : f32 = u_xlat35;
    let x_1355 : f32 = u_xlat36;
    u_xlat36 = (x_1354 * x_1355);
    let x_1358 : f32 = u_xlat1.x;
    let x_1359 : f32 = u_xlat36;
    u_xlat36 = (x_1358 / x_1359);
    let x_1361 : vec3<f32> = u_xlat2;
    let x_1362 : f32 = u_xlat36;
    let x_1365 : vec3<f32> = u_xlat7;
    u_xlat8 = ((x_1361 * vec3<f32>(x_1362, x_1362, x_1362)) + x_1365);
    let x_1367 : vec3<f32> = u_xlat8;
    let x_1368 : vec3<f32> = u_xlat10;
    let x_1370 : vec4<f32> = u_xlat6;
    let x_1372 : vec3<f32> = ((x_1367 * x_1368) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);

    continuing {
      let x_1375 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1375 + bitcast<u32>(1i));
    }
  }
  let x_1377 : vec4<f32> = u_xlat5;
  let x_1379 : f32 = u_xlat33;
  let x_1382 : vec4<f32> = u_xlat3;
  let x_1384 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(x_1379, x_1379, x_1379)) + vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1389 : vec4<f32> = u_xlat6;
  let x_1391 : vec4<f32> = u_xlat0;
  let x_1393 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.y, x_1389.z) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1399 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1401 : f32 = x_282.unity_RenderingLayer.x;
  u_xlatu0 = (x_1399 & bitcast<u32>(x_1401));
  let x_1404 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1404);
  let x_1409 : f32 = u_xlat0.x;
  let x_1412 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1409 * x_1412);
  let x_1417 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1417, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1421 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1421.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

