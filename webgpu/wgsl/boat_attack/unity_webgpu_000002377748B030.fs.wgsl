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
  x_Time : vec4<f32>,
  /* @offset(80) */
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(176) */
  x_MaxDepth : f32,
  /* @offset(192) */
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

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitherPattern : sampler;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlatu7 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat12 : f32;

var<private> u_xlatb12 : bool;

var<private> u_xlatb0 : bool;

@group(1) @binding(2) var<uniform> x_1090 : UnityPerDraw;

var<private> u_xlat38 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati1 : i32;

@group(1) @binding(1) var<uniform> x_1480 : AdditionalLights;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(0) var x_CubemapTexture : texture_cube<f32>;

@group(0) @binding(11) var sampler_CubemapTexture : sampler;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb18 : bool;

var<private> u_xlatu36 : u32;

fn main_1() {
  var x_321 : vec2<f32>;
  var txVec0 : vec3<f32>;
  var x_584 : f32;
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
  let x_425 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_422 < x_425);
  let x_428 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_428);
  let x_432 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_432);
  let x_436 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_436);
  let x_440 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_440);
  let x_444 : bool = u_xlatb4.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_444);
  let x_449 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_449);
  let x_453 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_453);
  let x_456 : vec3<f32> = u_xlat15;
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_456 + vec3<f32>(x_457.y, x_457.z, x_457.w));
  let x_460 : vec3<f32> = u_xlat15;
  let x_462 : vec3<f32> = max(x_460, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_462.x, x_462.y, x_462.z);
  let x_465 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_465, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_472 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_472) + 4.0f);
  let x_479 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_479);
  let x_483 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_483) << bitcast<u32>(2i));
  let x_486 : vec3<f32> = vs_TEXCOORD1;
  let x_488 : i32 = u_xlati15;
  let x_491 : i32 = u_xlati15;
  let x_495 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_488 + 1i) / 4i)][((x_491 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_486.y, x_486.y, x_486.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : i32 = u_xlati15;
  let x_500 : i32 = u_xlati15;
  let x_503 : vec4<f32> = x_366.x_MainLightWorldToShadow[(x_498 / 4i)][(x_500 % 4i)];
  let x_505 : vec3<f32> = vs_TEXCOORD1;
  let x_508 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.x, x_505.x, x_505.x)) + x_508);
  let x_510 : i32 = u_xlati15;
  let x_513 : i32 = u_xlati15;
  let x_517 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_510 + 2i) / 4i)][((x_513 + 2i) % 4i)];
  let x_519 : vec3<f32> = vs_TEXCOORD1;
  let x_522 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(x_519.z, x_519.z, x_519.z)) + x_522);
  let x_524 : vec3<f32> = u_xlat4;
  let x_525 : i32 = u_xlati15;
  let x_528 : i32 = u_xlati15;
  let x_532 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_525 + 3i) / 4i)][((x_528 + 3i) % 4i)];
  u_xlat15 = (x_524 + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_537 : vec3<f32> = u_xlat15;
  let x_538 : vec2<f32> = vec2<f32>(x_537.x, x_537.y);
  let x_540 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_538.x, x_538.y, x_540);
  let x_552 : vec3<f32> = txVec0;
  let x_554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_552.xy, x_552.z);
  u_xlat15.x = x_554;
  let x_558 : f32 = x_366.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_558) + 1.0f);
  let x_563 : f32 = u_xlat15.x;
  let x_565 : f32 = x_366.x_MainLightShadowParams.x;
  let x_568 : f32 = u_xlat27.x;
  u_xlat15.x = ((x_563 * x_565) + x_568);
  let x_573 : f32 = u_xlat15.z;
  u_xlatb27 = (0.0f >= x_573);
  let x_577 : f32 = u_xlat15.z;
  u_xlatb39 = (x_577 >= 1.0f);
  let x_579 : bool = u_xlatb39;
  let x_580 : bool = u_xlatb27;
  u_xlatb27 = (x_579 | x_580);
  let x_582 : bool = u_xlatb27;
  if (x_582) {
    x_584 = 1.0f;
  } else {
    let x_589 : f32 = u_xlat15.x;
    x_584 = x_589;
  }
  let x_590 : f32 = x_584;
  u_xlat15.x = x_590;
  let x_592 : vec4<f32> = u_xlat0;
  let x_595 : vec4<f32> = x_40.x_ScreenParams;
  let x_597 : vec2<f32> = (vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.x, x_595.y));
  let x_598 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat0;
  let x_603 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  let x_605 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_603.x, x_603.y));
  let x_606 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_608 : f32 = u_xlat24;
  u_xlat27 = (vec2<f32>(x_608, x_608) * vec2<f32>(20.0f, 0.25f));
  let x_613 : vec2<f32> = u_xlat27;
  let x_615 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_613.y, x_613.y, x_613.y) * -(x_615));
  let x_619 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_619);
  let x_623 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_623));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat29 = vec2<f32>(x_628.x, x_628.y);
  u_xlat40 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_638 : u32 = u_xlatu_loop_1;
    if ((x_638 < 4u)) {
    } else {
      break;
    }
    let x_641 : vec4<f32> = u_xlat5;
    let x_643 : vec2<f32> = u_xlat29;
    u_xlat29 = (vec2<f32>(x_641.x, x_641.y) + x_643);
    let x_646 : u32 = u_xlatu_loop_1;
    u_xlat18.x = f32(x_646);
    let x_650 : vec3<f32> = u_xlat18;
    let x_653 : vec4<f32> = x_40.x_ScreenParams;
    let x_656 : vec2<f32> = u_xlat29;
    u_xlat30 = ((vec2<f32>(x_650.x, x_650.x) * vec2<f32>(x_653.x, x_653.y)) + x_656);
    let x_663 : vec2<f32> = u_xlat30;
    let x_665 : f32 = x_40.x_GlobalMipBias.x;
    let x_666 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_663, x_665);
    let x_667 : vec3<f32> = vec3<f32>(x_666.x, x_666.y, x_666.z);
    let x_668 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat7;
    let x_675 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.z, x_670.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_676 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec2<f32> = u_xlat27;
    let x_680 : vec4<f32> = u_xlat7;
    let x_682 : vec3<f32> = (vec3<f32>(x_678.y, x_678.y, x_678.y) * vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_682.z);
    let x_685 : vec3<f32> = u_xlat18;
    let x_687 : vec4<f32> = u_xlat7;
    let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(x_687.x, x_687.y, x_687.w));
    let x_690 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_689.z);
    let x_692 : vec4<f32> = u_xlat7;
    let x_697 : vec3<f32> = vs_TEXCOORD1;
    let x_698 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.y, x_692.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_697);
    let x_699 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_698.z);
    let x_702 : f32 = u_xlat18.x;
    let x_704 : f32 = u_xlat7.z;
    u_xlat18.x = (x_702 + x_704);
    let x_707 : vec3<f32> = u_xlat4;
    let x_708 : vec3<f32> = u_xlat18;
    let x_711 : vec4<f32> = u_xlat7;
    u_xlat18 = ((x_707 * vec3<f32>(x_708.x, x_708.x, x_708.x)) + vec3<f32>(x_711.x, x_711.y, x_711.w));
    let x_714 : vec3<f32> = u_xlat18;
    let x_716 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres0;
    let x_719 : vec3<f32> = (x_714 + -(vec3<f32>(x_716.x, x_716.y, x_716.z)));
    let x_720 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
    let x_723 : vec3<f32> = u_xlat18;
    let x_725 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres1;
    let x_728 : vec3<f32> = (x_723 + -(vec3<f32>(x_725.x, x_725.y, x_725.z)));
    let x_729 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_732 : vec3<f32> = u_xlat18;
    let x_734 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres2;
    u_xlat9 = (x_732 + -(vec3<f32>(x_734.x, x_734.y, x_734.z)));
    let x_739 : vec3<f32> = u_xlat18;
    let x_741 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres3;
    u_xlat10 = (x_739 + -(vec3<f32>(x_741.x, x_741.y, x_741.z)));
    let x_745 : vec4<f32> = u_xlat7;
    let x_747 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(x_747.x, x_747.y, x_747.z));
    let x_751 : vec4<f32> = u_xlat8;
    let x_753 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_751.x, x_751.y, x_751.z), vec3<f32>(x_753.x, x_753.y, x_753.z));
    let x_757 : vec3<f32> = u_xlat9;
    let x_758 : vec3<f32> = u_xlat9;
    u_xlat7.z = dot(x_757, x_758);
    let x_761 : vec3<f32> = u_xlat10;
    let x_762 : vec3<f32> = u_xlat10;
    u_xlat7.w = dot(x_761, x_762);
    let x_766 : vec4<f32> = u_xlat7;
    let x_768 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_766 < x_768);
    let x_771 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_771);
    let x_775 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_775);
    let x_779 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_779);
    let x_783 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_783);
    let x_787 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_787);
    let x_791 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_791);
    let x_795 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_795);
    let x_798 : vec4<f32> = u_xlat7;
    let x_800 : vec4<f32> = u_xlat8;
    let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(x_800.y, x_800.z, x_800.w));
    let x_803 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
    let x_805 : vec4<f32> = u_xlat7;
    let x_807 : vec3<f32> = max(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_808 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_808.x, x_807.x, x_807.y, x_807.z);
    let x_810 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_810, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_814 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_814) + 4.0f);
    let x_820 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_820);
    let x_823 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_823) << bitcast<u32>(2i));
    let x_827 : vec3<f32> = u_xlat18;
    let x_829 : i32 = u_xlati7;
    let x_832 : i32 = u_xlati7;
    let x_836 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_829 + 1i) / 4i)][((x_832 + 1i) % 4i)];
    u_xlat19 = (vec3<f32>(x_827.y, x_827.y, x_827.y) * vec3<f32>(x_836.x, x_836.y, x_836.z));
    let x_839 : i32 = u_xlati7;
    let x_841 : i32 = u_xlati7;
    let x_844 : vec4<f32> = x_366.x_MainLightWorldToShadow[(x_839 / 4i)][(x_841 % 4i)];
    let x_846 : vec3<f32> = u_xlat18;
    let x_849 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846.x, x_846.x, x_846.x)) + x_849);
    let x_851 : i32 = u_xlati7;
    let x_854 : i32 = u_xlati7;
    let x_858 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_851 + 2i) / 4i)][((x_854 + 2i) % 4i)];
    let x_860 : vec3<f32> = u_xlat18;
    let x_863 : vec3<f32> = u_xlat19;
    u_xlat18 = ((vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(x_860.z, x_860.z, x_860.z)) + x_863);
    let x_865 : vec3<f32> = u_xlat18;
    let x_866 : i32 = u_xlati7;
    let x_869 : i32 = u_xlati7;
    let x_873 : vec4<f32> = x_366.x_MainLightWorldToShadow[((x_866 + 3i) / 4i)][((x_869 + 3i) % 4i)];
    u_xlat18 = (x_865 + vec3<f32>(x_873.x, x_873.y, x_873.z));
    let x_877 : vec3<f32> = u_xlat18;
    let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
    let x_880 : f32 = u_xlat18.z;
    txVec1 = vec3<f32>(x_878.x, x_878.y, x_880);
    let x_887 : vec3<f32> = txVec1;
    let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
    u_xlat18.x = x_889;
    let x_891 : f32 = u_xlat40;
    let x_893 : f32 = u_xlat18.x;
    u_xlat40 = (x_891 + x_893);

    continuing {
      let x_895 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_895 + bitcast<u32>(1i));
    }
  }
  let x_897 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (x_897 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_901 : vec3<f32> = vs_TEXCOORD1;
  let x_904 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres0;
  let x_907 : vec3<f32> = ((x_901 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_904.x, x_904.y, x_904.z)));
  let x_908 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec3<f32> = vs_TEXCOORD1;
  let x_913 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres1;
  let x_916 : vec3<f32> = ((x_910 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_913.x, x_913.y, x_913.z)));
  let x_917 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec3<f32> = vs_TEXCOORD1;
  let x_922 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres2;
  let x_925 : vec3<f32> = ((x_919 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_922.x, x_922.y, x_922.z)));
  let x_926 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec3<f32> = vs_TEXCOORD1;
  let x_931 : vec4<f32> = x_366.x_CascadeShadowSplitSpheres3;
  let x_934 : vec3<f32> = ((x_928 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_931.x, x_931.y, x_931.z)));
  let x_935 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat5;
  let x_939 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_943 : vec4<f32> = u_xlat6;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_949 : vec4<f32> = u_xlat7;
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_949.x, x_949.y, x_949.z), vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_955 : vec4<f32> = u_xlat8;
  let x_957 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_955.x, x_955.y, x_955.z), vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_962 : vec4<f32> = u_xlat5;
  let x_964 : vec4<f32> = x_366.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_962 < x_964);
  let x_967 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_967);
  let x_971 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_971);
  let x_975 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_975);
  let x_979 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_979);
  let x_983 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_983);
  let x_987 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_987);
  let x_991 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_991);
  let x_994 : vec4<f32> = u_xlat5;
  let x_996 : vec4<f32> = u_xlat6;
  let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) + vec3<f32>(x_996.y, x_996.z, x_996.w));
  let x_999 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1003 : vec3<f32> = max(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1004 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1004.x, x_1003.x, x_1003.y, x_1003.z);
  let x_1006 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1006, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_1010 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1010) + 4.0f);
  let x_1016 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_1016);
  let x_1019 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_1019) << bitcast<u32>(2i));
  let x_1024 : f32 = u_xlat4.y;
  let x_1025 : i32 = u_xlati0;
  let x_1028 : i32 = u_xlati0;
  let x_1032 : f32 = x_366.x_MainLightWorldToShadow[((x_1025 + 1i) / 4i)][((x_1028 + 1i) % 4i)].z;
  u_xlat12 = (x_1024 * x_1032);
  let x_1034 : i32 = u_xlati0;
  let x_1036 : i32 = u_xlati0;
  let x_1039 : f32 = x_366.x_MainLightWorldToShadow[(x_1034 / 4i)][(x_1036 % 4i)].z;
  let x_1041 : f32 = u_xlat4.x;
  let x_1043 : f32 = u_xlat12;
  u_xlat12 = ((x_1039 * x_1041) + x_1043);
  let x_1045 : i32 = u_xlati0;
  let x_1048 : i32 = u_xlati0;
  let x_1052 : f32 = x_366.x_MainLightWorldToShadow[((x_1045 + 2i) / 4i)][((x_1048 + 2i) % 4i)].z;
  let x_1054 : f32 = u_xlat4.z;
  let x_1056 : f32 = u_xlat12;
  u_xlat12 = ((x_1052 * x_1054) + x_1056);
  let x_1058 : f32 = u_xlat12;
  let x_1059 : i32 = u_xlati0;
  let x_1062 : i32 = u_xlati0;
  let x_1066 : f32 = x_366.x_MainLightWorldToShadow[((x_1059 + 3i) / 4i)][((x_1062 + 3i) % 4i)].z;
  u_xlat0.x = (x_1058 + x_1066);
  let x_1071 : f32 = u_xlat0.x;
  u_xlatb12 = (0.0f >= x_1071);
  let x_1075 : f32 = u_xlat0.x;
  u_xlatb0 = (x_1075 >= 1.0f);
  let x_1077 : bool = u_xlatb0;
  let x_1078 : bool = u_xlatb12;
  u_xlatb0 = (x_1077 | x_1078);
  let x_1080 : f32 = u_xlat40;
  u_xlat12 = (x_1080 * 0.25f);
  let x_1082 : bool = u_xlatb0;
  let x_1083 : f32 = u_xlat12;
  u_xlat0.x = select(x_1083, 1.0f, x_1082);
  u_xlat2.w = 1.0f;
  let x_1093 : vec4<f32> = x_1090.unity_SHAr;
  let x_1094 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_1093, x_1094);
  let x_1099 : vec4<f32> = x_1090.unity_SHAg;
  let x_1100 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_1099, x_1100);
  let x_1105 : vec4<f32> = x_1090.unity_SHAb;
  let x_1106 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_1105, x_1106);
  let x_1109 : vec4<f32> = u_xlat2;
  let x_1111 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_1109.y, x_1109.z, x_1109.z, x_1109.x) * vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1111.z));
  let x_1116 : vec4<f32> = x_1090.unity_SHBr;
  let x_1117 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_1116, x_1117);
  let x_1122 : vec4<f32> = x_1090.unity_SHBg;
  let x_1123 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_1122, x_1123);
  let x_1128 : vec4<f32> = x_1090.unity_SHBb;
  let x_1129 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_1128, x_1129);
  let x_1133 : f32 = u_xlat2.y;
  let x_1135 : f32 = u_xlat2.y;
  u_xlat12 = (x_1133 * x_1135);
  let x_1138 : f32 = u_xlat2.x;
  let x_1140 : f32 = u_xlat2.x;
  let x_1142 : f32 = u_xlat12;
  u_xlat12 = ((x_1138 * x_1140) + -(x_1142));
  let x_1147 : vec4<f32> = x_1090.unity_SHC;
  let x_1149 : f32 = u_xlat12;
  let x_1152 : vec4<f32> = u_xlat6;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * vec3<f32>(x_1149, x_1149, x_1149)) + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec3<f32> = u_xlat4;
  let x_1158 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1157 + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_1161, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1163 : vec3<f32> = vs_TEXCOORD2;
  let x_1165 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat12 = dot(x_1163, -(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)));
  let x_1169 : f32 = u_xlat12;
  let x_1171 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1169 * x_1171);
  let x_1174 : f32 = u_xlat12;
  let x_1175 : f32 = u_xlat12;
  u_xlat38 = (x_1174 * x_1175);
  let x_1177 : f32 = u_xlat12;
  let x_1178 : f32 = u_xlat38;
  u_xlat12 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1180, 0.0f, 1.0f);
  let x_1182 : f32 = u_xlat12;
  u_xlat12 = (x_1182 * 5.0f);
  let x_1185 : f32 = u_xlat12;
  let x_1188 : vec4<f32> = x_40.x_MainLightColor;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1185, x_1185, x_1185) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1194 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1197 : vec4<f32> = x_40.x_MainLightColor;
  let x_1200 : vec4<f32> = u_xlat5;
  let x_1202 : vec3<f32> = ((vec3<f32>(x_1194.y, x_1194.y, x_1194.y) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : vec4<f32> = u_xlat5;
  let x_1207 : vec4<f32> = u_xlat0;
  let x_1210 : vec3<f32> = u_xlat4;
  let x_1211 : vec3<f32> = ((vec3<f32>(x_1205.x, x_1205.y, x_1205.z) * vec3<f32>(x_1207.x, x_1207.x, x_1207.x)) + x_1210);
  let x_1212 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1219 : vec4<f32> = vs_TEXCOORD0;
  let x_1222 : f32 = x_40.x_GlobalMipBias.x;
  let x_1223 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1219.z, x_1219.w), x_1222);
  let x_1224 : vec3<f32> = vec3<f32>(x_1223.x, x_1223.y, x_1223.z);
  let x_1225 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1228 : f32 = u_xlat27.x;
  u_xlat27.x = x_1228;
  let x_1231 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1231, 0.0f, 1.0f);
  let x_1235 : f32 = vs_TEXCOORD5.z;
  u_xlat12 = (x_1235 + -0.375f);
  let x_1238 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1238, 0.0f, 1.0f);
  let x_1240 : f32 = u_xlat24;
  u_xlat38 = ((-(x_1240) * 4.0f) + 1.0f);
  let x_1244 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1244, 0.0f, 1.0f);
  let x_1246 : f32 = u_xlat36;
  let x_1247 : f32 = u_xlat24;
  u_xlat36 = min(x_1246, x_1247);
  let x_1249 : f32 = u_xlat36;
  u_xlat36 = ((-(x_1249) * 0.5f) + 0.75f);
  let x_1254 : f32 = u_xlat38;
  let x_1256 : f32 = u_xlat36;
  u_xlat36 = ((x_1254 * 0.5f) + x_1256);
  let x_1258 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1258, 0.0f, 1.0f);
  let x_1261 : f32 = u_xlat27.x;
  let x_1262 : f32 = u_xlat36;
  u_xlat36 = (x_1261 * x_1262);
  let x_1264 : f32 = u_xlat36;
  let x_1265 : f32 = u_xlat12;
  u_xlat12 = max(x_1264, x_1265);
  let x_1268 : f32 = u_xlat1.x;
  let x_1270 : f32 = u_xlat1.x;
  u_xlat36 = (x_1268 + x_1270);
  let x_1272 : f32 = u_xlat36;
  let x_1273 : f32 = u_xlat12;
  u_xlat7.x = max(x_1272, x_1273);
  u_xlat7.y = 0.66000002622604370117f;
  let x_1283 : vec4<f32> = u_xlat7;
  let x_1286 : f32 = x_40.x_GlobalMipBias.x;
  let x_1287 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1283.x, x_1283.y), x_1286);
  let x_1288 : vec3<f32> = vec3<f32>(x_1287.x, x_1287.y, x_1287.z);
  let x_1289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : vec4<f32> = u_xlat6;
  let x_1293 : vec4<f32> = u_xlat7;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : vec4<f32> = u_xlat6;
  let x_1300 : vec4<f32> = u_xlat6;
  u_xlat12 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1303 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_1303);
  let x_1305 : f32 = u_xlat12;
  u_xlat12 = ((x_1305 * 1.5f) + -0.10000000149011611938f);
  let x_1310 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1310, 0.0f, 1.0f);
  let x_1312 : vec3<f32> = u_xlat15;
  let x_1315 : vec4<f32> = x_40.x_MainLightColor;
  let x_1318 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1312.x, x_1312.x, x_1312.x) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z)) + x_1318);
  let x_1320 : vec3<f32> = vs_TEXCOORD2;
  let x_1322 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1324 : vec3<f32> = (x_1320 + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : vec4<f32> = u_xlat6;
  let x_1329 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1327.x, x_1327.y, x_1327.z), vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : f32 = u_xlat36;
  u_xlat36 = max(x_1332, 1.17549435e-38f);
  let x_1335 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1335);
  let x_1337 : f32 = u_xlat36;
  let x_1339 : vec4<f32> = u_xlat6;
  let x_1341 : vec3<f32> = (vec3<f32>(x_1337, x_1337, x_1337) * vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec4<f32> = u_xlat2;
  let x_1346 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1349, 0.0f, 1.0f);
  let x_1352 : vec4<f32> = x_40.x_MainLightPosition;
  let x_1354 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
  let x_1359 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1359, 0.0f, 1.0f);
  let x_1362 : f32 = u_xlat36;
  let x_1363 : f32 = u_xlat36;
  u_xlat36 = (x_1362 * x_1363);
  let x_1365 : f32 = u_xlat36;
  u_xlat36 = ((x_1365 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_1371 : f32 = u_xlat1.x;
  let x_1373 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1371 * x_1373);
  let x_1376 : f32 = u_xlat36;
  let x_1377 : f32 = u_xlat36;
  u_xlat36 = (x_1376 * x_1377);
  let x_1380 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1380, 0.10000000149011611938f);
  let x_1383 : f32 = u_xlat36;
  let x_1385 : f32 = u_xlat1.x;
  u_xlat36 = (x_1383 * x_1385);
  let x_1387 : f32 = u_xlat36;
  u_xlat36 = (x_1387 * 2.03125f);
  let x_1391 : f32 = u_xlat36;
  u_xlat36 = (0.00006103515625f / x_1391);
  let x_1394 : f32 = u_xlat0.x;
  let x_1395 : f32 = u_xlat36;
  u_xlat0.x = (x_1394 * x_1395);
  let x_1399 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1399 * 0.03999999910593032837f);
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1406 : vec4<f32> = x_40.x_MainLightColor;
  let x_1408 : vec3<f32> = (vec3<f32>(x_1403.x, x_1403.x, x_1403.x) * vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1412 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_1414 : f32 = x_1090.unity_LightData.y;
  u_xlat0.x = min(x_1412, x_1414);
  let x_1418 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1418));
  let x_1421 : vec4<f32> = u_xlat5;
  let x_1422 : vec3<f32> = vec3<f32>(x_1421.x, x_1421.y, x_1421.z);
  let x_1423 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat6;
  let x_1426 : vec3<f32> = vec3<f32>(x_1425.x, x_1425.y, x_1425.z);
  let x_1427 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1435 : u32 = u_xlatu_loop_2;
    let x_1436 : u32 = u_xlatu0;
    if ((x_1435 < x_1436)) {
    } else {
      break;
    }
    let x_1439 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_1439 >> 2u);
    let x_1442 : u32 = u_xlatu_loop_2;
    u_xlati38 = bitcast<i32>((x_1442 & 3u));
    let x_1445 : u32 = u_xlatu1;
    let x_1448 : vec4<f32> = x_1090.unity_LightIndices[bitcast<i32>(x_1445)];
    let x_1457 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1462 : vec4<u32> = indexable[x_1457];
    u_xlat1.x = dot(x_1448, bitcast<vec4<f32>>(x_1462));
    let x_1468 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_1468);
    let x_1470 : vec3<f32> = vs_TEXCOORD1;
    let x_1481 : i32 = u_xlati1;
    let x_1483 : vec4<f32> = x_1480.x_AdditionalLightsPosition[x_1481];
    let x_1486 : i32 = u_xlati1;
    let x_1488 : vec4<f32> = x_1480.x_AdditionalLightsPosition[x_1486];
    u_xlat9 = ((-(x_1470) * vec3<f32>(x_1483.w, x_1483.w, x_1483.w)) + vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1491 : vec3<f32> = u_xlat9;
    let x_1492 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1491, x_1492);
    let x_1494 : f32 = u_xlat38;
    u_xlat38 = max(x_1494, 0.00006103515625f);
    let x_1496 : f32 = u_xlat38;
    u_xlat15.x = inverseSqrt(x_1496);
    let x_1499 : vec3<f32> = u_xlat15;
    let x_1501 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1499.x, x_1499.x, x_1499.x) * x_1501);
    let x_1503 : f32 = u_xlat38;
    u_xlat27.x = (1.0f / x_1503);
    let x_1506 : f32 = u_xlat38;
    let x_1507 : i32 = u_xlati1;
    let x_1509 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1507].x;
    u_xlat38 = (x_1506 * x_1509);
    let x_1511 : f32 = u_xlat38;
    let x_1513 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1511) * x_1513) + 1.0f);
    let x_1516 : f32 = u_xlat38;
    u_xlat38 = max(x_1516, 0.0f);
    let x_1518 : f32 = u_xlat38;
    let x_1519 : f32 = u_xlat38;
    u_xlat38 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat38;
    let x_1523 : f32 = u_xlat27.x;
    u_xlat38 = (x_1521 * x_1523);
    let x_1525 : i32 = u_xlati1;
    let x_1527 : vec4<f32> = x_1480.x_AdditionalLightsSpotDir[x_1525];
    let x_1529 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1527.x, x_1527.y, x_1527.z), x_1529);
    let x_1533 : f32 = u_xlat27.x;
    let x_1534 : i32 = u_xlati1;
    let x_1536 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1534].z;
    let x_1538 : i32 = u_xlati1;
    let x_1540 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1538].w;
    u_xlat27.x = ((x_1533 * x_1536) + x_1540);
    let x_1544 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1544, 0.0f, 1.0f);
    let x_1548 : f32 = u_xlat27.x;
    let x_1550 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1548 * x_1550);
    let x_1553 : f32 = u_xlat38;
    let x_1555 : f32 = u_xlat27.x;
    u_xlat38 = (x_1553 * x_1555);
    let x_1557 : vec4<f32> = u_xlat2;
    let x_1559 : vec3<f32> = u_xlat10;
    u_xlat27.x = dot(vec3<f32>(x_1557.x, x_1557.y, x_1557.z), x_1559);
    let x_1563 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1563, 0.0f, 1.0f);
    let x_1566 : f32 = u_xlat38;
    let x_1568 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1566 * x_1568);
    let x_1572 : vec2<f32> = u_xlat27;
    let x_1574 : i32 = u_xlati1;
    let x_1576 : vec4<f32> = x_1480.x_AdditionalLightsColor[x_1574];
    u_xlat11 = (vec3<f32>(x_1572.x, x_1572.x, x_1572.x) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec3<f32> = u_xlat9;
    let x_1580 : vec3<f32> = u_xlat15;
    let x_1583 : vec3<f32> = vs_TEXCOORD2;
    u_xlat9 = ((x_1579 * vec3<f32>(x_1580.x, x_1580.x, x_1580.x)) + x_1583);
    let x_1585 : vec3<f32> = u_xlat9;
    let x_1586 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(x_1585, x_1586);
    let x_1590 : f32 = u_xlat15.x;
    u_xlat15.x = max(x_1590, 1.17549435e-38f);
    let x_1594 : f32 = u_xlat15.x;
    u_xlat15.x = inverseSqrt(x_1594);
    let x_1597 : vec3<f32> = u_xlat15;
    let x_1599 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1597.x, x_1597.x, x_1597.x) * x_1599);
    let x_1601 : vec4<f32> = u_xlat2;
    let x_1603 : vec3<f32> = u_xlat9;
    u_xlat15.x = dot(vec3<f32>(x_1601.x, x_1601.y, x_1601.z), x_1603);
    let x_1607 : f32 = u_xlat15.x;
    u_xlat15.x = clamp(x_1607, 0.0f, 1.0f);
    let x_1610 : vec3<f32> = u_xlat10;
    let x_1611 : vec3<f32> = u_xlat9;
    u_xlat15.y = dot(x_1610, x_1611);
    let x_1615 : f32 = u_xlat15.y;
    u_xlat15.y = clamp(x_1615, 0.0f, 1.0f);
    let x_1618 : vec3<f32> = u_xlat15;
    let x_1620 : vec3<f32> = u_xlat15;
    let x_1622 : vec2<f32> = (vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.x, x_1620.y));
    let x_1623 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_1622.x, x_1622.y, x_1623.z);
    let x_1626 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_1626 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_1631 : f32 = u_xlat15.x;
    let x_1633 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1631 * x_1633);
    let x_1637 : f32 = u_xlat15.y;
    u_xlat27.x = max(x_1637, 0.10000000149011611938f);
    let x_1641 : f32 = u_xlat27.x;
    let x_1643 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1641 * x_1643);
    let x_1647 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1647 * 2.03125f);
    let x_1651 : f32 = u_xlat15.x;
    u_xlat15.x = (0.00006103515625f / x_1651);
    let x_1655 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1655 * 0.03999999910593032837f);
    let x_1658 : vec3<f32> = u_xlat15;
    let x_1660 : vec3<f32> = u_xlat11;
    let x_1662 : vec4<f32> = u_xlat8;
    let x_1664 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.x, x_1658.x) * x_1660) + vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
    let x_1667 : f32 = u_xlat38;
    let x_1669 : i32 = u_xlati1;
    let x_1671 : vec4<f32> = x_1480.x_AdditionalLightsColor[x_1669];
    let x_1674 : vec4<f32> = u_xlat7;
    let x_1676 : vec3<f32> = ((vec3<f32>(x_1667, x_1667, x_1667) * vec3<f32>(x_1671.x, x_1671.y, x_1671.z)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);

    continuing {
      let x_1679 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1679 + bitcast<u32>(1i));
    }
  }
  let x_1681 : f32 = u_xlat37;
  let x_1682 : f32 = u_xlat24;
  u_xlat5.x = (x_1681 * x_1682);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_1691 : vec4<f32> = u_xlat5;
  let x_1694 : f32 = x_40.x_GlobalMipBias.x;
  let x_1695 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1691.x, x_1691.y), x_1694);
  let x_1696 : vec3<f32> = vec3<f32>(x_1695.x, x_1695.y, x_1695.z);
  let x_1697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1696.x, x_1697.y, x_1696.y, x_1696.z);
  let x_1699 : vec3<f32> = vs_TEXCOORD2;
  let x_1701 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_1699), vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1706 : f32 = u_xlat1.x;
  let x_1708 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1706 + x_1708);
  let x_1711 : vec4<f32> = u_xlat2;
  let x_1713 : vec3<f32> = u_xlat1;
  let x_1717 : vec3<f32> = vs_TEXCOORD2;
  let x_1719 : vec3<f32> = ((vec3<f32>(x_1711.x, x_1711.y, x_1711.z) * -(vec3<f32>(x_1713.x, x_1713.x, x_1713.x))) + -(x_1717));
  let x_1720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1730 : vec4<f32> = u_xlat2;
  let x_1733 : f32 = x_40.x_GlobalMipBias.x;
  let x_1734 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_1730.x, x_1730.y, x_1730.z), x_1733);
  let x_1735 : vec3<f32> = vec3<f32>(x_1734.x, x_1734.y, x_1734.z);
  let x_1736 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
  let x_1743 : vec2<f32> = u_xlat13;
  let x_1745 : f32 = u_xlat27.y;
  let x_1746 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1743, x_1745);
  u_xlat1 = vec3<f32>(x_1746.x, x_1746.y, x_1746.z);
  let x_1751 : vec4<f32> = u_xlat5;
  let x_1754 : f32 = x_40.x_GlobalMipBias.x;
  let x_1755 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1751.x, x_1751.z), x_1754);
  u_xlat15 = vec3<f32>(x_1755.x, x_1755.y, x_1755.z);
  let x_1757 : vec3<f32> = u_xlat1;
  let x_1758 : vec3<f32> = u_xlat15;
  let x_1759 : vec3<f32> = (x_1757 * x_1758);
  let x_1760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1762 : vec3<f32> = u_xlat1;
  let x_1764 : vec3<f32> = u_xlat15;
  let x_1766 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_1762) * x_1764) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : f32 = u_xlat3;
  let x_1771 : vec3<f32> = u_xlat1;
  let x_1773 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_1769, x_1769, x_1769) * x_1771) + vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec4<f32> = u_xlat7;
  let x_1778 : vec4<f32> = u_xlat0;
  let x_1781 : vec3<f32> = u_xlat1;
  let x_1782 : vec3<f32> = ((vec3<f32>(x_1776.x, x_1776.y, x_1776.z) * vec3<f32>(x_1778.x, x_1778.z, x_1778.w)) + x_1781);
  let x_1783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1782.x, x_1783.y, x_1782.y, x_1782.z);
  let x_1785 : vec4<f32> = u_xlat8;
  let x_1787 : vec4<f32> = u_xlat0;
  let x_1789 : vec3<f32> = (vec3<f32>(x_1785.x, x_1785.y, x_1785.z) + vec3<f32>(x_1787.x, x_1787.z, x_1787.w));
  let x_1790 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1789.x, x_1790.y, x_1789.y, x_1789.z);
  let x_1792 : f32 = u_xlat12;
  let x_1794 : vec3<f32> = u_xlat4;
  let x_1796 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1792, x_1792, x_1792) * x_1794) + -(vec3<f32>(x_1796.x, x_1796.z, x_1796.w)));
  let x_1802 : f32 = u_xlat12;
  let x_1804 : vec3<f32> = u_xlat1;
  let x_1806 : vec4<f32> = u_xlat0;
  let x_1808 : vec3<f32> = ((vec3<f32>(x_1802, x_1802, x_1802) * x_1804) + vec3<f32>(x_1806.x, x_1806.z, x_1806.w));
  let x_1809 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
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


