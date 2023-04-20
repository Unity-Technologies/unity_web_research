diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_ScreenParams : vec4<f32>,
  /* @offset(80) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(160) */
  x_MaxDepth : f32,
  /* @offset(176) */
  x_VeraslWater_DepthCamParams : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BumpScale : f32,
  /* @offset(16) */
  x_DitherPattern_TexelSize : vec4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat37 : f32;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(3) var<uniform> x_204 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_366 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlatb27 : bool;

var<private> u_xlatb39 : bool;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat29 : vec2<f32>;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitherPattern : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat12 : f32;

var<private> u_xlatb12 : bool;

var<private> u_xlatb0 : bool;

@group(1) @binding(2) var<uniform> x_1066 : UnityPerDraw;

var<private> u_xlat38 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati1 : i32;

@group(1) @binding(1) var<uniform> x_1454 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(0) var x_CubemapTexture : texture_cube<f32>;

@group(0) @binding(11) var sampler_CubemapTexture : sampler;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu5 : u32;

var<private> u_xlatb17 : bool;

var<private> u_xlatu36 : u32;

fn main_1() {
  var x_321 : vec2<f32>;
  var txVec0 : vec3<f32>;
  var x_583 : f32;
  var u_xlatu_loop_1 : u32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_2 : u32;
  var indexable : array<vec4<u32>, 4u>;
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
  let x_57 : vec4<f32> = u_xlat0;
  let x_60 : f32 = x_40.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat24 = x_61.x;
  let x_66 : f32 = x_40.x_ZBufferParams.z;
  let x_67 : f32 = u_xlat24;
  let x_71 : f32 = x_40.x_ZBufferParams.w;
  u_xlat24 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_74);
  let x_76 : f32 = u_xlat24;
  let x_80 : f32 = vs_TEXCOORD5.x;
  let x_84 : f32 = vs_TEXCOORD5.y;
  u_xlat24 = ((x_76 * x_80) + -(x_84));
  let x_89 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec2<f32> = ((vec2<f32>(x_89.x, x_89.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_105.x, x_105.y), 1.0f);
  u_xlat36 = x_107.x;
  let x_109 : f32 = u_xlat36;
  u_xlat36 = (-(x_109) + 1.0f);
  let x_115 : f32 = x_40.x_MaxDepth;
  let x_118 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat37 = (x_115 + x_118);
  let x_120 : f32 = u_xlat36;
  let x_121 : f32 = u_xlat37;
  let x_124 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat36 = ((x_120 * x_121) + -(x_124));
  let x_127 : f32 = u_xlat36;
  let x_129 : f32 = vs_TEXCOORD1.y;
  u_xlat36 = (x_127 + x_129);
  let x_132 : f32 = x_40.x_MaxDepth;
  u_xlat37 = (1.0f / x_132);
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_143 : f32 = x_40.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_140.z, x_140.w), x_143);
  let x_145 : vec2<f32> = vec2<f32>(x_144.x, x_144.y);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat2;
  let x_155 : vec2<f32> = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_163 : vec4<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_40.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_163.x, x_163.y), x_166);
  u_xlat26 = vec2<f32>(x_167.x, x_167.y);
  let x_169 : vec2<f32> = u_xlat26;
  u_xlat26 = ((x_169 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_172 : vec2<f32> = u_xlat26;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec2<f32> = ((x_172 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_174.x, x_174.y));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : f32 = u_xlat24;
  u_xlat3 = (x_180 * 0.00499999988824129105f);
  let x_183 : f32 = u_xlat24;
  u_xlat26.x = ((x_183 * 0.25f) + 0.25f);
  let x_189 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_189, 0.0f, 1.0f);
  let x_193 : vec2<f32> = u_xlat26;
  let x_195 : vec4<f32> = u_xlat2;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.x) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_200 : vec4<f32> = u_xlat2;
  let x_206 : f32 = x_204.x_BumpScale;
  let x_210 : vec3<f32> = vs_NORMAL0;
  let x_212 : vec2<f32> = ((vec2<f32>(x_200.x, x_200.y) * vec2<f32>(x_206, x_206)) + vec2<f32>(x_210.x, x_210.z));
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_213.w);
  let x_216 : vec3<f32> = u_xlat1;
  let x_219 : vec2<f32> = (-(vec2<f32>(x_216.y, x_216.z)) + vec2<f32>(0.5f, 0.5f));
  let x_220 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_219.x, x_220.y, x_219.y);
  u_xlat2.w = 0.0f;
  let x_224 : f32 = vs_NORMAL0.y;
  u_xlat4.y = x_224;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = u_xlat4;
  let x_229 : vec3<f32> = (vec3<f32>(x_226.x, x_226.w, x_226.z) + x_228);
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat13.x = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_240);
  let x_243 : vec2<f32> = u_xlat13;
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.x, x_243.x) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = x_40.unity_MatrixVP[1i];
  u_xlat13 = (-(vec2<f32>(x_250.y, x_250.y)) * vec2<f32>(x_257.x, x_257.z));
  let x_261 : vec4<f32> = x_40.unity_MatrixVP[0i];
  let x_263 : vec4<f32> = u_xlat2;
  let x_267 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_261.x, x_261.z) * -(vec2<f32>(x_263.x, x_263.x))) + x_267);
  let x_271 : vec4<f32> = x_40.unity_MatrixVP[2i];
  let x_273 : vec4<f32> = u_xlat2;
  let x_277 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_271.x, x_271.z) * -(vec2<f32>(x_273.z, x_273.z))) + x_277);
  let x_279 : f32 = u_xlat3;
  u_xlat3 = x_279;
  let x_280 : f32 = u_xlat3;
  u_xlat3 = clamp(x_280, 0.0f, 1.0f);
  let x_282 : vec2<f32> = u_xlat13;
  let x_283 : f32 = u_xlat3;
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat13 = ((x_282 * vec2<f32>(x_283, x_283)) + vec2<f32>(x_286.x, x_286.y));
  let x_292 : vec2<f32> = u_xlat13;
  let x_294 : f32 = x_40.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_292, x_294);
  u_xlat3 = x_295.x;
  let x_298 : f32 = x_40.x_ZBufferParams.z;
  let x_299 : f32 = u_xlat3;
  let x_302 : f32 = x_40.x_ZBufferParams.w;
  u_xlat3 = ((x_298 * x_299) + x_302);
  let x_304 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_304);
  let x_306 : f32 = u_xlat3;
  let x_308 : f32 = vs_TEXCOORD5.x;
  let x_311 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_306 * x_308) + -(x_311));
  let x_317 : f32 = u_xlat3;
  u_xlatb15 = (x_317 < 0.0f);
  let x_319 : bool = u_xlatb15;
  if (x_319) {
    let x_324 : vec4<f32> = u_xlat0;
    x_321 = vec2<f32>(x_324.x, x_324.y);
  } else {
    let x_327 : vec2<f32> = u_xlat13;
    x_321 = x_327;
  }
  let x_328 : vec2<f32> = x_321;
  u_xlat13 = x_328;
  let x_329 : bool = u_xlatb15;
  let x_330 : f32 = u_xlat24;
  let x_331 : f32 = u_xlat3;
  u_xlat24 = select(x_331, x_330, x_329);
  let x_333 : vec4<f32> = u_xlat2;
  let x_336 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), x_336);
  let x_338 : f32 = u_xlat3;
  u_xlat3 = (-(x_338) + 1.0f);
  let x_342 : f32 = u_xlat3;
  let x_343 : f32 = u_xlat3;
  u_xlat15.x = (x_342 * x_343);
  let x_347 : f32 = u_xlat15.x;
  let x_349 : f32 = u_xlat15.x;
  u_xlat15.x = (x_347 * x_349);
  let x_353 : f32 = u_xlat15.x;
  let x_354 : f32 = u_xlat3;
  u_xlat3 = (x_353 * x_354);
  let x_356 : f32 = u_xlat3;
  u_xlat3 = clamp(x_356, 0.0f, 1.0f);
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_368 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_358 + -(vec3<f32>(x_368.x, x_368.y, x_368.z)));
  let x_372 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_372 + -(vec3<f32>(x_374.x, x_374.y, x_374.z)));
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_382 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres2;
  let x_385 : vec3<f32> = (x_379 + -(vec3<f32>(x_382.x, x_382.y, x_382.z)));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres3;
  let x_395 : vec3<f32> = (x_389 + -(vec3<f32>(x_392.x, x_392.y, x_392.z)));
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : vec3<f32> = u_xlat15;
  let x_400 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_399, x_400);
  let x_403 : vec3<f32> = u_xlat4;
  let x_404 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_403, x_404);
  let x_407 : vec4<f32> = u_xlat5;
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_413 : vec4<f32> = u_xlat6;
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_422 : vec4<f32> = u_xlat7;
  let x_424 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
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
  u_xlat15.x = select(-0.0f, -1.0f, x_443);
  let x_448 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_448);
  let x_452 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_452);
  let x_455 : vec3<f32> = u_xlat15;
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_455 + vec3<f32>(x_456.y, x_456.z, x_456.w));
  let x_459 : vec3<f32> = u_xlat15;
  let x_461 : vec3<f32> = max(x_459, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_462.x, x_461.x, x_461.y, x_461.z);
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_464, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_471 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_471) + 4.0f);
  let x_478 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_478);
  let x_482 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_482) << bitcast<u32>(2i));
  let x_485 : vec3<f32> = vs_TEXCOORD1;
  let x_487 : i32 = u_xlati15;
  let x_490 : i32 = u_xlati15;
  let x_494 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_487 + 1i) / 4i)][((x_490 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_485.y, x_485.y, x_485.y) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : i32 = u_xlati15;
  let x_499 : i32 = u_xlati15;
  let x_502 : vec4<f32> = x_366.x_MainLightWorldToShadow[(x_497 / 4i)][(x_499 % 4i)];
  let x_504 : vec3<f32> = vs_TEXCOORD1;
  let x_507 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504.x, x_504.x, x_504.x)) + x_507);
  let x_509 : i32 = u_xlati15;
  let x_512 : i32 = u_xlati15;
  let x_516 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_509 + 2i) / 4i)][((x_512 + 2i) % 4i)];
  let x_518 : vec3<f32> = vs_TEXCOORD1;
  let x_521 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(x_518.z, x_518.z, x_518.z)) + x_521);
  let x_523 : vec3<f32> = u_xlat4;
  let x_524 : i32 = u_xlati15;
  let x_527 : i32 = u_xlati15;
  let x_531 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_524 + 3i) / 4i)][((x_527 + 3i) % 4i)];
  u_xlat15 = (x_523 + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_536 : vec3<f32> = u_xlat15;
  let x_537 : vec2<f32> = vec2<f32>(x_536.x, x_536.y);
  let x_539 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_537.x, x_537.y, x_539);
  let x_551 : vec3<f32> = txVec0;
  let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
  u_xlat15.x = x_553;
  let x_557 : f32 = x_366.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_557) + 1.0f);
  let x_562 : f32 = u_xlat15.x;
  let x_564 : f32 = x_366.x_MainLightShadowParams.x;
  let x_567 : f32 = u_xlat27.x;
  u_xlat15.x = ((x_562 * x_564) + x_567);
  let x_572 : f32 = u_xlat15.z;
  u_xlatb27 = (0.0f >= x_572);
  let x_576 : f32 = u_xlat15.z;
  u_xlatb39 = (x_576 >= 1.0f);
  let x_578 : bool = u_xlatb39;
  let x_579 : bool = u_xlatb27;
  u_xlatb27 = (x_578 | x_579);
  let x_581 : bool = u_xlatb27;
  if (x_581) {
    x_583 = 1.0f;
  } else {
    let x_588 : f32 = u_xlat15.x;
    x_583 = x_588;
  }
  let x_589 : f32 = x_583;
  u_xlat15.x = x_589;
  let x_591 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = x_40.x_ScreenParams;
  let x_596 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594.x, x_594.y));
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
  let x_599 : f32 = u_xlat24;
  u_xlat27 = (vec2<f32>(x_599, x_599) * vec2<f32>(20.0f, 0.25f));
  let x_604 : vec2<f32> = u_xlat27;
  let x_606 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_604.y, x_604.y, x_604.y) * -(x_606));
  u_xlat40 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_617 : u32 = u_xlatu_loop_1;
    if ((x_617 < 4u)) {
    } else {
      break;
    }
    let x_621 : u32 = u_xlatu_loop_1;
    u_xlat17.x = f32(x_621);
    let x_625 : vec3<f32> = u_xlat17;
    let x_628 : vec4<f32> = x_40.x_ScreenParams;
    u_xlat29 = (vec2<f32>(x_625.x, x_625.x) * vec2<f32>(x_628.x, x_628.y));
    let x_631 : vec4<f32> = u_xlat0;
    let x_634 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
    let x_637 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_634.x, x_634.y)) + x_637);
    let x_644 : vec2<f32> = u_xlat29;
    let x_646 : f32 = x_40.x_GlobalMipBias.x;
    let x_647 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_644, x_646);
    let x_648 : vec3<f32> = vec3<f32>(x_647.x, x_647.y, x_647.z);
    let x_649 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
    let x_651 : vec4<f32> = u_xlat6;
    let x_656 : vec3<f32> = ((vec3<f32>(x_651.x, x_651.z, x_651.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_657 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
    let x_659 : vec2<f32> = u_xlat27;
    let x_661 : vec4<f32> = u_xlat6;
    let x_663 : vec3<f32> = (vec3<f32>(x_659.y, x_659.y, x_659.y) * vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_664 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_663.z);
    let x_666 : vec3<f32> = u_xlat17;
    let x_668 : vec4<f32> = u_xlat6;
    let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.x, x_666.x) * vec3<f32>(x_668.x, x_668.y, x_668.w));
    let x_671 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_670.z);
    let x_673 : vec4<f32> = u_xlat6;
    let x_678 : vec3<f32> = vs_TEXCOORD1;
    let x_679 : vec3<f32> = ((vec3<f32>(x_673.x, x_673.y, x_673.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_678);
    let x_680 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_679.z);
    let x_683 : f32 = u_xlat17.x;
    let x_685 : f32 = u_xlat6.z;
    u_xlat17.x = (x_683 + x_685);
    let x_688 : vec3<f32> = u_xlat4;
    let x_689 : vec3<f32> = u_xlat17;
    let x_692 : vec4<f32> = u_xlat6;
    u_xlat17 = ((x_688 * vec3<f32>(x_689.x, x_689.x, x_689.x)) + vec3<f32>(x_692.x, x_692.y, x_692.w));
    let x_695 : vec3<f32> = u_xlat17;
    let x_697 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres0;
    let x_700 : vec3<f32> = (x_695 + -(vec3<f32>(x_697.x, x_697.y, x_697.z)));
    let x_701 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
    let x_703 : vec3<f32> = u_xlat17;
    let x_705 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres1;
    let x_708 : vec3<f32> = (x_703 + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
    let x_709 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
    let x_712 : vec3<f32> = u_xlat17;
    let x_714 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres2;
    u_xlat8 = (x_712 + -(vec3<f32>(x_714.x, x_714.y, x_714.z)));
    let x_719 : vec3<f32> = u_xlat17;
    let x_721 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres3;
    u_xlat9 = (x_719 + -(vec3<f32>(x_721.x, x_721.y, x_721.z)));
    let x_725 : vec4<f32> = u_xlat6;
    let x_727 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_731 : vec4<f32> = u_xlat7;
    let x_733 : vec4<f32> = u_xlat7;
    u_xlat6.y = dot(vec3<f32>(x_731.x, x_731.y, x_731.z), vec3<f32>(x_733.x, x_733.y, x_733.z));
    let x_737 : vec3<f32> = u_xlat8;
    let x_738 : vec3<f32> = u_xlat8;
    u_xlat6.z = dot(x_737, x_738);
    let x_741 : vec3<f32> = u_xlat9;
    let x_742 : vec3<f32> = u_xlat9;
    u_xlat6.w = dot(x_741, x_742);
    let x_746 : vec4<f32> = u_xlat6;
    let x_748 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
    u_xlatb6 = (x_746 < x_748);
    let x_751 : bool = u_xlatb6.x;
    u_xlat7.x = select(0.0f, 1.0f, x_751);
    let x_755 : bool = u_xlatb6.y;
    u_xlat7.y = select(0.0f, 1.0f, x_755);
    let x_759 : bool = u_xlatb6.z;
    u_xlat7.z = select(0.0f, 1.0f, x_759);
    let x_763 : bool = u_xlatb6.w;
    u_xlat7.w = select(0.0f, 1.0f, x_763);
    let x_767 : bool = u_xlatb6.x;
    u_xlat6.x = select(-0.0f, -1.0f, x_767);
    let x_771 : bool = u_xlatb6.y;
    u_xlat6.y = select(-0.0f, -1.0f, x_771);
    let x_775 : bool = u_xlatb6.z;
    u_xlat6.z = select(-0.0f, -1.0f, x_775);
    let x_778 : vec4<f32> = u_xlat6;
    let x_780 : vec4<f32> = u_xlat7;
    let x_782 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_780.y, x_780.z, x_780.w));
    let x_783 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
    let x_785 : vec4<f32> = u_xlat6;
    let x_787 : vec3<f32> = max(vec3<f32>(x_785.x, x_785.y, x_785.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_788 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_788.x, x_787.x, x_787.y, x_787.z);
    let x_790 : vec4<f32> = u_xlat7;
    u_xlat6.x = dot(x_790, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_794 : f32 = u_xlat6.x;
    u_xlat6.x = (-(x_794) + 4.0f);
    let x_800 : f32 = u_xlat6.x;
    u_xlatu6 = u32(x_800);
    let x_803 : u32 = u_xlatu6;
    u_xlati6 = (bitcast<i32>(x_803) << bitcast<u32>(2i));
    let x_807 : vec3<f32> = u_xlat17;
    let x_809 : i32 = u_xlati6;
    let x_812 : i32 = u_xlati6;
    let x_816 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_809 + 1i) / 4i)][((x_812 + 1i) % 4i)];
    u_xlat18 = (vec3<f32>(x_807.y, x_807.y, x_807.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
    let x_819 : i32 = u_xlati6;
    let x_821 : i32 = u_xlati6;
    let x_824 : vec4<f32> = x_366.x_MainLightWorldToShadow[(x_819 / 4i)][(x_821 % 4i)];
    let x_826 : vec3<f32> = u_xlat17;
    let x_829 : vec3<f32> = u_xlat18;
    u_xlat18 = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_826.x, x_826.x, x_826.x)) + x_829);
    let x_831 : i32 = u_xlati6;
    let x_834 : i32 = u_xlati6;
    let x_838 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_831 + 2i) / 4i)][((x_834 + 2i) % 4i)];
    let x_840 : vec3<f32> = u_xlat17;
    let x_843 : vec3<f32> = u_xlat18;
    u_xlat17 = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840.z, x_840.z, x_840.z)) + x_843);
    let x_845 : vec3<f32> = u_xlat17;
    let x_846 : i32 = u_xlati6;
    let x_849 : i32 = u_xlati6;
    let x_853 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_846 + 3i) / 4i)][((x_849 + 3i) % 4i)];
    u_xlat17 = (x_845 + vec3<f32>(x_853.x, x_853.y, x_853.z));
    let x_857 : vec3<f32> = u_xlat17;
    let x_858 : vec2<f32> = vec2<f32>(x_857.x, x_857.y);
    let x_860 : f32 = u_xlat17.z;
    txVec1 = vec3<f32>(x_858.x, x_858.y, x_860);
    let x_867 : vec3<f32> = txVec1;
    let x_869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_867.xy, x_867.z);
    u_xlat17.x = x_869;
    let x_871 : f32 = u_xlat40;
    let x_873 : f32 = u_xlat17.x;
    u_xlat40 = (x_871 + x_873);

    continuing {
      let x_875 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_875 + bitcast<u32>(1i));
    }
  }
  let x_877 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (x_877 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_881 : vec3<f32> = vs_TEXCOORD1;
  let x_884 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres0;
  let x_887 : vec3<f32> = ((x_881 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_884.x, x_884.y, x_884.z)));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = vs_TEXCOORD1;
  let x_893 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres1;
  let x_896 : vec3<f32> = ((x_890 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_893.x, x_893.y, x_893.z)));
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec3<f32> = vs_TEXCOORD1;
  let x_902 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres2;
  let x_905 : vec3<f32> = ((x_899 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_902.x, x_902.y, x_902.z)));
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec3<f32> = vs_TEXCOORD1;
  let x_911 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres3;
  u_xlat8 = ((x_908 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_911.x, x_911.y, x_911.z)));
  let x_915 : vec4<f32> = u_xlat5;
  let x_917 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_921 : vec4<f32> = u_xlat6;
  let x_923 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_927 : vec4<f32> = u_xlat7;
  let x_929 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_933 : vec3<f32> = u_xlat8;
  let x_934 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_933, x_934);
  let x_938 : vec4<f32> = u_xlat5;
  let x_940 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_938 < x_940);
  let x_943 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_947);
  let x_951 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_951);
  let x_955 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_955);
  let x_959 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_959);
  let x_963 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_963);
  let x_967 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_967);
  let x_970 : vec4<f32> = u_xlat5;
  let x_972 : vec4<f32> = u_xlat6;
  let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) + vec3<f32>(x_972.y, x_972.z, x_972.w));
  let x_975 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat5;
  let x_979 : vec3<f32> = max(vec3<f32>(x_977.x, x_977.y, x_977.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_980 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_980.x, x_979.x, x_979.y, x_979.z);
  let x_982 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_982, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_986 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_986) + 4.0f);
  let x_992 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_992);
  let x_995 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_995) << bitcast<u32>(2i));
  let x_1000 : f32 = u_xlat4.y;
  let x_1001 : i32 = u_xlati0;
  let x_1004 : i32 = u_xlati0;
  let x_1008 : f32 = x_366.x_MainLightWorldToShadow[((x_1001 + 1i) / 4i)][((x_1004 + 1i) % 4i)].z;
  u_xlat12 = (x_1000 * x_1008);
  let x_1010 : i32 = u_xlati0;
  let x_1012 : i32 = u_xlati0;
  let x_1015 : f32 = x_366.x_MainLightWorldToShadow[(x_1010 / 4i)][(x_1012 % 4i)].z;
  let x_1017 : f32 = u_xlat4.x;
  let x_1019 : f32 = u_xlat12;
  u_xlat12 = ((x_1015 * x_1017) + x_1019);
  let x_1021 : i32 = u_xlati0;
  let x_1024 : i32 = u_xlati0;
  let x_1028 : f32 = x_366.x_MainLightWorldToShadow[((x_1021 + 2i) / 4i)][((x_1024 + 2i) % 4i)].z;
  let x_1030 : f32 = u_xlat4.z;
  let x_1032 : f32 = u_xlat12;
  u_xlat12 = ((x_1028 * x_1030) + x_1032);
  let x_1034 : f32 = u_xlat12;
  let x_1035 : i32 = u_xlati0;
  let x_1038 : i32 = u_xlati0;
  let x_1042 : f32 = x_366.x_MainLightWorldToShadow[((x_1035 + 3i) / 4i)][((x_1038 + 3i) % 4i)].z;
  u_xlat0.x = (x_1034 + x_1042);
  let x_1047 : f32 = u_xlat0.x;
  u_xlatb12 = (0.0f >= x_1047);
  let x_1051 : f32 = u_xlat0.x;
  u_xlatb0 = (x_1051 >= 1.0f);
  let x_1053 : bool = u_xlatb0;
  let x_1054 : bool = u_xlatb12;
  u_xlatb0 = (x_1053 | x_1054);
  let x_1056 : f32 = u_xlat40;
  u_xlat12 = (x_1056 * 0.25f);
  let x_1058 : bool = u_xlatb0;
  let x_1059 : f32 = u_xlat12;
  u_xlat0.x = select(x_1059, 1.0f, x_1058);
  u_xlat2.w = 1.0f;
  let x_1069 : vec4<f32> = x_1066.unity_SHAr;
  let x_1070 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_1069, x_1070);
  let x_1075 : vec4<f32> = x_1066.unity_SHAg;
  let x_1076 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_1075, x_1076);
  let x_1081 : vec4<f32> = x_1066.unity_SHAb;
  let x_1082 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_1081, x_1082);
  let x_1085 : vec4<f32> = u_xlat2;
  let x_1087 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_1085.y, x_1085.z, x_1085.z, x_1085.x) * vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.z));
  let x_1092 : vec4<f32> = x_1066.unity_SHBr;
  let x_1093 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_1092, x_1093);
  let x_1098 : vec4<f32> = x_1066.unity_SHBg;
  let x_1099 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_1098, x_1099);
  let x_1104 : vec4<f32> = x_1066.unity_SHBb;
  let x_1105 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_1104, x_1105);
  let x_1109 : f32 = u_xlat2.y;
  let x_1111 : f32 = u_xlat2.y;
  u_xlat12 = (x_1109 * x_1111);
  let x_1114 : f32 = u_xlat2.x;
  let x_1116 : f32 = u_xlat2.x;
  let x_1118 : f32 = u_xlat12;
  u_xlat12 = ((x_1114 * x_1116) + -(x_1118));
  let x_1123 : vec4<f32> = x_1066.unity_SHC;
  let x_1125 : f32 = u_xlat12;
  let x_1128 : vec4<f32> = u_xlat6;
  let x_1130 : vec3<f32> = ((vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(x_1125, x_1125, x_1125)) + vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec3<f32> = u_xlat4;
  let x_1134 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1133 + vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1137 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_1137, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1139 : vec3<f32> = vs_TEXCOORD2;
  let x_1141 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat12 = dot(x_1139, -(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)));
  let x_1145 : f32 = u_xlat12;
  let x_1147 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1145 * x_1147);
  let x_1150 : f32 = u_xlat12;
  let x_1151 : f32 = u_xlat12;
  u_xlat38 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat12;
  let x_1154 : f32 = u_xlat38;
  u_xlat12 = (x_1153 * x_1154);
  let x_1156 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1156, 0.0f, 1.0f);
  let x_1158 : f32 = u_xlat12;
  u_xlat12 = (x_1158 * 5.0f);
  let x_1161 : f32 = u_xlat12;
  let x_1164 : vec4<f32> = x_40.x_MainLightColor;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1161, x_1161, x_1161) * vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1170 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1173 : vec4<f32> = x_40.x_MainLightColor;
  let x_1176 : vec4<f32> = u_xlat5;
  let x_1178 : vec3<f32> = ((vec3<f32>(x_1170.y, x_1170.y, x_1170.y) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z)) + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat5;
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1186 : vec3<f32> = u_xlat4;
  let x_1187 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * vec3<f32>(x_1183.x, x_1183.x, x_1183.x)) + x_1186);
  let x_1188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1195 : vec4<f32> = vs_TEXCOORD0;
  let x_1198 : f32 = x_40.x_GlobalMipBias.x;
  let x_1199 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1195.z, x_1195.w), x_1198);
  let x_1200 : vec3<f32> = vec3<f32>(x_1199.x, x_1199.y, x_1199.z);
  let x_1201 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1204 : f32 = u_xlat27.x;
  u_xlat27.x = x_1204;
  let x_1207 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1207, 0.0f, 1.0f);
  let x_1211 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1211 + -0.375f);
  let x_1214 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1214, 0.0f, 1.0f);
  let x_1216 : f32 = u_xlat24;
  u_xlat38 = ((-(x_1216) * 4.0f) + 1.0f);
  let x_1220 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1220, 0.0f, 1.0f);
  let x_1222 : f32 = u_xlat36;
  let x_1223 : f32 = u_xlat24;
  u_xlat36 = min(x_1222, x_1223);
  let x_1225 : f32 = u_xlat36;
  u_xlat36 = ((-(x_1225) * 0.5f) + 0.75f);
  let x_1230 : f32 = u_xlat38;
  let x_1232 : f32 = u_xlat36;
  u_xlat36 = ((x_1230 * 0.5f) + x_1232);
  let x_1234 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1234, 0.0f, 1.0f);
  let x_1237 : f32 = u_xlat27.x;
  let x_1238 : f32 = u_xlat36;
  u_xlat36 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat36;
  let x_1241 : f32 = u_xlat12;
  u_xlat12 = max(x_1240, x_1241);
  let x_1244 : f32 = u_xlat1.x;
  let x_1246 : f32 = u_xlat1.x;
  u_xlat36 = (x_1244 + x_1246);
  let x_1248 : f32 = u_xlat36;
  let x_1249 : f32 = u_xlat12;
  u_xlat7.x = max(x_1248, x_1249);
  u_xlat7.y = 0.66000002622604370117f;
  let x_1259 : vec4<f32> = u_xlat7;
  let x_1262 : f32 = x_40.x_GlobalMipBias.x;
  let x_1263 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1259.x, x_1259.y), x_1262);
  let x_1264 : vec3<f32> = vec3<f32>(x_1263.x, x_1263.y, x_1263.z);
  let x_1265 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : vec4<f32> = u_xlat6;
  let x_1269 : vec4<f32> = u_xlat7;
  let x_1271 : vec3<f32> = (vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec4<f32> = u_xlat6;
  let x_1276 : vec4<f32> = u_xlat6;
  u_xlat12 = dot(vec3<f32>(x_1274.x, x_1274.y, x_1274.z), vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_1279);
  let x_1281 : f32 = u_xlat12;
  u_xlat12 = ((x_1281 * 1.5f) + -0.10000000149011611938f);
  let x_1286 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1286, 0.0f, 1.0f);
  let x_1288 : vec3<f32> = u_xlat15;
  let x_1291 : vec4<f32> = x_40.x_MainLightColor;
  let x_1294 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1288.x, x_1288.x, x_1288.x) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + x_1294);
  let x_1296 : vec3<f32> = vs_TEXCOORD2;
  let x_1298 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1300 : vec3<f32> = (x_1296 + vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : vec4<f32> = u_xlat6;
  let x_1305 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1303.x, x_1303.y, x_1303.z), vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1308 : f32 = u_xlat36;
  u_xlat36 = max(x_1308, 1.17549435e-38f);
  let x_1311 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1311);
  let x_1313 : f32 = u_xlat36;
  let x_1315 : vec4<f32> = u_xlat6;
  let x_1317 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1322 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1320.x, x_1320.y, x_1320.z), vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1325, 0.0f, 1.0f);
  let x_1328 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1330 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1328.x, x_1328.y, x_1328.z), vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1335 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1335, 0.0f, 1.0f);
  let x_1338 : f32 = u_xlat36;
  let x_1339 : f32 = u_xlat36;
  u_xlat36 = (x_1338 * x_1339);
  let x_1341 : f32 = u_xlat36;
  u_xlat36 = ((x_1341 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_1347 : f32 = u_xlat1.x;
  let x_1349 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1347 * x_1349);
  let x_1352 : f32 = u_xlat36;
  let x_1353 : f32 = u_xlat36;
  u_xlat36 = (x_1352 * x_1353);
  let x_1356 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1356, 0.10000000149011611938f);
  let x_1359 : f32 = u_xlat36;
  let x_1361 : f32 = u_xlat1.x;
  u_xlat36 = (x_1359 * x_1361);
  let x_1363 : f32 = u_xlat36;
  u_xlat36 = (x_1363 * 2.03125f);
  let x_1367 : f32 = u_xlat36;
  u_xlat36 = (0.00006103515625f / x_1367);
  let x_1370 : f32 = u_xlat0.x;
  let x_1371 : f32 = u_xlat36;
  u_xlat0.x = (x_1370 * x_1371);
  let x_1375 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1375 * 0.03999999910593032837f);
  let x_1379 : vec4<f32> = u_xlat0;
  let x_1382 : vec4<f32> = x_40.x_MainLightColor;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1379.x, x_1379.x, x_1379.x) * vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1388 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_1390 : f32 = x_1066.unity_LightData.y;
  u_xlat0.x = min(x_1388, x_1390);
  let x_1394 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1394));
  let x_1397 : vec4<f32> = u_xlat5;
  let x_1398 : vec3<f32> = vec3<f32>(x_1397.x, x_1397.y, x_1397.z);
  let x_1399 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec4<f32> = u_xlat6;
  u_xlat8 = vec3<f32>(x_1401.x, x_1401.y, x_1401.z);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1409 : u32 = u_xlatu_loop_2;
    let x_1410 : u32 = u_xlatu0;
    if ((x_1409 < x_1410)) {
    } else {
      break;
    }
    let x_1413 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_1413 >> 2u);
    let x_1416 : u32 = u_xlatu_loop_2;
    u_xlati38 = bitcast<i32>((x_1416 & 3u));
    let x_1419 : u32 = u_xlatu1;
    let x_1422 : vec4<f32> = x_1066.unity_LightIndices[bitcast<i32>(x_1419)];
    let x_1431 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1436 : vec4<u32> = indexable[x_1431];
    u_xlat1.x = dot(x_1422, bitcast<vec4<f32>>(x_1436));
    let x_1442 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_1442);
    let x_1444 : vec3<f32> = vs_TEXCOORD1;
    let x_1455 : i32 = u_xlati1;
    let x_1457 : vec4<f32> = x_1454.x_AdditionalLightsPosition[x_1455];
    let x_1460 : i32 = u_xlati1;
    let x_1462 : vec4<f32> = x_1454.x_AdditionalLightsPosition[x_1460];
    u_xlat9 = ((-(x_1444) * vec3<f32>(x_1457.w, x_1457.w, x_1457.w)) + vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
    let x_1465 : vec3<f32> = u_xlat9;
    let x_1466 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1465, x_1466);
    let x_1468 : f32 = u_xlat38;
    u_xlat38 = max(x_1468, 0.00006103515625f);
    let x_1470 : f32 = u_xlat38;
    u_xlat15.x = inverseSqrt(x_1470);
    let x_1474 : vec3<f32> = u_xlat15;
    let x_1476 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1474.x, x_1474.x, x_1474.x) * x_1476);
    let x_1478 : f32 = u_xlat38;
    u_xlat27.x = (1.0f / x_1478);
    let x_1481 : f32 = u_xlat38;
    let x_1482 : i32 = u_xlati1;
    let x_1484 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1482].x;
    u_xlat38 = (x_1481 * x_1484);
    let x_1486 : f32 = u_xlat38;
    let x_1488 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1486) * x_1488) + 1.0f);
    let x_1491 : f32 = u_xlat38;
    u_xlat38 = max(x_1491, 0.0f);
    let x_1493 : f32 = u_xlat38;
    let x_1494 : f32 = u_xlat38;
    u_xlat38 = (x_1493 * x_1494);
    let x_1496 : f32 = u_xlat38;
    let x_1498 : f32 = u_xlat27.x;
    u_xlat38 = (x_1496 * x_1498);
    let x_1500 : i32 = u_xlati1;
    let x_1502 : vec4<f32> = x_1454.x_AdditionalLightsSpotDir[x_1500];
    let x_1504 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), x_1504);
    let x_1508 : f32 = u_xlat27.x;
    let x_1509 : i32 = u_xlati1;
    let x_1511 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1509].z;
    let x_1513 : i32 = u_xlati1;
    let x_1515 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1513].w;
    u_xlat27.x = ((x_1508 * x_1511) + x_1515);
    let x_1519 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1519, 0.0f, 1.0f);
    let x_1523 : f32 = u_xlat27.x;
    let x_1525 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1523 * x_1525);
    let x_1528 : f32 = u_xlat38;
    let x_1530 : f32 = u_xlat27.x;
    u_xlat38 = (x_1528 * x_1530);
    let x_1532 : vec4<f32> = u_xlat2;
    let x_1534 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1532.x, x_1532.y, x_1532.z), x_1534);
    let x_1538 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1538, 0.0f, 1.0f);
    let x_1541 : f32 = u_xlat38;
    let x_1543 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1541 * x_1543);
    let x_1547 : vec2<f32> = u_xlat27;
    let x_1549 : i32 = u_xlati1;
    let x_1551 : vec4<f32> = x_1454.x_AdditionalLightsColor[x_1549];
    u_xlat11 = (vec3<f32>(x_1547.x, x_1547.x, x_1547.x) * vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : vec3<f32> = u_xlat9;
    let x_1555 : vec3<f32> = u_xlat15;
    let x_1558 : vec3<f32> = vs_TEXCOORD2;
    u_xlat9 = ((x_1554 * vec3<f32>(x_1555.x, x_1555.x, x_1555.x)) + x_1558);
    let x_1560 : vec3<f32> = u_xlat9;
    let x_1561 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(x_1560, x_1561);
    let x_1565 : f32 = u_xlat15.x;
    u_xlat15.x = max(x_1565, 1.17549435e-38f);
    let x_1569 : f32 = u_xlat15.x;
    u_xlat15.x = inverseSqrt(x_1569);
    let x_1572 : vec3<f32> = u_xlat15;
    let x_1574 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1572.x, x_1572.x, x_1572.x) * x_1574);
    let x_1576 : vec4<f32> = u_xlat2;
    let x_1578 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), x_1578);
    let x_1582 : f32 = u_xlat15.x;
    u_xlat15.x = clamp(x_1582, 0.0f, 1.0f);
    let x_1585 : vec3<f32> = u_xlat10;
    let x_1586 : vec3<f32> = u_xlat9;
    u_xlat15.y = dot(x_1585, x_1586);
    let x_1590 : f32 = u_xlat15.y;
    u_xlat15.y = clamp(x_1590, 0.0f, 1.0f);
    let x_1593 : vec3<f32> = u_xlat15;
    let x_1595 : vec3<f32> = u_xlat15;
    let x_1597 : vec2<f32> = (vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1595.x, x_1595.y));
    let x_1598 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_1597.x, x_1597.y, x_1598.z);
    let x_1601 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_1601 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_1606 : f32 = u_xlat15.x;
    let x_1608 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1606 * x_1608);
    let x_1612 : f32 = u_xlat15.y;
    u_xlat27.x = max(x_1612, 0.10000000149011611938f);
    let x_1616 : f32 = u_xlat27.x;
    let x_1618 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1616 * x_1618);
    let x_1622 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1622 * 2.03125f);
    let x_1626 : f32 = u_xlat15.x;
    u_xlat15.x = (0.00006103515625f / x_1626);
    let x_1630 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1630 * 0.03999999910593032837f);
    let x_1633 : vec3<f32> = u_xlat15;
    let x_1635 : vec3<f32> = u_xlat11;
    let x_1637 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1633.x, x_1633.x, x_1633.x) * x_1635) + x_1637);
    let x_1639 : f32 = u_xlat38;
    let x_1641 : i32 = u_xlati1;
    let x_1643 : vec4<f32> = x_1454.x_AdditionalLightsColor[x_1641];
    let x_1646 : vec4<f32> = u_xlat7;
    let x_1648 : vec3<f32> = ((vec3<f32>(x_1639, x_1639, x_1639) * vec3<f32>(x_1643.x, x_1643.y, x_1643.z)) + vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
    let x_1649 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);

    continuing {
      let x_1651 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1651 + bitcast<u32>(1i));
    }
  }
  let x_1653 : f32 = u_xlat37;
  let x_1654 : f32 = u_xlat24;
  u_xlat5.x = (x_1653 * x_1654);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_1663 : vec4<f32> = u_xlat5;
  let x_1666 : f32 = x_40.x_GlobalMipBias.x;
  let x_1667 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1663.x, x_1663.y), x_1666);
  let x_1668 : vec3<f32> = vec3<f32>(x_1667.x, x_1667.y, x_1667.z);
  let x_1669 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1668.x, x_1669.y, x_1668.y, x_1668.z);
  let x_1671 : vec3<f32> = vs_TEXCOORD2;
  let x_1673 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_1671), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1678 : f32 = u_xlat1.x;
  let x_1680 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1678 + x_1680);
  let x_1683 : vec4<f32> = u_xlat2;
  let x_1685 : vec3<f32> = u_xlat1;
  let x_1689 : vec3<f32> = vs_TEXCOORD2;
  let x_1691 : vec3<f32> = ((vec3<f32>(x_1683.x, x_1683.y, x_1683.z) * -(vec3<f32>(x_1685.x, x_1685.x, x_1685.x))) + -(x_1689));
  let x_1692 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1702 : vec4<f32> = u_xlat2;
  let x_1705 : f32 = x_40.x_GlobalMipBias.x;
  let x_1706 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_1702.x, x_1702.y, x_1702.z), x_1705);
  let x_1707 : vec3<f32> = vec3<f32>(x_1706.x, x_1706.y, x_1706.z);
  let x_1708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1715 : vec2<f32> = u_xlat13;
  let x_1717 : f32 = u_xlat27.y;
  let x_1718 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1715, x_1717);
  u_xlat1 = vec3<f32>(x_1718.x, x_1718.y, x_1718.z);
  let x_1723 : vec4<f32> = u_xlat5;
  let x_1726 : f32 = x_40.x_GlobalMipBias.x;
  let x_1727 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1723.x, x_1723.z), x_1726);
  u_xlat15 = vec3<f32>(x_1727.x, x_1727.y, x_1727.z);
  let x_1729 : vec3<f32> = u_xlat1;
  let x_1730 : vec3<f32> = u_xlat15;
  let x_1731 : vec3<f32> = (x_1729 * x_1730);
  let x_1732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
  let x_1734 : vec3<f32> = u_xlat1;
  let x_1736 : vec3<f32> = u_xlat15;
  let x_1738 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_1734) * x_1736) + vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : f32 = u_xlat3;
  let x_1743 : vec3<f32> = u_xlat1;
  let x_1745 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_1741, x_1741, x_1741) * x_1743) + vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat7;
  let x_1750 : vec4<f32> = u_xlat0;
  let x_1753 : vec3<f32> = u_xlat1;
  let x_1754 : vec3<f32> = ((vec3<f32>(x_1748.x, x_1748.y, x_1748.z) * vec3<f32>(x_1750.x, x_1750.z, x_1750.w)) + x_1753);
  let x_1755 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1754.x, x_1755.y, x_1754.y, x_1754.z);
  let x_1757 : vec3<f32> = u_xlat8;
  let x_1758 : vec4<f32> = u_xlat0;
  let x_1760 : vec3<f32> = (x_1757 + vec3<f32>(x_1758.x, x_1758.z, x_1758.w));
  let x_1761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1760.x, x_1761.y, x_1760.y, x_1760.z);
  let x_1763 : f32 = u_xlat12;
  let x_1765 : vec3<f32> = u_xlat4;
  let x_1767 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1763, x_1763, x_1763) * x_1765) + -(vec3<f32>(x_1767.x, x_1767.z, x_1767.w)));
  let x_1773 : f32 = u_xlat12;
  let x_1775 : vec3<f32> = u_xlat1;
  let x_1777 : vec4<f32> = u_xlat0;
  let x_1779 : vec3<f32> = ((vec3<f32>(x_1773, x_1773, x_1773) * x_1775) + vec3<f32>(x_1777.x, x_1777.z, x_1777.w));
  let x_1780 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
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


