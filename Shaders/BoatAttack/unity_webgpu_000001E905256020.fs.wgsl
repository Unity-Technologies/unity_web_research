struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MaxDepth : f32,
  @size(12)
  padding_1 : u32,
  x_VeraslWater_DepthCamParams : vec4<f32>,
}

struct UnityPerMaterial {
  x_BumpScale : f32,
  @size(12)
  padding_2 : u32,
  x_DitherPattern_TexelSize : vec4<f32>,
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

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_WaterDepthMap_linear_clamp : sampler;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_203 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_362 : MainLightShadows;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitherPattern : sampler;

@group(1) @binding(2) var<uniform> x_1087 : UnityPerDraw;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(13) var sampler_AbsorptionScatteringRamp : sampler;

@group(1) @binding(1) var<uniform> x_1498 : AdditionalLights;

@group(0) @binding(0) var x_PlanarReflectionTexture : texture_2d<f32>;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat3 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlatb14 : bool;
  var x_320 : vec2<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu14 : u32;
  var u_xlati14 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlatb25 : bool;
  var u_xlatb36 : bool;
  var x_590 : f32;
  var u_xlat26 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlat38 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb7 : vec4<bool>;
  var u_xlatu38 : u32;
  var u_xlati38 : i32;
  var txVec1 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu25 : u32;
  var u_xlati25 : i32;
  var u_xlat36 : f32;
  var u_xlat35 : f32;
  var u_xlatu1 : u32;
  var u_xlatu_loop_2 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD6;
  let x_16 : vec4<f32> = vs_TEXCOORD6;
  let x_18 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) / vec2<f32>(x_16.w, x_16.w));
  let x_19 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_18.x, x_18.y, x_19.z);
  let x_34 : vec3<f32> = vs_TEXCOORD3;
  let x_46 : f32 = x_39.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_34.x, x_34.y), x_46);
  u_xlat1 = vec3<f32>(x_47.x, x_47.y, x_47.z);
  let x_55 : vec3<f32> = u_xlat0;
  let x_58 : f32 = x_39.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_55.x, x_55.y), x_58);
  u_xlat22 = x_59.x;
  let x_64 : f32 = x_39.x_ZBufferParams.z;
  let x_65 : f32 = u_xlat22;
  let x_69 : f32 = x_39.x_ZBufferParams.w;
  u_xlat22 = ((x_64 * x_65) + x_69);
  let x_72 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_72);
  let x_74 : f32 = u_xlat22;
  let x_78 : f32 = vs_TEXCOORD5.x;
  let x_82 : f32 = vs_TEXCOORD5.y;
  u_xlat22 = ((x_74 * x_78) + -(x_82));
  let x_88 : vec3<f32> = vs_TEXCOORD1;
  let x_95 : vec2<f32> = ((vec2<f32>(x_88.x, x_88.z) * vec2<f32>(0.002f, 0.002f)) + vec2<f32>(0.5f, 0.5f));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_104.x, x_104.y), 1.0f);
  u_xlat33 = x_106.x;
  let x_108 : f32 = u_xlat33;
  u_xlat33 = (-(x_108) + 1.0f);
  let x_114 : f32 = x_39.x_MaxDepth;
  let x_117 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat34 = (x_114 + x_117);
  let x_119 : f32 = u_xlat33;
  let x_120 : f32 = u_xlat34;
  let x_123 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat33 = ((x_119 * x_120) + -(x_123));
  let x_126 : f32 = u_xlat33;
  let x_128 : f32 = vs_TEXCOORD1.y;
  u_xlat33 = (x_126 + x_128);
  let x_131 : f32 = x_39.x_MaxDepth;
  u_xlat34 = (1.0f / x_131);
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  let x_142 : f32 = x_39.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_139.z, x_139.w), x_142);
  let x_144 : vec2<f32> = vec2<f32>(x_143.x, x_143.y);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat2;
  let x_154 : vec2<f32> = ((vec2<f32>(x_147.x, x_147.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_155.z, x_155.w);
  let x_162 : vec4<f32> = vs_TEXCOORD0;
  let x_165 : f32 = x_39.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat24 = vec2<f32>(x_166.x, x_166.y);
  let x_168 : vec2<f32> = u_xlat24;
  u_xlat24 = ((x_168 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_171 : vec2<f32> = u_xlat24;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec2<f32> = ((x_171 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  let x_179 : f32 = u_xlat22;
  u_xlat3 = (x_179 * 0.005f);
  let x_182 : f32 = u_xlat22;
  u_xlat24.x = ((x_182 * 0.25f) + 0.25f);
  let x_188 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_188, 0.0f, 1.0f);
  let x_192 : vec2<f32> = u_xlat24;
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec2<f32> = (vec2<f32>(x_192.x, x_192.x) * vec2<f32>(x_194.x, x_194.y));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat2;
  let x_205 : f32 = x_203.x_BumpScale;
  let x_209 : vec3<f32> = vs_NORMAL0;
  let x_211 : vec2<f32> = ((vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_205, x_205)) + vec2<f32>(x_209.x, x_209.z));
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_211.x, x_212.y, x_211.y, x_212.w);
  let x_215 : vec3<f32> = u_xlat1;
  let x_218 : vec2<f32> = (-(vec2<f32>(x_215.y, x_215.z)) + vec2<f32>(0.5f, 0.5f));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_219.y, x_218.y, x_219.w);
  u_xlat2.w = 0.0f;
  let x_223 : f32 = vs_NORMAL0.y;
  u_xlat4.y = x_223;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.w, x_225.z) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_240);
  let x_243 : vec2<f32> = u_xlat12;
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.x, x_243.x) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = x_39.unity_MatrixVP[1i];
  u_xlat12 = (-(vec2<f32>(x_250.y, x_250.y)) * vec2<f32>(x_257.x, x_257.z));
  let x_261 : vec4<f32> = x_39.unity_MatrixVP[0i];
  let x_263 : vec4<f32> = u_xlat2;
  let x_267 : vec2<f32> = u_xlat12;
  u_xlat12 = ((vec2<f32>(x_261.x, x_261.z) * -(vec2<f32>(x_263.x, x_263.x))) + x_267);
  let x_271 : vec4<f32> = x_39.unity_MatrixVP[2i];
  let x_273 : vec4<f32> = u_xlat2;
  let x_277 : vec2<f32> = u_xlat12;
  u_xlat12 = ((vec2<f32>(x_271.x, x_271.z) * -(vec2<f32>(x_273.z, x_273.z))) + x_277);
  let x_279 : f32 = u_xlat3;
  u_xlat3 = x_279;
  let x_280 : f32 = u_xlat3;
  u_xlat3 = clamp(x_280, 0.0f, 1.0f);
  let x_282 : vec2<f32> = u_xlat12;
  let x_283 : f32 = u_xlat3;
  let x_286 : vec3<f32> = u_xlat0;
  u_xlat12 = ((x_282 * vec2<f32>(x_283, x_283)) + vec2<f32>(x_286.x, x_286.y));
  let x_292 : vec2<f32> = u_xlat12;
  let x_294 : f32 = x_39.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_ScreenTextures_linear_clamp, x_292, x_294);
  u_xlat3 = x_295.x;
  let x_298 : f32 = x_39.x_ZBufferParams.z;
  let x_299 : f32 = u_xlat3;
  let x_302 : f32 = x_39.x_ZBufferParams.w;
  u_xlat3 = ((x_298 * x_299) + x_302);
  let x_304 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_304);
  let x_306 : f32 = u_xlat3;
  let x_308 : f32 = vs_TEXCOORD5.x;
  let x_311 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_306 * x_308) + -(x_311));
  let x_317 : f32 = u_xlat3;
  u_xlatb14 = (x_317 < 0.0f);
  let x_319 : bool = u_xlatb14;
  if (x_319) {
    let x_323 : vec3<f32> = u_xlat0;
    x_320 = vec2<f32>(x_323.x, x_323.y);
  } else {
    let x_326 : vec2<f32> = u_xlat12;
    x_320 = x_326;
  }
  let x_327 : vec2<f32> = x_320;
  u_xlat12 = x_327;
  let x_328 : bool = u_xlatb14;
  let x_329 : f32 = u_xlat22;
  let x_330 : f32 = u_xlat3;
  u_xlat22 = select(x_330, x_329, x_328);
  let x_332 : vec4<f32> = u_xlat2;
  let x_335 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), x_335);
  let x_337 : f32 = u_xlat3;
  u_xlat3 = (-(x_337) + 1.0f);
  let x_341 : f32 = u_xlat3;
  let x_342 : f32 = u_xlat3;
  u_xlat14.x = (x_341 * x_342);
  let x_346 : f32 = u_xlat14.x;
  let x_348 : f32 = u_xlat14.x;
  u_xlat14.x = (x_346 * x_348);
  let x_352 : f32 = u_xlat14.x;
  let x_353 : f32 = u_xlat3;
  u_xlat3 = (x_352 * x_353);
  let x_355 : f32 = u_xlat3;
  u_xlat3 = clamp(x_355, 0.0f, 1.0f);
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_357 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres1;
  let x_373 : vec3<f32> = (x_368 + -(vec3<f32>(x_370.x, x_370.y, x_370.z)));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres2;
  let x_383 : vec3<f32> = (x_377 + -(vec3<f32>(x_380.x, x_380.y, x_380.z)));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec3<f32> = vs_TEXCOORD1;
  let x_390 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres3;
  let x_393 : vec3<f32> = (x_387 + -(vec3<f32>(x_390.x, x_390.y, x_390.z)));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : vec3<f32> = u_xlat14;
  let x_398 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(x_397, x_398);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat7.y = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_407 : vec4<f32> = u_xlat5;
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_413 : vec4<f32> = u_xlat6;
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_422 : vec4<f32> = u_xlat7;
  let x_424 : vec4<f32> = x_362.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_422 < x_424);
  let x_427 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_427);
  let x_431 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_431);
  let x_435 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_435);
  let x_439 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_439);
  let x_443 : bool = u_xlatb4.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_443);
  let x_448 : bool = u_xlatb4.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_448);
  let x_452 : bool = u_xlatb4.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_452);
  let x_455 : vec3<f32> = u_xlat14;
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat14 = (x_455 + vec3<f32>(x_456.y, x_456.z, x_456.w));
  let x_459 : vec3<f32> = u_xlat14;
  let x_461 : vec3<f32> = max(x_459, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_462.x, x_461.x, x_461.y, x_461.z);
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_464, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_471 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_471) + 4.0f);
  let x_478 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_478);
  let x_482 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_482) << bitcast<u32>(2i));
  let x_485 : vec3<f32> = vs_TEXCOORD1;
  let x_487 : i32 = u_xlati14;
  let x_490 : i32 = u_xlati14;
  let x_494 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_487 + 1i) / 4i)][((x_490 + 1i) % 4i)];
  let x_496 : vec3<f32> = (vec3<f32>(x_485.y, x_485.y, x_485.y) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : i32 = u_xlati14;
  let x_501 : i32 = u_xlati14;
  let x_504 : vec4<f32> = x_362.x_MainLightWorldToShadow[(x_499 / 4i)][(x_501 % 4i)];
  let x_506 : vec3<f32> = vs_TEXCOORD1;
  let x_509 : vec4<f32> = u_xlat4;
  let x_511 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_506.x, x_506.x, x_506.x)) + vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : i32 = u_xlati14;
  let x_517 : i32 = u_xlati14;
  let x_521 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_514 + 2i) / 4i)][((x_517 + 2i) % 4i)];
  let x_523 : vec3<f32> = vs_TEXCOORD1;
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec3<f32> = ((vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_523.z, x_523.z, x_523.z)) + vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : i32 = u_xlati14;
  let x_536 : i32 = u_xlati14;
  let x_540 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_533 + 3i) / 4i)][((x_536 + 3i) % 4i)];
  u_xlat14 = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec3<f32> = u_xlat14;
  let x_545 : vec2<f32> = vec2<f32>(x_544.x, x_544.y);
  let x_547 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_545.x, x_545.y, x_547);
  let x_559 : vec3<f32> = txVec0;
  let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_559.xy, x_559.z);
  u_xlat14.x = x_561;
  let x_565 : f32 = x_362.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_565) + 1.0f);
  let x_570 : f32 = u_xlat14.x;
  let x_572 : f32 = x_362.x_MainLightShadowParams.x;
  let x_575 : f32 = u_xlat25.x;
  u_xlat14.x = ((x_570 * x_572) + x_575);
  let x_580 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_580);
  let x_584 : f32 = u_xlat14.z;
  u_xlatb36 = (x_584 >= 1.0f);
  let x_586 : bool = u_xlatb36;
  let x_587 : bool = u_xlatb25;
  u_xlatb25 = (x_586 | x_587);
  let x_589 : bool = u_xlatb25;
  if (x_589) {
    x_590 = 1.0f;
  } else {
    let x_595 : f32 = u_xlat14.x;
    x_590 = x_595;
  }
  let x_596 : f32 = x_590;
  u_xlat14.x = x_596;
  let x_598 : vec3<f32> = u_xlat0;
  let x_601 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat25 = (vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_601.x, x_601.y));
  let x_604 : f32 = u_xlat22;
  let x_608 : vec2<f32> = (vec2<f32>(x_604, x_604) * vec2<f32>(20.0f, 0.25f));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat4;
  let x_613 : vec3<f32> = vs_TEXCOORD2;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.y, x_611.y, x_611.y) * -(x_613));
  let x_616 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  u_xlat26 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_625 : u32 = u_xlatu_loop_1;
    if ((x_625 < 4u)) {
    } else {
      break;
    }
    let x_629 : u32 = u_xlatu_loop_1;
    u_xlat38 = f32(x_629);
    let x_631 : f32 = u_xlat38;
    let x_634 : vec4<f32> = x_39.x_ScreenParams;
    let x_636 : vec2<f32> = (vec2<f32>(x_631, x_631) * vec2<f32>(x_634.x, x_634.y));
    let x_637 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
    let x_639 : vec2<f32> = u_xlat25;
    let x_641 : vec4<f32> = x_203.x_DitherPattern_TexelSize;
    let x_644 : vec4<f32> = u_xlat6;
    let x_646 : vec2<f32> = ((x_639 * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.x, x_644.y));
    let x_647 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
    let x_654 : vec4<f32> = u_xlat6;
    let x_657 : f32 = x_39.x_GlobalMipBias.x;
    let x_658 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_654.x, x_654.y), x_657);
    let x_659 : vec3<f32> = vec3<f32>(x_658.x, x_658.y, x_658.z);
    let x_660 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat6;
    let x_667 : vec3<f32> = ((vec3<f32>(x_662.x, x_662.z, x_662.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_668 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat4;
    let x_672 : vec4<f32> = u_xlat6;
    let x_674 : vec3<f32> = (vec3<f32>(x_670.y, x_670.y, x_670.y) * vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_674.z);
    let x_677 : f32 = u_xlat38;
    let x_679 : vec4<f32> = u_xlat6;
    let x_681 : vec3<f32> = (vec3<f32>(x_677, x_677, x_677) * vec3<f32>(x_679.x, x_679.y, x_679.w));
    let x_682 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_681.z);
    let x_684 : vec4<f32> = u_xlat6;
    let x_689 : vec3<f32> = vs_TEXCOORD1;
    let x_690 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.w) * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + x_689);
    let x_691 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_690.z);
    let x_693 : f32 = u_xlat38;
    let x_695 : f32 = u_xlat6.z;
    u_xlat38 = (x_693 + x_695);
    let x_697 : vec4<f32> = u_xlat5;
    let x_699 : f32 = u_xlat38;
    let x_702 : vec4<f32> = u_xlat6;
    let x_704 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699, x_699, x_699)) + vec3<f32>(x_702.x, x_702.y, x_702.w));
    let x_705 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_707 : vec4<f32> = u_xlat6;
    let x_710 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres0;
    let x_713 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + -(vec3<f32>(x_710.x, x_710.y, x_710.z)));
    let x_714 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_717 : vec4<f32> = u_xlat6;
    let x_720 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres1;
    let x_723 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + -(vec3<f32>(x_720.x, x_720.y, x_720.z)));
    let x_724 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_727 : vec4<f32> = u_xlat6;
    let x_730 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres2;
    u_xlat9 = (vec3<f32>(x_727.x, x_727.y, x_727.z) + -(vec3<f32>(x_730.x, x_730.y, x_730.z)));
    let x_735 : vec4<f32> = u_xlat6;
    let x_738 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres3;
    u_xlat10 = (vec3<f32>(x_735.x, x_735.y, x_735.z) + -(vec3<f32>(x_738.x, x_738.y, x_738.z)));
    let x_742 : vec4<f32> = u_xlat7;
    let x_744 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_748 : vec4<f32> = u_xlat8;
    let x_750 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_748.x, x_748.y, x_748.z), vec3<f32>(x_750.x, x_750.y, x_750.z));
    let x_754 : vec3<f32> = u_xlat9;
    let x_755 : vec3<f32> = u_xlat9;
    u_xlat7.z = dot(x_754, x_755);
    let x_758 : vec3<f32> = u_xlat10;
    let x_759 : vec3<f32> = u_xlat10;
    u_xlat7.w = dot(x_758, x_759);
    let x_763 : vec4<f32> = u_xlat7;
    let x_765 : vec4<f32> = x_362.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_763 < x_765);
    let x_768 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_768);
    let x_772 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_772);
    let x_776 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_776);
    let x_780 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_780);
    let x_784 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_784);
    let x_788 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_788);
    let x_792 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_792);
    let x_795 : vec4<f32> = u_xlat7;
    let x_797 : vec4<f32> = u_xlat8;
    let x_799 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) + vec3<f32>(x_797.y, x_797.z, x_797.w));
    let x_800 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
    let x_802 : vec4<f32> = u_xlat7;
    let x_804 : vec3<f32> = max(vec3<f32>(x_802.x, x_802.y, x_802.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_805 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_805.x, x_804.x, x_804.y, x_804.z);
    let x_807 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_807, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_809 : f32 = u_xlat38;
    u_xlat38 = (-(x_809) + 4.0f);
    let x_813 : f32 = u_xlat38;
    u_xlatu38 = u32(x_813);
    let x_816 : u32 = u_xlatu38;
    u_xlati38 = (bitcast<i32>(x_816) << bitcast<u32>(2i));
    let x_819 : vec4<f32> = u_xlat6;
    let x_821 : i32 = u_xlati38;
    let x_824 : i32 = u_xlati38;
    let x_828 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_821 + 1i) / 4i)][((x_824 + 1i) % 4i)];
    let x_830 : vec3<f32> = (vec3<f32>(x_819.y, x_819.y, x_819.y) * vec3<f32>(x_828.x, x_828.y, x_828.z));
    let x_831 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
    let x_833 : i32 = u_xlati38;
    let x_835 : i32 = u_xlati38;
    let x_838 : vec4<f32> = x_362.x_MainLightWorldToShadow[(x_833 / 4i)][(x_835 % 4i)];
    let x_840 : vec4<f32> = u_xlat6;
    let x_843 : vec4<f32> = u_xlat7;
    let x_845 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840.x, x_840.x, x_840.x)) + vec3<f32>(x_843.x, x_843.y, x_843.z));
    let x_846 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_845.z);
    let x_848 : i32 = u_xlati38;
    let x_851 : i32 = u_xlati38;
    let x_855 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_848 + 2i) / 4i)][((x_851 + 2i) % 4i)];
    let x_857 : vec4<f32> = u_xlat6;
    let x_860 : vec4<f32> = u_xlat6;
    let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_857.z, x_857.z, x_857.z)) + vec3<f32>(x_860.x, x_860.y, x_860.w));
    let x_863 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_865 : vec4<f32> = u_xlat6;
    let x_867 : i32 = u_xlati38;
    let x_870 : i32 = u_xlati38;
    let x_874 : vec4<f32> = x_362.x_MainLightWorldToShadow[((x_867 + 3i) / 4i)][((x_870 + 3i) % 4i)];
    let x_876 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(x_874.x, x_874.y, x_874.z));
    let x_877 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
    let x_880 : vec4<f32> = u_xlat6;
    let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
    let x_883 : f32 = u_xlat6.z;
    txVec1 = vec3<f32>(x_881.x, x_881.y, x_883);
    let x_890 : vec3<f32> = txVec1;
    let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
    u_xlat38 = x_892;
    let x_893 : f32 = u_xlat26;
    let x_894 : f32 = u_xlat38;
    u_xlat26 = (x_893 + x_894);

    continuing {
      let x_896 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_896 + bitcast<u32>(1i));
    }
  }
  let x_898 : vec3<f32> = vs_TEXCOORD1;
  let x_901 : vec3<f32> = (x_898 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = vs_TEXCOORD1;
  let x_907 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres0;
  let x_910 : vec3<f32> = ((x_904 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_907.x, x_907.y, x_907.z)));
  let x_911 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = vs_TEXCOORD1;
  let x_916 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres1;
  let x_919 : vec3<f32> = ((x_913 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_916.x, x_916.y, x_916.z)));
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec3<f32> = vs_TEXCOORD1;
  let x_925 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres2;
  let x_928 : vec3<f32> = ((x_922 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_925.x, x_925.y, x_925.z)));
  let x_929 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec3<f32> = vs_TEXCOORD1;
  let x_934 : vec4<f32> = x_362.x_CascadeShadowSplitSpheres3;
  u_xlat9 = ((x_931 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_934.x, x_934.y, x_934.z)));
  let x_938 : vec4<f32> = u_xlat6;
  let x_940 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_938.x, x_938.y, x_938.z), vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_944 : vec4<f32> = u_xlat7;
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_950 : vec4<f32> = u_xlat8;
  let x_952 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_956 : vec3<f32> = u_xlat9;
  let x_957 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_956, x_957);
  let x_961 : vec4<f32> = u_xlat6;
  let x_963 : vec4<f32> = x_362.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_961 < x_963);
  let x_966 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_966);
  let x_970 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_970);
  let x_974 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_974);
  let x_978 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_978);
  let x_982 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_982);
  let x_986 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_986);
  let x_990 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_990);
  let x_993 : vec4<f32> = u_xlat6;
  let x_995 : vec4<f32> = u_xlat7;
  let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) + vec3<f32>(x_995.y, x_995.z, x_995.w));
  let x_998 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat6;
  let x_1002 : vec3<f32> = max(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1003 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1003.x, x_1002.x, x_1002.y, x_1002.z);
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(x_1005, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_1009 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_1009) + 4.0f);
  let x_1015 : f32 = u_xlat25.x;
  u_xlatu25 = u32(x_1015);
  let x_1018 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_1018) << bitcast<u32>(2i));
  let x_1023 : f32 = u_xlat5.y;
  let x_1024 : i32 = u_xlati25;
  let x_1027 : i32 = u_xlati25;
  let x_1031 : f32 = x_362.x_MainLightWorldToShadow[((x_1024 + 1i) / 4i)][((x_1027 + 1i) % 4i)].z;
  u_xlat36 = (x_1023 * x_1031);
  let x_1033 : i32 = u_xlati25;
  let x_1035 : i32 = u_xlati25;
  let x_1038 : f32 = x_362.x_MainLightWorldToShadow[(x_1033 / 4i)][(x_1035 % 4i)].z;
  let x_1040 : f32 = u_xlat5.x;
  let x_1042 : f32 = u_xlat36;
  u_xlat36 = ((x_1038 * x_1040) + x_1042);
  let x_1044 : i32 = u_xlati25;
  let x_1047 : i32 = u_xlati25;
  let x_1051 : f32 = x_362.x_MainLightWorldToShadow[((x_1044 + 2i) / 4i)][((x_1047 + 2i) % 4i)].z;
  let x_1053 : f32 = u_xlat5.z;
  let x_1055 : f32 = u_xlat36;
  u_xlat36 = ((x_1051 * x_1053) + x_1055);
  let x_1057 : f32 = u_xlat36;
  let x_1058 : i32 = u_xlati25;
  let x_1061 : i32 = u_xlati25;
  let x_1065 : f32 = x_362.x_MainLightWorldToShadow[((x_1058 + 3i) / 4i)][((x_1061 + 3i) % 4i)].z;
  u_xlat25.x = (x_1057 + x_1065);
  let x_1069 : f32 = u_xlat25.x;
  u_xlatb36 = (0.0f >= x_1069);
  let x_1072 : f32 = u_xlat25.x;
  u_xlatb25 = (x_1072 >= 1.0f);
  let x_1074 : bool = u_xlatb25;
  let x_1075 : bool = u_xlatb36;
  u_xlatb25 = (x_1074 | x_1075);
  let x_1077 : f32 = u_xlat26;
  u_xlat36 = (x_1077 * 0.25f);
  let x_1079 : bool = u_xlatb25;
  let x_1080 : f32 = u_xlat36;
  u_xlat25.x = select(x_1080, 1.0f, x_1079);
  u_xlat2.w = 1.0f;
  let x_1090 : vec4<f32> = x_1087.unity_SHAr;
  let x_1091 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_1090, x_1091);
  let x_1096 : vec4<f32> = x_1087.unity_SHAg;
  let x_1097 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_1096, x_1097);
  let x_1102 : vec4<f32> = x_1087.unity_SHAb;
  let x_1103 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_1102, x_1103);
  let x_1106 : vec4<f32> = u_xlat2;
  let x_1108 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_1106.y, x_1106.z, x_1106.z, x_1106.x) * vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1108.z));
  let x_1113 : vec4<f32> = x_1087.unity_SHBr;
  let x_1114 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_1113, x_1114);
  let x_1119 : vec4<f32> = x_1087.unity_SHBg;
  let x_1120 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_1119, x_1120);
  let x_1125 : vec4<f32> = x_1087.unity_SHBb;
  let x_1126 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_1125, x_1126);
  let x_1131 : f32 = u_xlat2.y;
  let x_1133 : f32 = u_xlat2.y;
  u_xlat35 = (x_1131 * x_1133);
  let x_1136 : f32 = u_xlat2.x;
  let x_1138 : f32 = u_xlat2.x;
  let x_1140 : f32 = u_xlat35;
  u_xlat35 = ((x_1136 * x_1138) + -(x_1140));
  let x_1145 : vec4<f32> = x_1087.unity_SHC;
  let x_1147 : f32 = u_xlat35;
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1147, x_1147, x_1147)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat5;
  let x_1157 : vec4<f32> = u_xlat6;
  let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : vec4<f32> = u_xlat5;
  let x_1164 : vec3<f32> = max(vec3<f32>(x_1162.x, x_1162.y, x_1162.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1165 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec3<f32> = vs_TEXCOORD2;
  let x_1169 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat35 = dot(x_1167, -(vec3<f32>(x_1169.x, x_1169.y, x_1169.z)));
  let x_1173 : f32 = u_xlat35;
  let x_1175 : f32 = vs_TEXCOORD5.z;
  u_xlat35 = (x_1173 * x_1175);
  let x_1177 : f32 = u_xlat35;
  let x_1178 : f32 = u_xlat35;
  u_xlat36 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat35;
  let x_1181 : f32 = u_xlat36;
  u_xlat35 = (x_1180 * x_1181);
  let x_1183 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1183, 0.0f, 1.0f);
  let x_1185 : f32 = u_xlat35;
  u_xlat35 = (x_1185 * 5.0f);
  let x_1188 : f32 = u_xlat35;
  let x_1191 : vec4<f32> = x_39.x_MainLightColor;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1188, x_1188, x_1188) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1197 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1200 : vec4<f32> = x_39.x_MainLightColor;
  let x_1203 : vec4<f32> = u_xlat6;
  let x_1205 : vec3<f32> = ((vec3<f32>(x_1197.y, x_1197.y, x_1197.y) * vec3<f32>(x_1200.x, x_1200.y, x_1200.z)) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat6;
  let x_1210 : vec2<f32> = u_xlat25;
  let x_1213 : vec4<f32> = u_xlat5;
  let x_1215 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.x, x_1210.x)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1223 : vec4<f32> = vs_TEXCOORD0;
  let x_1226 : f32 = x_39.x_GlobalMipBias.x;
  let x_1227 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1223.z, x_1223.w), x_1226);
  let x_1228 : vec3<f32> = vec3<f32>(x_1227.x, x_1227.y, x_1227.z);
  let x_1229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  let x_1232 : f32 = u_xlat4.x;
  u_xlat4.x = x_1232;
  let x_1235 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1235, 0.0f, 1.0f);
  let x_1239 : f32 = vs_TEXCOORD5.z;
  u_xlat35 = (x_1239 + -0.375f);
  let x_1242 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1242, 0.0f, 1.0f);
  let x_1244 : f32 = u_xlat22;
  u_xlat36 = ((-(x_1244) * 4.0f) + 1.0f);
  let x_1248 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1248, 0.0f, 1.0f);
  let x_1250 : f32 = u_xlat33;
  let x_1251 : f32 = u_xlat22;
  u_xlat33 = min(x_1250, x_1251);
  let x_1253 : f32 = u_xlat33;
  u_xlat33 = ((-(x_1253) * 0.5f) + 0.75f);
  let x_1258 : f32 = u_xlat36;
  let x_1260 : f32 = u_xlat33;
  u_xlat33 = ((x_1258 * 0.5f) + x_1260);
  let x_1262 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1262, 0.0f, 1.0f);
  let x_1265 : f32 = u_xlat4.x;
  let x_1266 : f32 = u_xlat33;
  u_xlat33 = (x_1265 * x_1266);
  let x_1268 : f32 = u_xlat33;
  let x_1269 : f32 = u_xlat35;
  u_xlat33 = max(x_1268, x_1269);
  let x_1272 : f32 = u_xlat1.x;
  let x_1274 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1272 + x_1274);
  let x_1277 : f32 = u_xlat33;
  let x_1279 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_1277, x_1279);
  u_xlat8.y = 0.660000026f;
  let x_1289 : vec4<f32> = u_xlat8;
  let x_1292 : f32 = x_39.x_GlobalMipBias.x;
  let x_1293 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1289.x, x_1289.y), x_1292);
  let x_1294 : vec3<f32> = vec3<f32>(x_1293.x, x_1293.y, x_1293.z);
  let x_1295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1294.x, x_1295.y, x_1294.y, x_1294.z);
  let x_1297 : vec4<f32> = u_xlat4;
  let x_1299 : vec4<f32> = u_xlat7;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.z, x_1297.w) * vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1301.x, x_1302.y, x_1301.y, x_1301.z);
  let x_1304 : vec4<f32> = u_xlat4;
  let x_1306 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_1304.x, x_1304.z, x_1304.w), vec3<f32>(x_1306.x, x_1306.z, x_1306.w));
  let x_1309 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_1309);
  let x_1311 : f32 = u_xlat33;
  u_xlat33 = ((x_1311 * 1.5f) + -0.100000001f);
  let x_1316 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1316, 0.0f, 1.0f);
  let x_1318 : vec3<f32> = u_xlat14;
  let x_1321 : vec4<f32> = x_39.x_MainLightColor;
  let x_1324 : vec4<f32> = u_xlat5;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1318.x, x_1318.x, x_1318.x) * vec3<f32>(x_1321.x, x_1321.y, x_1321.z)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1326.x, x_1327.y, x_1326.y, x_1326.z);
  let x_1329 : vec3<f32> = vs_TEXCOORD2;
  let x_1331 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1333 : vec3<f32> = (x_1329 + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat5;
  let x_1338 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1343 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1343, 1.17549435e-37f);
  let x_1348 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_1348);
  let x_1351 : vec3<f32> = u_xlat1;
  let x_1353 : vec4<f32> = u_xlat5;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec4<f32> = u_xlat2;
  let x_1360 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1358.x, x_1358.y, x_1358.z), vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1365 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1365, 0.0f, 1.0f);
  let x_1369 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1371 : vec4<f32> = u_xlat5;
  u_xlat35 = dot(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1374, 0.0f, 1.0f);
  let x_1377 : f32 = u_xlat1.x;
  let x_1379 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1377 * x_1379);
  let x_1383 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1383 * -0.999938965f) + 1.000010014f);
  let x_1389 : f32 = u_xlat35;
  let x_1390 : f32 = u_xlat35;
  u_xlat35 = (x_1389 * x_1390);
  let x_1393 : f32 = u_xlat1.x;
  let x_1395 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1393 * x_1395);
  let x_1398 : f32 = u_xlat35;
  u_xlat35 = max(x_1398, 0.100000001f);
  let x_1401 : f32 = u_xlat1.x;
  let x_1402 : f32 = u_xlat35;
  u_xlat1.x = (x_1401 * x_1402);
  let x_1406 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1406 * 2.03125f);
  let x_1412 : f32 = u_xlat1.x;
  u_xlat1.x = (6.10351562e-05f / x_1412);
  let x_1416 : f32 = u_xlat25.x;
  let x_1418 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1416 * x_1418);
  let x_1422 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1422 * 0.039999999f);
  let x_1426 : vec3<f32> = u_xlat1;
  let x_1429 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_1426.x, x_1426.x, x_1426.x) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1433 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_1435 : f32 = x_1087.unity_LightData.y;
  u_xlat1.x = min(x_1433, x_1435);
  let x_1440 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_1440));
  let x_1443 : vec4<f32> = u_xlat6;
  let x_1444 : vec3<f32> = vec3<f32>(x_1443.x, x_1443.y, x_1443.z);
  let x_1445 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1447 : vec3<f32> = u_xlat14;
  let x_1448 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1456 : u32 = u_xlatu_loop_2;
    let x_1457 : u32 = u_xlatu1;
    if ((x_1456 < x_1457)) {
    } else {
      break;
    }
    let x_1459 : u32 = u_xlatu_loop_2;
    u_xlatu38 = (x_1459 >> 2u);
    let x_1462 : u32 = u_xlatu_loop_2;
    u_xlati39 = bitcast<i32>((x_1462 & 3u));
    let x_1465 : u32 = u_xlatu38;
    let x_1468 : vec4<f32> = x_1087.unity_LightIndices[bitcast<i32>(x_1465)];
    let x_1477 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1482 : vec4<u32> = indexable[x_1477];
    u_xlat38 = dot(x_1468, bitcast<vec4<f32>>(x_1482));
    let x_1485 : f32 = u_xlat38;
    u_xlati38 = i32(x_1485);
    let x_1487 : vec3<f32> = vs_TEXCOORD1;
    let x_1499 : i32 = u_xlati38;
    let x_1501 : vec4<f32> = x_1498.x_AdditionalLightsPosition[x_1499];
    let x_1504 : i32 = u_xlati38;
    let x_1506 : vec4<f32> = x_1498.x_AdditionalLightsPosition[x_1504];
    let x_1508 : vec3<f32> = ((-(x_1487) * vec3<f32>(x_1501.w, x_1501.w, x_1501.w)) + vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1512 : vec4<f32> = u_xlat8;
    let x_1514 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1512.x, x_1512.y, x_1512.z), vec3<f32>(x_1514.x, x_1514.y, x_1514.z));
    let x_1517 : f32 = u_xlat39;
    u_xlat39 = max(x_1517, 6.10351562e-05f);
    let x_1520 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1520);
    let x_1522 : f32 = u_xlat40;
    let x_1524 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1522, x_1522, x_1522) * vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
    let x_1528 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1528);
    let x_1530 : f32 = u_xlat39;
    let x_1531 : i32 = u_xlati38;
    let x_1533 : f32 = x_1498.x_AdditionalLightsAttenuation[x_1531].x;
    u_xlat39 = (x_1530 * x_1533);
    let x_1535 : f32 = u_xlat39;
    let x_1537 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1535) * x_1537) + 1.0f);
    let x_1540 : f32 = u_xlat39;
    u_xlat39 = max(x_1540, 0.0f);
    let x_1542 : f32 = u_xlat39;
    let x_1543 : f32 = u_xlat39;
    u_xlat39 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat39;
    let x_1546 : f32 = u_xlat41;
    u_xlat39 = (x_1545 * x_1546);
    let x_1548 : i32 = u_xlati38;
    let x_1550 : vec4<f32> = x_1498.x_AdditionalLightsSpotDir[x_1548];
    let x_1552 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1550.x, x_1550.y, x_1550.z), x_1552);
    let x_1554 : f32 = u_xlat41;
    let x_1555 : i32 = u_xlati38;
    let x_1557 : f32 = x_1498.x_AdditionalLightsAttenuation[x_1555].z;
    let x_1559 : i32 = u_xlati38;
    let x_1561 : f32 = x_1498.x_AdditionalLightsAttenuation[x_1559].w;
    u_xlat41 = ((x_1554 * x_1557) + x_1561);
    let x_1563 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1563, 0.0f, 1.0f);
    let x_1565 : f32 = u_xlat41;
    let x_1566 : f32 = u_xlat41;
    u_xlat41 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat39;
    let x_1569 : f32 = u_xlat41;
    u_xlat39 = (x_1568 * x_1569);
    let x_1571 : vec4<f32> = u_xlat2;
    let x_1573 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1571.x, x_1571.y, x_1571.z), x_1573);
    let x_1575 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : f32 = u_xlat39;
    let x_1578 : f32 = u_xlat41;
    u_xlat41 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat41;
    let x_1582 : i32 = u_xlati38;
    let x_1584 : vec4<f32> = x_1498.x_AdditionalLightsColor[x_1582];
    u_xlat10 = (vec3<f32>(x_1580, x_1580, x_1580) * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
    let x_1587 : vec4<f32> = u_xlat8;
    let x_1589 : f32 = u_xlat40;
    let x_1592 : vec3<f32> = vs_TEXCOORD2;
    let x_1593 : vec3<f32> = ((vec3<f32>(x_1587.x, x_1587.y, x_1587.z) * vec3<f32>(x_1589, x_1589, x_1589)) + x_1592);
    let x_1594 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
    let x_1596 : vec4<f32> = u_xlat8;
    let x_1598 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
    let x_1601 : f32 = u_xlat40;
    u_xlat40 = max(x_1601, 1.17549435e-37f);
    let x_1603 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1603);
    let x_1605 : f32 = u_xlat40;
    let x_1607 : vec4<f32> = u_xlat8;
    let x_1609 : vec3<f32> = (vec3<f32>(x_1605, x_1605, x_1605) * vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
    let x_1610 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
    let x_1612 : vec4<f32> = u_xlat2;
    let x_1614 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1612.x, x_1612.y, x_1612.z), vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
    let x_1617 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1617, 0.0f, 1.0f);
    let x_1619 : vec3<f32> = u_xlat9;
    let x_1620 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1619, vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1625 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1625, 0.0f, 1.0f);
    let x_1628 : f32 = u_xlat40;
    let x_1629 : f32 = u_xlat40;
    u_xlat40 = (x_1628 * x_1629);
    let x_1631 : f32 = u_xlat40;
    u_xlat40 = ((x_1631 * -0.999938965f) + 1.000010014f);
    let x_1635 : f32 = u_xlat8.x;
    let x_1637 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1635 * x_1637);
    let x_1640 : f32 = u_xlat40;
    let x_1641 : f32 = u_xlat40;
    u_xlat40 = (x_1640 * x_1641);
    let x_1644 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1644, 0.100000001f);
    let x_1647 : f32 = u_xlat40;
    let x_1649 : f32 = u_xlat8.x;
    u_xlat40 = (x_1647 * x_1649);
    let x_1651 : f32 = u_xlat40;
    u_xlat40 = (x_1651 * 2.03125f);
    let x_1653 : f32 = u_xlat40;
    u_xlat40 = (6.10351562e-05f / x_1653);
    let x_1655 : f32 = u_xlat40;
    u_xlat40 = (x_1655 * 0.039999999f);
    let x_1657 : f32 = u_xlat40;
    let x_1659 : vec3<f32> = u_xlat10;
    let x_1661 : vec4<f32> = u_xlat7;
    let x_1663 : vec3<f32> = ((vec3<f32>(x_1657, x_1657, x_1657) * x_1659) + vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
    let x_1666 : f32 = u_xlat39;
    let x_1668 : i32 = u_xlati38;
    let x_1670 : vec4<f32> = x_1498.x_AdditionalLightsColor[x_1668];
    let x_1673 : vec4<f32> = u_xlat5;
    let x_1675 : vec3<f32> = ((vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1670.x, x_1670.y, x_1670.z)) + vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
    let x_1676 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);

    continuing {
      let x_1678 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1678 + bitcast<u32>(1i));
    }
  }
  let x_1680 : f32 = u_xlat34;
  let x_1681 : f32 = u_xlat22;
  u_xlat6.x = (x_1680 * x_1681);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_1690 : vec4<f32> = u_xlat6;
  let x_1693 : f32 = x_39.x_GlobalMipBias.x;
  let x_1694 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1690.x, x_1690.y), x_1693);
  u_xlat14 = vec3<f32>(x_1694.x, x_1694.y, x_1694.z);
  let x_1696 : vec4<f32> = u_xlat2;
  let x_1702 : vec3<f32> = u_xlat0;
  let x_1704 : vec2<f32> = ((vec2<f32>(x_1696.z, x_1696.x) * vec2<f32>(0.02f, 0.150000006f)) + vec2<f32>(x_1702.x, x_1702.y));
  let x_1705 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1704.x, x_1704.y, x_1705.z);
  let x_1711 : vec3<f32> = u_xlat0;
  let x_1713 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1711.x, x_1711.y), 0.0f);
  u_xlat0 = vec3<f32>(x_1713.x, x_1713.y, x_1713.z);
  let x_1720 : vec2<f32> = u_xlat12;
  let x_1722 : f32 = u_xlat4.y;
  let x_1723 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1720, x_1722);
  u_xlat1 = vec3<f32>(x_1723.x, x_1723.y, x_1723.z);
  let x_1728 : vec4<f32> = u_xlat6;
  let x_1731 : f32 = x_39.x_GlobalMipBias.x;
  let x_1732 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1728.x, x_1728.z), x_1731);
  let x_1733 : vec3<f32> = vec3<f32>(x_1732.x, x_1732.y, x_1732.z);
  let x_1734 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : vec3<f32> = u_xlat1;
  let x_1737 : vec4<f32> = u_xlat2;
  let x_1739 : vec3<f32> = (x_1736 * vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : vec3<f32> = u_xlat1;
  let x_1744 : vec4<f32> = u_xlat2;
  let x_1747 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_1742) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z)) + x_1747);
  let x_1749 : f32 = u_xlat3;
  let x_1751 : vec3<f32> = u_xlat0;
  let x_1753 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1749, x_1749, x_1749) * x_1751) + vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : vec4<f32> = u_xlat5;
  let x_1758 : vec3<f32> = u_xlat14;
  let x_1760 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1756.x, x_1756.y, x_1756.z) * x_1758) + x_1760);
  let x_1762 : vec4<f32> = u_xlat7;
  let x_1764 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1762.x, x_1762.y, x_1762.z) + x_1764);
  let x_1766 : f32 = u_xlat33;
  let x_1768 : vec4<f32> = u_xlat4;
  let x_1771 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1766, x_1766, x_1766) * vec3<f32>(x_1768.x, x_1768.z, x_1768.w)) + -(x_1771));
  let x_1776 : f32 = u_xlat33;
  let x_1778 : vec3<f32> = u_xlat1;
  let x_1780 : vec3<f32> = u_xlat0;
  let x_1781 : vec3<f32> = ((vec3<f32>(x_1776, x_1776, x_1776) * x_1778) + x_1780);
  let x_1782 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_NORMAL0_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_NORMAL0 = vs_NORMAL0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

