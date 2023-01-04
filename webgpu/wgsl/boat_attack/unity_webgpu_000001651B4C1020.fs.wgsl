struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_Time : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_203 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_361 : MainLightShadows;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitherPattern : sampler;

@group(1) @binding(2) var<uniform> x_1082 : UnityPerDraw;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

@group(1) @binding(1) var<uniform> x_1473 : AdditionalLights;

@group(0) @binding(0) var x_CubemapTexture : texture_cube<f32>;

@group(0) @binding(11) var sampler_CubemapTexture : sampler;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlat3 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlatb15 : bool;
  var x_319 : vec2<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu15 : u32;
  var u_xlati15 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlatb27 : bool;
  var u_xlatb39 : bool;
  var x_577 : f32;
  var u_xlat29 : vec2<f32>;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlat18 : vec3<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb7 : vec4<bool>;
  var u_xlatu7 : u32;
  var u_xlati7 : i32;
  var u_xlat19 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var u_xlatb0 : bool;
  var u_xlat38 : f32;
  var u_xlatu_loop_2 : u32;
  var u_xlatu1 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD6;
  let x_15 : vec4<f32> = vs_TEXCOORD6;
  let x_17 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) / vec2<f32>(x_15.w, x_15.w));
  let x_18 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_17.x, x_17.y, x_18.z, x_18.w);
  let x_35 : vec3<f32> = vs_TEXCOORD3;
  let x_47 : f32 = x_40.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_35.x, x_35.y), x_47);
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_48.z);
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : f32 = x_40.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_56.x, x_56.y), x_59);
  u_xlat24 = x_60.x;
  let x_65 : f32 = x_40.x_ZBufferParams.z;
  let x_66 : f32 = u_xlat24;
  let x_70 : f32 = x_40.x_ZBufferParams.w;
  u_xlat24 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_73);
  let x_75 : f32 = u_xlat24;
  let x_79 : f32 = vs_TEXCOORD5.x;
  let x_83 : f32 = vs_TEXCOORD5.y;
  u_xlat24 = ((x_75 * x_79) + -(x_83));
  let x_88 : vec3<f32> = vs_TEXCOORD1;
  let x_95 : vec2<f32> = ((vec2<f32>(x_88.x, x_88.z) * vec2<f32>(0.002f, 0.002f)) + vec2<f32>(0.5f, 0.5f));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_104.x, x_104.y), 1.0f);
  u_xlat36 = x_106.x;
  let x_108 : f32 = u_xlat36;
  u_xlat36 = (-(x_108) + 1.0f);
  let x_114 : f32 = x_40.x_MaxDepth;
  let x_117 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat37 = (x_114 + x_117);
  let x_119 : f32 = u_xlat36;
  let x_120 : f32 = u_xlat37;
  let x_123 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat36 = ((x_119 * x_120) + -(x_123));
  let x_126 : f32 = u_xlat36;
  let x_128 : f32 = vs_TEXCOORD1.y;
  u_xlat36 = (x_126 + x_128);
  let x_131 : f32 = x_40.x_MaxDepth;
  u_xlat37 = (1.0f / x_131);
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  let x_142 : f32 = x_40.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_139.z, x_139.w), x_142);
  let x_144 : vec2<f32> = vec2<f32>(x_143.x, x_143.y);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat2;
  let x_154 : vec2<f32> = ((vec2<f32>(x_147.x, x_147.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_155.z, x_155.w);
  let x_162 : vec4<f32> = vs_TEXCOORD0;
  let x_165 : f32 = x_40.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat26 = vec2<f32>(x_166.x, x_166.y);
  let x_168 : vec2<f32> = u_xlat26;
  u_xlat26 = ((x_168 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_171 : vec2<f32> = u_xlat26;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec2<f32> = ((x_171 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  let x_179 : f32 = u_xlat24;
  u_xlat3 = (x_179 * 0.005f);
  let x_182 : f32 = u_xlat24;
  u_xlat26.x = ((x_182 * 0.25f) + 0.25f);
  let x_188 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_188, 0.0f, 1.0f);
  let x_192 : vec2<f32> = u_xlat26;
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
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_219.y, x_218.y);
  u_xlat2.w = 0.0f;
  let x_223 : f32 = vs_NORMAL0.y;
  u_xlat4.y = x_223;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_225.x, x_225.w, x_225.z) + x_227);
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat13.x = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_239 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_239);
  let x_242 : vec2<f32> = u_xlat13;
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.x, x_242.x) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = x_40.unity_MatrixVP[1i];
  u_xlat13 = (-(vec2<f32>(x_249.y, x_249.y)) * vec2<f32>(x_256.x, x_256.z));
  let x_260 : vec4<f32> = x_40.unity_MatrixVP[0i];
  let x_262 : vec4<f32> = u_xlat2;
  let x_266 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_260.x, x_260.z) * -(vec2<f32>(x_262.x, x_262.x))) + x_266);
  let x_270 : vec4<f32> = x_40.unity_MatrixVP[2i];
  let x_272 : vec4<f32> = u_xlat2;
  let x_276 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_270.x, x_270.z) * -(vec2<f32>(x_272.z, x_272.z))) + x_276);
  let x_278 : f32 = u_xlat3;
  u_xlat3 = x_278;
  let x_279 : f32 = u_xlat3;
  u_xlat3 = clamp(x_279, 0.0f, 1.0f);
  let x_281 : vec2<f32> = u_xlat13;
  let x_282 : f32 = u_xlat3;
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat13 = ((x_281 * vec2<f32>(x_282, x_282)) + vec2<f32>(x_285.x, x_285.y));
  let x_291 : vec2<f32> = u_xlat13;
  let x_293 : f32 = x_40.x_GlobalMipBias.x;
  let x_294 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_ScreenTextures_linear_clamp, x_291, x_293);
  u_xlat3 = x_294.x;
  let x_297 : f32 = x_40.x_ZBufferParams.z;
  let x_298 : f32 = u_xlat3;
  let x_301 : f32 = x_40.x_ZBufferParams.w;
  u_xlat3 = ((x_297 * x_298) + x_301);
  let x_303 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_303);
  let x_305 : f32 = u_xlat3;
  let x_307 : f32 = vs_TEXCOORD5.x;
  let x_310 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_305 * x_307) + -(x_310));
  let x_316 : f32 = u_xlat3;
  u_xlatb15 = (x_316 < 0.0f);
  let x_318 : bool = u_xlatb15;
  if (x_318) {
    let x_322 : vec4<f32> = u_xlat0;
    x_319 = vec2<f32>(x_322.x, x_322.y);
  } else {
    let x_325 : vec2<f32> = u_xlat13;
    x_319 = x_325;
  }
  let x_326 : vec2<f32> = x_319;
  u_xlat13 = x_326;
  let x_327 : bool = u_xlatb15;
  let x_328 : f32 = u_xlat24;
  let x_329 : f32 = u_xlat3;
  u_xlat24 = select(x_329, x_328, x_327);
  let x_331 : vec4<f32> = u_xlat2;
  let x_334 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), x_334);
  let x_336 : f32 = u_xlat3;
  u_xlat3 = (-(x_336) + 1.0f);
  let x_340 : f32 = u_xlat3;
  let x_341 : f32 = u_xlat3;
  u_xlat15.x = (x_340 * x_341);
  let x_345 : f32 = u_xlat15.x;
  let x_347 : f32 = u_xlat15.x;
  u_xlat15.x = (x_345 * x_347);
  let x_351 : f32 = u_xlat15.x;
  let x_352 : f32 = u_xlat3;
  u_xlat3 = (x_351 * x_352);
  let x_354 : f32 = u_xlat3;
  u_xlat3 = clamp(x_354, 0.0f, 1.0f);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_363 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_356 + -(vec3<f32>(x_363.x, x_363.y, x_363.z)));
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_367 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_377 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres2;
  let x_380 : vec3<f32> = (x_374 + -(vec3<f32>(x_377.x, x_377.y, x_377.z)));
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = vs_TEXCOORD1;
  let x_387 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres3;
  let x_390 : vec3<f32> = (x_384 + -(vec3<f32>(x_387.x, x_387.y, x_387.z)));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : vec3<f32> = u_xlat15;
  let x_395 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_394, x_395);
  let x_398 : vec3<f32> = u_xlat4;
  let x_399 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_398, x_399);
  let x_402 : vec4<f32> = u_xlat5;
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_417 : vec4<f32> = u_xlat7;
  let x_420 : vec4<f32> = x_361.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_417 < x_420);
  let x_423 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_423);
  let x_427 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_427);
  let x_431 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_431);
  let x_435 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_435);
  let x_439 : bool = u_xlatb4.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_439);
  let x_444 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_444);
  let x_448 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_448);
  let x_451 : vec3<f32> = u_xlat15;
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_451 + vec3<f32>(x_452.y, x_452.z, x_452.w));
  let x_455 : vec3<f32> = u_xlat15;
  let x_457 : vec3<f32> = max(x_455, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_458 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_457.z);
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_460, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_467 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_467) + 4.0f);
  let x_474 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_474);
  let x_478 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_478) << bitcast<u32>(2i));
  let x_481 : vec3<f32> = vs_TEXCOORD1;
  let x_483 : i32 = u_xlati15;
  let x_486 : i32 = u_xlati15;
  let x_490 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_483 + 1i) / 4i)][((x_486 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_481.y, x_481.y, x_481.y) * vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : i32 = u_xlati15;
  let x_495 : i32 = u_xlati15;
  let x_498 : vec4<f32> = x_361.x_MainLightWorldToShadow[(x_493 / 4i)][(x_495 % 4i)];
  let x_500 : vec3<f32> = vs_TEXCOORD1;
  let x_503 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.x, x_500.x, x_500.x)) + x_503);
  let x_505 : i32 = u_xlati15;
  let x_508 : i32 = u_xlati15;
  let x_512 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_505 + 2i) / 4i)][((x_508 + 2i) % 4i)];
  let x_514 : vec3<f32> = vs_TEXCOORD1;
  let x_517 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.z, x_514.z, x_514.z)) + x_517);
  let x_519 : vec3<f32> = u_xlat4;
  let x_520 : i32 = u_xlati15;
  let x_523 : i32 = u_xlati15;
  let x_527 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_520 + 3i) / 4i)][((x_523 + 3i) % 4i)];
  u_xlat15 = (x_519 + vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_531 : vec3<f32> = u_xlat15;
  let x_532 : vec2<f32> = vec2<f32>(x_531.x, x_531.y);
  let x_534 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_532.x, x_532.y, x_534);
  let x_546 : vec3<f32> = txVec0;
  let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_546.xy, x_546.z);
  u_xlat15.x = x_548;
  let x_552 : f32 = x_361.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_552) + 1.0f);
  let x_557 : f32 = u_xlat15.x;
  let x_559 : f32 = x_361.x_MainLightShadowParams.x;
  let x_562 : f32 = u_xlat27.x;
  u_xlat15.x = ((x_557 * x_559) + x_562);
  let x_567 : f32 = u_xlat15.z;
  u_xlatb27 = (0.0f >= x_567);
  let x_571 : f32 = u_xlat15.z;
  u_xlatb39 = (x_571 >= 1.0f);
  let x_573 : bool = u_xlatb39;
  let x_574 : bool = u_xlatb27;
  u_xlatb27 = (x_573 | x_574);
  let x_576 : bool = u_xlatb27;
  if (x_576) {
    x_577 = 1.0f;
  } else {
    let x_582 : f32 = u_xlat15.x;
    x_577 = x_582;
  }
  let x_583 : f32 = x_577;
  u_xlat15.x = x_583;
  let x_585 : vec4<f32> = u_xlat0;
  let x_588 : vec4<f32> = x_40.x_ScreenParams;
  let x_590 : vec2<f32> = (vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_588.x, x_588.y));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat0;
  let x_596 : vec4<f32> = x_203.x_DitherPattern_TexelSize;
  let x_598 : vec2<f32> = (vec2<f32>(x_593.x, x_593.y) * vec2<f32>(x_596.x, x_596.y));
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : f32 = u_xlat24;
  u_xlat27 = (vec2<f32>(x_601, x_601) * vec2<f32>(20.0f, 0.25f));
  let x_606 : vec2<f32> = u_xlat27;
  let x_608 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_606.y, x_606.y, x_606.y) * -(x_608));
  let x_612 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_612);
  let x_616 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_616));
  let x_621 : vec4<f32> = u_xlat0;
  u_xlat29 = vec2<f32>(x_621.x, x_621.y);
  u_xlat40 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_630 : u32 = u_xlatu_loop_1;
    if ((x_630 < 4u)) {
    } else {
      break;
    }
    let x_633 : vec4<f32> = u_xlat5;
    let x_635 : vec2<f32> = u_xlat29;
    u_xlat29 = (vec2<f32>(x_633.x, x_633.y) + x_635);
    let x_638 : u32 = u_xlatu_loop_1;
    u_xlat18.x = f32(x_638);
    let x_642 : vec3<f32> = u_xlat18;
    let x_645 : vec4<f32> = x_40.x_ScreenParams;
    let x_648 : vec2<f32> = u_xlat29;
    u_xlat30 = ((vec2<f32>(x_642.x, x_642.x) * vec2<f32>(x_645.x, x_645.y)) + x_648);
    let x_655 : vec2<f32> = u_xlat30;
    let x_657 : f32 = x_40.x_GlobalMipBias.x;
    let x_658 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_655, x_657);
    let x_659 : vec3<f32> = vec3<f32>(x_658.x, x_658.y, x_658.z);
    let x_660 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat7;
    let x_667 : vec3<f32> = ((vec3<f32>(x_662.x, x_662.z, x_662.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_668 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : vec2<f32> = u_xlat27;
    let x_672 : vec4<f32> = u_xlat7;
    let x_674 : vec3<f32> = (vec3<f32>(x_670.y, x_670.y, x_670.y) * vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_674.z);
    let x_677 : vec3<f32> = u_xlat18;
    let x_679 : vec4<f32> = u_xlat7;
    let x_681 : vec3<f32> = (vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.w));
    let x_682 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_681.z);
    let x_684 : vec4<f32> = u_xlat7;
    let x_689 : vec3<f32> = vs_TEXCOORD1;
    let x_690 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.w) * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + x_689);
    let x_691 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_690.z);
    let x_694 : f32 = u_xlat18.x;
    let x_696 : f32 = u_xlat7.z;
    u_xlat18.x = (x_694 + x_696);
    let x_699 : vec3<f32> = u_xlat4;
    let x_700 : vec3<f32> = u_xlat18;
    let x_703 : vec4<f32> = u_xlat7;
    u_xlat18 = ((x_699 * vec3<f32>(x_700.x, x_700.x, x_700.x)) + vec3<f32>(x_703.x, x_703.y, x_703.w));
    let x_706 : vec3<f32> = u_xlat18;
    let x_708 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres0;
    let x_711 : vec3<f32> = (x_706 + -(vec3<f32>(x_708.x, x_708.y, x_708.z)));
    let x_712 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
    let x_715 : vec3<f32> = u_xlat18;
    let x_717 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres1;
    let x_720 : vec3<f32> = (x_715 + -(vec3<f32>(x_717.x, x_717.y, x_717.z)));
    let x_721 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_724 : vec3<f32> = u_xlat18;
    let x_726 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres2;
    u_xlat9 = (x_724 + -(vec3<f32>(x_726.x, x_726.y, x_726.z)));
    let x_731 : vec3<f32> = u_xlat18;
    let x_733 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres3;
    u_xlat10 = (x_731 + -(vec3<f32>(x_733.x, x_733.y, x_733.z)));
    let x_737 : vec4<f32> = u_xlat7;
    let x_739 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_743 : vec4<f32> = u_xlat8;
    let x_745 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
    let x_749 : vec3<f32> = u_xlat9;
    let x_750 : vec3<f32> = u_xlat9;
    u_xlat7.z = dot(x_749, x_750);
    let x_753 : vec3<f32> = u_xlat10;
    let x_754 : vec3<f32> = u_xlat10;
    u_xlat7.w = dot(x_753, x_754);
    let x_758 : vec4<f32> = u_xlat7;
    let x_760 : vec4<f32> = x_361.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_758 < x_760);
    let x_763 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_763);
    let x_767 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_767);
    let x_771 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_771);
    let x_775 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_775);
    let x_779 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_779);
    let x_783 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_783);
    let x_787 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_787);
    let x_790 : vec4<f32> = u_xlat7;
    let x_792 : vec4<f32> = u_xlat8;
    let x_794 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(x_792.y, x_792.z, x_792.w));
    let x_795 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
    let x_797 : vec4<f32> = u_xlat7;
    let x_799 : vec3<f32> = max(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_800 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_800.x, x_799.x, x_799.y, x_799.z);
    let x_802 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_802, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_806 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_806) + 4.0f);
    let x_812 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_812);
    let x_815 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_815) << bitcast<u32>(2i));
    let x_819 : vec3<f32> = u_xlat18;
    let x_821 : i32 = u_xlati7;
    let x_824 : i32 = u_xlati7;
    let x_828 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_821 + 1i) / 4i)][((x_824 + 1i) % 4i)];
    u_xlat19 = (vec3<f32>(x_819.y, x_819.y, x_819.y) * vec3<f32>(x_828.x, x_828.y, x_828.z));
    let x_831 : i32 = u_xlati7;
    let x_833 : i32 = u_xlati7;
    let x_836 : vec4<f32> = x_361.x_MainLightWorldToShadow[(x_831 / 4i)][(x_833 % 4i)];
    let x_838 : vec3<f32> = u_xlat18;
    let x_841 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838.x, x_838.x, x_838.x)) + x_841);
    let x_843 : i32 = u_xlati7;
    let x_846 : i32 = u_xlati7;
    let x_850 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_843 + 2i) / 4i)][((x_846 + 2i) % 4i)];
    let x_852 : vec3<f32> = u_xlat18;
    let x_855 : vec3<f32> = u_xlat19;
    u_xlat18 = ((vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_852.z, x_852.z, x_852.z)) + x_855);
    let x_857 : vec3<f32> = u_xlat18;
    let x_858 : i32 = u_xlati7;
    let x_861 : i32 = u_xlati7;
    let x_865 : vec4<f32> = x_361.x_MainLightWorldToShadow[((x_858 + 3i) / 4i)][((x_861 + 3i) % 4i)];
    u_xlat18 = (x_857 + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_869 : vec3<f32> = u_xlat18;
    let x_870 : vec2<f32> = vec2<f32>(x_869.x, x_869.y);
    let x_872 : f32 = u_xlat18.z;
    txVec1 = vec3<f32>(x_870.x, x_870.y, x_872);
    let x_879 : vec3<f32> = txVec1;
    let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_879.xy, x_879.z);
    u_xlat18.x = x_881;
    let x_883 : f32 = u_xlat40;
    let x_885 : f32 = u_xlat18.x;
    u_xlat40 = (x_883 + x_885);

    continuing {
      let x_887 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_887 + bitcast<u32>(1i));
    }
  }
  let x_889 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (x_889 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f));
  let x_893 : vec3<f32> = vs_TEXCOORD1;
  let x_896 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres0;
  let x_899 : vec3<f32> = ((x_893 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_896.x, x_896.y, x_896.z)));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = vs_TEXCOORD1;
  let x_905 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres1;
  let x_908 : vec3<f32> = ((x_902 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_905.x, x_905.y, x_905.z)));
  let x_909 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec3<f32> = vs_TEXCOORD1;
  let x_914 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres2;
  let x_917 : vec3<f32> = ((x_911 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_914.x, x_914.y, x_914.z)));
  let x_918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec3<f32> = vs_TEXCOORD1;
  let x_923 : vec4<f32> = x_361.x_CascadeShadowSplitSpheres3;
  let x_926 : vec3<f32> = ((x_920 * vec3<f32>(1.100000024f, 1.100000024f, 1.100000024f)) + -(vec3<f32>(x_923.x, x_923.y, x_923.z)));
  let x_927 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_931 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_935 : vec4<f32> = u_xlat6;
  let x_937 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_935.x, x_935.y, x_935.z), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_941 : vec4<f32> = u_xlat7;
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_947 : vec4<f32> = u_xlat8;
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_947.x, x_947.y, x_947.z), vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_954 : vec4<f32> = u_xlat5;
  let x_956 : vec4<f32> = x_361.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_954 < x_956);
  let x_959 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_959);
  let x_963 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_963);
  let x_967 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_967);
  let x_971 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_971);
  let x_975 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_975);
  let x_979 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_979);
  let x_983 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_983);
  let x_986 : vec4<f32> = u_xlat5;
  let x_988 : vec4<f32> = u_xlat6;
  let x_990 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) + vec3<f32>(x_988.y, x_988.z, x_988.w));
  let x_991 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec4<f32> = u_xlat5;
  let x_995 : vec3<f32> = max(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_996 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_996.x, x_995.x, x_995.y, x_995.z);
  let x_998 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_998, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_1002 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1002) + 4.0f);
  let x_1008 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_1008);
  let x_1011 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_1011) << bitcast<u32>(2i));
  let x_1016 : f32 = u_xlat4.y;
  let x_1017 : i32 = u_xlati0;
  let x_1020 : i32 = u_xlati0;
  let x_1024 : f32 = x_361.x_MainLightWorldToShadow[((x_1017 + 1i) / 4i)][((x_1020 + 1i) % 4i)].z;
  u_xlat12 = (x_1016 * x_1024);
  let x_1026 : i32 = u_xlati0;
  let x_1028 : i32 = u_xlati0;
  let x_1031 : f32 = x_361.x_MainLightWorldToShadow[(x_1026 / 4i)][(x_1028 % 4i)].z;
  let x_1033 : f32 = u_xlat4.x;
  let x_1035 : f32 = u_xlat12;
  u_xlat12 = ((x_1031 * x_1033) + x_1035);
  let x_1037 : i32 = u_xlati0;
  let x_1040 : i32 = u_xlati0;
  let x_1044 : f32 = x_361.x_MainLightWorldToShadow[((x_1037 + 2i) / 4i)][((x_1040 + 2i) % 4i)].z;
  let x_1046 : f32 = u_xlat4.z;
  let x_1048 : f32 = u_xlat12;
  u_xlat12 = ((x_1044 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat12;
  let x_1051 : i32 = u_xlati0;
  let x_1054 : i32 = u_xlati0;
  let x_1058 : f32 = x_361.x_MainLightWorldToShadow[((x_1051 + 3i) / 4i)][((x_1054 + 3i) % 4i)].z;
  u_xlat0.x = (x_1050 + x_1058);
  let x_1063 : f32 = u_xlat0.x;
  u_xlatb12 = (0.0f >= x_1063);
  let x_1067 : f32 = u_xlat0.x;
  u_xlatb0 = (x_1067 >= 1.0f);
  let x_1069 : bool = u_xlatb0;
  let x_1070 : bool = u_xlatb12;
  u_xlatb0 = (x_1069 | x_1070);
  let x_1072 : f32 = u_xlat40;
  u_xlat12 = (x_1072 * 0.25f);
  let x_1074 : bool = u_xlatb0;
  let x_1075 : f32 = u_xlat12;
  u_xlat0.x = select(x_1075, 1.0f, x_1074);
  u_xlat2.w = 1.0f;
  let x_1085 : vec4<f32> = x_1082.unity_SHAr;
  let x_1086 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_1085, x_1086);
  let x_1091 : vec4<f32> = x_1082.unity_SHAg;
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_1091, x_1092);
  let x_1097 : vec4<f32> = x_1082.unity_SHAb;
  let x_1098 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_1097, x_1098);
  let x_1101 : vec4<f32> = u_xlat2;
  let x_1103 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_1101.y, x_1101.z, x_1101.z, x_1101.x) * vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.z));
  let x_1108 : vec4<f32> = x_1082.unity_SHBr;
  let x_1109 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_1108, x_1109);
  let x_1114 : vec4<f32> = x_1082.unity_SHBg;
  let x_1115 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_1114, x_1115);
  let x_1120 : vec4<f32> = x_1082.unity_SHBb;
  let x_1121 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_1120, x_1121);
  let x_1125 : f32 = u_xlat2.y;
  let x_1127 : f32 = u_xlat2.y;
  u_xlat12 = (x_1125 * x_1127);
  let x_1130 : f32 = u_xlat2.x;
  let x_1132 : f32 = u_xlat2.x;
  let x_1134 : f32 = u_xlat12;
  u_xlat12 = ((x_1130 * x_1132) + -(x_1134));
  let x_1139 : vec4<f32> = x_1082.unity_SHC;
  let x_1141 : f32 = u_xlat12;
  let x_1144 : vec4<f32> = u_xlat6;
  let x_1146 : vec3<f32> = ((vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1141, x_1141, x_1141)) + vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec3<f32> = u_xlat4;
  let x_1150 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1149 + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_1153, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1155 : vec3<f32> = vs_TEXCOORD2;
  let x_1157 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat12 = dot(x_1155, -(vec3<f32>(x_1157.x, x_1157.y, x_1157.z)));
  let x_1161 : f32 = u_xlat12;
  let x_1163 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1161 * x_1163);
  let x_1166 : f32 = u_xlat12;
  let x_1167 : f32 = u_xlat12;
  u_xlat38 = (x_1166 * x_1167);
  let x_1169 : f32 = u_xlat12;
  let x_1170 : f32 = u_xlat38;
  u_xlat12 = (x_1169 * x_1170);
  let x_1172 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1172, 0.0f, 1.0f);
  let x_1174 : f32 = u_xlat12;
  u_xlat12 = (x_1174 * 5.0f);
  let x_1177 : f32 = u_xlat12;
  let x_1180 : vec4<f32> = x_40.x_MainLightColor;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1186 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1189 : vec4<f32> = x_40.x_MainLightColor;
  let x_1192 : vec4<f32> = u_xlat5;
  let x_1194 : vec3<f32> = ((vec3<f32>(x_1186.y, x_1186.y, x_1186.y) * vec3<f32>(x_1189.x, x_1189.y, x_1189.z)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : vec4<f32> = u_xlat5;
  let x_1199 : vec4<f32> = u_xlat0;
  let x_1202 : vec3<f32> = u_xlat4;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.z) * vec3<f32>(x_1199.x, x_1199.x, x_1199.x)) + x_1202);
  let x_1204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1211 : vec4<f32> = vs_TEXCOORD0;
  let x_1214 : f32 = x_40.x_GlobalMipBias.x;
  let x_1215 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1211.z, x_1211.w), x_1214);
  let x_1216 : vec3<f32> = vec3<f32>(x_1215.x, x_1215.y, x_1215.z);
  let x_1217 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1220 : f32 = u_xlat27.x;
  u_xlat27.x = x_1220;
  let x_1223 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1223, 0.0f, 1.0f);
  let x_1227 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1227 + -0.375f);
  let x_1230 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1230, 0.0f, 1.0f);
  let x_1232 : f32 = u_xlat24;
  u_xlat38 = ((-(x_1232) * 4.0f) + 1.0f);
  let x_1236 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1236, 0.0f, 1.0f);
  let x_1238 : f32 = u_xlat36;
  let x_1239 : f32 = u_xlat24;
  u_xlat36 = min(x_1238, x_1239);
  let x_1241 : f32 = u_xlat36;
  u_xlat36 = ((-(x_1241) * 0.5f) + 0.75f);
  let x_1246 : f32 = u_xlat38;
  let x_1248 : f32 = u_xlat36;
  u_xlat36 = ((x_1246 * 0.5f) + x_1248);
  let x_1250 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1250, 0.0f, 1.0f);
  let x_1253 : f32 = u_xlat27.x;
  let x_1254 : f32 = u_xlat36;
  u_xlat36 = (x_1253 * x_1254);
  let x_1256 : f32 = u_xlat36;
  let x_1257 : f32 = u_xlat12;
  u_xlat12 = max(x_1256, x_1257);
  let x_1260 : f32 = u_xlat1.x;
  let x_1262 : f32 = u_xlat1.x;
  u_xlat36 = (x_1260 + x_1262);
  let x_1264 : f32 = u_xlat36;
  let x_1265 : f32 = u_xlat12;
  u_xlat7.x = max(x_1264, x_1265);
  u_xlat7.y = 0.660000026f;
  let x_1275 : vec4<f32> = u_xlat7;
  let x_1278 : f32 = x_40.x_GlobalMipBias.x;
  let x_1279 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1275.x, x_1275.y), x_1278);
  let x_1280 : vec3<f32> = vec3<f32>(x_1279.x, x_1279.y, x_1279.z);
  let x_1281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat6;
  let x_1285 : vec4<f32> = u_xlat7;
  let x_1287 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.y, x_1283.z) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1290 : vec4<f32> = u_xlat6;
  let x_1292 : vec4<f32> = u_xlat6;
  u_xlat12 = dot(vec3<f32>(x_1290.x, x_1290.y, x_1290.z), vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_1295);
  let x_1297 : f32 = u_xlat12;
  u_xlat12 = ((x_1297 * 1.5f) + -0.100000001f);
  let x_1302 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1302, 0.0f, 1.0f);
  let x_1304 : vec3<f32> = u_xlat15;
  let x_1307 : vec4<f32> = x_40.x_MainLightColor;
  let x_1310 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1304.x, x_1304.x, x_1304.x) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z)) + x_1310);
  let x_1312 : vec3<f32> = vs_TEXCOORD2;
  let x_1314 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1316 : vec3<f32> = (x_1312 + vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
  let x_1317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1319 : vec4<f32> = u_xlat6;
  let x_1321 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1319.x, x_1319.y, x_1319.z), vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1324 : f32 = u_xlat36;
  u_xlat36 = max(x_1324, 1.17549435e-37f);
  let x_1327 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1327);
  let x_1329 : f32 = u_xlat36;
  let x_1331 : vec4<f32> = u_xlat6;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1329, x_1329, x_1329) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat2;
  let x_1338 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1341, 0.0f, 1.0f);
  let x_1344 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1346 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1351 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1351, 0.0f, 1.0f);
  let x_1354 : f32 = u_xlat36;
  let x_1355 : f32 = u_xlat36;
  u_xlat36 = (x_1354 * x_1355);
  let x_1357 : f32 = u_xlat36;
  u_xlat36 = ((x_1357 * -0.999938965f) + 1.000010014f);
  let x_1363 : f32 = u_xlat1.x;
  let x_1365 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1363 * x_1365);
  let x_1368 : f32 = u_xlat36;
  let x_1369 : f32 = u_xlat36;
  u_xlat36 = (x_1368 * x_1369);
  let x_1372 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1372, 0.100000001f);
  let x_1375 : f32 = u_xlat36;
  let x_1377 : f32 = u_xlat1.x;
  u_xlat36 = (x_1375 * x_1377);
  let x_1379 : f32 = u_xlat36;
  u_xlat36 = (x_1379 * 2.03125f);
  let x_1383 : f32 = u_xlat36;
  u_xlat36 = (6.10351562e-05f / x_1383);
  let x_1386 : f32 = u_xlat0.x;
  let x_1387 : f32 = u_xlat36;
  u_xlat0.x = (x_1386 * x_1387);
  let x_1391 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1391 * 0.039999999f);
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1398 : vec4<f32> = x_40.x_MainLightColor;
  let x_1400 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.x, x_1395.x) * vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1404 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_1406 : f32 = x_1082.unity_LightData.y;
  u_xlat0.x = min(x_1404, x_1406);
  let x_1410 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1410));
  let x_1413 : vec4<f32> = u_xlat5;
  let x_1414 : vec3<f32> = vec3<f32>(x_1413.x, x_1413.y, x_1413.z);
  let x_1415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1417 : vec4<f32> = u_xlat6;
  let x_1418 : vec3<f32> = vec3<f32>(x_1417.x, x_1417.y, x_1417.z);
  let x_1419 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1427 : u32 = u_xlatu_loop_2;
    let x_1428 : u32 = u_xlatu0;
    if ((x_1427 < x_1428)) {
    } else {
      break;
    }
    let x_1431 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_1431 >> 2u);
    let x_1434 : u32 = u_xlatu_loop_2;
    u_xlati38 = bitcast<i32>((x_1434 & 3u));
    let x_1437 : u32 = u_xlatu1;
    let x_1440 : vec4<f32> = x_1082.unity_LightIndices[bitcast<i32>(x_1437)];
    let x_1449 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1454 : vec4<u32> = indexable[x_1449];
    u_xlat1.x = dot(x_1440, bitcast<vec4<f32>>(x_1454));
    let x_1460 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_1460);
    let x_1462 : vec3<f32> = vs_TEXCOORD1;
    let x_1474 : i32 = u_xlati1;
    let x_1476 : vec4<f32> = x_1473.x_AdditionalLightsPosition[x_1474];
    let x_1479 : i32 = u_xlati1;
    let x_1481 : vec4<f32> = x_1473.x_AdditionalLightsPosition[x_1479];
    u_xlat9 = ((-(x_1462) * vec3<f32>(x_1476.w, x_1476.w, x_1476.w)) + vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : vec3<f32> = u_xlat9;
    let x_1485 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1484, x_1485);
    let x_1487 : f32 = u_xlat38;
    u_xlat38 = max(x_1487, 6.10351562e-05f);
    let x_1489 : f32 = u_xlat38;
    u_xlat15.x = inverseSqrt(x_1489);
    let x_1492 : vec3<f32> = u_xlat15;
    let x_1494 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1492.x, x_1492.x, x_1492.x) * x_1494);
    let x_1496 : f32 = u_xlat38;
    u_xlat27.x = (1.0f / x_1496);
    let x_1499 : f32 = u_xlat38;
    let x_1500 : i32 = u_xlati1;
    let x_1502 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1500].x;
    u_xlat38 = (x_1499 * x_1502);
    let x_1504 : f32 = u_xlat38;
    let x_1506 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1504) * x_1506) + 1.0f);
    let x_1509 : f32 = u_xlat38;
    u_xlat38 = max(x_1509, 0.0f);
    let x_1511 : f32 = u_xlat38;
    let x_1512 : f32 = u_xlat38;
    u_xlat38 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat38;
    let x_1516 : f32 = u_xlat27.x;
    u_xlat38 = (x_1514 * x_1516);
    let x_1518 : i32 = u_xlati1;
    let x_1520 : vec4<f32> = x_1473.x_AdditionalLightsSpotDir[x_1518];
    let x_1522 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1520.x, x_1520.y, x_1520.z), x_1522);
    let x_1526 : f32 = u_xlat27.x;
    let x_1527 : i32 = u_xlati1;
    let x_1529 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1527].z;
    let x_1531 : i32 = u_xlati1;
    let x_1533 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1531].w;
    u_xlat27.x = ((x_1526 * x_1529) + x_1533);
    let x_1537 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1537, 0.0f, 1.0f);
    let x_1541 : f32 = u_xlat27.x;
    let x_1543 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1541 * x_1543);
    let x_1546 : f32 = u_xlat38;
    let x_1548 : f32 = u_xlat27.x;
    u_xlat38 = (x_1546 * x_1548);
    let x_1550 : vec4<f32> = u_xlat2;
    let x_1552 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1550.x, x_1550.y, x_1550.z), x_1552);
    let x_1556 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1556, 0.0f, 1.0f);
    let x_1559 : f32 = u_xlat38;
    let x_1561 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1559 * x_1561);
    let x_1565 : vec2<f32> = u_xlat27;
    let x_1567 : i32 = u_xlati1;
    let x_1569 : vec4<f32> = x_1473.x_AdditionalLightsColor[x_1567];
    u_xlat11 = (vec3<f32>(x_1565.x, x_1565.x, x_1565.x) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
    let x_1572 : vec3<f32> = u_xlat9;
    let x_1573 : vec3<f32> = u_xlat15;
    let x_1576 : vec3<f32> = vs_TEXCOORD2;
    u_xlat9 = ((x_1572 * vec3<f32>(x_1573.x, x_1573.x, x_1573.x)) + x_1576);
    let x_1578 : vec3<f32> = u_xlat9;
    let x_1579 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(x_1578, x_1579);
    let x_1583 : f32 = u_xlat15.x;
    u_xlat15.x = max(x_1583, 1.17549435e-37f);
    let x_1587 : f32 = u_xlat15.x;
    u_xlat15.x = inverseSqrt(x_1587);
    let x_1590 : vec3<f32> = u_xlat15;
    let x_1592 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1590.x, x_1590.x, x_1590.x) * x_1592);
    let x_1594 : vec4<f32> = u_xlat2;
    let x_1596 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(vec3<f32>(x_1594.x, x_1594.y, x_1594.z), x_1596);
    let x_1600 : f32 = u_xlat15.x;
    u_xlat15.x = clamp(x_1600, 0.0f, 1.0f);
    let x_1603 : vec3<f32> = u_xlat10;
    let x_1604 : vec3<f32> = u_xlat9;
    u_xlat15.y = dot(x_1603, x_1604);
    let x_1608 : f32 = u_xlat15.y;
    u_xlat15.y = clamp(x_1608, 0.0f, 1.0f);
    let x_1611 : vec3<f32> = u_xlat15;
    let x_1613 : vec3<f32> = u_xlat15;
    let x_1615 : vec2<f32> = (vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(x_1613.x, x_1613.y));
    let x_1616 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_1615.x, x_1615.y, x_1616.z);
    let x_1619 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_1619 * -0.999938965f) + 1.000010014f);
    let x_1624 : f32 = u_xlat15.x;
    let x_1626 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1624 * x_1626);
    let x_1630 : f32 = u_xlat15.y;
    u_xlat27.x = max(x_1630, 0.100000001f);
    let x_1634 : f32 = u_xlat27.x;
    let x_1636 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1634 * x_1636);
    let x_1640 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1640 * 2.03125f);
    let x_1644 : f32 = u_xlat15.x;
    u_xlat15.x = (6.10351562e-05f / x_1644);
    let x_1648 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1648 * 0.039999999f);
    let x_1651 : vec3<f32> = u_xlat15;
    let x_1653 : vec3<f32> = u_xlat11;
    let x_1655 : vec4<f32> = u_xlat8;
    let x_1657 : vec3<f32> = ((vec3<f32>(x_1651.x, x_1651.x, x_1651.x) * x_1653) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
    let x_1660 : f32 = u_xlat38;
    let x_1662 : i32 = u_xlati1;
    let x_1664 : vec4<f32> = x_1473.x_AdditionalLightsColor[x_1662];
    let x_1667 : vec4<f32> = u_xlat7;
    let x_1669 : vec3<f32> = ((vec3<f32>(x_1660, x_1660, x_1660) * vec3<f32>(x_1664.x, x_1664.y, x_1664.z)) + vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
    let x_1670 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);

    continuing {
      let x_1672 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1672 + bitcast<u32>(1i));
    }
  }
  let x_1674 : f32 = u_xlat37;
  let x_1675 : f32 = u_xlat24;
  u_xlat5.x = (x_1674 * x_1675);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_1684 : vec4<f32> = u_xlat5;
  let x_1687 : f32 = x_40.x_GlobalMipBias.x;
  let x_1688 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1684.x, x_1684.y), x_1687);
  let x_1689 : vec3<f32> = vec3<f32>(x_1688.x, x_1688.y, x_1688.z);
  let x_1690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1689.x, x_1690.y, x_1689.y, x_1689.z);
  let x_1692 : vec3<f32> = vs_TEXCOORD2;
  let x_1694 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_1692), vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1699 : f32 = u_xlat1.x;
  let x_1701 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1699 + x_1701);
  let x_1704 : vec4<f32> = u_xlat2;
  let x_1706 : vec3<f32> = u_xlat1;
  let x_1710 : vec3<f32> = vs_TEXCOORD2;
  let x_1712 : vec3<f32> = ((vec3<f32>(x_1704.x, x_1704.y, x_1704.z) * -(vec3<f32>(x_1706.x, x_1706.x, x_1706.x))) + -(x_1710));
  let x_1713 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1723 : vec4<f32> = u_xlat2;
  let x_1726 : f32 = x_40.x_GlobalMipBias.x;
  let x_1727 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_1723.x, x_1723.y, x_1723.z), x_1726);
  let x_1728 : vec3<f32> = vec3<f32>(x_1727.x, x_1727.y, x_1727.z);
  let x_1729 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  let x_1736 : vec2<f32> = u_xlat13;
  let x_1738 : f32 = u_xlat27.y;
  let x_1739 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1736, x_1738);
  u_xlat1 = vec3<f32>(x_1739.x, x_1739.y, x_1739.z);
  let x_1744 : vec4<f32> = u_xlat5;
  let x_1747 : f32 = x_40.x_GlobalMipBias.x;
  let x_1748 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1744.x, x_1744.z), x_1747);
  u_xlat15 = vec3<f32>(x_1748.x, x_1748.y, x_1748.z);
  let x_1750 : vec3<f32> = u_xlat1;
  let x_1751 : vec3<f32> = u_xlat15;
  let x_1752 : vec3<f32> = (x_1750 * x_1751);
  let x_1753 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : vec3<f32> = u_xlat1;
  let x_1757 : vec3<f32> = u_xlat15;
  let x_1759 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_1755) * x_1757) + vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : f32 = u_xlat3;
  let x_1764 : vec3<f32> = u_xlat1;
  let x_1766 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_1762, x_1762, x_1762) * x_1764) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : vec4<f32> = u_xlat7;
  let x_1771 : vec4<f32> = u_xlat0;
  let x_1774 : vec3<f32> = u_xlat1;
  let x_1775 : vec3<f32> = ((vec3<f32>(x_1769.x, x_1769.y, x_1769.z) * vec3<f32>(x_1771.x, x_1771.z, x_1771.w)) + x_1774);
  let x_1776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1775.x, x_1776.y, x_1775.y, x_1775.z);
  let x_1778 : vec4<f32> = u_xlat8;
  let x_1780 : vec4<f32> = u_xlat0;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.y, x_1778.z) + vec3<f32>(x_1780.x, x_1780.z, x_1780.w));
  let x_1783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1782.x, x_1783.y, x_1782.y, x_1782.z);
  let x_1785 : f32 = u_xlat12;
  let x_1787 : vec3<f32> = u_xlat4;
  let x_1789 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1785, x_1785, x_1785) * x_1787) + -(vec3<f32>(x_1789.x, x_1789.z, x_1789.w)));
  let x_1795 : f32 = u_xlat12;
  let x_1797 : vec3<f32> = u_xlat1;
  let x_1799 : vec4<f32> = u_xlat0;
  let x_1801 : vec3<f32> = ((vec3<f32>(x_1795, x_1795, x_1795) * x_1797) + vec3<f32>(x_1799.x, x_1799.z, x_1799.w));
  let x_1802 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
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

