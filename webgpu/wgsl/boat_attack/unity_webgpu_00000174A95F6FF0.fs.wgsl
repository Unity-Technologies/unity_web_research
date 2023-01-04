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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_637 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1043 : AdditionalLights;

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
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_391 : f32;
  var x_404 : f32;
  var x_415 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
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
  let x_364 : vec3<f32> = (vec3<f32>(x_361.x, x_361.x, x_361.x) * x_363);
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_370 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_370 == 0.0f);
  let x_373 : vec3<f32> = vs_INTERP0;
  let x_378 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_373) + x_378);
  let x_381 : vec3<f32> = u_xlat12;
  let x_382 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_381, x_382);
  let x_384 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_384);
  let x_386 : f32 = u_xlat22;
  let x_388 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_386, x_386, x_386) * x_388);
  let x_390 : bool = u_xlatb11;
  if (x_390) {
    let x_395 : f32 = u_xlat12.x;
    x_391 = x_395;
  } else {
    let x_400 : f32 = x_44.unity_MatrixV[0i].z;
    x_391 = x_400;
  }
  let x_401 : f32 = x_391;
  u_xlat4.x = x_401;
  let x_403 : bool = u_xlatb11;
  if (x_403) {
    let x_408 : f32 = u_xlat12.y;
    x_404 = x_408;
  } else {
    let x_411 : f32 = x_44.unity_MatrixV[1i].z;
    x_404 = x_411;
  }
  let x_412 : f32 = x_404;
  u_xlat4.y = x_412;
  let x_414 : bool = u_xlatb11;
  if (x_414) {
    let x_419 : f32 = u_xlat12.z;
    x_415 = x_419;
  } else {
    let x_423 : f32 = x_44.unity_MatrixV[2i].z;
    x_415 = x_423;
  }
  let x_424 : f32 = x_415;
  u_xlat4.z = x_424;
  u_xlat3.w = 1.0f;
  let x_429 : vec4<f32> = x_282.unity_SHAr;
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_429, x_430);
  let x_435 : vec4<f32> = x_282.unity_SHAg;
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_435, x_436);
  let x_441 : vec4<f32> = x_282.unity_SHAb;
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_441, x_442);
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_446.y, x_446.z, x_446.z, x_446.x) * vec4<f32>(x_448.x, x_448.y, x_448.z, x_448.z));
  let x_454 : vec4<f32> = x_282.unity_SHBr;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_454, x_455);
  let x_460 : vec4<f32> = x_282.unity_SHBg;
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_282.unity_SHBb;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_466, x_467);
  let x_471 : f32 = u_xlat3.y;
  let x_473 : f32 = u_xlat3.y;
  u_xlat11.x = (x_471 * x_473);
  let x_477 : f32 = u_xlat3.x;
  let x_479 : f32 = u_xlat3.x;
  let x_482 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_477 * x_479) + -(x_482));
  let x_488 : vec4<f32> = x_282.unity_SHC;
  let x_490 : vec2<f32> = u_xlat11;
  let x_493 : vec4<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(x_490.x, x_490.x, x_490.x)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec3<f32> = u_xlat12;
  let x_497 : vec3<f32> = u_xlat5;
  u_xlat12 = (x_496 + x_497);
  let x_499 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_499, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_504 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_505.x, x_505.y));
  let x_510 : vec2<f32> = u_xlat11;
  let x_511 : vec4<f32> = hlslcc_FragCoord;
  let x_513 : vec2<f32> = (x_510 * vec2<f32>(x_511.x, x_511.y));
  let x_514 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_513.x, x_513.y, x_514.z);
  let x_517 : f32 = u_xlat5.y;
  let x_520 : f32 = x_44.x_ScaleBiasRt.x;
  let x_523 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_517 * x_520) + x_523);
  let x_527 : f32 = u_xlat11.x;
  u_xlat5.z = (-(x_527) + 1.0f);
  let x_532 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_532) * 0.959999979f) + 0.959999979f);
  let x_539 : f32 = u_xlat11.x;
  let x_542 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_539) + x_542);
  let x_544 : vec2<f32> = u_xlat11;
  let x_546 : vec3<f32> = u_xlat2;
  let x_547 : vec3<f32> = (vec3<f32>(x_544.x, x_544.x, x_544.x) * x_546);
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_550 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_554.x, x_554.x, x_554.x) * x_556) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_562 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_562) + 1.0f);
  let x_567 : f32 = u_xlat0.x;
  let x_569 : f32 = u_xlat0.x;
  u_xlat11.x = (x_567 * x_569);
  let x_573 : f32 = u_xlat11.x;
  let x_575 : f32 = u_xlat11.x;
  u_xlat1.x = (x_573 * x_575);
  let x_578 : f32 = u_xlat22;
  u_xlat22 = (x_578 + 1.0f);
  let x_580 : f32 = u_xlat22;
  u_xlat22 = min(x_580, 1.0f);
  let x_584 : f32 = u_xlat11.x;
  u_xlat35 = ((x_584 * 4.0f) + 2.0f);
  let x_594 : vec3<f32> = u_xlat5;
  let x_597 : f32 = x_44.x_GlobalMipBias.x;
  let x_598 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_594.x, x_594.z), x_597);
  u_xlat36 = x_598.x;
  let x_601 : f32 = u_xlat36;
  u_xlat37 = (x_601 + -1.0f);
  let x_604 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_605 : f32 = u_xlat37;
  u_xlat37 = ((x_604 * x_605) + 1.0f);
  let x_610 : f32 = u_xlat0.w;
  let x_611 : f32 = u_xlat36;
  u_xlat33 = min(x_610, x_611);
  let x_615 : vec4<f32> = vs_INTERP8;
  let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
  let x_618 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_616.x, x_616.y, x_618);
  let x_630 : vec3<f32> = txVec0;
  let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_630.xy, x_630.z);
  u_xlat36 = x_632;
  let x_639 : f32 = x_637.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_639) + 1.0f);
  let x_643 : f32 = u_xlat36;
  let x_645 : f32 = x_637.x_MainLightShadowParams.x;
  let x_648 : f32 = u_xlat5.x;
  u_xlat36 = ((x_643 * x_645) + x_648);
  let x_652 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_652);
  let x_656 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_656 >= 1.0f);
  let x_658 : bool = u_xlatb16;
  let x_659 : bool = u_xlatb5;
  u_xlatb5 = (x_658 | x_659);
  let x_661 : bool = u_xlatb5;
  let x_662 : f32 = u_xlat36;
  u_xlat36 = select(x_662, 1.0f, x_661);
  let x_664 : vec3<f32> = vs_INTERP0;
  let x_666 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_664 + -(x_666));
  let x_669 : vec3<f32> = u_xlat5;
  let x_670 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_669, x_670);
  let x_674 : f32 = u_xlat5.x;
  let x_676 : f32 = x_637.x_MainLightShadowParams.z;
  let x_679 : f32 = x_637.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_674 * x_676) + x_679);
  let x_683 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_683, 0.0f, 1.0f);
  let x_687 : f32 = u_xlat36;
  u_xlat16 = (-(x_687) + 1.0f);
  let x_691 : f32 = u_xlat5.x;
  let x_692 : f32 = u_xlat16;
  let x_694 : f32 = u_xlat36;
  u_xlat36 = ((x_691 * x_692) + x_694);
  let x_696 : f32 = u_xlat37;
  let x_699 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_696, x_696, x_696) * vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_703 : vec3<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(-(x_703), vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat38;
  let x_709 : f32 = u_xlat38;
  u_xlat38 = (x_708 + x_709);
  let x_711 : vec4<f32> = u_xlat3;
  let x_713 : f32 = u_xlat38;
  let x_717 : vec3<f32> = u_xlat4;
  let x_719 : vec3<f32> = ((vec3<f32>(x_711.x, x_711.y, x_711.z) * -(vec3<f32>(x_713, x_713, x_713))) + -(x_717));
  let x_720 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat3;
  let x_724 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
  let x_726 : f32 = u_xlat38;
  u_xlat38 = clamp(x_726, 0.0f, 1.0f);
  let x_728 : f32 = u_xlat38;
  u_xlat38 = (-(x_728) + 1.0f);
  let x_731 : f32 = u_xlat38;
  let x_732 : f32 = u_xlat38;
  u_xlat38 = (x_731 * x_732);
  let x_734 : f32 = u_xlat38;
  let x_735 : f32 = u_xlat38;
  u_xlat38 = (x_734 * x_735);
  let x_739 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_739) * 0.699999988f) + 1.700000048f);
  let x_746 : f32 = u_xlat0.x;
  let x_747 : f32 = u_xlat39;
  u_xlat0.x = (x_746 * x_747);
  let x_751 : f32 = u_xlat0.x;
  u_xlat0.x = (x_751 * 6.0f);
  let x_763 : vec4<f32> = u_xlat7;
  let x_766 : f32 = u_xlat0.x;
  let x_767 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_763.x, x_763.y, x_763.z), x_766);
  u_xlat7 = x_767;
  let x_769 : f32 = u_xlat7.w;
  u_xlat0.x = (x_769 + -1.0f);
  let x_773 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_775 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_773 * x_775) + 1.0f);
  let x_780 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_780, 0.0f);
  let x_784 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_784);
  let x_788 : f32 = u_xlat0.x;
  let x_790 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_788 * x_790);
  let x_794 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_794);
  let x_798 : f32 = u_xlat0.x;
  let x_800 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_798 * x_800);
  let x_803 : vec4<f32> = u_xlat7;
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805.x, x_805.x, x_805.x));
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec2<f32> = u_xlat11;
  let x_812 : vec2<f32> = u_xlat11;
  let x_816 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.x) * vec2<f32>(x_812.x, x_812.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_817 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
  let x_820 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_820);
  let x_824 : vec3<f32> = u_xlat2;
  let x_826 : f32 = u_xlat22;
  u_xlat8 = (-(x_824) + vec3<f32>(x_826, x_826, x_826));
  let x_829 : f32 = u_xlat38;
  let x_831 : vec3<f32> = u_xlat8;
  let x_833 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_829, x_829, x_829) * x_831) + x_833);
  let x_835 : vec2<f32> = u_xlat11;
  let x_837 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_835.x, x_835.x, x_835.x) * x_837);
  let x_839 : vec4<f32> = u_xlat7;
  let x_841 : vec3<f32> = u_xlat8;
  let x_842 : vec3<f32> = (vec3<f32>(x_839.x, x_839.y, x_839.z) * x_841);
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec3<f32> = u_xlat12;
  let x_846 : vec4<f32> = u_xlat6;
  let x_849 : vec4<f32> = u_xlat7;
  u_xlat12 = ((x_845 * vec3<f32>(x_846.x, x_846.y, x_846.z)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : f32 = u_xlat36;
  let x_855 : f32 = x_282.unity_LightData.z;
  u_xlat11.x = (x_852 * x_855);
  let x_858 : vec4<f32> = u_xlat3;
  let x_861 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : f32 = u_xlat22;
  u_xlat22 = clamp(x_864, 0.0f, 1.0f);
  let x_866 : f32 = u_xlat22;
  let x_868 : f32 = u_xlat11.x;
  u_xlat11.x = (x_866 * x_868);
  let x_871 : vec2<f32> = u_xlat11;
  let x_873 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_871.x, x_871.x, x_871.x) * x_873);
  let x_875 : vec3<f32> = u_xlat4;
  let x_877 : vec4<f32> = x_44.x_MainLightPosition;
  let x_879 : vec3<f32> = (x_875 + vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat7;
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_889 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_889, 1.17549435e-37f);
  let x_894 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_894);
  let x_897 : vec2<f32> = u_xlat11;
  let x_899 : vec4<f32> = u_xlat7;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat3;
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_911 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_911, 0.0f, 1.0f);
  let x_915 : vec4<f32> = x_44.x_MainLightPosition;
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat11.y = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_922 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_922, 0.0f, 1.0f);
  let x_925 : vec2<f32> = u_xlat11;
  let x_926 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_925 * x_926);
  let x_929 : f32 = u_xlat11.x;
  let x_931 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_929 * x_931) + 1.000010014f);
  let x_937 : f32 = u_xlat11.x;
  let x_939 : f32 = u_xlat11.x;
  u_xlat11.x = (x_937 * x_939);
  let x_943 : f32 = u_xlat11.y;
  u_xlat22 = max(x_943, 0.100000001f);
  let x_946 : f32 = u_xlat22;
  let x_948 : f32 = u_xlat11.x;
  u_xlat11.x = (x_946 * x_948);
  let x_951 : f32 = u_xlat35;
  let x_953 : f32 = u_xlat11.x;
  u_xlat11.x = (x_951 * x_953);
  let x_957 : f32 = u_xlat1.x;
  let x_959 : f32 = u_xlat11.x;
  u_xlat11.x = (x_957 / x_959);
  let x_962 : vec3<f32> = u_xlat2;
  let x_963 : vec2<f32> = u_xlat11;
  let x_966 : vec4<f32> = u_xlat6;
  let x_968 : vec3<f32> = ((x_962 * vec3<f32>(x_963.x, x_963.x, x_963.x)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec3<f32> = u_xlat5;
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_971 * vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_976 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_978 : f32 = x_282.unity_LightData.y;
  u_xlat11.x = min(x_976, x_978);
  let x_984 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_984));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_996 : u32 = u_xlatu_loop_1;
    let x_997 : u32 = u_xlatu11;
    if ((x_996 < x_997)) {
    } else {
      break;
    }
    let x_1000 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1000 >> 2u);
    let x_1004 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1004 & 3u));
    let x_1008 : u32 = u_xlatu36;
    let x_1011 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_1008)];
    let x_1021 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1026 : vec4<u32> = indexable[x_1021];
    u_xlat36 = dot(x_1011, bitcast<vec4<f32>>(x_1026));
    let x_1030 : f32 = u_xlat36;
    u_xlati36 = i32(x_1030);
    let x_1032 : vec3<f32> = vs_INTERP0;
    let x_1044 : i32 = u_xlati36;
    let x_1046 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1044];
    let x_1049 : i32 = u_xlati36;
    let x_1051 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1049];
    u_xlat8 = ((-(x_1032) * vec3<f32>(x_1046.w, x_1046.w, x_1046.w)) + vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
    let x_1054 : vec3<f32> = u_xlat8;
    let x_1055 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1054, x_1055);
    let x_1057 : f32 = u_xlat38;
    u_xlat38 = max(x_1057, 6.10351562e-05f);
    let x_1060 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1060);
    let x_1063 : f32 = u_xlat39;
    let x_1065 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1063, x_1063, x_1063) * x_1065);
    let x_1068 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1068);
    let x_1070 : f32 = u_xlat38;
    let x_1071 : i32 = u_xlati36;
    let x_1073 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1071].x;
    u_xlat38 = (x_1070 * x_1073);
    let x_1075 : f32 = u_xlat38;
    let x_1077 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1075) * x_1077) + 1.0f);
    let x_1080 : f32 = u_xlat38;
    u_xlat38 = max(x_1080, 0.0f);
    let x_1082 : f32 = u_xlat38;
    let x_1083 : f32 = u_xlat38;
    u_xlat38 = (x_1082 * x_1083);
    let x_1085 : f32 = u_xlat38;
    let x_1086 : f32 = u_xlat40;
    u_xlat38 = (x_1085 * x_1086);
    let x_1088 : i32 = u_xlati36;
    let x_1090 : vec4<f32> = x_1043.x_AdditionalLightsSpotDir[x_1088];
    let x_1092 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), x_1092);
    let x_1094 : f32 = u_xlat40;
    let x_1095 : i32 = u_xlati36;
    let x_1097 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1095].z;
    let x_1099 : i32 = u_xlati36;
    let x_1101 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1099].w;
    u_xlat40 = ((x_1094 * x_1097) + x_1101);
    let x_1103 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1103, 0.0f, 1.0f);
    let x_1105 : f32 = u_xlat40;
    let x_1106 : f32 = u_xlat40;
    u_xlat40 = (x_1105 * x_1106);
    let x_1108 : f32 = u_xlat38;
    let x_1109 : f32 = u_xlat40;
    u_xlat38 = (x_1108 * x_1109);
    let x_1112 : f32 = u_xlat37;
    let x_1114 : i32 = u_xlati36;
    let x_1116 : vec4<f32> = x_1043.x_AdditionalLightsColor[x_1114];
    u_xlat10 = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1119 : vec4<f32> = u_xlat3;
    let x_1121 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), x_1121);
    let x_1123 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1123, 0.0f, 1.0f);
    let x_1125 : f32 = u_xlat36;
    let x_1126 : f32 = u_xlat38;
    u_xlat36 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat36;
    let x_1130 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1128, x_1128, x_1128) * x_1130);
    let x_1132 : vec3<f32> = u_xlat8;
    let x_1133 : f32 = u_xlat39;
    let x_1136 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1132 * vec3<f32>(x_1133, x_1133, x_1133)) + x_1136);
    let x_1138 : vec3<f32> = u_xlat8;
    let x_1139 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1138, x_1139);
    let x_1141 : f32 = u_xlat36;
    u_xlat36 = max(x_1141, 1.17549435e-37f);
    let x_1143 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1143);
    let x_1145 : f32 = u_xlat36;
    let x_1147 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1145, x_1145, x_1145) * x_1147);
    let x_1149 : vec4<f32> = u_xlat3;
    let x_1151 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), x_1151);
    let x_1153 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1153, 0.0f, 1.0f);
    let x_1155 : vec3<f32> = u_xlat9;
    let x_1156 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1155, x_1156);
    let x_1158 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1158, 0.0f, 1.0f);
    let x_1160 : f32 = u_xlat36;
    let x_1161 : f32 = u_xlat36;
    u_xlat36 = (x_1160 * x_1161);
    let x_1163 : f32 = u_xlat36;
    let x_1165 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1163 * x_1165) + 1.000010014f);
    let x_1168 : f32 = u_xlat38;
    let x_1169 : f32 = u_xlat38;
    u_xlat38 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat36;
    let x_1172 : f32 = u_xlat36;
    u_xlat36 = (x_1171 * x_1172);
    let x_1174 : f32 = u_xlat38;
    u_xlat38 = max(x_1174, 0.100000001f);
    let x_1176 : f32 = u_xlat36;
    let x_1177 : f32 = u_xlat38;
    u_xlat36 = (x_1176 * x_1177);
    let x_1179 : f32 = u_xlat35;
    let x_1180 : f32 = u_xlat36;
    u_xlat36 = (x_1179 * x_1180);
    let x_1183 : f32 = u_xlat1.x;
    let x_1184 : f32 = u_xlat36;
    u_xlat36 = (x_1183 / x_1184);
    let x_1186 : vec3<f32> = u_xlat2;
    let x_1187 : f32 = u_xlat36;
    let x_1190 : vec4<f32> = u_xlat6;
    u_xlat8 = ((x_1186 * vec3<f32>(x_1187, x_1187, x_1187)) + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
    let x_1193 : vec3<f32> = u_xlat8;
    let x_1194 : vec3<f32> = u_xlat10;
    let x_1196 : vec4<f32> = u_xlat7;
    let x_1198 : vec3<f32> = ((x_1193 * x_1194) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
    let x_1199 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);

    continuing {
      let x_1201 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1201 + bitcast<u32>(1i));
    }
  }
  let x_1203 : vec3<f32> = u_xlat12;
  let x_1204 : f32 = u_xlat33;
  let x_1207 : vec3<f32> = u_xlat5;
  let x_1208 : vec3<f32> = ((x_1203 * vec3<f32>(x_1204, x_1204, x_1204)) + x_1207);
  let x_1209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1213 : vec4<f32> = u_xlat7;
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) + vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1223 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1225 : f32 = x_282.unity_RenderingLayer.x;
  u_xlatu0 = (x_1223 & bitcast<u32>(x_1225));
  let x_1228 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1228);
  let x_1233 : f32 = u_xlat0.x;
  let x_1236 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1233 * x_1236);
  let x_1241 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1241, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1245 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1245.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

