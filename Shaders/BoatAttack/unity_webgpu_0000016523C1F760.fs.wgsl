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

@group(1) @binding(2) var<uniform> x_289 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_423 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1278 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_410 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_886 : f32;
  var u_xlat26 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
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
  let x_113 : vec3<f32> = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat3;
  let x_119 : vec4<f32> = u_xlat4;
  let x_122 : vec3<f32> = ((-(vec3<f32>(x_116.x, x_116.y, x_116.z)) * vec3<f32>(x_119.x, x_119.y, x_119.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_125.x, x_125.y, x_125.z) * x_127);
  let x_129 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_129 + x_130);
  let x_138 : vec4<f32> = u_xlat0;
  let x_140 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_138.x, x_138.y, x_138.z, x_138.x));
  let x_142 : vec3<bool> = vec3<bool>(x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_148);
  let x_153 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_165);
  let x_169 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = u_xlat4;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec3<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_179 * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_186.x, x_186.y, x_186.z)) + x_189);
  let x_191 : f32 = u_xlat23;
  let x_193 : vec3<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_191, x_191, x_191) * x_193) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_199 + -0.150000006f);
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_204);
  let x_208 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_208) + 1.0f);
  let x_212 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_217);
  let x_223 : vec4<f32> = vs_INTERP3;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_223.x, x_223.y), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.w);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : f32 = u_xlat3.x;
  let x_234 : f32 = u_xlat3.z;
  u_xlat3.x = (x_232 * x_234);
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat11 = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_247 : vec2<f32> = u_xlat11;
  let x_248 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat23;
  u_xlat23 = min(x_250, 1.0f);
  let x_252 : f32 = u_xlat23;
  u_xlat23 = (-(x_252) + 1.0f);
  let x_255 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_255);
  let x_257 : f32 = u_xlat23;
  u_xlat23 = max(x_257, 1.00000002e-16f);
  let x_261 : f32 = u_xlat1.x;
  let x_263 : f32 = u_xlat0.x;
  u_xlat0.x = (x_261 + x_263);
  let x_267 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_267, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_271, 0.0f);
  let x_275 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_275, 0.850000024f);
  let x_283 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_283);
  let x_291 : f32 = x_289.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_291 >= 0.0f);
  let x_296 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_296);
  let x_300 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_300);
  let x_304 : f32 = u_xlat12.z;
  let x_306 : f32 = u_xlat12.x;
  u_xlat12.x = (x_304 * x_306);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.z, x_311.x, x_311.y) * vec3<f32>(x_313.y, x_313.z, x_313.x));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = vs_INTERP1;
  let x_320 : vec4<f32> = vs_INTERP2;
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.x, x_320.y)) + -(vec3<f32>(x_323.x, x_323.y, x_323.z)));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = u_xlat12;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.x, x_329.x) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat11;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec2<f32> = u_xlat11;
  let x_345 : vec4<f32> = vs_INTERP2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat23;
  let x_355 : vec3<f32> = vs_INTERP1;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_353, x_353, x_353) * x_355) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec3<f32> = u_xlat12;
  let x_361 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_360, x_361);
  let x_365 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_365);
  let x_368 : vec2<f32> = u_xlat11;
  let x_370 : vec3<f32> = u_xlat12;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_377 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_377 == 0.0f);
  let x_380 : vec3<f32> = vs_INTERP0;
  let x_385 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_380) + x_385);
  let x_388 : vec3<f32> = u_xlat12;
  let x_389 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_388, x_389);
  let x_391 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_391);
  let x_393 : f32 = u_xlat22;
  let x_395 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_393, x_393, x_393) * x_395);
  let x_400 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_400;
  let x_403 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_403;
  let x_407 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_407;
  let x_409 : bool = u_xlatb11;
  if (x_409) {
    let x_413 : vec3<f32> = u_xlat12;
    x_410 = x_413;
  } else {
    let x_415 : vec4<f32> = u_xlat4;
    x_410 = vec3<f32>(x_415.x, x_415.y, x_415.z);
  }
  let x_417 : vec3<f32> = x_410;
  u_xlat12 = x_417;
  let x_418 : vec3<f32> = vs_INTERP0;
  let x_425 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres0;
  let x_428 : vec3<f32> = (x_418 + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_433 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres1;
  let x_436 : vec3<f32> = (x_431 + -(vec3<f32>(x_433.x, x_433.y, x_433.z)));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec3<f32> = vs_INTERP0;
  let x_442 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres2;
  let x_445 : vec3<f32> = (x_440 + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_451 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_449 + -(vec3<f32>(x_451.x, x_451.y, x_451.z)));
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_473 : vec3<f32> = u_xlat7;
  let x_474 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_473, x_474);
  let x_477 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = x_423.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_477 < x_480);
  let x_483 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_483);
  let x_487 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_487);
  let x_491 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_491);
  let x_495 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_495);
  let x_499 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_499);
  let x_504 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_504);
  let x_508 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_508);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat5;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(x_513.y, x_513.z, x_513.w));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat4;
  let x_521 : vec3<f32> = max(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_522.x, x_521.x, x_521.y, x_521.z);
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat11.x = dot(x_524, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_531 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_531) + 4.0f);
  let x_538 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_538);
  let x_542 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_542) << bitcast<u32>(2i));
  let x_545 : vec3<f32> = vs_INTERP0;
  let x_547 : i32 = u_xlati11;
  let x_550 : i32 = u_xlati11;
  let x_554 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_547 + 1i) / 4i)][((x_550 + 1i) % 4i)];
  let x_556 : vec3<f32> = (vec3<f32>(x_545.y, x_545.y, x_545.y) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : i32 = u_xlati11;
  let x_561 : i32 = u_xlati11;
  let x_564 : vec4<f32> = x_423.x_MainLightWorldToShadow[(x_559 / 4i)][(x_561 % 4i)];
  let x_566 : vec3<f32> = vs_INTERP0;
  let x_569 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566.x, x_566.x, x_566.x)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati11;
  let x_577 : i32 = u_xlati11;
  let x_581 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_574 + 2i) / 4i)][((x_577 + 2i) % 4i)];
  let x_583 : vec3<f32> = vs_INTERP0;
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_583.z, x_583.z, x_583.z)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : i32 = u_xlati11;
  let x_596 : i32 = u_xlati11;
  let x_600 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_593 + 3i) / 4i)][((x_596 + 3i) % 4i)];
  let x_602 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : f32 = vs_INTERP0.y;
  let x_608 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_606 * x_608);
  let x_612 : f32 = x_44.unity_MatrixV[0i].z;
  let x_614 : f32 = vs_INTERP0.x;
  let x_617 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_612 * x_614) + x_617);
  let x_621 : f32 = x_44.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_INTERP0.z;
  let x_626 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_621 * x_623) + x_626);
  let x_630 : f32 = u_xlat11.x;
  let x_632 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_630 + x_632);
  let x_636 : f32 = u_xlat11.x;
  let x_640 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_636) + -(x_640));
  let x_645 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_645, 0.0f);
  let x_649 : f32 = u_xlat11.x;
  let x_652 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_649 * x_652);
  u_xlat3.w = 1.0f;
  let x_658 : vec4<f32> = x_289.unity_SHAr;
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_658, x_659);
  let x_664 : vec4<f32> = x_289.unity_SHAg;
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_664, x_665);
  let x_670 : vec4<f32> = x_289.unity_SHAb;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_670, x_671);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_674.y, x_674.z, x_674.z, x_674.x) * vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.z));
  let x_681 : vec4<f32> = x_289.unity_SHBr;
  let x_682 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_681, x_682);
  let x_687 : vec4<f32> = x_289.unity_SHBg;
  let x_688 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_687, x_688);
  let x_693 : vec4<f32> = x_289.unity_SHBb;
  let x_694 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_693, x_694);
  let x_698 : f32 = u_xlat3.y;
  let x_700 : f32 = u_xlat3.y;
  u_xlat22 = (x_698 * x_700);
  let x_703 : f32 = u_xlat3.x;
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = u_xlat22;
  u_xlat22 = ((x_703 * x_705) + -(x_707));
  let x_712 : vec4<f32> = x_289.unity_SHC;
  let x_714 : f32 = u_xlat22;
  let x_717 : vec3<f32> = u_xlat7;
  let x_718 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714, x_714, x_714)) + x_717);
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat5;
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat5;
  let x_730 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_735 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
  let x_740 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_736.x, x_736.y));
  let x_741 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat6;
  let x_745 : vec4<f32> = hlslcc_FragCoord;
  let x_747 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) * vec2<f32>(x_745.x, x_745.y));
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_751 : f32 = u_xlat6.y;
  let x_754 : f32 = x_44.x_ScaleBiasRt.x;
  let x_757 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_751 * x_754) + x_757);
  let x_759 : f32 = u_xlat22;
  u_xlat6.z = (-(x_759) + 1.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_764) * 0.959999979f) + 0.959999979f);
  let x_770 : f32 = u_xlat22;
  u_xlat35 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat22;
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_773, x_773, x_773) * x_775);
  let x_777 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_777 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_781.x, x_781.x, x_781.x) * x_783) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_789 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_789) + 1.0f);
  let x_794 : f32 = u_xlat0.x;
  let x_796 : f32 = u_xlat0.x;
  u_xlat22 = (x_794 * x_796);
  let x_799 : f32 = u_xlat22;
  let x_800 : f32 = u_xlat22;
  u_xlat36 = (x_799 * x_800);
  let x_803 : f32 = u_xlat1.x;
  let x_804 : f32 = u_xlat35;
  u_xlat1.x = (x_803 + x_804);
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_808, 1.0f);
  let x_811 : f32 = u_xlat22;
  u_xlat35 = ((x_811 * 4.0f) + 2.0f);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : f32 = x_44.x_GlobalMipBias.x;
  let x_824 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_820.x, x_820.z), x_823);
  u_xlat37 = x_824.x;
  let x_827 : f32 = u_xlat37;
  u_xlat38 = (x_827 + -1.0f);
  let x_830 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_831 : f32 = u_xlat38;
  u_xlat38 = ((x_830 * x_831) + 1.0f);
  let x_836 : f32 = u_xlat0.w;
  let x_837 : f32 = u_xlat37;
  u_xlat33 = min(x_836, x_837);
  let x_840 : vec4<f32> = u_xlat4;
  let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
  let x_843 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_841.x, x_841.y, x_843);
  let x_855 : vec3<f32> = txVec0;
  let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
  u_xlat4.x = x_857;
  let x_861 : f32 = x_423.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_861) + 1.0f);
  let x_866 : f32 = u_xlat4.x;
  let x_868 : f32 = x_423.x_MainLightShadowParams.x;
  let x_871 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_866 * x_868) + x_871);
  let x_876 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_876);
  let x_880 : f32 = u_xlat4.z;
  u_xlatb26 = (x_880 >= 1.0f);
  let x_882 : bool = u_xlatb26;
  let x_883 : bool = u_xlatb15;
  u_xlatb15 = (x_882 | x_883);
  let x_885 : bool = u_xlatb15;
  if (x_885) {
    x_886 = 1.0f;
  } else {
    let x_891 : f32 = u_xlat4.x;
    x_886 = x_891;
  }
  let x_892 : f32 = x_886;
  u_xlat4.x = x_892;
  let x_894 : vec3<f32> = vs_INTERP0;
  let x_896 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_894 + -(x_896));
  let x_899 : vec3<f32> = u_xlat15;
  let x_900 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_899, x_900);
  let x_904 : f32 = u_xlat15.x;
  let x_906 : f32 = x_423.x_MainLightShadowParams.z;
  let x_909 : f32 = x_423.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_904 * x_906) + x_909);
  let x_913 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_913, 0.0f, 1.0f);
  let x_918 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_918) + 1.0f);
  let x_922 : f32 = u_xlat15.x;
  let x_923 : f32 = u_xlat26;
  let x_926 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_922 * x_923) + x_926);
  let x_929 : f32 = u_xlat38;
  let x_932 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_929, x_929, x_929) * vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec3<f32> = u_xlat12;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_935), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_942 : f32 = u_xlat6.x;
  let x_944 : f32 = u_xlat6.x;
  u_xlat6.x = (x_942 + x_944);
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec4<f32> = u_xlat6;
  let x_953 : vec3<f32> = u_xlat12;
  let x_955 : vec3<f32> = ((vec3<f32>(x_947.x, x_947.y, x_947.z) * -(vec3<f32>(x_949.x, x_949.x, x_949.x))) + -(x_953));
  let x_956 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_959 : vec4<f32> = u_xlat3;
  let x_961 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
  let x_963 : f32 = u_xlat39;
  u_xlat39 = clamp(x_963, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat39;
  u_xlat39 = (-(x_965) + 1.0f);
  let x_968 : f32 = u_xlat39;
  let x_969 : f32 = u_xlat39;
  u_xlat39 = (x_968 * x_969);
  let x_971 : f32 = u_xlat39;
  let x_972 : f32 = u_xlat39;
  u_xlat39 = (x_971 * x_972);
  let x_976 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_976) * 0.699999988f) + 1.700000048f);
  let x_983 : f32 = u_xlat0.x;
  let x_984 : f32 = u_xlat40;
  u_xlat0.x = (x_983 * x_984);
  let x_988 : f32 = u_xlat0.x;
  u_xlat0.x = (x_988 * 6.0f);
  let x_1001 : vec4<f32> = u_xlat6;
  let x_1004 : f32 = u_xlat0.x;
  let x_1005 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1001.x, x_1001.y, x_1001.z), x_1004);
  u_xlat8 = x_1005;
  let x_1007 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1007 + -1.0f);
  let x_1011 : f32 = x_289.unity_SpecCube0_HDR.w;
  let x_1013 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1011 * x_1013) + 1.0f);
  let x_1018 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1018, 0.0f);
  let x_1022 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1022);
  let x_1026 : f32 = u_xlat0.x;
  let x_1028 : f32 = x_289.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1026 * x_1028);
  let x_1032 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1032);
  let x_1036 : f32 = u_xlat0.x;
  let x_1038 : f32 = x_289.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1036 * x_1038);
  let x_1041 : vec4<f32> = u_xlat8;
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1045 : vec3<f32> = (vec3<f32>(x_1041.x, x_1041.y, x_1041.z) * vec3<f32>(x_1043.x, x_1043.x, x_1043.x));
  let x_1046 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : f32 = u_xlat22;
  let x_1050 : f32 = u_xlat22;
  let x_1054 : vec2<f32> = ((vec2<f32>(x_1048, x_1048) * vec2<f32>(x_1050, x_1050)) + vec2<f32>(-1.0f, 1.0f));
  let x_1055 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1055.w);
  let x_1058 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_1058);
  let x_1060 : vec3<f32> = u_xlat2;
  let x_1062 : vec4<f32> = u_xlat1;
  let x_1064 : vec3<f32> = (-(x_1060) + vec3<f32>(x_1062.x, x_1062.x, x_1062.x));
  let x_1065 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : f32 = u_xlat39;
  let x_1069 : vec4<f32> = u_xlat8;
  let x_1072 : vec3<f32> = u_xlat2;
  let x_1073 : vec3<f32> = ((vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z)) + x_1072);
  let x_1074 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : f32 = u_xlat22;
  let x_1078 : vec4<f32> = u_xlat8;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076, x_1076, x_1076) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat6;
  let x_1085 : vec4<f32> = u_xlat8;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat5;
  let x_1092 : vec3<f32> = u_xlat7;
  let x_1094 : vec4<f32> = u_xlat6;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * x_1092) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1100 : f32 = u_xlat4.x;
  let x_1102 : f32 = x_289.unity_LightData.z;
  u_xlat22 = (x_1100 * x_1102);
  let x_1104 : vec4<f32> = u_xlat3;
  let x_1107 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1112 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1112, 0.0f, 1.0f);
  let x_1115 : f32 = u_xlat22;
  let x_1117 : f32 = u_xlat1.x;
  u_xlat22 = (x_1115 * x_1117);
  let x_1119 : f32 = u_xlat22;
  let x_1121 : vec3<f32> = u_xlat15;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1119, x_1119, x_1119) * x_1121);
  let x_1123 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec3<f32> = u_xlat12;
  let x_1127 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1129 : vec3<f32> = (x_1125 + vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec4<f32> = u_xlat6;
  let x_1134 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1137 : f32 = u_xlat22;
  u_xlat22 = max(x_1137, 1.17549435e-37f);
  let x_1140 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_1140);
  let x_1142 : f32 = u_xlat22;
  let x_1144 : vec4<f32> = u_xlat6;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1142, x_1142, x_1142) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec4<f32> = u_xlat3;
  let x_1151 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1154, 0.0f, 1.0f);
  let x_1157 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1159 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1157.x, x_1157.y, x_1157.z), vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1164 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1164, 0.0f, 1.0f);
  let x_1167 : f32 = u_xlat22;
  let x_1168 : f32 = u_xlat22;
  u_xlat22 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat22;
  let x_1172 : f32 = u_xlat0.x;
  u_xlat22 = ((x_1170 * x_1172) + 1.000010014f);
  let x_1177 : f32 = u_xlat1.x;
  let x_1179 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1177 * x_1179);
  let x_1182 : f32 = u_xlat22;
  let x_1183 : f32 = u_xlat22;
  u_xlat22 = (x_1182 * x_1183);
  let x_1186 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1186, 0.100000001f);
  let x_1190 : f32 = u_xlat22;
  let x_1192 : f32 = u_xlat1.x;
  u_xlat22 = (x_1190 * x_1192);
  let x_1194 : f32 = u_xlat35;
  let x_1195 : f32 = u_xlat22;
  u_xlat22 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat36;
  let x_1198 : f32 = u_xlat22;
  u_xlat22 = (x_1197 / x_1198);
  let x_1200 : vec3<f32> = u_xlat2;
  let x_1201 : f32 = u_xlat22;
  let x_1204 : vec3<f32> = u_xlat7;
  let x_1205 : vec3<f32> = ((x_1200 * vec3<f32>(x_1201, x_1201, x_1201)) + x_1204);
  let x_1206 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec4<f32> = u_xlat6;
  let x_1212 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1216 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1218 : f32 = x_289.unity_LightData.y;
  u_xlat22 = min(x_1216, x_1218);
  let x_1221 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1221));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1233 : u32 = u_xlatu_loop_1;
    let x_1234 : u32 = u_xlatu22;
    if ((x_1233 < x_1234)) {
    } else {
      break;
    }
    let x_1237 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1237 >> 2u);
    let x_1240 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1240 & 3u));
    let x_1243 : u32 = u_xlatu37;
    let x_1246 : vec4<f32> = x_289.unity_LightIndices[bitcast<i32>(x_1243)];
    let x_1256 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1261 : vec4<u32> = indexable[x_1256];
    u_xlat37 = dot(x_1246, bitcast<vec4<f32>>(x_1261));
    let x_1265 : f32 = u_xlat37;
    u_xlati37 = i32(x_1265);
    let x_1267 : vec3<f32> = vs_INTERP0;
    let x_1279 : i32 = u_xlati37;
    let x_1281 : vec4<f32> = x_1278.x_AdditionalLightsPosition[x_1279];
    let x_1284 : i32 = u_xlati37;
    let x_1286 : vec4<f32> = x_1278.x_AdditionalLightsPosition[x_1284];
    let x_1288 : vec3<f32> = ((-(x_1267) * vec3<f32>(x_1281.w, x_1281.w, x_1281.w)) + vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
    let x_1289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1291 : vec4<f32> = u_xlat8;
    let x_1293 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1291.x, x_1291.y, x_1291.z), vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1296 : f32 = u_xlat39;
    u_xlat39 = max(x_1296, 6.10351562e-05f);
    let x_1299 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1299);
    let x_1302 : f32 = u_xlat40;
    let x_1304 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1302, x_1302, x_1302) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
    let x_1308 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1308);
    let x_1310 : f32 = u_xlat39;
    let x_1311 : i32 = u_xlati37;
    let x_1313 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1311].x;
    u_xlat39 = (x_1310 * x_1313);
    let x_1315 : f32 = u_xlat39;
    let x_1317 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1315) * x_1317) + 1.0f);
    let x_1320 : f32 = u_xlat39;
    u_xlat39 = max(x_1320, 0.0f);
    let x_1322 : f32 = u_xlat39;
    let x_1323 : f32 = u_xlat39;
    u_xlat39 = (x_1322 * x_1323);
    let x_1325 : f32 = u_xlat39;
    let x_1326 : f32 = u_xlat41;
    u_xlat39 = (x_1325 * x_1326);
    let x_1328 : i32 = u_xlati37;
    let x_1330 : vec4<f32> = x_1278.x_AdditionalLightsSpotDir[x_1328];
    let x_1332 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), x_1332);
    let x_1334 : f32 = u_xlat41;
    let x_1335 : i32 = u_xlati37;
    let x_1337 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1335].z;
    let x_1339 : i32 = u_xlati37;
    let x_1341 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1339].w;
    u_xlat41 = ((x_1334 * x_1337) + x_1341);
    let x_1343 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1343, 0.0f, 1.0f);
    let x_1345 : f32 = u_xlat41;
    let x_1346 : f32 = u_xlat41;
    u_xlat41 = (x_1345 * x_1346);
    let x_1348 : f32 = u_xlat39;
    let x_1349 : f32 = u_xlat41;
    u_xlat39 = (x_1348 * x_1349);
    let x_1352 : f32 = u_xlat38;
    let x_1354 : i32 = u_xlati37;
    let x_1356 : vec4<f32> = x_1278.x_AdditionalLightsColor[x_1354];
    u_xlat10 = (vec3<f32>(x_1352, x_1352, x_1352) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
    let x_1359 : vec4<f32> = u_xlat3;
    let x_1361 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1359.x, x_1359.y, x_1359.z), x_1361);
    let x_1363 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1363, 0.0f, 1.0f);
    let x_1365 : f32 = u_xlat37;
    let x_1366 : f32 = u_xlat39;
    u_xlat37 = (x_1365 * x_1366);
    let x_1368 : f32 = u_xlat37;
    let x_1370 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1368, x_1368, x_1368) * x_1370);
    let x_1372 : vec4<f32> = u_xlat8;
    let x_1374 : f32 = u_xlat40;
    let x_1377 : vec3<f32> = u_xlat12;
    let x_1378 : vec3<f32> = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374, x_1374, x_1374)) + x_1377);
    let x_1379 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
    let x_1381 : vec4<f32> = u_xlat8;
    let x_1383 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1381.x, x_1381.y, x_1381.z), vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : f32 = u_xlat37;
    u_xlat37 = max(x_1386, 1.17549435e-37f);
    let x_1388 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1388);
    let x_1390 : f32 = u_xlat37;
    let x_1392 : vec4<f32> = u_xlat8;
    let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec4<f32> = u_xlat3;
    let x_1399 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1397.x, x_1397.y, x_1397.z), vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
    let x_1402 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1402, 0.0f, 1.0f);
    let x_1404 : vec3<f32> = u_xlat9;
    let x_1405 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1404, vec3<f32>(x_1405.x, x_1405.y, x_1405.z));
    let x_1408 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1408, 0.0f, 1.0f);
    let x_1410 : f32 = u_xlat37;
    let x_1411 : f32 = u_xlat37;
    u_xlat37 = (x_1410 * x_1411);
    let x_1413 : f32 = u_xlat37;
    let x_1415 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1413 * x_1415) + 1.000010014f);
    let x_1418 : f32 = u_xlat39;
    let x_1419 : f32 = u_xlat39;
    u_xlat39 = (x_1418 * x_1419);
    let x_1421 : f32 = u_xlat37;
    let x_1422 : f32 = u_xlat37;
    u_xlat37 = (x_1421 * x_1422);
    let x_1424 : f32 = u_xlat39;
    u_xlat39 = max(x_1424, 0.100000001f);
    let x_1426 : f32 = u_xlat37;
    let x_1427 : f32 = u_xlat39;
    u_xlat37 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat35;
    let x_1430 : f32 = u_xlat37;
    u_xlat37 = (x_1429 * x_1430);
    let x_1432 : f32 = u_xlat36;
    let x_1433 : f32 = u_xlat37;
    u_xlat37 = (x_1432 / x_1433);
    let x_1435 : vec3<f32> = u_xlat2;
    let x_1436 : f32 = u_xlat37;
    let x_1439 : vec3<f32> = u_xlat7;
    let x_1440 : vec3<f32> = ((x_1435 * vec3<f32>(x_1436, x_1436, x_1436)) + x_1439);
    let x_1441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
    let x_1443 : vec4<f32> = u_xlat8;
    let x_1445 : vec3<f32> = u_xlat10;
    let x_1447 : vec4<f32> = u_xlat6;
    let x_1449 : vec3<f32> = ((vec3<f32>(x_1443.x, x_1443.y, x_1443.z) * x_1445) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);

    continuing {
      let x_1452 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1452 + bitcast<u32>(1i));
    }
  }
  let x_1454 : vec4<f32> = u_xlat5;
  let x_1456 : f32 = u_xlat33;
  let x_1459 : vec4<f32> = u_xlat4;
  let x_1461 : vec3<f32> = ((vec3<f32>(x_1454.x, x_1454.y, x_1454.z) * vec3<f32>(x_1456, x_1456, x_1456)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1461.x, x_1462.y, x_1461.y, x_1461.z);
  let x_1464 : vec4<f32> = u_xlat6;
  let x_1466 : vec4<f32> = u_xlat0;
  let x_1468 : vec3<f32> = (vec3<f32>(x_1464.x, x_1464.y, x_1464.z) + vec3<f32>(x_1466.x, x_1466.z, x_1466.w));
  let x_1469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1468.x, x_1469.y, x_1468.y, x_1468.z);
  let x_1472 : f32 = u_xlat11.x;
  let x_1474 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1472 * -(x_1474));
  let x_1479 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1479);
  let x_1482 : vec4<f32> = u_xlat0;
  let x_1486 : vec4<f32> = x_44.unity_FogColor;
  let x_1489 : vec3<f32> = (vec3<f32>(x_1482.x, x_1482.z, x_1482.w) + -(vec3<f32>(x_1486.x, x_1486.y, x_1486.z)));
  let x_1490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1489.x, x_1490.y, x_1489.y, x_1489.z);
  let x_1494 : vec2<f32> = u_xlat11;
  let x_1496 : vec4<f32> = u_xlat0;
  let x_1500 : vec4<f32> = x_44.unity_FogColor;
  let x_1502 : vec3<f32> = ((vec3<f32>(x_1494.x, x_1494.x, x_1494.x) * vec3<f32>(x_1496.x, x_1496.z, x_1496.w)) + vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
  let x_1503 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

