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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat37 : f32;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(3) var<uniform> x_204 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_367 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlatb27 : bool;

var<private> u_xlatb39 : bool;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitherPattern : sampler;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu27 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlat39 : f32;

@group(1) @binding(2) var<uniform> x_1113 : UnityPerDraw;

var<private> u_xlat38 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati41 : i32;

@group(1) @binding(1) var<uniform> x_1524 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

@group(0) @binding(0) var x_PlanarReflectionTexture : texture_2d<f32>;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatu38 : u32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_322 : vec2<f32>;
  var txVec0 : vec3<f32>;
  var x_598 : f32;
  var u_xlatu_loop_1 : u32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_2 : u32;
  var indexable : array<vec4<u32>, 4u>;
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
  let x_56 : vec3<f32> = u_xlat0;
  let x_59 : f32 = x_39.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_56.x, x_56.y), x_59);
  u_xlat24 = x_60.x;
  let x_65 : f32 = x_39.x_ZBufferParams.z;
  let x_66 : f32 = u_xlat24;
  let x_70 : f32 = x_39.x_ZBufferParams.w;
  u_xlat24 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_73);
  let x_75 : f32 = u_xlat24;
  let x_79 : f32 = vs_TEXCOORD5.x;
  let x_83 : f32 = vs_TEXCOORD5.y;
  u_xlat24 = ((x_75 * x_79) + -(x_83));
  let x_89 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec2<f32> = ((vec2<f32>(x_89.x, x_89.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_105.x, x_105.y), 1.0f);
  u_xlat36 = x_107.x;
  let x_109 : f32 = u_xlat36;
  u_xlat36 = (-(x_109) + 1.0f);
  let x_115 : f32 = x_39.x_MaxDepth;
  let x_118 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat37 = (x_115 + x_118);
  let x_120 : f32 = u_xlat36;
  let x_121 : f32 = u_xlat37;
  let x_124 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat36 = ((x_120 * x_121) + -(x_124));
  let x_127 : f32 = u_xlat36;
  let x_129 : f32 = vs_TEXCOORD1.y;
  u_xlat36 = (x_127 + x_129);
  let x_132 : f32 = x_39.x_MaxDepth;
  u_xlat37 = (1.0f / x_132);
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_143 : f32 = x_39.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_140.z, x_140.w), x_143);
  let x_145 : vec2<f32> = vec2<f32>(x_144.x, x_144.y);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat2;
  let x_155 : vec2<f32> = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_163 : vec4<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_39.x_GlobalMipBias.x;
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
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_220.y, x_219.y, x_220.w);
  u_xlat2.w = 0.0f;
  let x_224 : f32 = vs_NORMAL0.y;
  u_xlat4.y = x_224;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat4;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.w, x_226.z) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat13.x = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_241);
  let x_244 : vec2<f32> = u_xlat13;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.x, x_244.x) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_39.unity_MatrixVP[1i];
  u_xlat13 = (-(vec2<f32>(x_251.y, x_251.y)) * vec2<f32>(x_258.x, x_258.z));
  let x_262 : vec4<f32> = x_39.unity_MatrixVP[0i];
  let x_264 : vec4<f32> = u_xlat2;
  let x_268 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_262.x, x_262.z) * -(vec2<f32>(x_264.x, x_264.x))) + x_268);
  let x_272 : vec4<f32> = x_39.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = u_xlat13;
  u_xlat13 = ((vec2<f32>(x_272.x, x_272.z) * -(vec2<f32>(x_274.z, x_274.z))) + x_278);
  let x_280 : f32 = u_xlat3;
  u_xlat3 = x_280;
  let x_281 : f32 = u_xlat3;
  u_xlat3 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec2<f32> = u_xlat13;
  let x_284 : f32 = u_xlat3;
  let x_287 : vec3<f32> = u_xlat0;
  u_xlat13 = ((x_283 * vec2<f32>(x_284, x_284)) + vec2<f32>(x_287.x, x_287.y));
  let x_293 : vec2<f32> = u_xlat13;
  let x_295 : f32 = x_39.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_293, x_295);
  u_xlat3 = x_296.x;
  let x_299 : f32 = x_39.x_ZBufferParams.z;
  let x_300 : f32 = u_xlat3;
  let x_303 : f32 = x_39.x_ZBufferParams.w;
  u_xlat3 = ((x_299 * x_300) + x_303);
  let x_305 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_305);
  let x_307 : f32 = u_xlat3;
  let x_309 : f32 = vs_TEXCOORD5.x;
  let x_312 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_307 * x_309) + -(x_312));
  let x_318 : f32 = u_xlat3;
  u_xlatb15 = (x_318 < 0.0f);
  let x_320 : bool = u_xlatb15;
  if (x_320) {
    let x_325 : vec3<f32> = u_xlat0;
    x_322 = vec2<f32>(x_325.x, x_325.y);
  } else {
    let x_328 : vec2<f32> = u_xlat13;
    x_322 = x_328;
  }
  let x_329 : vec2<f32> = x_322;
  u_xlat13 = x_329;
  let x_330 : bool = u_xlatb15;
  let x_331 : f32 = u_xlat24;
  let x_332 : f32 = u_xlat3;
  u_xlat24 = select(x_332, x_331, x_330);
  let x_334 : vec4<f32> = u_xlat2;
  let x_337 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), x_337);
  let x_339 : f32 = u_xlat3;
  u_xlat3 = (-(x_339) + 1.0f);
  let x_343 : f32 = u_xlat3;
  let x_344 : f32 = u_xlat3;
  u_xlat15.x = (x_343 * x_344);
  let x_348 : f32 = u_xlat15.x;
  let x_350 : f32 = u_xlat15.x;
  u_xlat15.x = (x_348 * x_350);
  let x_354 : f32 = u_xlat15.x;
  let x_355 : f32 = u_xlat3;
  u_xlat3 = (x_354 * x_355);
  let x_357 : f32 = u_xlat3;
  u_xlat3 = clamp(x_357, 0.0f, 1.0f);
  let x_359 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_359 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_378 : vec3<f32> = (x_373 + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_388 : vec3<f32> = (x_382 + -(vec3<f32>(x_385.x, x_385.y, x_385.z)));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : vec3<f32> = vs_TEXCOORD1;
  let x_395 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_398 : vec3<f32> = (x_392 + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : vec3<f32> = u_xlat15;
  let x_403 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_402, x_403);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat7.y = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_427 : vec4<f32> = u_xlat7;
  let x_430 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_427 < x_430);
  let x_433 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_433);
  let x_437 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_437);
  let x_441 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_441);
  let x_445 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_445);
  let x_449 : bool = u_xlatb4.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_449);
  let x_454 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_454);
  let x_458 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_458);
  let x_461 : vec3<f32> = u_xlat15;
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_461 + vec3<f32>(x_462.y, x_462.z, x_462.w));
  let x_465 : vec3<f32> = u_xlat15;
  let x_467 : vec3<f32> = max(x_465, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_468.x, x_467.x, x_467.y, x_467.z);
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_470, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_477 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_477) + 4.0f);
  let x_484 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_484);
  let x_488 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_488) << bitcast<u32>(2i));
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_493 : i32 = u_xlati15;
  let x_496 : i32 = u_xlati15;
  let x_500 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_493 + 1i) / 4i)][((x_496 + 1i) % 4i)];
  let x_502 : vec3<f32> = (vec3<f32>(x_491.y, x_491.y, x_491.y) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : i32 = u_xlati15;
  let x_507 : i32 = u_xlati15;
  let x_510 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_505 / 4i)][(x_507 % 4i)];
  let x_512 : vec3<f32> = vs_TEXCOORD1;
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_512.x, x_512.x, x_512.x)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : i32 = u_xlati15;
  let x_523 : i32 = u_xlati15;
  let x_527 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_520 + 2i) / 4i)][((x_523 + 2i) % 4i)];
  let x_529 : vec3<f32> = vs_TEXCOORD1;
  let x_532 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_529.z, x_529.z, x_529.z)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : i32 = u_xlati15;
  let x_542 : i32 = u_xlati15;
  let x_546 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_539 + 3i) / 4i)][((x_542 + 3i) % 4i)];
  u_xlat15 = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_551 : vec3<f32> = u_xlat15;
  let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
  let x_554 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_552.x, x_552.y, x_554);
  let x_566 : vec3<f32> = txVec0;
  let x_568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_566.xy, x_566.z);
  u_xlat15.x = x_568;
  let x_572 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat15.x;
  let x_579 : f32 = x_367.x_MainLightShadowParams.x;
  let x_582 : f32 = u_xlat27.x;
  u_xlat15.x = ((x_577 * x_579) + x_582);
  let x_587 : f32 = u_xlat15.z;
  u_xlatb27 = (0.0f >= x_587);
  let x_591 : f32 = u_xlat15.z;
  u_xlatb39 = (x_591 >= 1.0f);
  let x_593 : bool = u_xlatb39;
  let x_594 : bool = u_xlatb27;
  u_xlatb27 = (x_593 | x_594);
  let x_596 : bool = u_xlatb27;
  if (x_596) {
    x_598 = 1.0f;
  } else {
    let x_603 : f32 = u_xlat15.x;
    x_598 = x_603;
  }
  let x_604 : f32 = x_598;
  u_xlat15.x = x_604;
  let x_606 : vec3<f32> = u_xlat0;
  let x_609 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat27 = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_609.x, x_609.y));
  let x_612 : vec2<f32> = u_xlat27;
  let x_614 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  u_xlat27 = (x_612 * vec2<f32>(x_614.x, x_614.y));
  let x_617 : f32 = u_xlat24;
  let x_621 : vec2<f32> = (vec2<f32>(x_617, x_617) * vec2<f32>(20.0f, 0.25f));
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec3<f32> = vs_TEXCOORD2;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.y, x_624.y, x_624.y) * -(x_626));
  let x_629 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_39.x_Time.x;
  u_xlat6.x = fract(x_632);
  let x_636 : f32 = x_39.x_Time.z;
  u_xlat6.y = fract(-(x_636));
  let x_641 : vec2<f32> = u_xlat27;
  u_xlat28 = x_641;
  u_xlat41 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_650 : u32 = u_xlatu_loop_1;
    if ((x_650 < 4u)) {
    } else {
      break;
    }
    let x_653 : vec4<f32> = u_xlat6;
    let x_655 : vec2<f32> = u_xlat28;
    u_xlat28 = (vec2<f32>(x_653.x, x_653.y) + x_655);
    let x_658 : u32 = u_xlatu_loop_1;
    u_xlat42 = f32(x_658);
    let x_660 : f32 = u_xlat42;
    let x_663 : vec4<f32> = x_39.x_ScreenParams;
    let x_666 : vec2<f32> = u_xlat28;
    let x_667 : vec2<f32> = ((vec2<f32>(x_660, x_660) * vec2<f32>(x_663.x, x_663.y)) + x_666);
    let x_668 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
    let x_675 : vec4<f32> = u_xlat7;
    let x_678 : f32 = x_39.x_GlobalMipBias.x;
    let x_679 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_675.x, x_675.y), x_678);
    let x_680 : vec3<f32> = vec3<f32>(x_679.x, x_679.y, x_679.z);
    let x_681 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
    let x_683 : vec4<f32> = u_xlat7;
    let x_688 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.z, x_683.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_689 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
    let x_691 : vec4<f32> = u_xlat4;
    let x_693 : vec4<f32> = u_xlat7;
    let x_695 : vec3<f32> = (vec3<f32>(x_691.y, x_691.y, x_691.y) * vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_695.z);
    let x_698 : f32 = u_xlat42;
    let x_700 : vec4<f32> = u_xlat7;
    let x_702 : vec3<f32> = (vec3<f32>(x_698, x_698, x_698) * vec3<f32>(x_700.x, x_700.y, x_700.w));
    let x_703 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_702.z);
    let x_705 : vec4<f32> = u_xlat7;
    let x_710 : vec3<f32> = vs_TEXCOORD1;
    let x_711 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.y, x_705.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_710);
    let x_712 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_711.z);
    let x_714 : f32 = u_xlat42;
    let x_716 : f32 = u_xlat7.z;
    u_xlat42 = (x_714 + x_716);
    let x_718 : vec4<f32> = u_xlat5;
    let x_720 : f32 = u_xlat42;
    let x_723 : vec4<f32> = u_xlat7;
    let x_725 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720, x_720, x_720)) + vec3<f32>(x_723.x, x_723.y, x_723.w));
    let x_726 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_729 : vec4<f32> = u_xlat7;
    let x_732 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
    let x_735 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) + -(vec3<f32>(x_732.x, x_732.y, x_732.z)));
    let x_736 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_739 : vec4<f32> = u_xlat7;
    let x_742 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
    let x_745 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + -(vec3<f32>(x_742.x, x_742.y, x_742.z)));
    let x_746 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
    let x_749 : vec4<f32> = u_xlat7;
    let x_752 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
    u_xlat10 = (vec3<f32>(x_749.x, x_749.y, x_749.z) + -(vec3<f32>(x_752.x, x_752.y, x_752.z)));
    let x_757 : vec4<f32> = u_xlat7;
    let x_760 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
    u_xlat11 = (vec3<f32>(x_757.x, x_757.y, x_757.z) + -(vec3<f32>(x_760.x, x_760.y, x_760.z)));
    let x_764 : vec4<f32> = u_xlat8;
    let x_766 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
    let x_770 : vec4<f32> = u_xlat9;
    let x_772 : vec4<f32> = u_xlat9;
    u_xlat8.y = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), vec3<f32>(x_772.x, x_772.y, x_772.z));
    let x_776 : vec3<f32> = u_xlat10;
    let x_777 : vec3<f32> = u_xlat10;
    u_xlat8.z = dot(x_776, x_777);
    let x_780 : vec3<f32> = u_xlat11;
    let x_781 : vec3<f32> = u_xlat11;
    u_xlat8.w = dot(x_780, x_781);
    let x_785 : vec4<f32> = u_xlat8;
    let x_787 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
    u_xlatb8 = (x_785 < x_787);
    let x_790 : bool = u_xlatb8.x;
    u_xlat9.x = select(0.0f, 1.0f, x_790);
    let x_794 : bool = u_xlatb8.y;
    u_xlat9.y = select(0.0f, 1.0f, x_794);
    let x_798 : bool = u_xlatb8.z;
    u_xlat9.z = select(0.0f, 1.0f, x_798);
    let x_802 : bool = u_xlatb8.w;
    u_xlat9.w = select(0.0f, 1.0f, x_802);
    let x_806 : bool = u_xlatb8.x;
    u_xlat8.x = select(-0.0f, -1.0f, x_806);
    let x_810 : bool = u_xlatb8.y;
    u_xlat8.y = select(-0.0f, -1.0f, x_810);
    let x_814 : bool = u_xlatb8.z;
    u_xlat8.z = select(-0.0f, -1.0f, x_814);
    let x_817 : vec4<f32> = u_xlat8;
    let x_819 : vec4<f32> = u_xlat9;
    let x_821 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) + vec3<f32>(x_819.y, x_819.z, x_819.w));
    let x_822 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
    let x_824 : vec4<f32> = u_xlat8;
    let x_826 : vec3<f32> = max(vec3<f32>(x_824.x, x_824.y, x_824.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_827 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_827.x, x_826.x, x_826.y, x_826.z);
    let x_829 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(x_829, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_831 : f32 = u_xlat42;
    u_xlat42 = (-(x_831) + 4.0f);
    let x_835 : f32 = u_xlat42;
    u_xlatu42 = u32(x_835);
    let x_838 : u32 = u_xlatu42;
    u_xlati42 = (bitcast<i32>(x_838) << bitcast<u32>(2i));
    let x_841 : vec4<f32> = u_xlat7;
    let x_843 : i32 = u_xlati42;
    let x_846 : i32 = u_xlati42;
    let x_850 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_843 + 1i) / 4i)][((x_846 + 1i) % 4i)];
    let x_852 : vec3<f32> = (vec3<f32>(x_841.y, x_841.y, x_841.y) * vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
    let x_855 : i32 = u_xlati42;
    let x_857 : i32 = u_xlati42;
    let x_860 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_855 / 4i)][(x_857 % 4i)];
    let x_862 : vec4<f32> = u_xlat7;
    let x_865 : vec4<f32> = u_xlat8;
    let x_867 : vec3<f32> = ((vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(x_862.x, x_862.x, x_862.x)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_867.z);
    let x_870 : i32 = u_xlati42;
    let x_873 : i32 = u_xlati42;
    let x_877 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_870 + 2i) / 4i)][((x_873 + 2i) % 4i)];
    let x_879 : vec4<f32> = u_xlat7;
    let x_882 : vec4<f32> = u_xlat7;
    let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.z, x_879.z, x_879.z)) + vec3<f32>(x_882.x, x_882.y, x_882.w));
    let x_885 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    let x_887 : vec4<f32> = u_xlat7;
    let x_889 : i32 = u_xlati42;
    let x_892 : i32 = u_xlati42;
    let x_896 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_889 + 3i) / 4i)][((x_892 + 3i) % 4i)];
    let x_898 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) + vec3<f32>(x_896.x, x_896.y, x_896.z));
    let x_899 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
    let x_902 : vec4<f32> = u_xlat7;
    let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
    let x_905 : f32 = u_xlat7.z;
    txVec1 = vec3<f32>(x_903.x, x_903.y, x_905);
    let x_912 : vec3<f32> = txVec1;
    let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
    u_xlat42 = x_914;
    let x_915 : f32 = u_xlat41;
    let x_916 : f32 = u_xlat42;
    u_xlat41 = (x_915 + x_916);

    continuing {
      let x_918 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_918 + bitcast<u32>(1i));
    }
  }
  let x_920 : vec3<f32> = vs_TEXCOORD1;
  let x_923 : vec3<f32> = (x_920 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec3<f32> = vs_TEXCOORD1;
  let x_929 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_932 : vec3<f32> = ((x_926 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_929.x, x_929.y, x_929.z)));
  let x_933 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec3<f32> = vs_TEXCOORD1;
  let x_938 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_941 : vec3<f32> = ((x_935 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_938.x, x_938.y, x_938.z)));
  let x_942 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec3<f32> = vs_TEXCOORD1;
  let x_947 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_950 : vec3<f32> = ((x_944 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_947.x, x_947.y, x_947.z)));
  let x_951 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec3<f32> = vs_TEXCOORD1;
  let x_956 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_959 : vec3<f32> = ((x_953 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_956.x, x_956.y, x_956.z)));
  let x_960 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat6;
  let x_964 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_974 : vec4<f32> = u_xlat8;
  let x_976 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_980 : vec4<f32> = u_xlat9;
  let x_982 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_987 : vec4<f32> = u_xlat6;
  let x_989 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_987 < x_989);
  let x_992 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_992);
  let x_996 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_996);
  let x_1000 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_1000);
  let x_1004 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_1004);
  let x_1008 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_1008);
  let x_1012 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_1012);
  let x_1016 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_1016);
  let x_1019 : vec4<f32> = u_xlat6;
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) + vec3<f32>(x_1021.y, x_1021.z, x_1021.w));
  let x_1024 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat6;
  let x_1028 : vec3<f32> = max(vec3<f32>(x_1026.x, x_1026.y, x_1026.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1029 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1028.x, x_1028.y, x_1028.z);
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(x_1031, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_1035 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_1035) + 4.0f);
  let x_1041 : f32 = u_xlat27.x;
  u_xlatu27 = u32(x_1041);
  let x_1044 : u32 = u_xlatu27;
  u_xlati27 = (bitcast<i32>(x_1044) << bitcast<u32>(2i));
  let x_1049 : f32 = u_xlat5.y;
  let x_1050 : i32 = u_xlati27;
  let x_1053 : i32 = u_xlati27;
  let x_1057 : f32 = x_367.x_MainLightWorldToShadow[((x_1050 + 1i) / 4i)][((x_1053 + 1i) % 4i)].z;
  u_xlat39 = (x_1049 * x_1057);
  let x_1059 : i32 = u_xlati27;
  let x_1061 : i32 = u_xlati27;
  let x_1064 : f32 = x_367.x_MainLightWorldToShadow[(x_1059 / 4i)][(x_1061 % 4i)].z;
  let x_1066 : f32 = u_xlat5.x;
  let x_1068 : f32 = u_xlat39;
  u_xlat39 = ((x_1064 * x_1066) + x_1068);
  let x_1070 : i32 = u_xlati27;
  let x_1073 : i32 = u_xlati27;
  let x_1077 : f32 = x_367.x_MainLightWorldToShadow[((x_1070 + 2i) / 4i)][((x_1073 + 2i) % 4i)].z;
  let x_1079 : f32 = u_xlat5.z;
  let x_1081 : f32 = u_xlat39;
  u_xlat39 = ((x_1077 * x_1079) + x_1081);
  let x_1083 : f32 = u_xlat39;
  let x_1084 : i32 = u_xlati27;
  let x_1087 : i32 = u_xlati27;
  let x_1091 : f32 = x_367.x_MainLightWorldToShadow[((x_1084 + 3i) / 4i)][((x_1087 + 3i) % 4i)].z;
  u_xlat27.x = (x_1083 + x_1091);
  let x_1095 : f32 = u_xlat27.x;
  u_xlatb39 = (0.0f >= x_1095);
  let x_1098 : f32 = u_xlat27.x;
  u_xlatb27 = (x_1098 >= 1.0f);
  let x_1100 : bool = u_xlatb27;
  let x_1101 : bool = u_xlatb39;
  u_xlatb27 = (x_1100 | x_1101);
  let x_1103 : f32 = u_xlat41;
  u_xlat39 = (x_1103 * 0.25f);
  let x_1105 : bool = u_xlatb27;
  let x_1106 : f32 = u_xlat39;
  u_xlat27.x = select(x_1106, 1.0f, x_1105);
  u_xlat2.w = 1.0f;
  let x_1116 : vec4<f32> = x_1113.unity_SHAr;
  let x_1117 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_1116, x_1117);
  let x_1122 : vec4<f32> = x_1113.unity_SHAg;
  let x_1123 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_1122, x_1123);
  let x_1128 : vec4<f32> = x_1113.unity_SHAb;
  let x_1129 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_1128, x_1129);
  let x_1132 : vec4<f32> = u_xlat2;
  let x_1134 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_1132.y, x_1132.z, x_1132.z, x_1132.x) * vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1134.z));
  let x_1139 : vec4<f32> = x_1113.unity_SHBr;
  let x_1140 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_1139, x_1140);
  let x_1145 : vec4<f32> = x_1113.unity_SHBg;
  let x_1146 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_1145, x_1146);
  let x_1151 : vec4<f32> = x_1113.unity_SHBb;
  let x_1152 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_1151, x_1152);
  let x_1157 : f32 = u_xlat2.y;
  let x_1159 : f32 = u_xlat2.y;
  u_xlat38 = (x_1157 * x_1159);
  let x_1162 : f32 = u_xlat2.x;
  let x_1164 : f32 = u_xlat2.x;
  let x_1166 : f32 = u_xlat38;
  u_xlat38 = ((x_1162 * x_1164) + -(x_1166));
  let x_1171 : vec4<f32> = x_1113.unity_SHC;
  let x_1173 : f32 = u_xlat38;
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = ((vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * vec3<f32>(x_1173, x_1173, x_1173)) + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat5;
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181.x, x_1181.y, x_1181.z) + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec4<f32> = u_xlat5;
  let x_1190 : vec3<f32> = max(vec3<f32>(x_1188.x, x_1188.y, x_1188.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1191 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec3<f32> = vs_TEXCOORD2;
  let x_1195 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat38 = dot(x_1193, -(vec3<f32>(x_1195.x, x_1195.y, x_1195.z)));
  let x_1199 : f32 = u_xlat38;
  let x_1201 : f32 = vs_TEXCOORD5.z;
  u_xlat38 = (x_1199 * x_1201);
  let x_1203 : f32 = u_xlat38;
  let x_1204 : f32 = u_xlat38;
  u_xlat39 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat38;
  let x_1207 : f32 = u_xlat39;
  u_xlat38 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1209, 0.0f, 1.0f);
  let x_1211 : f32 = u_xlat38;
  u_xlat38 = (x_1211 * 5.0f);
  let x_1214 : f32 = u_xlat38;
  let x_1217 : vec4<f32> = x_39.x_MainLightColor;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1214, x_1214, x_1214) * vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1223 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1226 : vec4<f32> = x_39.x_MainLightColor;
  let x_1229 : vec4<f32> = u_xlat6;
  let x_1231 : vec3<f32> = ((vec3<f32>(x_1223.y, x_1223.y, x_1223.y) * vec3<f32>(x_1226.x, x_1226.y, x_1226.z)) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1232 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
  let x_1234 : vec4<f32> = u_xlat6;
  let x_1236 : vec2<f32> = u_xlat27;
  let x_1239 : vec4<f32> = u_xlat5;
  let x_1241 : vec3<f32> = ((vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x)) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1249 : vec4<f32> = vs_TEXCOORD0;
  let x_1252 : f32 = x_39.x_GlobalMipBias.x;
  let x_1253 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1249.z, x_1249.w), x_1252);
  let x_1254 : vec3<f32> = vec3<f32>(x_1253.x, x_1253.y, x_1253.z);
  let x_1255 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1258 : f32 = u_xlat4.x;
  u_xlat4.x = x_1258;
  let x_1261 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1261, 0.0f, 1.0f);
  let x_1265 : f32 = vs_TEXCOORD5.z;
  u_xlat38 = (x_1265 + -0.375f);
  let x_1268 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1268, 0.0f, 1.0f);
  let x_1270 : f32 = u_xlat24;
  u_xlat39 = ((-(x_1270) * 4.0f) + 1.0f);
  let x_1274 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1274, 0.0f, 1.0f);
  let x_1276 : f32 = u_xlat36;
  let x_1277 : f32 = u_xlat24;
  u_xlat36 = min(x_1276, x_1277);
  let x_1279 : f32 = u_xlat36;
  u_xlat36 = ((-(x_1279) * 0.5f) + 0.75f);
  let x_1284 : f32 = u_xlat39;
  let x_1286 : f32 = u_xlat36;
  u_xlat36 = ((x_1284 * 0.5f) + x_1286);
  let x_1288 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1288, 0.0f, 1.0f);
  let x_1291 : f32 = u_xlat4.x;
  let x_1292 : f32 = u_xlat36;
  u_xlat36 = (x_1291 * x_1292);
  let x_1294 : f32 = u_xlat36;
  let x_1295 : f32 = u_xlat38;
  u_xlat36 = max(x_1294, x_1295);
  let x_1298 : f32 = u_xlat1.x;
  let x_1300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1298 + x_1300);
  let x_1303 : f32 = u_xlat36;
  let x_1305 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_1303, x_1305);
  u_xlat8.y = 0.66000002622604370117f;
  let x_1315 : vec4<f32> = u_xlat8;
  let x_1318 : f32 = x_39.x_GlobalMipBias.x;
  let x_1319 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1315.x, x_1315.y), x_1318);
  let x_1320 : vec3<f32> = vec3<f32>(x_1319.x, x_1319.y, x_1319.z);
  let x_1321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1320.x, x_1321.y, x_1320.y, x_1320.z);
  let x_1323 : vec4<f32> = u_xlat4;
  let x_1325 : vec4<f32> = u_xlat7;
  let x_1327 : vec3<f32> = (vec3<f32>(x_1323.x, x_1323.z, x_1323.w) * vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1327.z);
  let x_1330 : vec4<f32> = u_xlat4;
  let x_1332 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_1330.x, x_1330.z, x_1330.w), vec3<f32>(x_1332.x, x_1332.z, x_1332.w));
  let x_1335 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_1335);
  let x_1337 : f32 = u_xlat36;
  u_xlat36 = ((x_1337 * 1.5f) + -0.10000000149011611938f);
  let x_1342 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1342, 0.0f, 1.0f);
  let x_1344 : vec3<f32> = u_xlat15;
  let x_1347 : vec4<f32> = x_39.x_MainLightColor;
  let x_1350 : vec4<f32> = u_xlat5;
  let x_1352 : vec3<f32> = ((vec3<f32>(x_1344.x, x_1344.x, x_1344.x) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z)) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1352.x, x_1353.y, x_1352.y, x_1352.z);
  let x_1355 : vec3<f32> = vs_TEXCOORD2;
  let x_1357 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1359 : vec3<f32> = (x_1355 + vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1362 : vec4<f32> = u_xlat5;
  let x_1364 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1362.x, x_1362.y, x_1362.z), vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1369 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1369, 1.17549435e-38f);
  let x_1374 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_1374);
  let x_1377 : vec3<f32> = u_xlat1;
  let x_1379 : vec4<f32> = u_xlat5;
  let x_1381 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.x, x_1377.x) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  let x_1384 : vec4<f32> = u_xlat2;
  let x_1386 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1384.x, x_1384.y, x_1384.z), vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1391 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1391, 0.0f, 1.0f);
  let x_1395 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1397 : vec4<f32> = u_xlat5;
  u_xlat38 = dot(vec3<f32>(x_1395.x, x_1395.y, x_1395.z), vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1400, 0.0f, 1.0f);
  let x_1403 : f32 = u_xlat1.x;
  let x_1405 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1403 * x_1405);
  let x_1409 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1409 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_1415 : f32 = u_xlat38;
  let x_1416 : f32 = u_xlat38;
  u_xlat38 = (x_1415 * x_1416);
  let x_1419 : f32 = u_xlat1.x;
  let x_1421 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1419 * x_1421);
  let x_1424 : f32 = u_xlat38;
  u_xlat38 = max(x_1424, 0.10000000149011611938f);
  let x_1427 : f32 = u_xlat1.x;
  let x_1428 : f32 = u_xlat38;
  u_xlat1.x = (x_1427 * x_1428);
  let x_1432 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1432 * 2.03125f);
  let x_1438 : f32 = u_xlat1.x;
  u_xlat1.x = (0.00006103515625f / x_1438);
  let x_1442 : f32 = u_xlat27.x;
  let x_1444 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1442 * x_1444);
  let x_1448 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1448 * 0.03999999910593032837f);
  let x_1452 : vec3<f32> = u_xlat1;
  let x_1455 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_1452.x, x_1452.x, x_1452.x) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
  let x_1459 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_1461 : f32 = x_1113.unity_LightData.y;
  u_xlat1.x = min(x_1459, x_1461);
  let x_1466 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_1466));
  let x_1469 : vec4<f32> = u_xlat6;
  let x_1470 : vec3<f32> = vec3<f32>(x_1469.x, x_1469.y, x_1469.z);
  let x_1471 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : vec3<f32> = u_xlat15;
  let x_1474 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1482 : u32 = u_xlatu_loop_2;
    let x_1483 : u32 = u_xlatu1;
    if ((x_1482 < x_1483)) {
    } else {
      break;
    }
    let x_1486 : u32 = u_xlatu_loop_2;
    u_xlatu41 = (x_1486 >> 2u);
    let x_1488 : u32 = u_xlatu_loop_2;
    u_xlati42 = bitcast<i32>((x_1488 & 3u));
    let x_1491 : u32 = u_xlatu41;
    let x_1494 : vec4<f32> = x_1113.unity_LightIndices[bitcast<i32>(x_1491)];
    let x_1503 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1508 : vec4<u32> = indexable[x_1503];
    u_xlat41 = dot(x_1494, bitcast<vec4<f32>>(x_1508));
    let x_1512 : f32 = u_xlat41;
    u_xlati41 = i32(x_1512);
    let x_1514 : vec3<f32> = vs_TEXCOORD1;
    let x_1525 : i32 = u_xlati41;
    let x_1527 : vec4<f32> = x_1524.x_AdditionalLightsPosition[x_1525];
    let x_1530 : i32 = u_xlati41;
    let x_1532 : vec4<f32> = x_1524.x_AdditionalLightsPosition[x_1530];
    let x_1534 : vec3<f32> = ((-(x_1514) * vec3<f32>(x_1527.w, x_1527.w, x_1527.w)) + vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : vec4<f32> = u_xlat8;
    let x_1539 : vec4<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1537.x, x_1537.y, x_1537.z), vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
    let x_1542 : f32 = u_xlat42;
    u_xlat42 = max(x_1542, 0.00006103515625f);
    let x_1545 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_1545);
    let x_1547 : f32 = u_xlat43;
    let x_1549 : vec4<f32> = u_xlat8;
    let x_1551 : vec3<f32> = (vec3<f32>(x_1547, x_1547, x_1547) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
    let x_1552 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
    let x_1555 : f32 = u_xlat42;
    u_xlat44 = (1.0f / x_1555);
    let x_1557 : f32 = u_xlat42;
    let x_1558 : i32 = u_xlati41;
    let x_1560 : f32 = x_1524.x_AdditionalLightsAttenuation[x_1558].x;
    u_xlat42 = (x_1557 * x_1560);
    let x_1562 : f32 = u_xlat42;
    let x_1564 : f32 = u_xlat42;
    u_xlat42 = ((-(x_1562) * x_1564) + 1.0f);
    let x_1567 : f32 = u_xlat42;
    u_xlat42 = max(x_1567, 0.0f);
    let x_1569 : f32 = u_xlat42;
    let x_1570 : f32 = u_xlat42;
    u_xlat42 = (x_1569 * x_1570);
    let x_1572 : f32 = u_xlat42;
    let x_1573 : f32 = u_xlat44;
    u_xlat42 = (x_1572 * x_1573);
    let x_1575 : i32 = u_xlati41;
    let x_1577 : vec4<f32> = x_1524.x_AdditionalLightsSpotDir[x_1575];
    let x_1579 : vec4<f32> = u_xlat9;
    u_xlat44 = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
    let x_1582 : f32 = u_xlat44;
    let x_1583 : i32 = u_xlati41;
    let x_1585 : f32 = x_1524.x_AdditionalLightsAttenuation[x_1583].z;
    let x_1587 : i32 = u_xlati41;
    let x_1589 : f32 = x_1524.x_AdditionalLightsAttenuation[x_1587].w;
    u_xlat44 = ((x_1582 * x_1585) + x_1589);
    let x_1591 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1591, 0.0f, 1.0f);
    let x_1593 : f32 = u_xlat44;
    let x_1594 : f32 = u_xlat44;
    u_xlat44 = (x_1593 * x_1594);
    let x_1596 : f32 = u_xlat42;
    let x_1597 : f32 = u_xlat44;
    u_xlat42 = (x_1596 * x_1597);
    let x_1599 : vec4<f32> = u_xlat2;
    let x_1601 : vec4<f32> = u_xlat9;
    u_xlat44 = dot(vec3<f32>(x_1599.x, x_1599.y, x_1599.z), vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
    let x_1604 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1604, 0.0f, 1.0f);
    let x_1606 : f32 = u_xlat42;
    let x_1607 : f32 = u_xlat44;
    u_xlat44 = (x_1606 * x_1607);
    let x_1609 : f32 = u_xlat44;
    let x_1611 : i32 = u_xlati41;
    let x_1613 : vec4<f32> = x_1524.x_AdditionalLightsColor[x_1611];
    u_xlat10 = (vec3<f32>(x_1609, x_1609, x_1609) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
    let x_1616 : vec4<f32> = u_xlat8;
    let x_1618 : f32 = u_xlat43;
    let x_1621 : vec3<f32> = vs_TEXCOORD2;
    let x_1622 : vec3<f32> = ((vec3<f32>(x_1616.x, x_1616.y, x_1616.z) * vec3<f32>(x_1618, x_1618, x_1618)) + x_1621);
    let x_1623 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
    let x_1625 : vec4<f32> = u_xlat8;
    let x_1627 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1625.x, x_1625.y, x_1625.z), vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
    let x_1630 : f32 = u_xlat43;
    u_xlat43 = max(x_1630, 1.17549435e-38f);
    let x_1632 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1632);
    let x_1634 : f32 = u_xlat43;
    let x_1636 : vec4<f32> = u_xlat8;
    let x_1638 : vec3<f32> = (vec3<f32>(x_1634, x_1634, x_1634) * vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
    let x_1639 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
    let x_1641 : vec4<f32> = u_xlat2;
    let x_1643 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1641.x, x_1641.y, x_1641.z), vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
    let x_1646 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1646, 0.0f, 1.0f);
    let x_1648 : vec4<f32> = u_xlat9;
    let x_1650 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_1648.x, x_1648.y, x_1648.z), vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
    let x_1655 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1655, 0.0f, 1.0f);
    let x_1658 : f32 = u_xlat43;
    let x_1659 : f32 = u_xlat43;
    u_xlat43 = (x_1658 * x_1659);
    let x_1661 : f32 = u_xlat43;
    u_xlat43 = ((x_1661 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_1665 : f32 = u_xlat8.x;
    let x_1667 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1665 * x_1667);
    let x_1670 : f32 = u_xlat43;
    let x_1671 : f32 = u_xlat43;
    u_xlat43 = (x_1670 * x_1671);
    let x_1674 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1674, 0.10000000149011611938f);
    let x_1677 : f32 = u_xlat43;
    let x_1679 : f32 = u_xlat8.x;
    u_xlat43 = (x_1677 * x_1679);
    let x_1681 : f32 = u_xlat43;
    u_xlat43 = (x_1681 * 2.03125f);
    let x_1683 : f32 = u_xlat43;
    u_xlat43 = (0.00006103515625f / x_1683);
    let x_1685 : f32 = u_xlat43;
    u_xlat43 = (x_1685 * 0.03999999910593032837f);
    let x_1687 : f32 = u_xlat43;
    let x_1689 : vec3<f32> = u_xlat10;
    let x_1691 : vec4<f32> = u_xlat7;
    let x_1693 : vec3<f32> = ((vec3<f32>(x_1687, x_1687, x_1687) * x_1689) + vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
    let x_1694 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
    let x_1696 : f32 = u_xlat42;
    let x_1698 : i32 = u_xlati41;
    let x_1700 : vec4<f32> = x_1524.x_AdditionalLightsColor[x_1698];
    let x_1703 : vec4<f32> = u_xlat5;
    let x_1705 : vec3<f32> = ((vec3<f32>(x_1696, x_1696, x_1696) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z)) + vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
    let x_1706 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);

    continuing {
      let x_1708 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1708 + bitcast<u32>(1i));
    }
  }
  let x_1710 : f32 = u_xlat37;
  let x_1711 : f32 = u_xlat24;
  u_xlat6.x = (x_1710 * x_1711);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_1720 : vec4<f32> = u_xlat6;
  let x_1723 : f32 = x_39.x_GlobalMipBias.x;
  let x_1724 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1720.x, x_1720.y), x_1723);
  u_xlat15 = vec3<f32>(x_1724.x, x_1724.y, x_1724.z);
  let x_1726 : vec4<f32> = u_xlat2;
  let x_1732 : vec3<f32> = u_xlat0;
  let x_1734 : vec2<f32> = ((vec2<f32>(x_1726.z, x_1726.x) * vec2<f32>(0.01999999955296516418f, 0.15000000596046447754f)) + vec2<f32>(x_1732.x, x_1732.y));
  let x_1735 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1734.x, x_1734.y, x_1735.z);
  let x_1741 : vec3<f32> = u_xlat0;
  let x_1743 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1741.x, x_1741.y), 0.0f);
  u_xlat0 = vec3<f32>(x_1743.x, x_1743.y, x_1743.z);
  let x_1750 : vec2<f32> = u_xlat13;
  let x_1752 : f32 = u_xlat4.y;
  let x_1753 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1750, x_1752);
  u_xlat1 = vec3<f32>(x_1753.x, x_1753.y, x_1753.z);
  let x_1758 : vec4<f32> = u_xlat6;
  let x_1761 : f32 = x_39.x_GlobalMipBias.x;
  let x_1762 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1758.x, x_1758.z), x_1761);
  let x_1763 : vec3<f32> = vec3<f32>(x_1762.x, x_1762.y, x_1762.z);
  let x_1764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec3<f32> = u_xlat1;
  let x_1767 : vec4<f32> = u_xlat2;
  let x_1769 : vec3<f32> = (x_1766 * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1772 : vec3<f32> = u_xlat1;
  let x_1774 : vec4<f32> = u_xlat2;
  let x_1777 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_1772) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z)) + x_1777);
  let x_1779 : f32 = u_xlat3;
  let x_1781 : vec3<f32> = u_xlat0;
  let x_1783 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1779, x_1779, x_1779) * x_1781) + vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : vec4<f32> = u_xlat5;
  let x_1788 : vec3<f32> = u_xlat15;
  let x_1790 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1786.x, x_1786.y, x_1786.z) * x_1788) + x_1790);
  let x_1792 : vec4<f32> = u_xlat7;
  let x_1794 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1792.x, x_1792.y, x_1792.z) + x_1794);
  let x_1796 : f32 = u_xlat36;
  let x_1798 : vec4<f32> = u_xlat4;
  let x_1801 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1796, x_1796, x_1796) * vec3<f32>(x_1798.x, x_1798.z, x_1798.w)) + -(x_1801));
  let x_1806 : f32 = u_xlat36;
  let x_1808 : vec3<f32> = u_xlat1;
  let x_1810 : vec3<f32> = u_xlat0;
  let x_1811 : vec3<f32> = ((vec3<f32>(x_1806, x_1806, x_1806) * x_1808) + x_1810);
  let x_1812 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
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


